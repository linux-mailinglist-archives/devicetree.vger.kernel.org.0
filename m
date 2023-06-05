Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1AC72322B
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 23:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231946AbjFEVXy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 17:23:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229790AbjFEVXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 17:23:48 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5367FA
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 14:23:46 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6b291d55f52so498995a34.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 14:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686000226; x=1688592226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FckhnnXoNnBq647BzKSo+omwDYqA6rdugl6AX0Dmun8=;
        b=NRwgPmr0lcwjguWDxX2GNZJx0UF3TrbTgB+rLId6ZCnYyamJ82OcFMPwR9HwUZIY6s
         WCitn/i/v1zwl7OCDLxQsC+YmlDzBiuMdVmu4b1GzeJqp43/ukqc+vUj7f1mtP/H1SdD
         cpNx7o1UjqgOIE9M7g7H9/HP0CDrlbgrANW3cNd0j6vjYMxoJ+u267CgNxIZAiYLQr2q
         XreRmQ/R+U0pyP8vyZJJ2tryplBtvndB+mCXDpqukyvdUH/ez01bj7z74J6mRGYQZvIA
         XghE4V19jkUqNnV+mmMxERBkV3P8W1uOfVKnIavpqPVZk+ymcC8ZrkIR80X73wiUmx/J
         FVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686000226; x=1688592226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FckhnnXoNnBq647BzKSo+omwDYqA6rdugl6AX0Dmun8=;
        b=Oo1l+bb/4Av156/aXBWM2Q24ebYSprQFBLybq+rtCwrP1rD/eOsC6BhKhc4DTf6/qn
         mshYp3V/cDkRdBhQs/T6bqoQggAFL/9ZyW/C7hDHWTFkNyce8as/1g//YoC8pWyE/q+q
         KDl6md1Rc/0s3EgI/q74/86sJTDnIBx3yI6B/q5Bh9GIdFb/0qysBkEEs7OzC9DvfUZn
         +B5rWOzXG4ofy6UZ1A/cdsdCNnO3C3bagQDcp1s8xSKjKKtWzDz478XJqzLm2sT1tqu9
         1/HeuqeG4Xo758DC5weihfbROUhDzwAA6x/2S+IsLgA1Fbz8W84qzxuHKzAb53YwM8lc
         IxGg==
X-Gm-Message-State: AC+VfDxrF7o3+KD8AZTYQtFgRUofrbYA/kxNLaU+MbKPrq6kyoAAU7oV
        4ceKTiyKn6v3aKPLOMvuuP9Lt972p99d5ykZQVc=
X-Google-Smtp-Source: ACHHUZ5hkFxXVfYeTGVCSSCL1Jnpu4ej748sM+/1JWKv3Sv7oNRAAt8vnZvU4C4NZU6xy8+RYBSZVu6d7EECOscoL2g=
X-Received: by 2002:a05:6830:14d7:b0:6b2:5aec:b5c5 with SMTP id
 t23-20020a05683014d700b006b25aecb5c5mr2277319otq.11.1686000226051; Mon, 05
 Jun 2023 14:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230605061049.16136-1-zajec5@gmail.com>
In-Reply-To: <20230605061049.16136-1-zajec5@gmail.com>
From:   Christian Lamparter <chunkeey@gmail.com>
Date:   Mon, 5 Jun 2023 23:23:35 +0200
Message-ID: <CAAd0S9Au70+zHCS-nhq_--p1303grd9yq6faX9M0ZD8S1=ymSA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Relicense Christian's code to the GPL
 2.0+ / MIT
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
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

On Mon, Jun 5, 2023 at 8:11=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmai=
l.com> wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Move code added by Christian to the bcm-ns.dtsi which uses dual
> licensing. That syncs more Northstar code to be based on the same
> licensing schema.
>
> Cc: Christian Lamparter <chunkeey@gmail.com>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
> Florian: we need to ask & wait for Christian's Acked-by before applying
> this one.

Acked-by: Christian Lamparter <chunkeey@gmail.com>


> ---
>  arch/arm/boot/dts/bcm-ns.dtsi   | 21 +++++++++++++++++++++
>  arch/arm/boot/dts/bcm5301x.dtsi | 23 -----------------------
>  2 files changed, 21 insertions(+), 23 deletions(-)
>
> diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dts=
i
> index 793891f1f260..d9455b33adee 100644
> --- a/arch/arm/boot/dts/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/bcm-ns.dtsi
> @@ -182,6 +182,10 @@ pcie1: pcie@13000 {
>                         reg =3D <0x00013000 0x1000>;
>                 };
>
> +               pcie2: pcie@14000 {
> +                       reg =3D <0x00014000 0x1000>;
> +               };
> +
>                 usb2: usb2@21000 {
>                         reg =3D <0x00021000 0x1000>;
>
> @@ -274,6 +278,14 @@ gmac3: ethernet@27000 {
>                 };
>         };
>
> +       pwm: pwm@18002000 {
> +               compatible =3D "brcm,iproc-pwm";
> +               reg =3D <0x18002000 0x28>;
> +               clocks =3D <&osc>;
> +               #pwm-cells =3D <3>;
> +               status =3D "disabled";
> +       };
> +
>         mdio: mdio@18003000 {
>                 compatible =3D "brcm,iproc-mdio";
>                 reg =3D <0x18003000 0x8>;
> @@ -299,6 +311,15 @@ ports {
>                 };
>         };
>
> +       uart2: serial@18008000 {
> +               compatible =3D "ns16550a";
> +               reg =3D <0x18008000 0x20>;
> +               clocks =3D <&iprocslow>;
> +               interrupts =3D <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +               reg-shift =3D <2>;
> +               status =3D "disabled";
> +       };
> +
>         dmu-bus@1800c000 {
>                 compatible =3D "simple-bus";
>                 ranges =3D <0 0x1800c000 0x1000>;
> diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x=
.dtsi
> index 0f40812eb5a4..600a1b54f2ae 100644
> --- a/arch/arm/boot/dts/bcm5301x.dtsi
> +++ b/arch/arm/boot/dts/bcm5301x.dtsi
> @@ -69,20 +69,6 @@ periph_clk: periph_clk {
>                 };
>         };
>
> -       axi@18000000 {
> -               pcie2: pcie@14000 {
> -                       reg =3D <0x00014000 0x1000>;
> -               };
> -       };
> -
> -       pwm: pwm@18002000 {
> -               compatible =3D "brcm,iproc-pwm";
> -               reg =3D <0x18002000 0x28>;
> -               clocks =3D <&osc>;
> -               #pwm-cells =3D <3>;
> -               status =3D "disabled";
> -       };
> -
>         mdio-mux@18003000 {
>                 compatible =3D "mdio-mux-mmioreg", "mdio-mux";
>                 mdio-parent-bus =3D <&mdio>;
> @@ -110,15 +96,6 @@ usb3_dmp: syscon@18105000 {
>                 reg =3D <0x18105000 0x1000>;
>         };
>
> -       uart2: serial@18008000 {
> -               compatible =3D "ns16550a";
> -               reg =3D <0x18008000 0x20>;
> -               clocks =3D <&iprocslow>;
> -               interrupts =3D <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> -               reg-shift =3D <2>;
> -               status =3D "disabled";
> -       };
> -
>         i2c0: i2c@18009000 {
>                 compatible =3D "brcm,iproc-i2c";
>                 reg =3D <0x18009000 0x50>;
> --
> 2.35.3
>
