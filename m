Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F398401E45
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 18:29:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243784AbhIFQaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 12:30:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243932AbhIFQaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 12:30:17 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2B1C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 09:29:12 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id c8-20020a7bc008000000b002e6e462e95fso5415701wmb.2
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 09:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N2F4JeB3sa1+gkHdG83OBiSEbhGCE1UpAe34oEJDfjA=;
        b=NntqWuYBClVLEomO7SUyo4BExOxqujdurX7YU4FQlh71RaTX2ZYM2SHILWGsX+EvVB
         oDfLp+xlPHta1e5lshBPCeEQ1yJYgvjbUVscmARvgkTwzAYcGeWmoqZ7N8z488fXjjj8
         tvLBaozvvZRL0V8IsctpDhiWI55PDYJ5GAjf7ZWjB2jHV0e6iHh+okVWi+wksFq46Z8S
         MRv3JinCDf/thGMXY1SnK2UjiFE2L4K2nZrXmOK2Gobl0T+CiGPji+8ewTaey+hwnTjE
         rEMFdnpwBkMHqLJlcWnYmpYpKzoQ3bQDa6FKlcyPg9rcNx4KWz6QaWOphVLR1zdZD0rF
         x7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N2F4JeB3sa1+gkHdG83OBiSEbhGCE1UpAe34oEJDfjA=;
        b=WL/FdQYaU3b87Wfpwgk2jsYj6OWPBQg0tVWukyfDMmXhqKO/q+28NO+fhnx94g7NvX
         sg52AgKPYQhlW/jtlEqDsyOffl4nnGPSDA7W4B5cizIBurnQu7AlnHahljbKOj8GfmKK
         DtHmavwRls8yUawas2MMQUKoALIW0lHjYgiM+ASmphiF9g03WE/eiy1jKthDEjKdsSJJ
         yh9lxaPdls+Vx193AxJtfL0oQE69QCzKNYTLcf6gxnjqBRXeWn9XC0LSqLGRtHUTKcz0
         gzagdH5+fQ9TY2e+SZLJA6P6z+3Nof3IMvsFZOhAaUi8xfrcMhOajZ3ZeDndlgBDo9Cm
         WNXA==
X-Gm-Message-State: AOAM5304lGAsl3W4mZO+Gb8IJqlRlCZH5+5XnL8ZOJnKYfWDvY7xo15F
        pYoqZWesxQyxa+4DTVlPjS8Ddg==
X-Google-Smtp-Source: ABdhPJxb0/l730xJ/heDliolE+E9KBIrOX7chQpvrOEZ9HAxZJK/VtNF9OOD0SG2X5NOefCeqHWgvg==
X-Received: by 2002:a1c:7503:: with SMTP id o3mr11966361wmc.129.1630945751442;
        Mon, 06 Sep 2021 09:29:11 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id l17sm8637307wrz.35.2021.09.06.09.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:29:10 -0700 (PDT)
Subject: Re: [PATCH v5 20/21] ASoC: qdsp6: audioreach: add q6prm support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-21-srinivas.kandagatla@linaro.org>
 <8a38f2f2-d74d-53c6-a4f5-669fef1f7c05@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0e7fd3da-6cea-7b7d-6890-6bd409aa0c06@linaro.org>
Date:   Mon, 6 Sep 2021 17:29:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8a38f2f2-d74d-53c6-a4f5-669fef1f7c05@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


thanks Pierre for taking time to review the patches.

