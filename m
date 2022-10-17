Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 013AC600860
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 10:11:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230170AbiJQILO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 04:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbiJQILN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 04:11:13 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4D6F578BD
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:11:09 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f11so17225024wrm.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:reply-to:organization:from
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aXrWH9V8ckiI4td6mzaIwOJzeQHePtJKtlDcOsKbuzs=;
        b=SGa7MjFDg8DyJmh0cVyAm03hNUsAM35Cl6aNwZ3QC0uyFSYk7Cp7Ifnw67p/woXBHA
         HM7iZSq0rXzac4py35afmSfc8zKGmX9yTjjTmVmi+sUNyZXnbH50pQZnHK4uqYF40orZ
         bbhF3eDZ36XXPZeg+zLtY/kh/Lvad+YWIAyG9JaHCFOKEyXYrobeQ7cA/5ZskqPnTbBr
         6rPVD+ZJa2VyucPzo3FUUaiFe6kGQm0M9cB1kCS5HBS9DKkdYb0pGEvcu5PO5PnDwzuv
         82cMSp0MF3LjrS5EGLEmALBWH7rVvok6X2M2KOtlV9Be8CzceVZaE9grIYnWLCPXLBbA
         07kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:reply-to:organization:from
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aXrWH9V8ckiI4td6mzaIwOJzeQHePtJKtlDcOsKbuzs=;
        b=PtYGlP0DoLFroz75UVQa28cHld4ali2ftI23bON4E056lAK/FfWi1P/VbrNbRG8nTz
         DvHYywShBm6h6BrqjTcQotCRNkha5DIjCD1FPCLjhXRl1QWyvegH2PxjmCWQQxxlP/zN
         fi/ICdDSoxQ7nUMy8cxjpFuoy2udhfuJ1a85FmqBhOV7d8Jgo752d3HVzZZv6DWZZMc4
         M/4HGJ27Mfpdh98HnHgfXID+6jFtREjG1DRoAMeDmBOa06zz7CUHwkXucICB9G/XktRv
         WBgHgglRCTtzsePlgE4xGWndknbEho7ZTs6Zm6zmFlOh0JWY9dKntL9kUhNtkLOzu4ia
         ojvQ==
X-Gm-Message-State: ACrzQf36qgAECj6axpss8bbEmj7bb/uGRmMXekyis+/HFf0fBodPP0cn
        RxGp284SpFbV3h0KCuH+VkrnvQ==
X-Google-Smtp-Source: AMsMyM6taGnWTPDwCpnz+imXeO9ParwTtvxOdaTAg0swafVmzasYk6u/OckbbAlHEmBBOPGkUpo31Q==
X-Received: by 2002:adf:f2cd:0:b0:22e:49c0:aa3b with SMTP id d13-20020adff2cd000000b0022e49c0aa3bmr5553787wrp.97.1665994268506;
        Mon, 17 Oct 2022 01:11:08 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id n14-20020a05600c4f8e00b003b47b80cec3sm14779325wmq.42.2022.10.17.01.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 01:11:07 -0700 (PDT)
Message-ID: <c51c2ec3-959d-a0da-b9c4-46cc77076390@linaro.org>
Date:   Mon, 17 Oct 2022 10:11:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 1/4] arm64: dts: qcom: msm8998: add gpio-ranges to TLMM
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221011213145.122879-1-krzysztof.kozlowski@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
Reply-To: neil.armstrong@linaro.org
In-Reply-To: <20221011213145.122879-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 23:31, Krzysztof Kozlowski wrote:
> Qualcomm pinctrl bindings and drivers expect gpio-ranges property.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/msm8998.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index f05f16ac5cc1..2c4acf227253 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -1056,6 +1056,7 @@ tlmm: pinctrl@3400000 {
>   			compatible = "qcom,msm8998-pinctrl";
>   			reg = <0x03400000 0xc00000>;
>   			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
> +			gpio-ranges = <&tlmm 0 0 150>;
>   			gpio-controller;
>   			#gpio-cells = <2>;
>   			interrupt-controller;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
