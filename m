Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A020400384
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 18:38:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350054AbhICQjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 12:39:17 -0400
Received: from mga09.intel.com ([134.134.136.24]:17730 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1350108AbhICQjO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Sep 2021 12:39:14 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="219477874"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="219477874"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="462453508"
Received: from seangorm-mobl.amr.corp.intel.com (HELO [10.251.136.111]) ([10.251.136.111])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:57 -0700
Subject: Re: [PATCH v5 20/21] ASoC: qdsp6: audioreach: add q6prm support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-21-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <8a38f2f2-d74d-53c6-a4f5-669fef1f7c05@linux.intel.com>
Date:   Fri, 3 Sep 2021 10:57:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903112032.25834-21-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +struct prm_cmd_request_rsc {
> +	struct apm_module_param_data param_data;
> +	uint32_t num_clk_id;
> +	struct audio_hw_clk_cfg clock_ids[1];
> +} __packed;
> +
> +struct prm_cmd_release_rsc {
> +	struct apm_module_param_data param_data;
> +	uint32_t num_clk_id;
> +	struct audio_hw_clk_cfg clock_ids[1];

why do you need arrays of one element? I thought this was also frowned
upon if not already deprecated?


> +} __packed;
> +
> +static int q6prm_send_cmd_sync(struct q6prm *prm, struct gpr_pkt *pkt,
> +			uint32_t rsp_opcode)
> +{
> +	gpr_device_t *gdev = prm->gdev;
> +	struct gpr_hdr *hdr = &pkt->hdr;
> +	int rc;
> +
> +	mutex_lock(&prm->lock);
> +	prm->result.opcode = 0;
> +	prm->result.status = 0;
> +
> +	rc = gpr_send_pkt(prm->gdev, pkt);
> +	if (rc < 0)
> +		goto err;
> +
> +	if (rsp_opcode)
> +		rc = wait_event_timeout(prm->wait,
> +					(prm->result.opcode == hdr->opcode) ||
> +					(prm->result.opcode == rsp_opcode),
> +					5 * HZ);
> +	else
> +		rc = wait_event_timeout(prm->wait,
> +					(prm->result.opcode == hdr->opcode),
> +					5 * HZ);
> +
> +	if (!rc) {
> +		dev_err(&gdev->dev, "CMD timeout for [%x] opcode\n",
> +			hdr->opcode);
> +		rc = -ETIMEDOUT;
> +	} else if (prm->result.status > 0) {
> +		dev_err(&gdev->dev, "DSP returned error[%x] %x\n", hdr->opcode,
> +			prm->result.status);
> +		rc = -EINVAL;
> +	} else {
> +		dev_err(&gdev->dev, "DSP returned [%x]\n",
> +			prm->result.status);
> +		rc = 0;
> +	}
> +
> +err:
> +	mutex_unlock(&prm->lock);
> +	return rc;
> +}

this looks again like the same code we've seen twice already?

> +
> +static int q6prm_set_hw_core_req(struct device *dev, uint32_t hw_block_id, bool enable)
> +{
> +	struct prm_cmd_request_hw_core *req;
> +	struct apm_module_param_data *param_data;
> +	struct gpr_pkt *pkt;
> +	struct q6prm *prm = dev_get_drvdata(dev->parent);
> +	gpr_device_t *gdev  = prm->gdev;
> +	void *p;
> +	int rc = 0;
> +	uint32_t opcode, rsp_opcode;
> +
> +	if (enable) {
> +		opcode = PRM_CMD_REQUEST_HW_RSC;
> +		rsp_opcode = PRM_CMD_RSP_REQUEST_HW_RSC;
> +	} else {
> +		opcode = PRM_CMD_RELEASE_HW_RSC;
> +		rsp_opcode = PRM_CMD_RSP_RELEASE_HW_RSC;
> +	}
> +
> +	p = audioreach_alloc_cmd_pkt(sizeof(*req), opcode, 0, gdev->svc.id,
> +				     GPR_PRM_MODULE_IID);
> +	if (IS_ERR(p))
> +		return -ENOMEM;
> +
> +	pkt = p;

same comment as before for the rest of this file:

pkt = audioreach_alloc_cmd_pkt(sizeof(*req), opcode, 0, gdev->svc.id,
				     GPR_PRM_MODULE_IID);
kfree(pkt);



> +	req = p + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
> +
> +	param_data = &req->param_data;
> +
> +	param_data->module_instance_id = GPR_PRM_MODULE_IID;
> +	param_data->error_code = 0;
> +	param_data->param_id = PARAM_ID_RSC_HW_CORE;
> +	param_data->param_size = sizeof(*req) - APM_MODULE_PARAM_DATA_SIZE;
> +
> +	req->hw_clk_id = hw_block_id;
> +
> +	q6prm_send_cmd_sync(prm, pkt, rsp_opcode);
> +
> +	kfree(pkt);
> +
> +	return rc;
> +}
> +

