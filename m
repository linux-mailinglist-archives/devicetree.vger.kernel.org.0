Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B72B5F1B18
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 11:16:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbiJAJQ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 05:16:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiJAJQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 05:16:26 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0208615D84C
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 02:16:25 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f21so3251017lfm.9
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 02:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cPVCsIVODHvfKTeM+Zz/FP9C7IU6G1Ij7SgMmRLzjJ0=;
        b=vgsw1XKKNZpJ9tTWXrLOcth24UXJkyWTvL9ingX9q7HSjRP7LZDchFqShtJbUJ6gMh
         8OoOpYkfAXFfAoQk3ENjFQ211/pkJZptbqaYVbKmpNFjpdVYYtnuH8AYHWHVYDxMe8lm
         G8EwOZkaVOEYZ4gNRfjIiwGz2876SI58OdKJHwmAiILJM3qGoMxSM68PF6kXPIZx/rCY
         pO27XUFRVie3PvBBjz7FOXri7OfTMdYLaDNP2qqRXWEXyemlP3jW33E/yCrRbbDjZvnK
         NEcvIucDRAShaxxmjLGVv60TmSgjpma8ENn0jCrf3FWojfa3fGNxoHMIQ4EjqqSWFpGB
         M/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cPVCsIVODHvfKTeM+Zz/FP9C7IU6G1Ij7SgMmRLzjJ0=;
        b=axzmb8eti9WzW0DxrEbe/t/iHcP4mtZkPZ6wtetL0wCfv447W0q0lxkWtqVXb3k5PR
         Q4N7MkrzHN62aDqjhTzN4+a1PHo5+XR/faCjT2HrzOj6oikgXPyFTUGbhW2lViPPwpuu
         vFt1sbJXInV+quavc3fZkUmbGn5/mhvPnX0yS7tM+ipb+4An65VUOB2HKxv7DmViEC9s
         Ar8DxuzJnhuJl5CU6IwrvjlRo8MkJ/aqYyUdWsKCFDvnGL30QNaW8L0iyGoquolKXZ+v
         hu3GPWtY2GUkgHwtMgyJvdcQWKe7auWZzESfhYH+nnP8IZ/DaX5RtulJZojYNXrJlMAo
         5bbw==
X-Gm-Message-State: ACrzQf3vJEJQPfk/EWZPipNN1jZ7qqIzPoLZl/BeQq+N0gYnN/zxF1ee
        d0RbpF+JFal/15A4Dm+kym03sA==
X-Google-Smtp-Source: AMsMyM4PfMOgcH0h5xbuUPyeGxMeqAgRokP6xqBzW3pjiLiAHpwroIXZ9Rjqeiw8rtarJkhTcdeiHw==
X-Received: by 2002:a05:6512:3b85:b0:499:183:d5f1 with SMTP id g5-20020a0565123b8500b004990183d5f1mr4270427lfv.659.1664615783413;
        Sat, 01 Oct 2022 02:16:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o12-20020a056512230c00b0048b1b2233ddsm697197lfu.120.2022.10.01.02.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Oct 2022 02:16:22 -0700 (PDT)
Message-ID: <490e35bd-6a64-6985-857c-f9499090125a@linaro.org>
Date:   Sat, 1 Oct 2022 11:16:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 09/19] arm64: dts: qcom: qdru1000: Add interconnect nodes
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221001030656.29365-1-quic_molvera@quicinc.com>
 <20221001030656.29365-10-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001030656.29365-10-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 05:06, Melody Olvera wrote:
> Add interconnect nodes for the QDU1000 and QRU1000 platforms.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qdru1000.dtsi | 27 ++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qdru1000.dtsi b/arch/arm64/boot/dts/qcom/qdru1000.dtsi
> index 8c2af08b8329..b85ffd8baf4b 100644
> --- a/arch/arm64/boot/dts/qcom/qdru1000.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qdru1000.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,gcc-qdru1000.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/interconnect/qcom,qdru1000.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  
>  / {
> @@ -453,5 +454,31 @@ apps_smmu: apps-smmu@15000000 {
>  					<GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
>  					<GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> +
> +		clk_virt: interconnect-0 {
> +			compatible = "qcom,qdu1000-clk-virt", "qcom,qru1000-clk-virt";
> +			#interconnect-cells = <2>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +		};
> +
> +		mc_virt: interconnect-1{

Missing space.

Patchset should be squashed with initial submission. Splitting it does
not make sense in initial work.
Best regards,
Krzysztof

