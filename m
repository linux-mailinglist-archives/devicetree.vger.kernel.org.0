Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BC8A419F83
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 21:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236391AbhI0Ty2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 15:54:28 -0400
Received: from mga17.intel.com ([192.55.52.151]:16937 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236243AbhI0Ty1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 15:54:27 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="204703939"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="204703939"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="486267985"
Received: from asen4-mobl2.amr.corp.intel.com (HELO [10.212.27.2]) ([10.212.27.2])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:44 -0700
Subject: Re: [PATCH v8 14/22] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-15-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <ebfe1e31-778d-852a-20bf-ac8fe860dcc2@linux.intel.com>
Date:   Mon, 27 Sep 2021 11:08:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-15-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> +struct apm_sub_graph_params  {
> +	struct apm_module_param_data param_data;
> +	uint32_t num_sub_graphs;
> +	struct apm_sub_graph_data sg_cfg[];
> +} __packed;

The style you use is num_foobar and later foobar[]

> +/* container config */
> +struct apm_container_obj  {
> +	struct apm_container_cfg container_cfg;
> +	/* Capability ID list */
> +	struct apm_prop_data cap_data;
> +	uint32_t num_capability_id;
> +	uint32_t capability_id;

but here you have both a num_capability_id and capability_id

It's not very clear what they mean, or if there is a dependency?

> +	/* Container graph Position */
> +	struct apm_prop_data pos_data;
> +	struct apm_cont_prop_id_graph_pos pos;
> +
> +	/* Container Stack size */
> +	struct apm_prop_data stack_data;
> +	struct apm_cont_prop_id_stack_size stack;
> +
> +	/* Container proc domain id */
> +	struct apm_prop_data domain_data;
> +	struct apm_cont_prop_id_domain domain;
> +} __packed;

> +/* Module IDs */
> +#define MODULE_ID_WR_SHARED_MEM_EP	0x07001000
> +#define MODULE_ID_RD_SHARED_MEM_EP	0x07001001
> +#define MODULE_ID_GAIN			0x07001002
> +#define MODULE_ID_PCM_CNV		0x07001003
> +#define MODULE_ID_PCM_ENC		0x07001004
> +#define MODULE_ID_PCM_DEC		0x07001005
> +#define MODULE_ID_CODEC_DMA_SINK	0x07001023
> +#define MODULE_ID_CODEC_DMA_SOURCE	0x07001024
> +#define MODULE_ID_I2S_SINK		0x0700100A
> +#define MODULE_ID_I2S_SOURCE		0x0700100b
> +#define MODULE_ID_DATA_LOGGING		0x0700101A
> +
> +#define APM_CMD_GET_SPF_STATE		0x01001021
> +#define APM_CMD_RSP_GET_SPF_STATE	0x02001007
> +
> +#define APM_MODULE_INSTANCE_ID		0x00000001
> +#define PRM_MODULE_INSTANCE_ID		0x00000002
> +#define AMDB_MODULE_INSTANCE_ID		0x00000003
> +#define VCPM_MODULE_INSTANCE_ID		0x00000004
> +#define AR_MODULE_INSTANCE_ID_START	0x00006000
> +#define AR_MODULE_INSTANCE_ID_END	0x00007000
> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_START	0x00007000
> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_END	0x00008000
> +#define AR_CONT_INSTANCE_ID_START	0x00005000
> +#define AR_CONT_INSTANCE_ID_END		0x00006000
> +#define AR_SG_INSTANCE_ID_START		0x00004000
> +
> +#define APM_CMD_GRAPH_OPEN			0x01001000
> +#define APM_CMD_GRAPH_PREPARE			0x01001001
> +#define APM_CMD_GRAPH_START			0x01001002
> +#define APM_CMD_GRAPH_STOP			0x01001003
> +#define APM_CMD_GRAPH_CLOSE			0x01001004
> +#define APM_CMD_GRAPH_FLUSH			0x01001005
> +#define APM_CMD_SET_CFG				0x01001006
> +#define APM_CMD_GET_CFG				0x01001007
> +#define APM_CMD_SHARED_MEM_MAP_REGIONS		0x0100100c
> +#define APM_CMD_SHARED_MEM_UNMAP_REGIONS	0x0100100d
> +#define APM_CMD_RSP_SHARED_MEM_MAP_REGIONS	0x02001001
> +#define APM_CMD_RSP_GET_CFG			0x02001000
> +#define APM_CMD_CLOSE_ALL			0x01001013
> +#define APM_CMD_REGISTER_SHARED_CFG		0x0100100A

> +/* APM module */
> +#define APM_PARAM_ID_SUB_GRAPH_LIST		0x08001005
> +
> +#define APM_PARAM_ID_MODULE_LIST		0x08001002

> +#define APM_PARAM_ID_MODULE_PROP		0x08001003

It seems like those definition follow a pattern, e.g. bits 28..32 a type
and bits 0..15 a token?


> 
