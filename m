Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96A0D62BB5D
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:20:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239233AbiKPLU1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:20:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239243AbiKPLUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:20:00 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE6C5E9FB
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:07:52 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id i21so26022983edj.10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYKI/+L6AD5JCOmUcy4bnysNH60+U6BGFDihNRud1Fg=;
        b=C8EvyRu9ltH6X+K3o25sPm+L9bZOLDsYBvwir00fX7pFlQkQe4Gnt9sDL7pfAqLvLO
         /yG6/cBc+t5kIDtB4ehgTyyukmehrf7ldt7a0MOv+yKVeBnVFhng+5A+62/IBsSFq2hA
         pa7LHXkuGCIwGMdBO+ztrvf9+3F+a4DImT1xa8gZxFy9987wPPPZegL9cpt0TqhaAi/v
         RkMZwXFr17AzuIO29VaUNiYpKdXMF+8xruyySOeBmNzKRrf6onYLR2YyU8N40EIxcS/F
         Q+ensto27jGhAjqiEViyy7QL4yDewCDwZBBXvyJRppdtsFzStS4oYMB3wLZnhAt6vU8t
         x69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NYKI/+L6AD5JCOmUcy4bnysNH60+U6BGFDihNRud1Fg=;
        b=atf2n7YnhviMEzwE1j7ocNwsUDgRH3S8YGnd4kDhnEKzHrvs5fRZ7c5oRWcr3HeM+1
         T4LPoY2l4nMTJeh/7dGdA5deP0sUv3ATPTpsb0NzHjQi3y9nxhd+pApCrL+iy5joNrsA
         YNcJyERIv2GTuYtPtL3PrLxUE81MZ9kupKmDSxJG8fLe5LjnRDZCHyWBK8vboubn1W8s
         r0ggrMNWWfgzkEmtDzr3f5Bsxg7VLQrCgN3uNplIF4wMnyU6lbNSeFgTaZTnZFexqQW5
         +DcWzSRyVkmFKh+lPcrGnpHX5o/TkHA9jsWSkgYQjJ/OlgvWy9d0bRvDNdEhhnwlZX8T
         xJew==
X-Gm-Message-State: ANoB5pnx+tAxI2Kx+/bJ14SdSUcrm7xQKtrDim3UHaN83TJLoYoyV9d7
        rJHlX7mWnfgaSH1EZfKengaaeQ==
X-Google-Smtp-Source: AA0mqf7YfSMcQy4SfdlasAdFZbHop7GmD/hgsR2bQNfbzdEsh4PiJ6t0YMCpUhYOyuMcIdFT45m68g==
X-Received: by 2002:a05:6402:68d:b0:45f:c86e:5336 with SMTP id f13-20020a056402068d00b0045fc86e5336mr18146284edy.233.1668596871197;
        Wed, 16 Nov 2022 03:07:51 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id s1-20020a056402164100b004616cce0a26sm7298329edx.24.2022.11.16.03.07.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:07:50 -0800 (PST)
Message-ID: <036ab42d-1515-3a1c-8e36-7f681214af8c@linaro.org>
Date:   Wed, 16 Nov 2022 12:07:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH 06/10] arm64: dts: qcom: Add PM8550ve pmic dtsi
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20221116103146.2556846-1-abel.vesa@linaro.org>
 <20221116103146.2556846-7-abel.vesa@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221116103146.2556846-7-abel.vesa@linaro.org>
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



On 16/11/2022 11:31, Abel Vesa wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Add nodes for PM8550ve in separate dtsi file.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/pm8550ve.dtsi | 59 ++++++++++++++++++++++++++
>   1 file changed, 59 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/pm8550ve.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
> new file mode 100644
> index 000000000000..c47646a467be
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Linaro Limited
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +/ {
> +	thermal-zones {
> +		pm8550ve-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +
> +			thermal-sensors = <&pm8550ve_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +
> +&spmi_bus {
> +	pm8550ve: pmic@5 {
> +		compatible = "qcom,pm8550", "qcom,spmi-pmic";
> +		reg = <0x5 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pm8550ve_temp_alarm: temp-alarm@a00 {
> +			compatible = "qcom,spmi-temp-alarm";
> +			reg = <0xa00>;
> +			interrupts = <0x5 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> +			#thermal-sensor-cells = <0>;
> +		};
> +
> +		pm8550ve_gpios: gpio@8800 {
> +			compatible = "qcom,pm8550ve-gpio", "qcom,spmi-gpio";
> +			reg = <0x8800>;
> +			gpio-controller;
> +			gpio-ranges = <&pm8550ve_gpios 0 0 8>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +};
