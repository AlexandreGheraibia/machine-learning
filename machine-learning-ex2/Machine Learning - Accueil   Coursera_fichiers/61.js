(window.webpackJsonp=window.webpackJsonp||[]).push([[61],{"/m9Y":function(module,exports,e){var t=e("xed9"),r;"string"==typeof t&&(t=[[module.i,t,""]]);var n={transform:void 0},o=e("aET+")(t,n);t.locals&&(module.exports=t.locals)},"21NG":function(module,exports,e){"use strict";Object.defineProperty(exports,"__esModule",{value:!0});var t,r=_interopRequireDefault(e("iCc5")),n,o=_interopRequireDefault(e("FYw3")),a,u=_interopRequireDefault(e("mRg0")),i,s,l,c=_interopRequireDefault(e("w/1P")),d,f=_interopRequireDefault(e("sbe7")),p,R=_interopRequireDefault(e("CQyo")),m,h=_interopRequireDefault(e("8cuT")),g=e("vpZN"),v,y=_interopRequireDefault(e("37kS"));function _interopRequireDefault(e){return e&&e.__esModule?e:{default:e}}e("myvE");var C=(s=i=function(e){function LockedContentModal(){return(0,r.default)(this,LockedContentModal),(0,o.default)(this,e.apply(this,arguments))}return(0,u.default)(LockedContentModal,e),LockedContentModal.prototype.render=function render(){var e=this.props.courseRootPath,t=(0,c.default)("rc-LockedContentModal","styleguide",this.props.className);return f.default.createElement("div",{className:t},f.default.createElement(R.default,{allowClose:!1,modalName:(0,y.default)("This content is locked")},f.default.createElement("h3",{className:"title"},(0,y.default)("This content is locked.")),f.default.createElement("p",null,(0,y.default)("You can access this content by enrolling in an active session of this course. To enroll or check active dates for upcoming sessions, visit the course description page.")),f.default.createElement("div",{className:"horizontal-box align-items-right wrap"},f.default.createElement("a",{href:(0,g.getCourseInfoUrl)(e)},f.default.createElement("button",{className:"primary"},(0,y.default)("View sessions"))))))},LockedContentModal}(f.default.Component),i.propTypes={className:f.default.PropTypes.string,courseRootPath:f.default.PropTypes.string},s);exports.default=(0,h.default)(C,["CourseStore"],function(e){var t;return{courseRootPath:e.CourseStore.getCourseRootPath()}})},Vt60:function(module,exports,e){},ijKk:function(module,exports,e){"use strict";Object.defineProperty(exports,"__esModule",{value:!0}),exports.getReference=void 0;var t,r=_interopRequireDefault(e("wiyT")),n,o=_interopRequireDefault(e("VYij")),a,u=_interopRequireDefault(e("CWYE")),i,s=_interopRequireDefault(e("BDKN")),l,c=_interopRequireDefault(e("8hBQ"));function _interopRequireDefault(e){return e&&e.__esModule?e:{default:e}}var d=(0,u.default)("/api/onDemandReferences.v1",{type:"rest"}),f=function hydrateResponse(e){return(0,o.default)(e.elements).each(function(t){var r=t.content["org.coursera.ondemand.reference.AssetReferenceContent"].assetId,n=(0,o.default)(e.linked["openCourseAssets.v1"]).where({id:r});n.length&&(t.content=n[0])})},p=exports.getReference=function getReference(e,t){var n=t.referenceShortId,o=t.courseId,a=e.getStore(c.default).getCachedReference(n);if(!a){var u=(new s.default).addQueryParam("courseId",o).addQueryParam("q","shortId").addQueryParam("shortId",n).addQueryParam("fields","name,shortId,slug,content").addQueryParam("includes","assets"),i=(0,r.default)(d.get(u.toString())).then(function(t){var r=f(t);e.dispatch("LOAD_REFERENCE",r[0])});return i.done(),i}e.dispatch("LOAD_REFERENCE",a)}},myvE:function(module,exports,e){var t=e("Vt60"),r;"string"==typeof t&&(t=[[module.i,t,""]]);var n={transform:void 0},o=e("aET+")(t,n);t.locals&&(module.exports=t.locals)},"v+QE":function(module,exports,e){"use strict";Object.defineProperty(exports,"__esModule",{value:!0});var t,r=_interopRequireDefault(e("iCc5")),n,o=_interopRequireDefault(e("FYw3")),a,u=_interopRequireDefault(e("mRg0")),i,s,l,c=_interopRequireDefault(e("sbe7")),d,f=_interopRequireDefault(e("8cuT")),p,R=_interopRequireDefault(e("sQ/U")),m,h=_interopRequireDefault(e("JUgE")),g=e("ijKk"),v,y=_interopRequireDefault(e("21NG")),C,q=_interopRequireDefault(e("+eFp"));function _interopRequireDefault(e){return e&&e.__esModule?e:{default:e}}e("/m9Y");var E=(s=i=function(e){function CourseReferencesPage(t,n){(0,r.default)(this,CourseReferencesPage);var a=(0,o.default)(this,e.call(this,t,n));return a.componentWillReceiveProps=function(){a.getData()},a.getData=function(){var e=a.props.courseId,t=a.context.router.params;t.reference_id&&a.waitingForReferenceId!==t.reference_id&&(a.waitingForReferenceId=t.reference_id,a.context.executeAction(g.getReference,{courseId:e,referenceShortId:t.reference_id}))},a.getData(),a}return(0,u.default)(CourseReferencesPage,e),CourseReferencesPage.prototype.renderLockedModal=function renderLockedModal(){return c.default.createElement(q.default,{transitionName:"LockedContentModal",transitionAppear:!0,transitionEnterTimeout:500,transitionAppearTimeout:500,transitionLeaveTimeout:500},c.default.createElement(y.default,{key:"LockedContentModal"}))},CourseReferencesPage.prototype.render=function render(){var e=!R.default.isAuthenticatedUser()||!this.props.isEnrolled;if(this.props.currentReference)return c.default.createElement("section",{className:"rc-CourseReferencesPage"},e&&this.renderLockedModal(),c.default.createElement("h1",{className:"tab-headline"},c.default.createElement("span",null,this.props.currentReference.name)),c.default.createElement(h.default,{key:this.props.currentReference.id,cml:this.props.currentReference.content}));return null},CourseReferencesPage}(c.default.Component),i.propTypes={currentReference:c.default.PropTypes.shape({id:c.default.PropTypes.string.isRequired,content:c.default.PropTypes.object.isRequired,name:c.default.PropTypes.string.isRequired,shortId:c.default.PropTypes.string.isRequired}),courseId:c.default.PropTypes.string.isRequired,isEnrolled:c.default.PropTypes.bool},i.contextTypes={executeAction:c.default.PropTypes.func.isRequired,router:c.default.PropTypes.object.isRequired},i.defaultProps={currentReference:null},s);exports.default=(0,f.default)(E,["CourseStore","CourseReferencesStore","CourseMembershipStore"],function(e){var t=e.CourseStore,r=e.CourseReferencesStore,n=e.CourseMembershipStore;return{currentReference:r.getCurrentReference(),isEnrolled:n.isEnrolled(),courseId:t.getCourseId()}})},xed9:function(module,exports,e){}}]);
//# sourceMappingURL=61.96c0f5e77bb77530a8d6.js.map