On 03/09/2021 16:57, Pierre-Louis Bossart wrote:
> 
>> +struct prm_cmd_request_rsc {
>> +	struct apm_module_param_data param_data;
>> +	uint32_t num_clk_id;
>> +	struct audio_hw_clk_cfg clock_ids[1];
>> +} __packed;
>> +
>> +struct prm_cmd_release_rsc {
>> +	struct apm_module_param_data param_data;
>> +	uint32_t num_clk_id;
>> +	struct audio_hw_clk_cfg clock_ids[1];
> 
> why do you need arrays of one element? I thought this was also frowned
> upon if not already deprecated?
> 
> 
These instances are fixed across the patches now.

>> +} __packed;
>> +
>> +static int q6prm_send_cmd_sync(struct q6prm *prm, struct gpr_pkt *pkt,
>> +			uint32_t rsp_opcode)
>> +{
>> +	gpr_device_t *gdev = prm->gdev;
>> +	struct gpr_hdr *hdr = &pkt->hdr;
>> +	int rc;
>> +
>> +	mutex_lock(&prm->lock);
>> +	prm->result.opcode = 0;
>> +	prm->result.status = 0;
>> +
>> +	rc = gpr_send_pkt(prm->gdev, pkt);
>> +	if (rc < 0)
>> +		goto err;
>> +
>> +	if (rsp_opcode)
>> +		rc = wait_event_timeout(prm->wait,
>> +					(prm->result.opcode == hdr->opcode) ||
>> +					(prm->result.opcode == rsp_opcode),
>> +					5 * HZ);
>> +	else
>> +		rc = wait_event_timeout(prm->wait,
>> +					(prm->result.opcode == hdr->opcode),
>> +					5 * HZ);
>> +
>> +	if (!rc) {
>> +		dev_err(&gdev->dev, "CMD timeout for [%x] opcode\n",
>> +			hdr->opcode);
>> +		rc = -ETIMEDOUT;
>> +	} else if (prm->result.status > 0) {
>> +		dev_err(&gdev->dev, "DSP returned error[%x] %x\n", hdr->opcode,
>> +			prm->result.status);
>> +		rc = -EINVAL;
>> +	} else {
>> +		dev_err(&gdev->dev, "DSP returned [%x]\n",
>> +			prm->result.status);
>> +		rc = 0;
>> +	}
>> +
>> +err:
>> +	mutex_unlock(&prm->lock);
>> +	return rc;
>> +}
> 
> this looks again like the same code we've seen twice already?
I remember your comments last time in the same area, Not sure why I 
missed this one. Its now fixed we have one library function for this.

> 
>> +
>> +static int q6prm_set_hw_core_req(struct device *dev, uint32_t hw_block_id, bool enable)
>> +{
>> +	struct prm_cmd_request_hw_core *req;
>> +	struct apm_module_param_data *param_data;
>> +	struct gpr_pkt *pkt;
>> +	struct q6prm *prm = dev_get_drvdata(dev->parent);
>> +	gpr_device_t *gdev  = prm->gdev;
>> +	void *p;
>> +	int rc = 0;
>> +	uint32_t opcode, rsp_opcode;
>> +
>> +	if (enable) {
>> +		opcode = PRM_CMD_REQUEST_HW_RSC;
>> +		rsp_opcode = PRM_CMD_RSP_REQUEST_HW_RSC;
>> +	} else {
>> +		opcode = PRM_CMD_RELEASE_HW_RSC;
>> +		rsp_opcode = PRM_CMD_RSP_RELEASE_HW_RSC;
>> +	}
>> +
>> +	p = audioreach_alloc_cmd_pkt(sizeof(*req), opcode, 0, gdev->svc.id,
>> +				     GPR_PRM_MODULE_IID);
>> +	if (IS_ERR(p))
>> +		return -ENOMEM;
>> +
>> +	pkt = p;
> 
> same comment as before for the rest of this file:
> 
> pkt = audioreach_alloc_cmd_pkt(sizeof(*req), opcode, 0, gdev->svc.id,
> 				     GPR_PRM_MODULE_IID);
> kfree(pkt);
> 
> 
This is now fixed.
> 
>> +	req = p + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
>> +
>> +	param_data = &req->param_data;
>> +
>> +	param_data->module_instance_id = GPR_PRM_MODULE_IID;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_RSC_HW_CORE;
>> +	param_data->param_size = sizeof(*req) - APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	req->hw_clk_id = hw_block_id;
>> +
>> +	q6prm_send_cmd_sync(prm, pkt, rsp_opcode);
>> +
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +
> 
