Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C59A605BC3
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 12:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbiJTKCU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 06:02:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbiJTKCC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 06:02:02 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37412123460
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 03:01:44 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id iv17so14570687wmb.4
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 03:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wtcbR1/vSLlgWiPxJK2RFUpsFc1kP4wHiOoVjocmZnc=;
        b=yPklZV9hQ66iR0bYoE0dKv3wqKbQKEZdvt1v5dOx64JWore4uv5INVkC1PtE4qaijV
         MBt7vvJsy8cytoSsOchgens99ztv7wjtZq0qBzCK92zDh6p21tNFAQ/i+dP63w9DsSuT
         4iPCLjh14EZV4tN+g171Ul6DmetFDWMSJkUp6XsfdOu5c08DH0ww4AYJ+VMWfPqMfoo4
         KWTZG98j8fugge9V4LMRY2E0Kab2kBZDSzb8RU5nQpsNWiBSg9Zu5wOgtYMYTdRpJPZi
         VkQm8L5OI8z6T+z8bHJNl1Ft9ezrM3m+MKlc/FKl92kd8mcTlTsEpXt5Qqtq2LY8do4g
         A/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wtcbR1/vSLlgWiPxJK2RFUpsFc1kP4wHiOoVjocmZnc=;
        b=IHNraOdY2SBseeMu8IacSScvNe9RykPjeiFZ+h/dClrA2T/f63wiwlXcTZ0pgdvHYf
         B26UMMD8XXAvjIzG+xcchtetqUz7xHGaitM9Xvf4snRWrJveC69p6v/bI6O6bronIiYT
         eUL70tML1ABabqt+h3vQMQ/g3ve6HqumQAkknbHwvtaeQ5ouMgaIxiTxCnFbXuv/kC7o
         lzcvKFUDnekkM/XHy3e/ryY8kxoiSZ585eqCWVABtuBd1LCD4AaNHBgiCwlkqFa9hIut
         S7D1wqOxTvoWEJf3OwOVvNbUm5sLFiU7MFIhjNRcjTxjXbpXs+sJfA+30sn//9SwtZCA
         zNQg==
X-Gm-Message-State: ACrzQf3RuhncbpgY4DdZGN8RkmtGsZSTlcCecOWrLwIqQjnEHIOE8sAi
        OXC9s6kFjYSPWnOsUrwghtRzUA==
X-Google-Smtp-Source: AMsMyM72vsLkEwG0ibeiDbkv1ECoz3e6BXKkSEdASeXlYPof1pMbzvBxFhQn8LN9R1UdSv0MPyZPqQ==
X-Received: by 2002:a05:600c:4f90:b0:3c6:c7dd:ce40 with SMTP id n16-20020a05600c4f9000b003c6c7ddce40mr26757856wmq.114.1666260080164;
        Thu, 20 Oct 2022 03:01:20 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m14-20020a05600c3b0e00b003b4fe03c881sm2365109wms.48.2022.10.20.03.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 03:01:19 -0700 (PDT)
Message-ID: <d2946f03-3f30-ab60-d44f-3d6978750d5e@linaro.org>
Date:   Thu, 20 Oct 2022 11:01:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 2/2] soc: qcom: spm: Add MSM8939 SPM register data
Content-Language: en-US
To:     Vincent Knecht <vincent.knecht@mailoo.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221019171004.1080911-1-vincent.knecht@mailoo.org>
 <20221019171004.1080911-2-vincent.knecht@mailoo.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20221019171004.1080911-2-vincent.knecht@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 18:10, Vincent Knecht wrote:
> Add SPM register information and initialization values for
> QCOM MSM8939 SoC.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>   drivers/soc/qcom/spm.c | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/soc/qcom/spm.c b/drivers/soc/qcom/spm.c
> index 484b42b7454e..670775e43f07 100644
> --- a/drivers/soc/qcom/spm.c
> +++ b/drivers/soc/qcom/spm.c
> @@ -98,6 +98,17 @@ static const struct spm_reg_data spm_reg_8916_cpu = {
>   	.start_index[PM_SLEEP_MODE_SPC] = 5,
>   };
>   
> +static const struct spm_reg_data spm_reg_8939_cpu = {
> +	.reg_offset = spm_reg_offset_v3_0,
> +	.spm_cfg = 0x1,
> +	.spm_dly = 0x3C102800,
> +	.seq = { 0x60, 0x03, 0x60, 0x0B, 0x0F, 0x20, 0x50, 0x1B, 0x10, 0x80,
> +		0x30, 0x90, 0x5B, 0x60, 0x50, 0x03, 0x60, 0x76, 0x76, 0x0B,
> +		0x50, 0x1B, 0x94, 0x5B, 0x80, 0x10, 0x26, 0x30, 0x50, 0x0F },
> +	.start_index[PM_SLEEP_MODE_STBY] = 0,
> +	.start_index[PM_SLEEP_MODE_SPC] = 5,
> +};
> +
>   static const u16 spm_reg_offset_v2_1[SPM_REG_NR] = {
>   	[SPM_REG_CFG]		= 0x08,
>   	[SPM_REG_SPM_CTL]	= 0x30,
> @@ -211,6 +222,8 @@ static const struct of_device_id spm_match_table[] = {
>   	  .data = &spm_reg_8909_cpu },
>   	{ .compatible = "qcom,msm8916-saw2-v3.0-cpu",
>   	  .data = &spm_reg_8916_cpu },
> +	{ .compatible = "qcom,msm8939-saw2-v3.0-cpu",
> +	  .data = &spm_reg_8939_cpu },
>   	{ .compatible = "qcom,msm8974-saw2-v2.1-cpu",
>   	  .data = &spm_reg_8974_8084_cpu },
>   	{ .compatible = "qcom,msm8998-gold-saw2-v4.1-l2",

Compared to downstream, init sequence looks the same.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
