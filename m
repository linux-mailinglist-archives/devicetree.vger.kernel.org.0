Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98EF26D7E1E
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 15:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237197AbjDENxq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 09:53:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbjDENxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 09:53:45 -0400
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB446F3
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 06:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
        t=1680702819; bh=SglPtmd8DYP0j+Ut/cLCKckFgwpz7VD/TiG39V/Slz0=;
        h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
        b=RJc6XM3h+sP+QL+qPHQZQKQYEDVMDyCm6LWwqGz/visMGORFSowk98xNRsh2ZJdTN
         z4wJG9ELeiYt+FCE459mS18zFfUj7mzM/jwZ8gDnoAB0CSfB3Jt3sxOUwMhPlw0BZf
         Ed0LibDH0ergMPMpr0dXBpsZ8D3lYo5XmPXOwwPA=
Date:   Wed, 5 Apr 2023 15:53:39 +0200
From:   =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume
 keys
Message-ID: <20230405135339.bcdyjdbtynuwf5yz@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
        Peter Robinson <pbrobinson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230405123813.2272919-1-pbrobinson@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Peter,

On Wed, Apr 05, 2023 at 01:38:13PM +0100, Peter Robinson wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> These are implemented via regular ADC, so regular polling is needed,
> for these keys to work.
> 
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../dts/rockchip/rk3399-pinephone-pro.dts     | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index a0795a2b1cb1..ecd48040eb0c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -10,6 +10,7 @@
>   */
>  
>  /dts-v1/;
> +#include <dt-bindings/input/gpio-keys.h>
>  #include <dt-bindings/input/linux-event-codes.h>
>  #include "rk3399.dtsi"
>  #include "rk3399-opp.dtsi"
> @@ -29,6 +30,26 @@ chosen {
>  		stdout-path = "serial2:115200n8";
>  	};
>  
> +	adc-keys {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1600000>;
> +		poll-interval = <100>;
> +
> +		button-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			press-threshold-microvolt = <100000>;
> +		};
> +
> +		button-down {
> +			label = "Volume Down";
> +			linux,code = <KEY_VOLUMEDOWN>;
> +			press-threshold-microvolt = <300000>;

I don't know about this... I've tried reading voltage values from:

  cd /sys/bus/iio/devices/iio:device0 (path may differ on your kernel)

  echo $((`cat in_voltage_scale`*`cat in_voltage1_raw`))

and I get various readings around the value 300 mV on both sides of the
threshold when pressing the vol down key. So this threshold may not be
good enough in practice.

Values I get for several different pushes of the button:

  293.5546875
  328.7109375
  332.2265625
  304.1015625
  297.0703125
  522.0703125

(I have to press quite hard to get bellow 300 and to get reliable detection
of volume down key press)

On development version of the phone, the value returned by sardac is less
variable. Basically either 298.828125 or 300.5859375 but it's also on
the edge.

I suggest raising the threshold to something like 600 and to do your own
testing, to get more data points. Unpressed value is ~1791.2109375 on both
phones, so 400 still gets a lot of headroom. And volume up is always < 15
in my tests.

Otherwise:

Tested-by: Ondrej Jirman <megi@xff.cz>

kind regards,
	o.

> +		};
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -429,6 +450,11 @@ &sdio0 {
>  	status = "okay";
>  };
>  
> +&saradc {
> +	vref-supply = <&vcca1v8_s3>;
> +	status = "okay";
> +};
> +
>  &sdmmc {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
> -- 
> 2.40.0
> 
