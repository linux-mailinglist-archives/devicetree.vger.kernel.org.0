Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3D6563D8E6
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 16:10:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiK3PK1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 10:10:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbiK3PK1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 10:10:27 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48CD31FB3
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:10:25 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id p8so27414983lfu.11
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J3Su5v2vdmDewKthBrtRFm+e13oXU523NmM0FV1oQU8=;
        b=UGdY4Ll7FF8qoI0YeGrA0rIaaXlaaFuBei4wsmZtPINCSzvnUJT+90MuRpjxmRuSGT
         J8EXutfubxLaShHq7c6BnttwGrHh0GFfnrxBd+XCqOBzIbwGYygrRgMcaqjYTvm3oqob
         Zvh7Kezr1vz2P6+B8KuRr3LWEJyWyNDg93grQSncIaOzm6swZKOXDMO/W9kMIQbzJrZz
         lTYqPBBvl66dq1HJqzZESIl4DrkAOONcD0ZqhAKof6+e8OwT35HaoLZ2+nYFpWOGlDY9
         sT7ecbB2956MLqPOrQbHValv6E7l1G1BtJurm6zZhqCmCjHx90DIU5oCuFuAMVcY7Ra2
         PDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J3Su5v2vdmDewKthBrtRFm+e13oXU523NmM0FV1oQU8=;
        b=cKqir8t7Jm0t/DGPDIRG/j9R51sLm+kZEUDHEbAVMVXR3aJh6R/2V0T/sWt4HYaYNk
         9xGJJZdmkIS8ZYxYRdyb1UYyz/DPwLyt17xagQy8kleYVo0iWFZJUwJfQGZ+zkJlsuT4
         0lrsTT9+08nGn8+LES43Gkyd5UY4qaOw1rbxiB4ndqOKasW2efC3Sk/jw7WPZJ7x04Fk
         GHcI7SsqeUZJbScTVXtooeC5oyOkYTeGBUnSB9wy28EI6gE8iWZDVoEHCZ89W0o2Ef5B
         M1dTLC0QZ608e/AyKF/2f9Vydw2fXM9P99Kpb4jL44NGaWm9oFx6o+9xTzbarxMtD1Ey
         aTSg==
X-Gm-Message-State: ANoB5pnbIpttGzdOoEBLGlYY57k8srxchhxN3W7RfIQEYWjqIC1w2lPH
        aodj36ZFLAUhZhwkcvXqtTeLzQ==
X-Google-Smtp-Source: AA0mqf6H4COlxILbroNSMWuDH3SQhpzqcaGSWYKTuKDUwWXh9jsj1UxAf2lYa04YY2JuGCwkbkTyUA==
X-Received: by 2002:a05:6512:131b:b0:4b5:1ae4:f234 with SMTP id x27-20020a056512131b00b004b51ae4f234mr5110099lfu.391.1669821024300;
        Wed, 30 Nov 2022 07:10:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n9-20020ac242c9000000b00494942bec60sm294211lfl.17.2022.11.30.07.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 07:10:23 -0800 (PST)
Message-ID: <b3c4fa2a-4904-f16e-52e4-a534f4555455@linaro.org>
Date:   Wed, 30 Nov 2022 16:10:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 10/12] arm64: dts: qcom: sm6115: Add i2c/spi nodes
Content-Language: en-US
To:     Adam Skladowski <a39.skl@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Loic Poulain <loic.poulain@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20221129204616.47006-1-a39.skl@gmail.com>
 <20221129204616.47006-11-a39.skl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129204616.47006-11-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/11/2022 21:46, Adam Skladowski wrote:
> Add I2C/SPI nodes for SM6115.
> 
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 287 +++++++++++++++++++++++++++
>  1 file changed, 287 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index e9de7aa1efdd..d14a4595be8a 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/clock/qcom,gcc-sm6115.h>
>  #include <dt-bindings/clock/qcom,sm6115-dispcc.h>
>  #include <dt-bindings/clock/qcom,rpmcc.h>
> +#include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
> @@ -357,6 +358,90 @@ tlmm: pinctrl@500000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  
> +			qup_i2c0_default: qup-i2c0-default {

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Missing -state suffix. Same in other places.

> +				pins = "gpio0", "gpio1";
> +				function = "qup0";
> +				drive-strength = <2>;
> +				bias-pull-up;
> +			};

Best regards,
Krzysztof

