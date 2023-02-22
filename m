Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E715E69FA51
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:42:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232054AbjBVRmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:42:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbjBVRmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:42:38 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 124E83E0AC
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:42:36 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id m7so10999585lfj.8
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rkvf2RmLW6rznz1HAgBefc/tK0jWR+Wupjni4KMu9Yo=;
        b=WF28+J62nVWj+PoVKfoEZ0yrujyRavwV23LGwl6NYGp/3Y4muBY73poKlSGHhvhGvD
         xRTDXW5/yuZDBSXMuVb6vpHWjNDW3JGYKmwJWFeeneiWK9NKrYsLSUVKbOEt0WiiKx+D
         Cmxcx3haBhp9fL9/zVmRM2Je1MHqB7uxeL+wodNEXcSPyzTbFprgrYQ+MA8YTz+Uw3ki
         2DxI1SOGAqk/nNpOmVcaKPzDMGSvFnpdcJ7CulMNVvnvy+tJHVk4iISGWAVBaDGwjCmd
         wpW3SAefke3DYIdIJfZBcCOFrPWTuJmMXHOT8mbtL2qPlYYhZjBPalL9HPHxbU3SLl1A
         RXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rkvf2RmLW6rznz1HAgBefc/tK0jWR+Wupjni4KMu9Yo=;
        b=BYyg5kfSyoIzvahxAeF1ESwdC5WvFlMQo0Iy5EAu1ifNSo5pQRWMV766unXeqZ/FiR
         NOw7Da2vWYXX0muOBy5TjM+ZO2hMmNvhvYqPDuIt6mzE8B1sA18iyi48bRnDVnTWNMla
         5z2OyAZ6EbTZe5ba6XGc+dU+qRjxuuHz4ydm39zR2sso9Q1+w6OqO1te123z1YZ1I4g2
         p8WeVKCCWMn6K/hrbgWh7hfDiw71lACMfvAr91fapieCi5/kYwdLy+TliCWsyEueHIiw
         lQGAylz0mmfea9lUTv4uxOAPG8L47XjG4x1VW+jfhTgtgqg1cGNwGPrNWoGCvNDSNMLz
         Z4Ew==
X-Gm-Message-State: AO0yUKUOLkSmNcwcciJK0KCi5oDicU4/oCi+zu/eJwFXRu+wIb3cW//l
        K6B5FF7pk7fwJhzCJMTOgPrYqA==
X-Google-Smtp-Source: AK7set+1a8OF7jyLmkJooq/S6lNZXi6oR2S6E8K5SzBMN50//7c5b474aeDnO7YV/iNAj+lyBUEWlQ==
X-Received: by 2002:ac2:43a7:0:b0:4dc:4b92:dbc4 with SMTP id t7-20020ac243a7000000b004dc4b92dbc4mr2749532lfl.14.1677087754284;
        Wed, 22 Feb 2023 09:42:34 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id t9-20020a19ad09000000b004db2bda9527sm972736lfc.121.2023.02.22.09.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 09:42:33 -0800 (PST)
Message-ID: <42b91fed-1f8c-b019-a1cc-32690b534dd9@linaro.org>
Date:   Wed, 22 Feb 2023 18:42:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sdm845-oneplus: add alert-slider
Content-Language: en-US
To:     Gergo Koteles <soyer@irl.hu>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc:     linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Caleb Connolly <caleb@connolly.tech>
References: <cover.1677022414.git.soyer@irl.hu>
 <a8610cc5e16b63cd716e466d8edae54d97f5ae57.1677022414.git.soyer@irl.hu>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <a8610cc5e16b63cd716e466d8edae54d97f5ae57.1677022414.git.soyer@irl.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22.02.2023 01:10, Gergo Koteles wrote:
> The alert-slider is a tri-state sound profile switch found on the OnePlus 6,
> Android maps the states to "silent", "vibrate" and "ring". Expose them as
> ABS_SND_PROFILE events.
> The previous GPIO numbers were wrong. Update them to the correct
> ones.
> 
> Co-developed-by: Caleb Connolly <caleb@connolly.tech>
> Signed-off-by: Caleb Connolly <caleb@connolly.tech>
> Signed-off-by: Gergo Koteles <soyer@irl.hu>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/sdm845-oneplus-common.dtsi  | 39 ++++++++++++++++++-
>  1 file changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index 64638ea94db7..7567f5cf6e3f 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -20,6 +20,41 @@
>  /delete-node/ &rmtfs_mem;
>  
>  / {
> +	alert-slider {
> +		compatible = "gpio-keys";
> +		label = "Alert slider";
> +
> +		pinctrl-0 = <&alert_slider_default>;
> +		pinctrl-names = "default";
> +
> +		switch-top {
> +			label = "Silent";
> +			linux,input-type = <EV_ABS>;
> +			linux,code = <ABS_SND_PROFILE>;
> +			linux,input-value = <SND_PROFILE_SILENT>;
> +			gpios = <&tlmm 126 GPIO_ACTIVE_LOW>;
> +			linux,can-disable;
> +		};
> +
> +		switch-middle {
> +			label = "Vibrate";
> +			linux,input-type = <EV_ABS>;
> +			linux,code = <ABS_SND_PROFILE>;
> +			linux,input-value = <SND_PROFILE_VIBRATE>;
> +			gpios = <&tlmm 52 GPIO_ACTIVE_LOW>;
> +			linux,can-disable;
> +		};
> +
> +		switch-bottom {
> +			label = "Ring";
> +			linux,input-type = <EV_ABS>;
> +			linux,code = <ABS_SND_PROFILE>;
> +			linux,input-value = <SND_PROFILE_RING>;
> +			gpios = <&tlmm 24 GPIO_ACTIVE_LOW>;
> +			linux,can-disable;
> +		};
> +	};
> +
>  	aliases {
>  		serial0 = &uart9;
>  		serial1 = &uart6;
> @@ -753,8 +788,8 @@ &usb_1_hsphy {
>  &tlmm {
>  	gpio-reserved-ranges = <0 4>, <81 4>;
>  
> -	tri_state_key_default: tri-state-key-default-state {
> -		pins = "gpio40", "gpio42", "gpio26";
> +	alert_slider_default: alert-slider-default-state {
> +		pins = "gpio126", "gpio52", "gpio24";
>  		function = "gpio";
>  		drive-strength = <2>;
>  		bias-disable;
