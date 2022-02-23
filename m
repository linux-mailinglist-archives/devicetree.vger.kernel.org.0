Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71F1C4C18BD
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 17:36:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242896AbiBWQgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 11:36:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242911AbiBWQgm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 11:36:42 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E124958392
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 08:36:10 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id c192so14112912wma.4
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 08:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xTej52J++Vdqw7VrhzTNhPdElixyOIGOxQmclBtgEIs=;
        b=gaOJMSUBU0cOJLfFyRC6KFGZgiouxROM5yxr10SabL4ZsNanzgqQazAvcbnGMPFms6
         d/4lIRb0wfDmjsRRFID1tQi3Txr1sscyFKSpYmOArIoe1UDv6TG23M0WweL/VEdIlEXg
         Ur4WT97LNf0VhMIoRmxY51bnpvb9pR+EGlkUSwUfcElSp+7x0sq1yj/L0nAIqk3B22Es
         MgcHzyS/Is049deCAgZ4DKhA94P2cNVDh0U/KvSSLZ8lUIidNV4eeaVCQL7+66YSmXux
         VvnRk6+iCh8n5iH8J9wIFNiMi0psgMiN8cfiSqwxpS0c/3vEkxSAP2zd0ZepY/UjiXxs
         MM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xTej52J++Vdqw7VrhzTNhPdElixyOIGOxQmclBtgEIs=;
        b=K0oGs+Hh7lEfaHQJzFw7GWdt4628Hjw6qGzQnqh/lRufc9HttUi8+o/DjV8migVgdg
         NP45dWtyGGR737cFzIj1dcpBYBGqM35K0jiP7/gemuGnad++fT6MdUgec9HV0KaOK4aY
         giLkn5h80x97Q7p55tVu2F084Mb5nnhvRUaghrzFaFU7QkHI6jaAeQ8zaVXlHWEY50Xy
         JasS7qC14A/Ce9nDUhA9khg50Rfp+qfpPvWcLn0Al/ryXiJfQwnhB7JuZUYOhwLm/TWp
         zXvBx3RSJ3Tw4S3yK1mCX3lH80YM3fgoR2DDwj0W17F3Bo+TyutON2oniAsMhcykY7XJ
         M3SQ==
X-Gm-Message-State: AOAM530XVHLoyfURQF5KBjJAyrqCXLncmTFb8xNXeHQMZcCdTYMEAZ1i
        yAvh7dlyxB0k0UF/wSvKrmn78g==
X-Google-Smtp-Source: ABdhPJwAtg2H9zOn3+nFzBGVk6lPvavC67WGxswe4OZpXfkPCcrKYDDG/TPMcyxe3EzeDgQSTWOA0w==
X-Received: by 2002:a05:600c:5cc:b0:37d:25c2:56d0 with SMTP id p12-20020a05600c05cc00b0037d25c256d0mr415802wmd.66.1645634169387;
        Wed, 23 Feb 2022 08:36:09 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id ba27sm26618wrb.61.2022.02.23.08.36.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 08:36:08 -0800 (PST)
Message-ID: <1e532280-5388-157b-8e2d-2ca8b2619f37@linaro.org>
Date:   Wed, 23 Feb 2022 16:36:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] soundwire: qcom: add runtime pm support
Content-Language: en-US
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, quic_srivasam@quicinc.com
References: <20220221104127.15670-1-srinivas.kandagatla@linaro.org>
 <20220221104127.15670-2-srinivas.kandagatla@linaro.org>
 <70db9c01-104e-e081-198e-0b6d8a1c17da@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <70db9c01-104e-e081-198e-0b6d8a1c17da@linux.intel.com>
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



On 22/02/2022 19:15, Pierre-Louis Bossart wrote:
> 
> 
> On 2/21/22 04:41, Srinivas Kandagatla wrote:
>> Add support to runtime PM using SoundWire clock stop on supported instances
>> and bus reset on instances that require full reset.
> 
> This commit message and code are a bit confusing, e.g. you have a
> boolean state
> 
> ctrl->clk_stop_bus_reset = true;
> 
> Does this mean bus reset on exiting clock stop? or just that clock stop
> is not supported and bus reset is required with complete re-enumeration.

WSA instances of SoundWire controllers do not support clk stop and a 
reset of ip is required with complete re-enumeration when a clock is cut 
off during suspend.

> 
> It would be good to try and explain using SoundWire 1.x terminology what
> actions are taken on resume.
> 
There are two cases here.

1> Controller Instance support ClockStop Mode0, we mostly use the 
generic core to do that except in resume path we make sure that we start 
the clock.

2> Controller Instances which that do not support ClockStop, we do soft 
reset of controller along with hard resetting slaves.

