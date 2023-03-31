Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90D1D6D28BF
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 21:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232303AbjCaTlg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 15:41:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231775AbjCaTlg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 15:41:36 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4C752221C
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:41:34 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id br6so30268752lfb.11
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680291693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scBFpVwiNMj82Kh9aWY3X6HN71X0eIH0NEFfWKOZT6g=;
        b=WImlkUQg8K3Z4S0mIe1cAQxKOXWTNwOXDn5v5wh7R8ptN483Z8w61IvDmKRUjdtD/+
         jzr8o5TdDeHBzDvjbPgsls+YaDqzM31fSlIvZTGtqz3SgCvx3ARzsy6CJwy/pF9TMzdz
         e/6B1WpV3MXYiGyurjYRlf62QDWu7cyKpQpLHkjBSizxZhwjE8sBQeifr0O3O+8LUe/u
         zWagHr2pUfr9033GnPPCtHjS+D/ABFnW/Z2RjWhtkvNLi0j5q0+yhci4upDXViLitunP
         Jq5R9kLXoHMZB0Hb8/dvS5Hh14ezoYdM2HNq62AoYJzxYMoKffW2BKyETI4j3WZj667Z
         3CVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=scBFpVwiNMj82Kh9aWY3X6HN71X0eIH0NEFfWKOZT6g=;
        b=dL55AD7A+Q8Mfjbldgu1c9nMuNWYHJD1gd8VNFkr8pmabNXvoUQjDbMdyB4Mj/RW/N
         xjjUmgxT44Lkl0KAqANVGnvynZ49s16+VurLoJFuel1hN7bsyERBMHQ2nI7fjnJt8CjA
         tapdjpYWBkHGXwsUKRj9DHQGlTJJ6UvNmXfBXtp5kTRpB1bXqrdOzqY9TTEybD4//i4B
         JsdFjSs2p2wHEsgq2LCy2I5imQwUIAxvhgsPcMDcMqmqbGkoHqNhw8b1Xc7V/7z5G5Zj
         /r6MCKp7TOHZrgq6mpsBqWN188asGURB2Nl6tB4yLeiDw9uMnGA8rSN+NM5k0izKuWc3
         l4qA==
X-Gm-Message-State: AAQBX9dTMnldMm0Ii1p+wQLCol/gGtgQ6FaJO00J1ooLEVLURW/pJ2mQ
        mkbD4onqMyrjhCuXeshqvNRaZQ==
X-Google-Smtp-Source: AKy350ZtYfeUAWsd4lZIvNrKok3SHyAKoHvh6+qh1TP6EJBCktSBwJywHDMz+soSXbOZpOs4cR0lMg==
X-Received: by 2002:a05:6512:3c2:b0:4dc:84dd:eb91 with SMTP id w2-20020a05651203c200b004dc84ddeb91mr8135948lfp.22.1680291692904;
        Fri, 31 Mar 2023 12:41:32 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id d7-20020ac24c87000000b004eae8c74fffsm495372lfl.66.2023.03.31.12.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:41:32 -0700 (PDT)
Message-ID: <dba1db45-20b4-aad2-54f2-bb9f4342861d@linaro.org>
Date:   Fri, 31 Mar 2023 21:41:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] ARM: dts: qcom: sdx55: Move reset and wake gpios to
 board dts
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230331145915.11653-1-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331145915.11653-1-manivannan.sadhasivam@linaro.org>
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



On 31.03.2023 16:59, Manivannan Sadhasivam wrote:
> The reset and wake properties in the PCIe EP node belong to the board dts
> as they can be customized per board design. So let's move them from SoC
> dtsi.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

On a note, is PCIe not connected to anything on the SDX55 MTP?

Konrad
>  arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts | 3 +++
>  arch/arm/boot/dts/qcom-sdx55.dtsi                | 2 --
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> index 81f33eba39e5..b73b707342af 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> @@ -255,6 +255,9 @@ &pcie_ep {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie_ep_clkreq_default &pcie_ep_perst_default
>  		     &pcie_ep_wake_default>;
> +
> +	reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
>  };
>  
>  &qpic_bam {
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index 286fa92da428..bc310ed01b40 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -421,8 +421,6 @@ pcie_ep: pcie-ep@1c00000 {
>  				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names = "global",
>  					  "doorbell";
> -			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> -			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
>  			resets = <&gcc GCC_PCIE_BCR>;
>  			reset-names = "core";
>  			power-domains = <&gcc PCIE_GDSC>;
