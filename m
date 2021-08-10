Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD32A3E5492
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 09:48:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237445AbhHJHtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 03:49:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237479AbhHJHtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 03:49:05 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3E6C0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:48:43 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h14so24954351wrx.10
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6e9/sqGBr6SL7sXKS2HQPlB7IrU87392c7UU58nujaY=;
        b=ANEHnntoFmqrjDLA7KyToEVGX5mvYSe2fEmRiD9apuD1GX47EVhGU6giaX6KTvnLE6
         YTIWHOcp5o1i0xlqg4K2+sQFkDqIt1M9UTI6t7oFv4A9uK6JUa+9vujGXxGVRudQkgtt
         ZhxT/JCCqVoUNksZ3jifJIFc+UextMVkmvzEw0a0PrlZsXqftTwQx6w5oOyf8kDdTHK9
         4IfaxSIwJ7FX9ww2+pL3UyAXH+DEdiB7L8N+6IiRS5dS8V91AytAdBI9TNsE7opx0dyG
         ClxyA/nwDTNcOyx7XXofMcnx4OYfrwvC3bguA7FmJihIaS94/bCd6wo8orhn/a2tmKDv
         DSfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=6e9/sqGBr6SL7sXKS2HQPlB7IrU87392c7UU58nujaY=;
        b=j2ydbGHb6cr5WjLMNfRyhnJY3HP3MfhtOJkWyfzTPEdUSIgBVKziG3TL2mnsYCiQjq
         j1MC+vE7WKfHudtSWA4FPOo/Msb46El1qHlKtzRs7upCncMz8iHDJMzV9PwKKSnxSH8h
         wL2Z5eazQ1G1CEjtrCvEhbkVOqvfCDKTrtU2JUFt0yrhDPRyh5VHaSKp8rymevCL73Ml
         3W1AIJ2wR1BV8sBbcONPNtMfOQQpbHTNTAI/bg6gUquk3fOZ+H02XsEv3egIczHmYIza
         FMY3aM+WxaxZCOshomAbx/B8MODxrQ+OvDGeN0LWDRVsTSllIwtT+cy0XJvXp9P+iTXS
         m78w==
X-Gm-Message-State: AOAM530fbue+tSQYUmEoIOrSv25l5eJgs07kfFohkwA8Ov20StR1y98m
        MG4+/wzv4VsUzmNq/Z37FykvdQ==
X-Google-Smtp-Source: ABdhPJzL4h4LYTt15iMlUp/BR3tOk47yKGAfCvNFdi4maSWnF/4lfjRPRYJSXUkIjycasLz3eioL8g==
X-Received: by 2002:adf:ba0d:: with SMTP id o13mr28544928wrg.134.1628581722053;
        Tue, 10 Aug 2021 00:48:42 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:b710:2b6e:27aa:f0a0? ([2001:861:44c0:66c0:b710:2b6e:27aa:f0a0])
        by smtp.gmail.com with ESMTPSA id y21sm1857172wma.38.2021.08.10.00.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 00:48:41 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: add audio playback to vega-s95 dtsi
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210804140258.4666-1-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <fb7e150d-cbb4-8631-9ae8-aced75c6aa09@baylibre.com>
Date:   Tue, 10 Aug 2021 09:48:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804140258.4666-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2021 16:02, Christian Hewitt wrote:
> Add initial support limited to HDMI i2s and SPDIF (LPCM).
> 
> Tested-by: Oleg Ivanov <150balbes@yandex.ru>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> index 9b0b81f191f1..66daf3af34c3 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> @@ -4,6 +4,7 @@
>   */
>  
>  #include "meson-gxbb.dtsi"
> +#include <dt-bindings/sound/meson-aiu.h>
>  
>  / {
>  	compatible = "tronsmart,vega-s95", "amlogic,meson-gxbb";
> @@ -17,6 +18,13 @@
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	spdif_dit: audio-codec-0 {
> +		#sound-dai-cells = <0>;
> +		compatible = "linux,spdif-dit";
> +		status = "okay";
> +		sound-name-prefix = "DIT";
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -97,6 +105,59 @@
>  		clocks = <&wifi32k>;
>  		clock-names = "ext_clock";
>  	};
> +
> +	sound {
> +		compatible = "amlogic,gx-sound-card";
> +		model = "VEGA-S95";
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
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_FIFO>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_ENCODER>;
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&aiu AIU_HDMI CTRL_I2S>;
> +			};
> +		};
> +
> +		dai-link-3 {
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_ENCODER>;
> +
> +			codec-0 {
> +				sound-dai = <&spdif_dit>;
> +			};
> +		};
> +
> +		dai-link-4 {
> +			sound-dai = <&aiu AIU_HDMI CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +};
> +
> +&aiu {
> +	status = "okay";
> +	pinctrl-0 = <&spdif_out_y_pins>;
> +	pinctrl-names = "default";
>  };
>  
>  &cec_AO {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
