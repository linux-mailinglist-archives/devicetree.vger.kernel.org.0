Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C895459E698
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232495AbiHWQH0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 23 Aug 2022 12:07:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241832AbiHWQE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:04:59 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF5B8002F
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:16:31 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oQSpA-0004ZP-Go; Tue, 23 Aug 2022 14:16:04 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
Date:   Tue, 23 Aug 2022 14:16:03 +0200
Message-ID: <45694752.fMDQidcC6G@diego>
In-Reply-To: <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com> <20220819222520.3069-4-macroalpha82@gmail.com> <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
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

Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
> sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> >
> > From: Chris Morgan <macromorgan@hotmail.com>

[...]

> > +&gpio_keys_control {
> > +       button-5 {
> > +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-LEFT";
> > +               linux,code = <BTN_DPAD_RIGHT>;
> > +       };
> > +
> > +       button-6 {
> > +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-RIGHT";
> > +               linux,code = <BTN_DPAD_LEFT>;
> > +       };
> > +
> > +       button-9 {
> > +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > +               label = "TR";
> > +               linux,code = <BTN_TR2>;
> > +       };
> > +
> > +       button-10 {
> > +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > +               label = "TR2";
> > +               linux,code = <BTN_TR>;
> > +       };
> > +
> > +       button-14 {
> > +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > +               label = "WEST";
> > +               linux,code = <BTN_WEST>;
> > +       };
> > +
> > +       button-15 {
> I don't think just having the buttons numbered sequentially
> is the best course of action, but this preserves the GPIO
> ordering while other options don't...
> I'm thinking about either having them named after
> their function, or named after what they're labeled
> on the PCB of the device.
> Can any of DT maintainers give their input on this?

Personally, I'd prefer going with what is on the PCB
or defined in the schematics.

This makes it way easier finding dt-elements either in
schematics or on the board itself.

This is true for all names ;-)

On the Odroid-Go for example buttons are really named
sw1, sw2, ... so the dt-name became button-sw1 etc.


[...]

> > +&pinctrl {
> > +       gpio-lcd {
> > +               lcd_rst: lcd-rst {
> > +                       rockchip,pins =
> > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> Is it unused? If it is I think it would belong to patch that would add
> panel to this device

I tend to agree :-) .

> > +/ {
> > +       chosen: chosen {
> > +               stdout-path = "serial2:1500000n8";
> I'm wondering if this should be changed to 115200 baud rate
> so it would end up the same as on other devices,
> like Odroid Go Advance.

That heavily depends on the bootloader. I.e. speeds should be
consistent between them.

A lot of cheaper usb-ttl adapters tend to have difficulties with the
faster speeds, so 115200 is easier for those, but you need u-boot
to also use this speed.


On the Odroid-Go I did both the u-boot and kernel parts, so could
make sure those matched.


[...]

> > +       adc_keys: adc-keys {
> > +               compatible = "adc-keys";
> > +               io-channels = <&saradc 0>;
> > +               io-channel-names = "buttons";
> > +               keyup-threshold-microvolt = <1800000>;
> > +               poll-interval = <60>;
> > +
> > +               /*
> > +                * Button is mapped to F key in BSP kernel, but
> > +                * according to input guidelines it should be mode.
> > +                */
> > +               button-mode {
> > +                       label = "MODE";
> The physical button is labeled "F", so maybe this should be "F"
> too?

same comment about ideally using board/schematics names.
But then again, I won't make a fuss if it's named differently :-)


Heiko


