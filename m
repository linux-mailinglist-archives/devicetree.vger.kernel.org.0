Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4941F6CDADF
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:30:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbjC2Na3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:30:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbjC2Na3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:30:29 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA85540D7
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:30:15 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id g19so7100218lfr.9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680096614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NjuPm2mnbTK4XjKrE2sdkQecVnaXZRj+WhShzlmnGhc=;
        b=tFm2sy55mBAQSuwvYStOo5KMYrTb8Sbnf0UoBhGJkL9dy6gVNAumLOf26Ff6p4uHqj
         zNOGUNXvN14va+oiMqT3tJuambtiXRy/hJLcOczfaE9qC+1YOVpdpU0aDj51qalRPDEE
         yOeRJx9yfdgM05ia30m2g9IDrKk9VS8+iJrf9JZ2N2nBJksaml6U5lQS5qOkp9tzBNDv
         WKU//0Dq/7c+pA788vXMn+BYzRPX/rdkPW09JeS5hZeAVo9ZfiQwv84Ttb4DXjd4h6CO
         uuw7bSiq4Vvbxrpn4QnKtVfKykWRUIzD1x3IPNRfKHFIcWwVfjF/Ny31RtvT1028Ca3l
         2bXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680096614;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NjuPm2mnbTK4XjKrE2sdkQecVnaXZRj+WhShzlmnGhc=;
        b=qRfyQMVonS8edp3jXPVz1687JUx0sMjhxRrGDxQ3AX6Snh6p8HzAVQ0dzvmOOD8GVq
         8SRzog49iT3X9dCces7pm38lWj8UZ1rakVAJZsCMBmitsFPdwFVIL3SbbHMXfZ9iQXxQ
         a/KsFsFIBPBaEtVsbezX5Wo2YLAAUWVfEOFV/a9j0jQoEOJPS8u9NiMBIlJddl84s+nB
         zOS6AwxF+q7GlD21qa7ztNmX+3tMiUH2cKEQxhx9kPXyYBlCx5rnfCO+gClDn1e+kCur
         dOZ/ZFbMWLSw+Oa6X3YJP2qA7vQR0NtKwyXCKjAsGNzpe+s9+V8FPNq/50pSfAsDWX/1
         JBrQ==
X-Gm-Message-State: AAQBX9fzKQBoUy61g4aUd7u0Hpi4lMtXiX7UATt+vDqzAK6mGLHFtDEY
        I5/nhqGJUycHVMfsBfF35XeobQ==
X-Google-Smtp-Source: AKy350aoyTtS/rfk9MywnHnFJ22ChXQCdc5JvkG5n8NAzfDYplkFaClSJPr3YxYLGEdevzoA3wvh6g==
X-Received: by 2002:ac2:4c36:0:b0:4ea:fdcf:8f60 with SMTP id u22-20020ac24c36000000b004eafdcf8f60mr5581702lfq.3.1680096614120;
        Wed, 29 Mar 2023 06:30:14 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id d7-20020ac25ec7000000b004e887fd71acsm5395938lfq.236.2023.03.29.06.30.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 06:30:13 -0700 (PDT)
Message-ID: <14350eba-edb6-0243-5451-2e2b7d1bd3fd@linaro.org>
Date:   Wed, 29 Mar 2023 15:30:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
Content-Language: en-US
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
 <20230328-topic-msgram_mpm-v1-2-1b788a5f5a33@linaro.org>
 <20230329034958.GC3554086@dragon>
 <c42b8c24-2159-64ae-d36c-92c69274f24f@linaro.org>
 <20230329132819.GA3590215@dragon>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230329132819.GA3590215@dragon>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29.03.2023 15:28, Shawn Guo wrote:
