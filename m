Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90B1559E598
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242823AbiHWPEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:04:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241319AbiHWPEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:04:14 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D6E31E6D1
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:29:06 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id l1so18921440lfk.8
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=JTnsLSaonI5tAEvvQetQjVnW02XVzbShW8n7C+I0cJk=;
        b=q4vEJ4Boe/F5SM0/HAFhd4vSXSssMo9bhqVbSCET/34Brskja1BzZ7lXJP42QERtry
         o6Xm/+1jGB/Jl+xsMEbIiSjfOjYPBHerbIBM+ZP7hInW/LSV8KAJIQzkqQDs8DWiDMLu
         FVl5RpsIZCHueO9RkqRh+EzgQdxCE4igqwzI8LXjxpzTGfbW2KCZNhEAcmg53ozbbPXa
         U4quzpXRloOGElwSNd0cHdBMoSKInzY3tPik6sELBZqKiJQdIEDtj6oTkLX8IeM0NWHI
         ODpOJGmP3EcTJ8w+zV7bS7/M01YdplaaSb7FbBC4liaHaCfdud5vqt+eucB7XIRhTAY/
         bC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=JTnsLSaonI5tAEvvQetQjVnW02XVzbShW8n7C+I0cJk=;
        b=kzQHfWIuf4PF8N2nR9YYrJ3oGZtUjmrIb9kI4ssYqR2TlrgPPsZmm1MNwnHEUzYWC9
         nBYXWjSAj1nYjSd6cUvfbZ5Xd5jf16OAyice4KBB/TymQJPfzMUiy/u32WN8dyJWM1eO
         is9OvSehEmJl0LJUvjb4Nq3Y4p9PdjuC6MUyHH79Y6yzoqcdzKUctDHlPEwOU90/e/4C
         TM/qhgtRYbkcgqw2Cy+z7tcQ50hNqteSJV2uhizhXv2z6GjoKgAKbngWgISZOkvbPCTZ
         XNpT8Ko2EIdVwplABzBvAR+IjSqOk8WCQDLYSS04j3LJ2o2aRJ9pRAdydIz/qysRbjL6
         YlEQ==
X-Gm-Message-State: ACgBeo2uQMrNLE45Tu13Uj/uelxgEbDhY2jnpzm8koig59DhzXHss1RG
        p8Y3JeWnUts71wBDFqz7wzZdwXhgyPP/oWLSa/M=
X-Google-Smtp-Source: AA6agR5Ffv7/GQ7YgjErRrCnjGpecRxg2+ucEwQe9iDhHx2qCWjBmu3WPCrivj2BB5gBLx4SV0TJ+mZ1r638R2ib9tw=
X-Received: by 2002:a05:6512:3ca3:b0:492:df7d:61a with SMTP id
 h35-20020a0565123ca300b00492df7d061amr4255375lfv.637.1661257743894; Tue, 23
 Aug 2022 05:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220819222520.3069-1-macroalpha82@gmail.com> <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com> <45694752.fMDQidcC6G@diego>
In-Reply-To: <45694752.fMDQidcC6G@diego>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Tue, 23 Aug 2022 14:28:27 +0200
Message-ID: <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

