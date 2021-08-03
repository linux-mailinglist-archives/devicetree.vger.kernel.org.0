Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9006B3DF0F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 17:00:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235607AbhHCPAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 11:00:30 -0400
Received: from mga05.intel.com ([192.55.52.43]:31797 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235368AbhHCPAa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Aug 2021 11:00:30 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="299295820"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="299295820"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 08:00:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="521282556"
Received: from vmustya-mobl1.amr.corp.intel.com (HELO [10.213.171.71]) ([10.213.171.71])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 08:00:14 -0700
Subject: Re: [PATCH v3 00/20] ASoC: qcom: Add AudioReach support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <0e6e4e03-c92a-be27-ba9d-e0993ced1ba6@linux.intel.com>
Date:   Tue, 3 Aug 2021 10:00:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
Content-Type: multipart/mixed;
 boundary="------------91820860E6B26CFB2718542F"
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a multi-part message in MIME format.
--------------91820860E6B26CFB2718542F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

There are quite a few cppcheck warnings due to unnecessary
initializations for loop variables, see suggested patch below.

And a number of renames that were missed.

cppcheck --platform=unix64 --force --max-configs=1024 --inconclusive
--enable=all --suppress=variableScope --suppress=shiftTooManyBitsSigned
--suppress=arithOperationsOnVoidPointer --suppress=bitwiseOnBoolean
sound/soc/qcom/qdsp6/


Checking sound/soc/qcom/qdsp6/audioreach.c ...
sound/soc/qcom/qdsp6/audioreach.c:248:32: style:inconclusive: Function
'audioreach_alloc_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'. [funcArgNamesDifferent]
void *audioreach_alloc_pkt(int payload_size, uint32_t opcode,
                               ^
sound/soc/qcom/qdsp6/audioreach.h:657:32: note: Function
'audioreach_alloc_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'.
void *audioreach_alloc_pkt(int pkt_size, uint32_t opcode, uint32_t token,
                               ^
sound/soc/qcom/qdsp6/audioreach.c:248:32: note: Function
'audioreach_alloc_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'.
void *audioreach_alloc_pkt(int payload_size, uint32_t opcode,
                               ^
sound/soc/qcom/qdsp6/audioreach.c:265:36: style:inconclusive: Function
'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'. [funcArgNamesDifferent]
void *audioreach_alloc_cmd_pkt(int payload_size, uint32_t opcode,
                                   ^
sound/soc/qcom/qdsp6/audioreach.h:653:36: note: Function
'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'.
void *audioreach_alloc_cmd_pkt(int pkt_size, uint32_t opcode, uint32_t
token,
                                   ^
sound/soc/qcom/qdsp6/audioreach.c:265:36: note: Function
'audioreach_alloc_cmd_pkt' argument 1 names different: declaration
'pkt_size' definition 'payload_size'.
void *audioreach_alloc_cmd_pkt(int payload_size, uint32_t opcode,
                                   ^
sound/soc/qcom/qdsp6/q6apm.c:326:16: style:inconclusive: Function
'q6apm_map_memory_regions' argument 4 names different: declaration
'bufsz' definition 'period_sz'. [funcArgNamesDifferent]
        size_t period_sz, unsigned int periods)
               ^
sound/soc/qcom/qdsp6/q6apm.h:137:16: note: Function
'q6apm_map_memory_regions' argument 4 names different: declaration
'bufsz' definition 'period_sz'.
        size_t bufsz, unsigned int bufcnt);
               ^
sound/soc/qcom/qdsp6/q6apm.c:326:16: note: Function
'q6apm_map_memory_regions' argument 4 names different: declaration
'bufsz' definition 'period_sz'.
        size_t period_sz, unsigned int periods)
               ^
sound/soc/qcom/qdsp6/q6apm.c:326:40: style:inconclusive: Function
'q6apm_map_memory_regions' argument 5 names different: declaration
'bufcnt' definition 'periods'. [funcArgNamesDifferent]
        size_t period_sz, unsigned int periods)
                                       ^
sound/soc/qcom/qdsp6/q6apm.h:137:36: note: Function
'q6apm_map_memory_regions' argument 5 names different: declaration
'bufcnt' definition 'periods'.
        size_t bufsz, unsigned int bufcnt);
                                   ^
sound/soc/qcom/qdsp6/q6apm.c:326:40: note: Function
'q6apm_map_memory_regions' argument 5 names different: declaration
'bufcnt' definition 'periods'.
        size_t period_sz, unsigned int periods)
                                       ^
sound/soc/qcom/qdsp6/q6apm.c:471:35: style:inconclusive: Function
'q6apm_write_async' argument 5 names different: declaration 'flags'
definition 'wflags'. [funcArgNamesDifferent]
        uint32_t lsw_ts, uint32_t wflags)
                                  ^
