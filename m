Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24078490A99
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 15:38:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234907AbiAQOiA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 09:38:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234869AbiAQOh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 09:37:59 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F27B0C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:37:58 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id p1-20020a1c7401000000b00345c2d068bdso24830722wmc.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4vQvlRkBG8jyAFRkdJw5QqA+mnvGAb10rlLjyuN04xs=;
        b=QjEdn1V494YIOgy22qdp6vDH5BZPbC+l+4DyMdnaxhOsSomlH3tJ3xiazui+zjN3Zi
         yfy8cV03n9ak5nStGvMoXx4ezcKXinKQUvu2ibsFQbmAEZvtUEJSL26lWX+1bBACIFzj
         Kw7kaqcJ32ykROt5YjJ+EQQ0u1jT8rnn2Shgbnw7/N30GpIWtYDOgbjV86asy9fBM0Al
         m4ujK2sK+a1huYIOlrurQJyS+zEF1el0VI4xrkqmCFNkCQ5IKROkvdfOiksT2rarMBKp
         QyA9qCMCZDLcaTaMIPu4hK1BpRWOonYu5NYf1eB58VXO0lQ6Yz7YCCCcijaMH3bSvF8x
         7iRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=4vQvlRkBG8jyAFRkdJw5QqA+mnvGAb10rlLjyuN04xs=;
        b=vq97kNrT+kEKhbu4J17QB3Xn34Z9vp0U5LQKMJxTJ+9GZY7LgxtHCKOSfzGHYgXekU
         elEHTYRJ1wh/fWaZEH327qWTvgTa1dgQLlHX0KdbLNIRwOnQfDWezgnhWM6OkR2Fl8aG
         V4WuGIdOYGd+crUCKB6EHBnSzvE+owrC0fp5TcXZuCrilVMrKecpFgxH03nRi0biWlZG
         xb/7+/kMMa1mZLEnX1uXmTq1+8Hi0hQV0DF32gQ5ID/JOWC4B1LIr7Ov1E8NaueVWNND
         FDN31S5QvaNd5/WNd6Zv3L1E803WscnieTZFKoI/CFsXGT63ci5ec/AcyxPEC/aopT0c
         JPFg==
X-Gm-Message-State: AOAM5324cxpI+hlGGZbaE4xhbE+W6YsTFstnOkmxiTTtwlZe2ftL0Qcy
        ppM6K852p4fh16ft1H6EbqaBuw==
X-Google-Smtp-Source: ABdhPJwqlv7WG3XoYbvtpmNzZ7lMwU5e5dYWkiNHREnVczkvwGQlzQCCr5goFgi16xexqDTyavAgjg==
X-Received: by 2002:adf:f2c5:: with SMTP id d5mr19119203wrp.90.1642430277417;
        Mon, 17 Jan 2022 06:37:57 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:c004:9fe1:fbda:2d0c? ([2001:861:44c0:66c0:c004:9fe1:fbda:2d0c])
        by smtp.gmail.com with ESMTPSA id j9sm14444458wms.0.2022.01.17.06.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 06:37:56 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: meson: add audio playback to P212
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220113044546.16856-1-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <aa02e3f7-3f77-4b9c-74a0-987045de0352@baylibre.com>
Date:   Mon, 17 Jan 2022 15:37:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220113044546.16856-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 13/01/2022 05:45, Christian Hewitt wrote:
> Add initial audio support limited to HDMI i2s.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> The P212 dts is widely used with Android box devices that follow the
> reference design. The real P212 development board probably has many
> more audio capabilities, but as a minimum we can enable HDMI output
> and help box users too.
> 
>  .../boot/dts/amlogic/meson-gxl-s905x-p212.dts | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
> index 2602940c2077..a39830379c74 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
> @@ -7,6 +7,7 @@
>  /dts-v1/;
>  
>  #include "meson-gxl-s905x-p212.dtsi"
> +#include <dt-bindings/sound/meson-aiu.h>
>  
>  / {
>  	compatible = "amlogic,p212", "amlogic,s905x", "amlogic,meson-gxl";
> @@ -32,6 +33,45 @@
>  			};
>  		};
>  	};
> +
> +	sound {
> +		compatible = "amlogic,gx-sound-card";
> +		model = "S905X-P212";
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
> +		};
> +
> +		dai-link-2 {
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
>  };
>  
>  &cec_AO {
> 

The P212 ref board has an analog audio output with a DIO2133CT14 amplifier unmuted by default with the active high GPIOH_5 to mute.

It's very probable all the STB boxes uses the same scheme, so it'll be safe to add the analog audio output here exactly like libretech-cc.

Neil