wt., 23 sie 2022 o 14:16 Heiko St=C3=BCbner <heiko@sntech.de> napisa=C5=82(=
a):
>
> Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
> > sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisa=
=C5=82(a):
> > >
> > > From: Chris Morgan <macromorgan@hotmail.com>
>
> [...]
>
> > > +&gpio_keys_control {
> > > +       button-5 {
> > > +               gpios =3D <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > > +               label =3D "DPAD-LEFT";
> > > +               linux,code =3D <BTN_DPAD_RIGHT>;
> > > +       };
> > > +
> > > +       button-6 {
> > > +               gpios =3D <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > > +               label =3D "DPAD-RIGHT";
> > > +               linux,code =3D <BTN_DPAD_LEFT>;
> > > +       };
> > > +
> > > +       button-9 {
> > > +               gpios =3D <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > > +               label =3D "TR";
> > > +               linux,code =3D <BTN_TR2>;
> > > +       };
> > > +
> > > +       button-10 {
> > > +               gpios =3D <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > > +               label =3D "TR2";
> > > +               linux,code =3D <BTN_TR>;
> > > +       };
> > > +
> > > +       button-14 {
> > > +               gpios =3D <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > > +               label =3D "WEST";
> > > +               linux,code =3D <BTN_WEST>;
> > > +       };
> > > +
> > > +       button-15 {
> > I don't think just having the buttons numbered sequentially
> > is the best course of action, but this preserves the GPIO
> > ordering while other options don't...
> > I'm thinking about either having them named after
> > their function, or named after what they're labeled
> > on the PCB of the device.
> > Can any of DT maintainers give their input on this?
>
> Personally, I'd prefer going with what is on the PCB
> or defined in the schematics.
>
> This makes it way easier finding dt-elements either in
> schematics or on the board itself.
>
> This is true for all names ;-)
>
> On the Odroid-Go for example buttons are really named
> sw1, sw2, ... so the dt-name became button-sw1 etc.
I disassembled my device and DPAD buttons on pcb have
silkscreened labels U/D/L/R, for up/down/left/right,
Select and start buttons are named SELECT and START,
action buttons are named A/B/X/Y for East, South,
North and West buttons, The "F" button on front of the
device has F label, but on PCB it's "RECOVERY".
And TR/TL/TR2/TL2 are named R1/L1/R2/L2 on their
test points, I wasn't able to find a silkscreen label as
they are on their own PCBs.

Volume buttons are SW3 for Volume up and SW2 for
Volume down.

>
>
> [...]
>
> > > +&pinctrl {
> > > +       gpio-lcd {
> > > +               lcd_rst: lcd-rst {
> > > +                       rockchip,pins =3D
> > > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_non=
e>;
> > > +               };
> > Is it unused? If it is I think it would belong to patch that would add
> > panel to this device
>
> I tend to agree :-) .
>
> > > +/ {
> > > +       chosen: chosen {
> > > +               stdout-path =3D "serial2:1500000n8";
> > I'm wondering if this should be changed to 115200 baud rate
> > so it would end up the same as on other devices,
> > like Odroid Go Advance.
>
> That heavily depends on the bootloader. I.e. speeds should be
> consistent between them.
>
> A lot of cheaper usb-ttl adapters tend to have difficulties with the
> faster speeds, so 115200 is easier for those, but you need u-boot
> to also use this speed.
Yeah I've had troubles finding an adapter that could do the default
1500000 baud rate.

>
>
> On the Odroid-Go I did both the u-boot and kernel parts, so could
> make sure those matched.
I think we can just use 115200 baud rate, as Odroid Go Advance
already uses it, and it's likely that it's the first thing people would
try.

>
>
> [...]
>
> > > +       adc_keys: adc-keys {
> > > +               compatible =3D "adc-keys";
> > > +               io-channels =3D <&saradc 0>;
> > > +               io-channel-names =3D "buttons";
> > > +               keyup-threshold-microvolt =3D <1800000>;
> > > +               poll-interval =3D <60>;
> > > +
> > > +               /*
> > > +                * Button is mapped to F key in BSP kernel, but
> > > +                * according to input guidelines it should be mode.
> > > +                */
> > > +               button-mode {
> > > +                       label =3D "MODE";
> > The physical button is labeled "F", so maybe this should be "F"
> > too?
>
> same comment about ideally using board/schematics names.
> But then again, I won't make a fuss if it's named differently :-)
So I guess it'd be "btn-recovery" as it's labeled "RECOVERY"
on PCB, with "F" label as it's what's the user sees?

Best Regards,
Maya Matuszczyk

>
>
> Heiko
>
>
