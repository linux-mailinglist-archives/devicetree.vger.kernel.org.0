Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EA0065C0F0
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 14:37:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjACNhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 08:37:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233360AbjACNgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 08:36:49 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 312B8F024
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 05:36:48 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so45692503lfv.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 05:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WFowRBrLyu8wEaXyUrl2xdOR24/Rx8yi+8QqaFbuA58=;
        b=g40Ypys7/7Skteb/Q4zTjGLNh4VsIT4qv4NTKFK47Jidlw+avWe/Ql2kFRNNmEaZ2L
         0NFRdcrrBasoISLNCNOmwmmrHQs4qpSA6zSrVRa4djETJxgHcPqVaCXoLLIXfnm5xWu8
         ES+c1aQ6o6XEASsuh27RV1MPj20sSyzzFT7AKcZKnw3OfaFg2yYJLuyG0KzQ6e8XpS1c
         +Pl0ccien3LJNxWktcYZwoL5rRSlqKqXE7CpWqkiq1BA7z+8aqgdITsLiYlIQkEEU4Bz
         Ksw2F0z1fUCqiVsOBZO9dPheJRDF1iKGiFXA4OlpgFZqDM7FDacJRPJGCYdPREkGfJeV
         ItXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFowRBrLyu8wEaXyUrl2xdOR24/Rx8yi+8QqaFbuA58=;
        b=Vy3t7KLiVDPxDSbLziNEsotJQhxOFKI7WJkeQWIZ88nv94I9AxnYGBaAm7iWNe8Ld3
         PXy5NlqSaLnxuoBpf0Ws/q4gDfcABKKrvPsx8yxsuU9NPHFEMUUFWt8sFHjtIV+ALoRz
         GrmJGnhiH2HO/7a/7EmW2aLvrzMYPlP/tPZ29tG85NPp9s6FRlrt0D5PTogns7L7rQzf
         GkBnMaA6JIhr20YVZqetSnqW8kJ0iJ6SHl90htaInl4CokW34i0K3UzoLlrfgRkKhvZs
         mYeNOSJdGZxjQcu8qx1E80Jmk4E42IqjZ6DVB9DkLLixdekXNqAC9g91nHLsI5ocPTMJ
         5iWg==
X-Gm-Message-State: AFqh2kpm3C+XPcvZwdpnl/vVlVt6iXmUUIg044cN4ypI4dR3J5K5/E8a
        xOoOnlqX8XFnfCwt7SRGWkLKeA==
X-Google-Smtp-Source: AMrXdXuS0ujdQ0WAGoiC9taP1xBTSJvvkUMIsWy+fXBJ7pH7f/0IfRpMXGDd8JwwXX55l/L/FCD4kA==
X-Received: by 2002:a05:6512:3d0a:b0:4a4:68b7:d65c with SMTP id d10-20020a0565123d0a00b004a468b7d65cmr13406731lfv.67.1672753006579;
        Tue, 03 Jan 2023 05:36:46 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id z12-20020ac24f8c000000b004b567e1f8e5sm4840821lfs.125.2023.01.03.05.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 05:36:46 -0800 (PST)
Message-ID: <d6ea12cc-218d-27bd-00f9-da3b81027f7b@linaro.org>
Date:   Tue, 3 Jan 2023 14:36:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sm8450-hdk: move wcd938x codec
 node
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230103103141.15807-1-johan+linaro@kernel.org>
 <20230103103141.15807-6-johan+linaro@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230103103141.15807-6-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3.01.2023 11:31, Johan Hovold wrote:
> The wcd938x codec is not a memory-mapped device and does not belong
> under the soc node.
> 
> Move the node to the root node to avoid DT validation failures.
> 
> While at it, clean up the node somewhat by reordering properties and
> renaming it 'audio-codec'.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 53 ++++++++++++-------------
>  1 file changed, 26 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> index 4de3e1f1c39c..8ac7265d8c10 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> @@ -17,6 +17,32 @@ aliases {
>  		serial0 = &uart7;
>  	};
>  
> +	wcd938x: audio-codec {
> +		compatible = "qcom,wcd9380-codec";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcd_default>;
> +
> +		qcom,micbias1-microvolt = <1800000>;
> +		qcom,micbias2-microvolt = <1800000>;
> +		qcom,micbias3-microvolt = <1800000>;
> +		qcom,micbias4-microvolt = <1800000>;
> +		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
> +		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> +		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> +		qcom,rx-device = <&wcd_rx>;
> +		qcom,tx-device = <&wcd_tx>;
> +
> +		reset-gpios = <&tlmm 43 GPIO_ACTIVE_LOW>;
> +
> +		vdd-buck-supply = <&vreg_s10b_1p8>;
> +		vdd-rxtx-supply = <&vreg_s10b_1p8>;
> +		vdd-io-supply = <&vreg_s10b_1p8>;
> +		vdd-mic-bias-supply = <&vreg_bob>;
> +
> +		#sound-dai-cells = <1>;
> +	};
> +
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> @@ -407,33 +433,6 @@ &sdhc_2 {
>  	status = "okay";
>  };
>  
> -&soc {
> -	wcd938x: codec {
> -		compatible = "qcom,wcd9380-codec";
> -
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&wcd_default>;
> -
> -		qcom,micbias1-microvolt = <1800000>;
> -		qcom,micbias2-microvolt = <1800000>;
> -		qcom,micbias3-microvolt = <1800000>;
> -		qcom,micbias4-microvolt = <1800000>;
> -		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
> -		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> -		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> -		qcom,rx-device = <&wcd_rx>;
> -		qcom,tx-device = <&wcd_tx>;
> -
> -		reset-gpios = <&tlmm 43 GPIO_ACTIVE_LOW>;
> -		#sound-dai-cells = <1>;
> -
> -		vdd-buck-supply = <&vreg_s10b_1p8>;
> -		vdd-rxtx-supply = <&vreg_s10b_1p8>;
> -		vdd-io-supply = <&vreg_s10b_1p8>;
> -		vdd-mic-bias-supply = <&vreg_bob>;
> -	};
> -};
> -
>  &sound {
>  	compatible = "qcom,sm8450-sndcard";
>  	model = "SM8450-HDK";
