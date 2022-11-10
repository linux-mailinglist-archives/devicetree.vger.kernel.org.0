Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9204B6245FC
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 16:33:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbiKJPdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 10:33:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231679AbiKJPcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 10:32:03 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C055828E29
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:30:29 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id s12so3623801edd.5
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/r1odXsFicDjXczwHWptIWDrmeahFBrWNG3RXqZy30=;
        b=x9T1gEbiNQ3mG6SXlpXDYzcFi0PN2sRkCm1E2MTtePfALasTJ2FQrdDDc8t7QTAEx6
         H+GRnvhY7YTkqy0GLoeUYXLkSLs9XLtoOuF8voxUt2dx/wlSrh7va1i1rX9qP/fia7qa
         bYCZvBP38Nq/1+sE9ugE2p05aqUaJw29OaOLSv1B9BY4NpghZyFr805gSUXwOO1mdBIV
         PY52EQWNV5NXTifRIywbpDQiiPmGv+zn+biJs8cXeHhlFQygpWhF4SQMaVAFN2Gh+pg8
         Hy/04pFh00D/7KbdXoul3vZnPD6PYpABK8EAK0wusQKAo9uYx2WtDbZYywFhbfGcVWo7
         ppIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j/r1odXsFicDjXczwHWptIWDrmeahFBrWNG3RXqZy30=;
        b=2PNhtjZUuTsYWWyc+aGppwLOKPEgaBlQkqKRsVfe4pEhPKVTSDAT5kuNRNpk6rSFOk
         riEfwdX2wx7R5X3fB0qfSPdUx0WsTalI7SnQ16N+j4zsalBMs9dBO6eRs7Bo93HfRO7f
         vaeJjWifPbNOWYyQ7eUg0gK7p3z8Y3VCPrcyqjjiCK5BwpvsRf9KvYLnoe/YwInFL4OS
         cWTm1ZEvdgPdk3CCAvQTRWbeoUsTu4QFmx3h3q+exO6Ha67bf6RlLuOdbt0Zh/6cZKYu
         7EPau1C0mR2O8XOeRYk4jGjbPq8868miV+Z0NDQ1yUDSnMmxJIkn7EX9UnUGLgcvsWf7
         uhZQ==
X-Gm-Message-State: ACrzQf3/3zaA/agcCsi4Bc+GW6bJkowY1mfT1PxZA9fAZEeW9wnkpp78
        mzRCMTNqGQCblYcQccYhckpxpQ==
X-Google-Smtp-Source: AMsMyM6h7XRJNoHUGOm9Ham1GCwmtJEKRec6pWlvmIctEXk8jPc4i2Oz8lPFYrIAgcYTlujmRMoFVQ==
X-Received: by 2002:a05:6402:3408:b0:43c:2dd3:d86b with SMTP id k8-20020a056402340800b0043c2dd3d86bmr63263031edc.108.1668094228386;
        Thu, 10 Nov 2022 07:30:28 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id q19-20020a17090676d300b007030c97ae62sm7246104ejn.191.2022.11.10.07.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 07:30:27 -0800 (PST)
Message-ID: <c8a480c3-7bce-8e83-c0e6-6b29f32211d8@linaro.org>
Date:   Thu, 10 Nov 2022 16:30:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: drop incorrect
 spi-max-frequency
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221110152741.542024-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221110152741.542024-1-krzysztof.kozlowski@linaro.org>
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


On 10/11/2022 16:27, Krzysztof Kozlowski wrote:
> spi-max-frequency is a property of SPI device, not the controller:
>
>    qcom/sm8450-hdk.dtb: geniqup@8c0000: spi@880000: Unevaluated properties are not allowed ('spi-max-frequency' was unexpected
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>


Konrad

>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 7 -------
>   1 file changed, 7 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9bdda0163573..e9f34c102a6f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -794,7 +794,6 @@ spi15: spi@880000 {
>   				interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi15_data_clk>, <&qup_spi15_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -834,7 +833,6 @@ spi16: spi@884000 {
>   				interrupts = <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi16_data_clk>, <&qup_spi16_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -874,7 +872,6 @@ spi17: spi@888000 {
>   				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi17_data_clk>, <&qup_spi17_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -914,7 +911,6 @@ spi18: spi@88c000 {
>   				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi18_data_clk>, <&qup_spi18_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -954,7 +950,6 @@ spi19: spi@890000 {
>   				interrupts = <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi19_data_clk>, <&qup_spi19_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -1007,7 +1002,6 @@ spi20: spi@894000 {
>   				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi20_data_clk>, <&qup_spi20_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
> @@ -1047,7 +1041,6 @@ spi21: spi@898000 {
>   				interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>;
>   				pinctrl-names = "default";
>   				pinctrl-0 = <&qup_spi21_data_clk>, <&qup_spi21_cs>;
> -				spi-max-frequency = <50000000>;
>   				interconnects = <&clk_virt MASTER_QUP_CORE_2 0 &clk_virt SLAVE_QUP_CORE_2 0>,
>   						<&system_noc MASTER_A2NOC_SNOC 0 &gem_noc SLAVE_LLCC 0>;
>   				interconnect-names = "qup-core", "qup-config";
