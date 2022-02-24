Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CD534C30AA
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 16:59:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233942AbiBXP7e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 10:59:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236790AbiBXP7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 10:59:21 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB930179276
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:58:19 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d17so326678wrc.9
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cHggUxZ2d6PFKqdQLzVPT8UbBPpze8bsOzv1kvrdrlo=;
        b=uLqbKonlTeDMASK8EgJjQw1+cd5N+/lABIBHk1MxzHAA8xedvKecOXkanT+MpMCDK3
         eGhDQZKUrTZu920ISxBr2+tWsr8lS8FbKyZdKUvefRAN6YNFzoaT81b3EeXKiRDHuPC3
         l1EO3GOyA/9C10IfLSl4MoTC99veIjsaWNCrYfY438nN4/dDv2EWQK+FOYOpHd6fJR/n
         AOo+3vdrXDzla6QR+RLClnVI8NIgpiH/liMgoqBYyNLgIJLTOO1j5Dop6cvv0PvImon3
         p8WPmE1zElfiLAR4zGn+b+2/2DjzqRATz5PGci7lF5cHat+OQEd/S76f3wbadlMBnWyY
         QiaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cHggUxZ2d6PFKqdQLzVPT8UbBPpze8bsOzv1kvrdrlo=;
        b=KyLiGxizlokNpG0TpMyFiEgCqn7Q3C8RYEjL2C3qGWYG9M8Fpl/9qNy5rehllm0acU
         NHq3URD0y31goSpPxG3nR/BqjaNWYfRYp9Pq0lhWUr5VRIa6kKyqoOlz1TnJgf/+Mtt3
         3aKW2SyRNHSNO1ug+VYG7JufttxgL2zE156SCKLVl+pUSxL3ujr3HU87BxwEm/0spCGh
         dGgpuZIxrXn74xXLgcqTKGaKfPIt6YLO50KFQn2ydeFZDMR0Uk99T/klMw3kf2qul/Mx
         fuq8PcCYMGmj6VI/S1VGjXcX93Gv7KnAQb8Fn9AeKeSYwcqmEfggEkwVJY575aV6RSOL
         cGQQ==
X-Gm-Message-State: AOAM533LCkY0DXyNfwhIQXf2ANr19RoRjM0emqmtqnMxTk779ycaio/u
        Tx80DKEmlV/uO18P1jMabrk8Wg==
X-Google-Smtp-Source: ABdhPJybbfb1DD6u3EohFr6j+SFN/2b6PczIRrH7DpwSghsm9siYp0NGbochHvlp1lJ++O8pqoiL1w==
X-Received: by 2002:adf:f1ca:0:b0:1ed:e2d7:b5f3 with SMTP id z10-20020adff1ca000000b001ede2d7b5f3mr2828386wro.75.1645718298367;
        Thu, 24 Feb 2022 07:58:18 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id n4-20020a7bc5c4000000b0037e0c62604fsm3007605wmk.14.2022.02.24.07.58.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Feb 2022 07:58:17 -0800 (PST)
Message-ID: <be9c99ac-ebdb-e0c1-669b-1257f630f267@linaro.org>
Date:   Thu, 24 Feb 2022 15:58:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] soundwire: qcom: add runtime pm support
Content-Language: en-US
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, quic_srivasam@quicinc.com
References: <20220224133125.6674-1-srinivas.kandagatla@linaro.org>
 <20220224133125.6674-2-srinivas.kandagatla@linaro.org>
 <3dbed2f1-0c6d-9ba6-232f-db57ec9097ce@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <3dbed2f1-0c6d-9ba6-232f-db57ec9097ce@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 24/02/2022 15:41, Pierre-Louis Bossart wrote:
> 
>>   static const struct snd_soc_dai_ops qcom_swrm_pdm_dai_ops = {
>> @@ -1197,12 +1224,23 @@ static int qcom_swrm_get_port_config(struct qcom_swrm_ctrl *ctrl)
>>   static int swrm_reg_show(struct seq_file *s_file, void *data)
>>   {
>>   	struct qcom_swrm_ctrl *swrm = s_file->private;
>> -	int reg, reg_val;
>> +	int reg, reg_val, ret;
>> +
>> +	ret = pm_runtime_get_sync(swrm->dev);
>> +	if (ret < 0 && ret != -EACCES) {
>> +		dev_err_ratelimited(swrm->dev,
>> +				    "pm_runtime_get_sync failed in %s, ret %d\n",
>> +				    __func__, ret);
>> +		pm_runtime_put_noidle(swrm->dev);
>> +	}
>>   
>>   	for (reg = 0; reg <= SWR_MSTR_MAX_REG_ADDR; reg += 4) {
>>   		swrm->reg_read(swrm, reg, &reg_val);
>>   		seq_printf(s_file, "0x%.3x: 0x%.2x\n", reg, reg_val);
>>   	}
>> +	pm_runtime_mark_last_busy(swrm->dev);
>> +	pm_runtime_put_autosuspend(swrm->dev);
>> +
> 
> question: is there a reason why this specific set of reg_read() is
> surrounded pm_runtime stuff? Is this saying that in all other case where
> the callback is used, the controller is already resumed and fully
> operational? That's be worthy of a comment.

controller register reads require clk to be ON, which might not be 
always ON. In suspended case we switch off the clocks.

Other places so far that I have seen is that controller is either 
already resumed or clk is on (interrupt case) and resume case.



>> struct qcom_swrm_ctrl *swrm
>> struct qcom_swrm_ctrl *ctrl
> 
> nit-pick: it helps reviewers when the same variable name is used
> consistently.

Yes, I did notice this, but for some reason I forgot to fix it.

> 
>> +static int __maybe_unused swrm_runtime_suspend(struct device *dev)
>> +{
>> +	struct qcom_swrm_ctrl *ctrl = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	if (!ctrl->clock_stop_not_supported) {
>> +		/* Mask bus clash interrupt */
>> +		ctrl->intr_mask &= ~SWRM_INTERRUPT_STATUS_MASTER_CLASH_DET;
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_MASK_ADDR, ctrl->intr_mask);
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_CPU_EN, ctrl->intr_mask);
>> +	}
>> +	/* Prepare slaves for clock stop */
>> +	ret = sdw_bus_prep_clk_stop(&ctrl->bus);
>> +	if (ret < 0) {
> 
> if (ret < 0 && ret != -ENODATA) {
> 
> ?
> 
>> +		dev_err(dev, "prepare clock stop failed %d", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = sdw_bus_clk_stop(&ctrl->bus);
>> +	if (ret < 0 && ret != -ENODATA) {
>> +		dev_err(dev, "bus clock stop failed %d", ret);
>> +		return ret;
>> +	}
>> +
>> +	clk_disable_unprepare(ctrl->hclk);
>> +
>> +	usleep_range(300, 305);
>> +
>> +	return 0;
>> +}
