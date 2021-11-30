Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69066463147
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 11:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234888AbhK3Kou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 05:44:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235295AbhK3Kod (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 05:44:33 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE60C061757
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:41:04 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l16so43352525wrp.11
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7qzW9UQMQ2VXjuo41D1158+LAK858E+IduWje5heL+U=;
        b=HDfh1m2EozUHRanYhD8DdMzrOcIAp/66NvUIbxjWKsl8fgJUCuv3zhs91Q+3hjWMPI
         sayTNq+lKpTBdrZm+Ax9ihSDtvQKLMGirT4RR0KhWydesoJ3yoeEGg1nt87m4djkr1o2
         6vRHkQzodCMhGIj7CNLs1LevA7d+dbWoSo501gzwycvFka4tuffrmfC16IP8Byam4+5w
         5p+pebWBZsYBaat+wGPocZKtXpCPulSqX56buj0ULtwUqGbs7MJUMEKObdXr16ve1VN2
         hJg8khw8ZYVIIWv5Jjvm2fjqpu36G1vP2w6lD7xvzeOA/IToMg2d2jNgHH2o0y8bR8Yv
         QlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=7qzW9UQMQ2VXjuo41D1158+LAK858E+IduWje5heL+U=;
        b=ralTseCZEAKYrubqtxuUj30jpLsYYM/EJutNm7cSMiN6R8Aml0oFva0/g30zFwJavF
         YF5znErocWYD6bp3Iq7Z3xyz06+J0Gd96R/FeqmQ5QPn7Gpw1RykBmjSAzmRPDPyhiHv
         vhaVxKGJjT2Eevz77081U7ZukATMip79DziZ8zPKL4ubrzIuIpdJfiUsTgDljdaa1Lno
         CGcwcBPTDwuArzp+Yn1G76sE5rV/pp7HmJL9atBDwlVwcdjVG5/gwYrutTlc9uSCSwep
         v0RP/yQMFEeHjn5FfA1vOgPMqbiRGdw/SMTfdmv6AbXrFcfWP5jA0Cda1IIJf91fRMlA
         8CHQ==
X-Gm-Message-State: AOAM531M8heWc5g1J293KU56EcxvavbvunA/7tHMr/fVhIyhta2MY+L/
        bIwfjx54z4z7bnYChYUJ7Kndh9P1tTPtR+pD
X-Google-Smtp-Source: ABdhPJxsZa3zaqwvCS+OEOOBth8ZPvuNxO0NgiMmM7vo7pvXK7IqUO6kNwci5xAVdcQB5xouVB12aA==
X-Received: by 2002:a5d:68d2:: with SMTP id p18mr39741394wrw.21.1638268863112;
        Tue, 30 Nov 2021 02:41:03 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:f80b:b9bd:4d6e:b61a? ([2001:861:44c0:66c0:f80b:b9bd:4d6e:b61a])
        by smtp.gmail.com with ESMTPSA id y6sm1906091wma.37.2021.11.30.02.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Nov 2021 02:41:02 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: meson: p241: add sound support
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211130100159.214489-1-jbrunet@baylibre.com>
 <20211130100159.214489-3-jbrunet@baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <54a8cd46-c4cc-1c45-becb-6adab4dd262d@baylibre.com>
Date:   Tue, 30 Nov 2021 11:41:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211130100159.214489-3-jbrunet@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2021 11:01, Jerome Brunet wrote:
> Add the p241 sound card support. This board can play audio through HDMI
> and the internal DAC.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../boot/dts/amlogic/meson-gxl-s805x-p241.dts | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> index 9d0684a8264b..ff906becd2ab 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/sound/meson-aiu.h>
>  
>  #include "meson-gxl-s805x.dtsi"
>  
> @@ -21,6 +22,13 @@ aliases {
>  		ethernet0 = &ethmac;
>  	};
>  
> +	au2: analog-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		sound-name-prefix = "AU2";
> +		VCC-supply = <&vcc_5v>;
> +		enable-gpios = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
> +	};
> +
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> @@ -110,6 +118,68 @@ sdio_pwrseq: sdio-pwrseq {
>  		clocks = <&wifi32k>;
>  		clock-names = "ext_clock";
>  	};
> +
> +	sound {
> +		compatible = "amlogic,gx-sound-card";
> +		model = "GXL-P241";
> +		audio-aux-devs = <&au2>;
> +		audio-widgets = "Line", "Lineout";
> +		audio-routing = "AU2 INL", "ACODEC LOLN",
> +				"AU2 INR", "ACODEC LORN",
> +				"Lineout", "AU2 OUTL",
> +				"Lineout", "AU2 OUTR";
> +		assigned-clocks = <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>,
> +				  <&clkc CLKID_MPLL2>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";
> +
> +		dai-link-0 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_FIFO>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_ENCODER>;
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&aiu AIU_HDMI CTRL_I2S>;
> +			};
> +
> +			codec-1 {
> +				sound-dai = <&aiu AIU_ACODEC CTRL_I2S>;
> +			};
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&aiu AIU_HDMI CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +
> +		dai-link-3 {
> +			sound-dai = <&aiu AIU_ACODEC CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&acodec>;
> +			};
> +		};
> +	};
> +};
> +
> +&acodec {
> +	AVDD-supply = <&vddio_ao18>;
> +	status = "okay";
> +};
> +
> +&aiu {
> +	status = "okay";
>  };
>  
>  &cec_AO {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