sound/soc/qcom/qdsp6/q6apm.h:131:36: note: Function 'q6apm_write_async'
argument 5 names different: declaration 'flags' definition 'wflags'.
         uint32_t lsw_ts, uint32_t flags);
                                   ^
sound/soc/qcom/qdsp6/q6apm.c:471:35: note: Function 'q6apm_write_async'
argument 5 names different: declaration 'flags' definition 'wflags'.
        uint32_t lsw_ts, uint32_t wflags)
                                  ^

Checking sound/soc/qcom/qdsp6/q6prm.c ...
sound/soc/qcom/qdsp6/q6prm.c:158:63: style:inconclusive: Function
'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
definition 'clk_attr'. [funcArgNamesDifferent]
int q6prm_set_lpass_clock(struct device *dev, int clk_id, int clk_attr,
                                                              ^
sound/soc/qcom/qdsp6/q6prm.h:72:63: note: Function
'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
definition 'clk_attr'.
int q6prm_set_lpass_clock(struct device *dev, int clk_id, int attri,
                                                              ^
sound/soc/qcom/qdsp6/q6prm.c:158:63: note: Function
'q6prm_set_lpass_clock' argument 3 names different: declaration 'attri'
definition 'clk_attr'.
int q6prm_set_lpass_clock(struct device *dev, int clk_id, int clk_attr,
                                                              ^

--------------91820860E6B26CFB2718542F
Content-Type: text/x-patch; charset=UTF-8;
 name="qcom.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="qcom.patch"

diff --git a/sound/soc/qcom/qdsp6/audioreach.c b/sound/soc/qcom/qdsp6/audioreach.c
index cd029e59a421..5aeb26ee2a6c 100644
--- a/sound/soc/qcom/qdsp6/audioreach.c
+++ b/sound/soc/qcom/qdsp6/audioreach.c
@@ -361,7 +361,7 @@ static void apm_populate_module_prop_obj(struct apm_mod_prop_obj *obj,
 struct audioreach_module *audioreach_get_container_last_module(
 				struct audioreach_container *container)
 {
-	struct audioreach_module *module = NULL;
+	struct audioreach_module *module;
 
 	list_for_each_entry(module, &container->modules_list, node) {
 		if (module->dst_mod_inst_id == 0)
@@ -374,7 +374,7 @@ struct audioreach_module *audioreach_get_container_last_module(
 static bool is_module_in_container(struct audioreach_container *container, int
 				   module_iid)
 {
-	struct audioreach_module *module = NULL;
+	struct audioreach_module *module;
 
 	list_for_each_entry(module, &container->modules_list, node) {
 		if (module->instance_id == module_iid)
@@ -386,7 +386,7 @@ static bool is_module_in_container(struct audioreach_container *container, int
 struct audioreach_module *audioreach_get_container_first_module(
 				struct audioreach_container *container)
 {
-	struct audioreach_module *module = NULL;
+	struct audioreach_module *module;
 
 	list_for_each_entry(module, &container->modules_list, node) {
 		if (module->src_mod_inst_id == 0 ||
@@ -401,7 +401,7 @@ struct audioreach_module *audioreach_get_container_next_module(
 				struct audioreach_module *module)
 {
 	int nmodule_iid = module->dst_mod_inst_id;
-	struct audioreach_module *nmodule = NULL;
+	struct audioreach_module *nmodule;
 
 	list_for_each_entry(nmodule, &container->modules_list, node) {
 		if (nmodule->instance_id == nmodule_iid)
@@ -439,13 +439,13 @@ static void audioreach_populate_graph(struct apm_graph_open_params *open,
 	struct apm_prop_list_params *mp_data = open->mod_prop_data;
 	struct apm_mod_conn_list_params *mc_data = open->mod_conn_list_data;
 	struct apm_container_obj *cobj;
-	struct audioreach_container *container = NULL;
+	struct audioreach_container *container;
 	struct audioreach_module *module;
 	struct apm_mod_list_obj *mlobj;
 	struct apm_mod_prop_obj *module_prop_obj;
 	struct apm_module_conn_obj *conn_obj;
 	int ncontainer = 0, nmodule = 0, nconn = 0;
-	struct audioreach_sub_graph *sg = NULL;
+	struct audioreach_sub_graph *sg;
 	int i = 0;
 
 	mlobj = &ml_data->mod_list_obj[0];
@@ -496,14 +496,14 @@ void *audioreach_alloc_graph_pkt(struct q6apm *apm,
 	struct gpr_pkt *pkt;
 	struct apm_graph_open_params params;
 	struct apm_module_param_data  *param_data;
-	struct audioreach_container *container = NULL;
+	struct audioreach_container *container;
 	int num_containers = 0;
 	int num_modules = 0;
 	int num_modules_list;
 	int num_modules_per_list;
 	int num_connections = 0;
 	int num_sub_graphs = 0;
-	struct audioreach_sub_graph *sgs = NULL;
+	struct audioreach_sub_graph *sgs;
 	struct audioreach_module *module;
 
 	list_for_each_entry(sgs, sg_list, node) {
diff --git a/sound/soc/qcom/qdsp6/q6apm.c b/sound/soc/qcom/qdsp6/q6apm.c
index e3d18622415b..fdf687494210 100644
--- a/sound/soc/qcom/qdsp6/q6apm.c
+++ b/sound/soc/qcom/qdsp6/q6apm.c
@@ -129,7 +129,7 @@ static int audioreach_graph_mgmt_cmd(struct audioreach_graph *graph,
 	int num_sub_graphs = info->num_sub_graphs;
 	struct apm_graph_mgmt_cmd *mgmt_cmd;
 	struct apm_module_param_data *param_data;
-	struct audioreach_sub_graph *sg = NULL;
+	struct audioreach_sub_graph *sg;
 
 	payload_size = APM_GRAPH_MGMT_PSIZE(num_sub_graphs);
 
@@ -197,9 +197,9 @@ static struct audioreach_module *__q6apm_find_module_by_mid(struct q6apm *apm,
 					     struct audioreach_graph_info *info,
 					     uint32_t mid)
 {
-	struct audioreach_sub_graph *sgs = NULL;
-	struct audioreach_container *container = NULL;
-	struct audioreach_module *module = NULL;
+	struct audioreach_sub_graph *sgs;
+	struct audioreach_container *container;
+	struct audioreach_module *module;
 
 	list_for_each_entry(sgs, &info->sg_list, node) {
 		list_for_each_entry(container, &sgs->container_list, node) {
@@ -421,9 +421,9 @@ int q6apm_graph_media_format_pcm(struct q6apm_graph *graph,
 				 struct audioreach_module_config *cfg)
 {
 	struct audioreach_graph_info *info = graph->info;
-	struct audioreach_sub_graph *sgs = NULL;
-	struct audioreach_container *container = NULL;
-	struct audioreach_module *module = NULL;
+	struct audioreach_sub_graph *sgs;
+	struct audioreach_container *container;
+	struct audioreach_module *module;
 
 	list_for_each_entry(sgs, &info->sg_list, node) {
 		list_for_each_entry(container, &sgs->container_list, node) {
diff --git a/sound/soc/qcom/qdsp6/topology.c b/sound/soc/qcom/qdsp6/topology.c
index 409e19486d57..1a62f159ffdf 100644
--- a/sound/soc/qcom/qdsp6/topology.c
+++ b/sound/soc/qcom/qdsp6/topology.c
@@ -853,7 +853,7 @@ static struct audioreach_module *audioreach_find_widget(struct snd_soc_component
 							const char *name)
 {
 	struct q6apm *apm = dev_get_drvdata(comp->dev);
-	struct audioreach_module *module = NULL;
+	struct audioreach_module *module;
 	int id = 0;
 
 	idr_for_each_entry(&apm->modules_idr, module, id) {

--------------91820860E6B26CFB2718542F--
