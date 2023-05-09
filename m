Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 680486FC20C
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 10:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234759AbjEIIwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 04:52:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233852AbjEIIwX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 04:52:23 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 652ED1BC6
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 01:52:20 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4eff4ea8e39so6278646e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 01:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683622337; x=1686214337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h7gDMUSEBAVRDY1bnLtISsHEf/qF5t5a6cRrCMOYpGA=;
        b=hHzAUykDVmQLncWXZn3XGgEKos7Eiaj0uPZna+IFerUDA6ui5D43wuBP/CEyVJ0wBv
         Z8o6eI7XwV2MC85tlEm4tZKyhpuXkStXOiojDjpYZjz2z6fzJXGmkPiu1TXo35eQU2ay
         hnrtjgpFz+8f8U0ec44DHkWyiKXYTgbRuvt1K0IWOqa7/D4hi8ZU4Bj2awjsNPW5khcI
         ndkr7edoDgBmvMZn1VvnSkbIvdHN3xgZ3V2A+7Fv1G6Vg+jEZTJta5xQutybJqEfUBO9
         1JRQsza9WNoQRgW2FTBhZvos6sdpQdGPMo5oX7CE/WnRzuA1Q1PsgZnzROek1nU5+rm3
         UJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683622337; x=1686214337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h7gDMUSEBAVRDY1bnLtISsHEf/qF5t5a6cRrCMOYpGA=;
        b=hixB7q+rJ+maZ12fvAgtAnO5j8rBLBlgH3KndLvhLIO4AzHJ5ak5P9fnS3PhI4DFzp
         9VRlK7w7ZosCNY9BbFzvo+e5DJ35456JttTsPw0XLMkGu1hyE4f/lYdYQxJ+N9R9jUVO
         lwIwGqZlDCcGC2F7YjirmongD0iaiby6ueFC+sXI3/0LGzDdwiV7b8igVK0x0nIGD2s/
         3Seyeu0V6U9P0cG7DGQFueuPRWXBZmCKv7sez8ClW697ISYy0q8w9wqg7Olt0V0yKeLb
         GfIKQLaIQOOIYiI8hpSi6yHGGgZBmmOGIJeHUA1+gDCWhxTY/unMbMgeLhiU07z1t3tL
         gwJA==
X-Gm-Message-State: AC+VfDxm5v/EGo4L/368D1esheTfbFN4wsFy9X9ILk+B1qmUEQGwyETn
        ojkfDm2mpUMvUiEHoVjQSvvOuA==
X-Google-Smtp-Source: ACHHUZ6AfMb+iMXAZRnL0w47gWwxhvmPw7YopD9iAe4sDxzAGhz6VRwoUJ/ddxyG0tSSJRgFE2Uk+Q==
X-Received: by 2002:ac2:4adc:0:b0:4eb:40d4:e0d2 with SMTP id m28-20020ac24adc000000b004eb40d4e0d2mr511339lfp.38.1683622337560;
        Tue, 09 May 2023 01:52:17 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id m9-20020ac24ac9000000b004eedb66983csm267664lfp.273.2023.05.09.01.52.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 01:52:17 -0700 (PDT)
Message-ID: <f45ba65f-3649-5f04-959e-dee29a691012@linaro.org>
Date:   Tue, 9 May 2023 10:52:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 3/6] ARM: dts: qcom-pm8941: add resin support
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230508160446.2374438-1-dmitry.baryshkov@linaro.org>
 <20230508160446.2374438-4-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230508160446.2374438-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.05.2023 18:04, Dmitry Baryshkov wrote:
> Wrap existing pwrkey and new resin nodes into the new pon node to enable
> volume-down key support on platforms using pm8941 PMIC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-pm8941.dtsi | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-pm8941.dtsi b/arch/arm/boot/dts/qcom-pm8941.dtsi
> index a821f0368a28..cf1fcf97fa88 100644
> --- a/arch/arm/boot/dts/qcom-pm8941.dtsi
> +++ b/arch/arm/boot/dts/qcom-pm8941.dtsi
> @@ -19,12 +19,24 @@ rtc@6000 {
>  			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
>  		};
>  
> -		pwrkey@800 {
> -			compatible = "qcom,pm8941-pwrkey";
> +		pon@800 {
> +			compatible = "qcom,pm8941-pon";
>  			reg = <0x800>;
> -			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
> -			debounce = <15625>;
> -			bias-pull-up;
> +
> +			pwrkey {
> +				compatible = "qcom,pm8941-pwrkey";
> +				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
> +				debounce = <15625>;
> +				bias-pull-up;
> +			};
> +
> +			pm8941_resin: resin {
> +				compatible = "qcom,pm8941-resin";
> +				interrupts = <0x0 0x8 1 IRQ_TYPE_EDGE_BOTH>;
> +				debounce = <15625>;
> +				bias-pull-up;
> +				status = "disabled";
> +			};
>  		};
>  
>  		usb_id: usb-detect@900 {