> 
>> @@ -1267,6 +1305,7 @@ static int qcom_swrm_probe(struct platform_device *pdev)
>>   	ctrl->bus.ops = &qcom_swrm_ops;
>>   	ctrl->bus.port_ops = &qcom_swrm_port_ops;
>>   	ctrl->bus.compute_params = &qcom_swrm_compute_params;
>> +	ctrl->bus.clk_stop_timeout = 300;
>>   
>>   	ret = qcom_swrm_get_port_config(ctrl);
>>   	if (ret)
>> @@ -1319,6 +1358,21 @@ static int qcom_swrm_probe(struct platform_device *pdev)
>>   		 (ctrl->version >> 24) & 0xff, (ctrl->version >> 16) & 0xff,
>>   		 ctrl->version & 0xffff);
>>   
>> +	pm_runtime_set_autosuspend_delay(dev, 3000);
>> +	pm_runtime_use_autosuspend(dev);
>> +	pm_runtime_mark_last_busy(dev);
>> +	pm_runtime_set_active(dev);
>> +	pm_runtime_enable(dev);
>> +
>> +	/* Clk stop is not supported on WSA Soundwire masters */
>> +	if (ctrl->version <= 0x01030000) {
>> +		ctrl->clk_stop_bus_reset = true;
>> +	} else {
>> +		ctrl->reg_read(ctrl, SWRM_COMP_MASTER_ID, &val);
>> +		if (val == MASTER_ID_WSA)
>> +			ctrl->clk_stop_bus_reset = true;
>> +	}
> 
> I think this means clock_stop_not_supported?

Yes It makes more sense to reword this to clock_stop_not_supported.


> 
>> +static int swrm_runtime_resume(struct device *dev)
>> +{
>> +	struct qcom_swrm_ctrl *ctrl = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	clk_prepare_enable(ctrl->hclk);
>> +
>> +	if (ctrl->clk_stop_bus_reset) {
>> +		reinit_completion(&ctrl->enumeration);
>> +		ctrl->reg_write(ctrl, SWRM_COMP_SW_RESET, 0x01);
>> +		qcom_swrm_get_device_status(ctrl);
> 
> don't you need some sort of delay before checking the controller and
> device status? The bus reset sequence takes 4096 bits, that's a non-zero
> time.

This is soft reset not full Bus Reset as WSA slaves have hard reset pins 
that will be toggled as part of suspend-resume.


> 
>> +		sdw_handle_slave_status(&ctrl->bus, ctrl->status);
>> +		qcom_swrm_init(ctrl);
>> +		wait_for_completion_timeout(&ctrl->enumeration,
>> +					    msecs_to_jiffies(TIMEOUT_MS));
>> +	} else {
>> +		ctrl->reg_write(ctrl, SWRM_MCP_BUS_CTRL, SWRM_MCP_BUS_CLK_START);
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_CLEAR,
>> +			SWRM_INTERRUPT_STATUS_MASTER_CLASH_DET);
>> +
>> +		ctrl->intr_mask |= SWRM_INTERRUPT_STATUS_MASTER_CLASH_DET;
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_MASK_ADDR, ctrl->intr_mask);
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_CPU_EN, ctrl->intr_mask);
>> +
>> +		usleep_range(100, 105);
>> +	}
>> +
>> +	if (!swrm_wait_for_frame_gen_enabled(ctrl))
>> +		dev_err(ctrl->dev, "link failed to connect\n");
>> +
>> +	usleep_range(300, 305);
>> +	ret = sdw_bus_exit_clk_stop(&ctrl->bus);
>> +	if (ret < 0)
>> +		dev_err(ctrl->dev, "bus failed to exit clock stop %d\n", ret);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused swrm_runtime_suspend(struct device *dev)
>> +{
>> +	struct qcom_swrm_ctrl *ctrl = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	if (!ctrl->clk_stop_bus_reset) {
>> +		/* Mask bus clash interrupt */
>> +		ctrl->intr_mask &= ~SWRM_INTERRUPT_STATUS_MASTER_CLASH_DET;
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_MASK_ADDR, ctrl->intr_mask);
>> +		ctrl->reg_write(ctrl, SWRM_INTERRUPT_CPU_EN, ctrl->intr_mask);
>> +	}
>> +	/* Prepare slaves for clock stop */
>> +	ret = sdw_bus_prep_clk_stop(&ctrl->bus);
>> +	if (ret < 0) {
> 
> if a device has lost sync and reports -ENODATA, you want still want to
> go ahead and not prevent the suspend operation from happening.

okay.


--srini
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
>> +
>> +static const struct dev_pm_ops swrm_dev_pm_ops = {
>> +	SET_RUNTIME_PM_OPS(swrm_runtime_suspend, swrm_runtime_resume, NULL)
>> +};
>> +
>>   static const struct of_device_id qcom_swrm_of_match[] = {
>>   	{ .compatible = "qcom,soundwire-v1.3.0", .data = &swrm_v1_3_data },
>>   	{ .compatible = "qcom,soundwire-v1.5.1", .data = &swrm_v1_5_data },
>> @@ -1359,6 +1506,7 @@ static struct platform_driver qcom_swrm_driver = {
>>   	.driver = {
>>   		.name	= "qcom-soundwire",
>>   		.of_match_table = qcom_swrm_of_match,
>> +		.pm = &swrm_dev_pm_ops,
>>   	}
>>   };
>>   module_platform_driver(qcom_swrm_driver);