> On Wed, Mar 29, 2023 at 01:06:11PM +0200, Konrad Dybcio wrote:
>>
>>
>> On 29.03.2023 05:49, Shawn Guo wrote:
>>> On Tue, Mar 28, 2023 at 12:02:53PM +0200, Konrad Dybcio wrote:
>>>> The MPM hardware is accessible to us from the ARM CPUs through a shared
>>>> memory region (RPM MSG RAM) that's also concurrently accessed by other
>>>> kinds of cores on the system (like modem, ADSP etc.). Modeling this
>>>> relation in a (somewhat) sane manner in the device tree basically
>>>> requires us to either present the MPM as a child of said memory region
>>>> (which makes little sense, as a mapped memory carveout is not a bus),
>>>> define nodes which bleed their register spaces into one another, or
>>>> passing their slice of the MSG RAM through some kind of a property.
>>>>
>>>> Go with the third option and add a way to map a region passed through
>>>> the "qcom,rpm-msg-ram" property as our register space.
>>>>
>>>> The current way of using 'reg' is preserved for ABI reasons.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>> ---
>>>>  drivers/irqchip/irq-qcom-mpm.c | 30 +++++++++++++++++++++++++-----
>>>>  1 file changed, 25 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/irqchip/irq-qcom-mpm.c b/drivers/irqchip/irq-qcom-mpm.c
>>>> index d30614661eea..6fe59f4deef4 100644
>>>> --- a/drivers/irqchip/irq-qcom-mpm.c
>>>> +++ b/drivers/irqchip/irq-qcom-mpm.c
>>>> @@ -14,6 +14,7 @@
>>>>  #include <linux/mailbox_client.h>
>>>>  #include <linux/module.h>
>>>>  #include <linux/of.h>
>>>> +#include <linux/of_address.h>
>>>>  #include <linux/of_device.h>
>>>>  #include <linux/platform_device.h>
>>>>  #include <linux/pm_domain.h>
>>>> @@ -322,8 +323,10 @@ static int qcom_mpm_init(struct device_node *np, struct device_node *parent)
>>>>  	struct device *dev = &pdev->dev;
>>>>  	struct irq_domain *parent_domain;
>>>>  	struct generic_pm_domain *genpd;
>>>> +	struct device_node *msgram_np;
>>>>  	struct qcom_mpm_priv *priv;
>>>>  	unsigned int pin_cnt;
>>>> +	struct resource res;
>>>>  	int i, irq;
>>>>  	int ret;
>>>>  
>>>> @@ -374,9 +377,21 @@ static int qcom_mpm_init(struct device_node *np, struct device_node *parent)
>>>>  
>>>>  	raw_spin_lock_init(&priv->lock);
>>>>  
>>>> -	priv->base = devm_platform_ioremap_resource(pdev, 0);
>>>> -	if (IS_ERR(priv->base))
>>>> -		return PTR_ERR(priv->base);
>>>> +	/* If we have a handle to an RPM message ram partition, use it. */
>>>> +	msgram_np = of_parse_phandle(np, "qcom,rpm-msg-ram", 0);
>>>> +	if (msgram_np) {
>>>> +		ret = of_address_to_resource(msgram_np, 0, &res);
>>>> +		/* Don't use devm_ioremap_resource, as we're accessing a shared region. */
>>>> +		priv->base = ioremap(res.start, resource_size(&res));
>>>
>>> Are you suggesting that other cores/drivers will also need to access
>>> the mpm slice below?
>>>
>>> 	apss_mpm: sram@1b8 {
>>> 		reg = <0x1b8 0x48>;
>>> 	};
>> Yes, the RPM M3 core. Other slices may be accessed
>> by any core at any time.
> 
> Hmm, let me reword my question.  Other than irq-qcom-mpm, is there any
> other Linux drivers that also need to request this slice region?
No.

> Otherwise, I do not understand why devm_ioremap_resource() cannot be
> used.
drivers/rpmsg/qcom_glink_rpm.c calls devm_ioremap on the entire
RPM MSG RAM.

Konrad

> 
> Shawn
