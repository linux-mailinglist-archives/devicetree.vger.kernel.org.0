Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 829CD671EBF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:03:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230136AbjARODH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:03:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230212AbjAROCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:02:54 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E607C656DC
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:36:58 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id u19so83225094ejm.8
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YLs635pwOBafXbtqE0PWb0HN6pxcCPqotJzPz8i7g3A=;
        b=v+f23bWypOu7QoBoK6dzE7oP4GQLxwsnRLknL+Wh1kRVo9YPiLufT6lKf3p/3qp0yq
         oUbNM2zMzvlDT9sFKlyqmZDVnRdWb07zw56S16mXTchy+9A6HYVaXuTm7sdfE32XIHqt
         nBZlxBXnCxZhCJkQSGYH/e/SJ039/D3fZ0Bo/r2GCJ5IzBJGjuDOuAYDHM7SE4ofVxyr
         b0+Drg7TE8lu5dg/wDShUWPI9qRqHFCgT2cIIeaSOyeNaR2eUxNvCRDqtwjws6A79h+9
         P5M9g/LiGdRwYNtQZRUtiVjFOOi6Az7jYVO8gEm55/Yn1N1DDLlyaa3Yc2ck306T4Ovn
         gBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YLs635pwOBafXbtqE0PWb0HN6pxcCPqotJzPz8i7g3A=;
        b=LlPybILKZ/ZhOPOqCXEBuA1L3n5ndaAq4yxmzHEAL3trhNH/XSm2alQGYgUsBBhttv
         ghc54DeWy+eAWuWXP6GvxUubU2BB82Wl1zhUYjHARArAiW+HuFuG2jeI7aJZBR12WLca
         AIJEeRyt2Zvx3+IqKlxKTuWlE2NAhJ/1ikjEEH7wnCud1hgvxWnDSIvaqPLyy0BLhwt1
         NTipBwOwiJsX/enIjPL8ZBb9GYA31xNr9Levb58Ws7+MCZu1rlGL+RDfFXzw+z7ZBVAu
         coFdDncI6zYpCZqaNLAL6neeTEUr3WBqwRoZ/dkRlPoN4+Z29CXv8j45vXnK88lSy0R9
         RriA==
X-Gm-Message-State: AFqh2kpBByw4fGE60YC8ikjC/4RZ9e1pluzIGgz2SDUgpEdNTbZFUE7y
        d9xga793jTpPDFrwQ127SEwG0A==
X-Google-Smtp-Source: AMrXdXsShqJUynsRoRk1S06/BpApI8zOCewax5uV0S/lfDeIiHYkTG35hMV7B6uTNVGnrDV/2iIPJA==
X-Received: by 2002:a17:907:8b97:b0:84d:39ba:368b with SMTP id tb23-20020a1709078b9700b0084d39ba368bmr8230620ejc.75.1674049017389;
        Wed, 18 Jan 2023 05:36:57 -0800 (PST)
Received: from [192.168.1.101] (abxh252.neoplus.adsl.tpnet.pl. [83.9.1.252])
        by smtp.gmail.com with ESMTPSA id 17-20020a170906059100b007c16f120aacsm14551358ejn.121.2023.01.18.05.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 05:36:57 -0800 (PST)
Message-ID: <9fb2618f-43ab-c644-c957-67ffc4c05dc3@linaro.org>
Date:   Wed, 18 Jan 2023 14:36:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8550-mtp: add DSI panel
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230104-topic-sm8550-upstream-dts-display-v3-0-46f0d4e57752@linaro.org>
 <20230104-topic-sm8550-upstream-dts-display-v3-3-46f0d4e57752@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230104-topic-sm8550-upstream-dts-display-v3-3-46f0d4e57752@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 18.01.2023 09:55, Neil Armstrong wrote:
> Add nodes for the Visionox VTDR6130 found on the SM8550-MTP
> device.
> 
> TLMM states are also added for the Panel reset GPIO and
> Tearing Effect signal for when the panel is running in
> DSI Command mode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 56 +++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index 0dfd1d3db86c..2de387aa2c2d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -370,6 +370,34 @@ &mdss {
>  &mdss_dsi0 {
>  	vdda-supply = <&vreg_l3e_1p2>;
>  	status = "okay";
> +
> +	panel@0 {
> +		compatible = "visionox,vtdr6130";
> +		reg = <0>;
> +
> +		pinctrl-names = "default", "sleep";
> +		pinctrl-0 = <&sde_dsi_active>, <&sde_te_active>;
> +		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te_suspend>;
Hm.. I've just realized there are two styles of specifying
phandle arrays: <&a &b> and <&a>, <&b>.. even worse, we
have both of them in our tree.. Krzysztof, Bjorn, which one
should we go with, going forward?


> +
> +		vddio-supply = <&vreg_l12b_1p8>;
> +		vci-supply = <&vreg_l13b_3p0>;
> +		vdd-supply = <&vreg_l11b_1p2>;
> +
> +		reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
> +
> +		status = "okay";
Superfluous, it's enabled by default, drop

Konrad
> +
> +		port {
> +			panel0_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&panel0_in>;
> +	data-lanes = <0 1 2 3>;
>  };
>  
>  &mdss_dsi0_phy {
> @@ -415,6 +443,34 @@ &sleep_clk {
>  
>  &tlmm {
>  	gpio-reserved-ranges = <32 8>;
> +
> +	sde_dsi_active: sde-dsi-active-state {
> +		pins = "gpio133";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	sde_dsi_suspend: sde-dsi-suspend-state {
> +		pins = "gpio133";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	sde_te_active: sde-te-active-state {
> +		pins = "gpio86";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	sde_te_suspend: sde-te-suspend-state {
> +		pins = "gpio86";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
>  };
>  
>  &uart7 {
> 
