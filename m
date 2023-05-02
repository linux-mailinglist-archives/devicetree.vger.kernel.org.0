Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA9F6F4170
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 12:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233887AbjEBKXx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 06:23:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233888AbjEBKW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 06:22:29 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B7775BB8
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 03:21:48 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f127b10140so880312e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 03:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683022906; x=1685614906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A6iWdYn1dcUhTIsj5RYFdeRghsw/Iy67Uv3eHtIWqsQ=;
        b=GBXf7uJqRLVgCEQuhaqRbNLu2HX5JOFlcjoxgxBs8ihGDi6buL35TwEMuyyQlgboep
         PFQ3LwtZk0hMF2twx754tB/mO6hmHp2FFn+Mcs5/oQ4MSfgIDSgLfy0Y/2pcTqMG7YC1
         3pz0Dp3D5sI/twmNGV5dX2DYb/F79clUhPePJo+8KkfGSimTeuZKQzd27fESVmt/nHPV
         F4y8wZdIUbHU3ZH1kk572Gl1Tz34RIqHUdhTZbqaUzuThIs/ZiowKDNzMWKzBru7Ryny
         ezME+pwUjVJ6w+x4XttVwEoSsEs1VrNHS0J4zcDqxPQ3kQQCNvSJ95EryWKSbjvl+vMT
         cgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683022906; x=1685614906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A6iWdYn1dcUhTIsj5RYFdeRghsw/Iy67Uv3eHtIWqsQ=;
        b=Ggi26KtuLi4/b0e0ikSpeSOYjQMM/KcgJUI4ogF+pXT5EPD93x+yJP5nHw6z2R438z
         LFiji1ZF4ri3lxbmqnUqXK/RkWxuesyEBXRsRWsg+wxeQRnHwMaWpas2bkdhFs1snSFx
         ncxc9JroPAKYJEkjuwclUo67aa8mbx2PxuwGVR7hO08SdEZ10PfZZ3qyje2DJQErxUfE
         20on2/fJMqsgfmEKgNfdn74i/vElHuy4jReRiiIFd0CcPqSR2AZJYKy8vM8AqVDQXM6E
         i5M8gQyr731i3NntneS0KufV8GZXf7VF8WNfzH1SgEVVqrFWAJa0EG82KPTF0fH/Y9kL
         +E3A==
X-Gm-Message-State: AC+VfDw+UlSnyrshA9ldLL7IQ/NAz43F5Vlnv1qsYw1o1ljN6ckT8/zZ
        v8okFkD+CMD3y5GHapesUUh0Cw==
X-Google-Smtp-Source: ACHHUZ7Dr3yuZVF+v4zq2mUOzL+pDisjYi+394uEAnNsl3ACAjNZM3ankYHN3yOfvhJyTSu2lSuWZQ==
X-Received: by 2002:ac2:53b5:0:b0:4e8:485c:6a13 with SMTP id j21-20020ac253b5000000b004e8485c6a13mr4372301lfh.21.1683022906512;
        Tue, 02 May 2023 03:21:46 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id u5-20020ac243c5000000b004f012977b65sm2374584lfl.249.2023.05.02.03.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 03:21:46 -0700 (PDT)
Message-ID: <efacbaab-3d47-8b6f-9804-6009373396e1@linaro.org>
Date:   Tue, 2 May 2023 12:21:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 5/5] ARM: dts: qcom: apq8026-huawei-sturgeon: Add vibrator
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Dan Murphy <dmurphy@ti.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Raffaele Tranquillini <raffaele.tranquillini@gmail.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230430-drv260x-improvements-v1-0-1fb28b4cc698@z3ntu.xyz>
 <20230430-drv260x-improvements-v1-5-1fb28b4cc698@z3ntu.xyz>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230430-drv260x-improvements-v1-5-1fb28b4cc698@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30.04.2023 20:20, Luca Weiss wrote:
> The watch has a DRV2605 for haptics. Add a node for it based on the
> values found in the downstream board file.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-apq8026-huawei-sturgeon.dts | 28 ++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8026-huawei-sturgeon.dts b/arch/arm/boot/dts/qcom-apq8026-huawei-sturgeon.dts
> index d64096028ab1..eb73b992a696 100644
> --- a/arch/arm/boot/dts/qcom-apq8026-huawei-sturgeon.dts
> +++ b/arch/arm/boot/dts/qcom-apq8026-huawei-sturgeon.dts
> @@ -7,6 +7,7 @@
>  
>  #include "qcom-msm8226.dtsi"
>  #include "qcom-pm8226.dtsi"
> +#include <dt-bindings/input/ti-drv260x.h>
>  
>  /delete-node/ &adsp_region;
>  
> @@ -68,6 +69,26 @@ &adsp {
>  	status = "okay";
>  };
>  
> +&blsp1_i2c2 {
> +	clock-frequency = <384000>;
> +
> +	status = "okay";
> +
> +	vibrator@5a {
> +		compatible = "ti,drv2605";
> +		reg = <0x5a>;
> +		enable-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
> +
> +		mode = <DRV260X_ERM_MODE>;
> +		library-sel = <DRV260X_ERM_LIB_D>;
> +		vib-rated-mv = <2765>;
> +		vib-overdrive-mv = <3525>;
> +
> +		pinctrl-0 = <&vibrator_default_state>;
> +		pinctrl-names = "default";
> +	};
> +};
> +
>  &blsp1_i2c5 {
>  	clock-frequency = <384000>;
>  
> @@ -347,6 +368,13 @@ reset-pins {
>  		};
>  	};
>  
> +	vibrator_default_state: vibrator-default-state {
> +		pins = "gpio59", "gpio60";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
>  	wlan_hostwake_default_state: wlan-hostwake-default-state {
>  		pins = "gpio66";
>  		function = "gpio";
> 
