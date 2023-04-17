Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44A426E42A1
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 10:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbjDQIek convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 17 Apr 2023 04:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjDQIej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 04:34:39 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15BAC4209
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 01:34:35 -0700 (PDT)
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1poKJY-0001gx-Ro; Mon, 17 Apr 2023 10:34:20 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     =?utf-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
        Peter Robinson <pbrobinson@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Caleb Connolly <kc@postmarketos.org>,
        Jarrah Gosbell <kernel@undef.tools>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date:   Mon, 17 Apr 2023 10:34:20 +0200
Message-ID: <4152389.RUnXabflUD@diego>
In-Reply-To: <20230405135339.bcdyjdbtynuwf5yz@core>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
 <20230405135339.bcdyjdbtynuwf5yz@core>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter, Ondrej,

Am Mittwoch, 5. April 2023, 15:53:39 CEST schrieb Ondřej Jirman:
> On Wed, Apr 05, 2023 at 01:38:13PM +0100, Peter Robinson wrote:
> > From: Ondrej Jirman <megi@xff.cz>
> > 
> > These are implemented via regular ADC, so regular polling is needed,
> > for these keys to work.
> > 
> > Signed-off-by: Martijn Braam <martijn@brixit.nl>
> > Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
> > Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >  .../dts/rockchip/rk3399-pinephone-pro.dts     | 26 +++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > index a0795a2b1cb1..ecd48040eb0c 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > @@ -10,6 +10,7 @@
> >   */
> >  
> >  /dts-v1/;
> > +#include <dt-bindings/input/gpio-keys.h>
> >  #include <dt-bindings/input/linux-event-codes.h>
> >  #include "rk3399.dtsi"
> >  #include "rk3399-opp.dtsi"
> > @@ -29,6 +30,26 @@ chosen {
> >  		stdout-path = "serial2:115200n8";
> >  	};
> >  
> > +	adc-keys {
> > +		compatible = "adc-keys";
> > +		io-channels = <&saradc 1>;
> > +		io-channel-names = "buttons";
> > +		keyup-threshold-microvolt = <1600000>;
> > +		poll-interval = <100>;
> > +
> > +		button-up {
> > +			label = "Volume Up";
> > +			linux,code = <KEY_VOLUMEUP>;
> > +			press-threshold-microvolt = <100000>;
> > +		};
> > +
> > +		button-down {
> > +			label = "Volume Down";
> > +			linux,code = <KEY_VOLUMEDOWN>;
> > +			press-threshold-microvolt = <300000>;
> 
> I don't know about this... I've tried reading voltage values from:
> 
>   cd /sys/bus/iio/devices/iio:device0 (path may differ on your kernel)
> 
>   echo $((`cat in_voltage_scale`*`cat in_voltage1_raw`))
> 
> and I get various readings around the value 300 mV on both sides of the
> threshold when pressing the vol down key. So this threshold may not be
> good enough in practice.
> 
> Values I get for several different pushes of the button:
> 
>   293.5546875
>   328.7109375
>   332.2265625
>   304.1015625
>   297.0703125
>   522.0703125
> 
> (I have to press quite hard to get bellow 300 and to get reliable detection
> of volume down key press)
> 
> On development version of the phone, the value returned by sardac is less
> variable. Basically either 298.828125 or 300.5859375 but it's also on
> the edge.
> 
> I suggest raising the threshold to something like 600 and to do your own
> testing, to get more data points. Unpressed value is ~1791.2109375 on both
> phones, so 400 still gets a lot of headroom. And volume up is always < 15
> in my tests.

did this get more attention meanwhile?

I don't have a Pinephone Pro myself, so you'll need to decide between you
about the value and the concern Ondrej raised here for the value.

Thanks
Heiko


> Otherwise:
> 
> Tested-by: Ondrej Jirman <megi@xff.cz>
> 
> kind regards,
> 	o.
> 
> > +		};
> > +	};
> > +
> >  	gpio-keys {
> >  		compatible = "gpio-keys";
> >  		pinctrl-names = "default";
> > @@ -429,6 +450,11 @@ &sdio0 {
> >  	status = "okay";
> >  };
> >  
> > +&saradc {
> > +	vref-supply = <&vcca1v8_s3>;
> > +	status = "okay";
> > +};
> > +
> >  &sdmmc {
> >  	bus-width = <4>;
> >  	cap-sd-highspeed;
> 




