Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F06E72316F
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 22:31:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjFEUbM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 16:31:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230374AbjFEUbL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 16:31:11 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61F81EC
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 13:31:09 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6b20421deaeso640390a34.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 13:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685997068; x=1688589068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z83Y7WR+7nXqFM/7E6HdsVacwsne51cpJWTKkwtISZ4=;
        b=YzIK/wuGmH0CCiRG15Mhgalq7CBOv8o/ECKI/eub2WHJWRutc69YLbYCbXAujFGCqm
         IwpTAjldWe2tiOEnakisru1jiwqj8xERFF2vA1SioYB4tzQ5CRBjU1ORIi5enYeT6mTA
         9vHm5KFg7ykTBdtfqorkxvwYEDTuu7B9w9yZZpeeFZdlf0p/PljEJj9XXs0nyI33GcBH
         Nfdn3bl/7HsnLushMfu8MeZzdLm+a/u+cW1V1wjhofRxE5rxD0uNoN0UzwyDQsc6gi3N
         Hys96Ax5gsVxitH1Uo5TuNXXQMGQgOA78lipmq75uwg3bwLFUHq7W7b1XRWhydxEQP4f
         rK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685997068; x=1688589068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z83Y7WR+7nXqFM/7E6HdsVacwsne51cpJWTKkwtISZ4=;
        b=SB7KDzCDgBODOkslTkUzdTkA+yIhXnv/kR72fFjRYswBRDQwI/mLCiP5Sf4ie4V6dk
         68+XHpB6pbghAK2DTfrkkGpgs0Xa81QoQW3xzVOMtengRk2w6mN2Vtgng80dGL40R9Y1
         NKLmd4ZHcXDyixyoI+EJJ1qGbtq4mqvdDZRXI/oeKSrw1w3SPcwMZfFEvoTWqBTmzrxR
         Wjy02Galx7vZKhQQzUvpwwzslcVIK/lwtzihss2p/gjBL8ff0l4h2qpEyN9Ch3ip9vqW
         V1f6jv3e50CqEzLP/h8CnkTOHSlHmor7mkupVQ5EViXGBxZpC8cMHikSp9qLbSNRkAfU
         ZGdQ==
X-Gm-Message-State: AC+VfDx/Qo73rYauP5H3Ko35OMcwvtxqj47beXKW//rMXN+xx6eMd2GE
        33+GVcwRu1oNTIwTWoc8yVL2mmVbnZqx9YRFxqz+sPxcG4Q=
X-Google-Smtp-Source: ACHHUZ43l9MFif4EiUTYka+w+HAHuxZ9IS2ovmZLg/2PkA5pd3pDwYhjkjI3XWwZ23Vnne46xw1/XQB01GikWxaqhYY=
X-Received: by 2002:a05:6830:1042:b0:6af:7493:79be with SMTP id
 b2-20020a056830104200b006af749379bemr5156689otp.10.1685997068309; Mon, 05 Jun
 2023 13:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
 <c2f56e4fb234418be45e640faf67f04ae66401b6.1685801691.git.chunkeey@gmail.com> <87db0e40-0fa3-47e0-2a50-c0ec908eed58@gmail.com>
In-Reply-To: <87db0e40-0fa3-47e0-2a50-c0ec908eed58@gmail.com>
From:   Christian Lamparter <chunkeey@gmail.com>
Date:   Mon, 5 Jun 2023 22:30:57 +0200
Message-ID: <CAAd0S9C8fUhGA0otvpH_G7Qe_8nJQaYuLZRHL02PMG5u0ds6qg@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] ARM: MR26: fix dt schema violations
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
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

Hi,

On Mon, Jun 5, 2023 at 12:58=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
> I've include "BCM5301X: " in the subject line.
>
> See below too.

Thank you.

> On 3.06.2023 16:16, Christian Lamparter wrote:
> > fixes the "duplex-full" typo, adds phy-modes for the internal
> > switch and the PHY-chip. This also includs adding pause support
> > for the internal cpu port. Furthermore, both erronous unit properties
> > in the gpio-keys node are removed (#size-cells, #address-cells don't
> > belong here).
> >
> > | ports:port@5:fixed-link: 'oneOf' conditional failed, one must be fixe=
d:
> > |   'anyOf' conditional failed, one must be fixed:
> > |   {'speed': [[1000]], 'duplex-full': True} is not of type 'array'
> > |   'duplex-full' does not match any of the regexes
> > | ports:port@5: 'phy-mode' is a required property
> > | keys: '#address-cells', '#size-cells' do not match any of the regexes=
:
> > | [...] From schema: gpio-keys.yaml
> >
> > Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
> > Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> > ---
> >   arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 7 ++++---
> >   1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot=
/dts/bcm53015-meraki-mr26.dts
> > index 9ea4ffc1bb71..9acadf393dd9 100644
> > --- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> > +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> > @@ -38,8 +38,6 @@ led-1 {
> >
> >       keys {
> >               compatible =3D "gpio-keys";
> > -             #address-cells =3D <1>;
> > -             #size-cells =3D <0>;
>
> FWIW I've already sent patch for that:
> [PATCH 2/2] ARM: dts: BCM5301X: Drop invalid properties from Meraki MR32 =
keys

Ok, thanks. Was there a mail CCed to me? If it was I have to look where it =
went.
And yes, that hunk can definitely go.

> >               key-restart {
> >                       label =3D "Reset";
> > @@ -127,16 +125,19 @@ ports {
> >               port@0 {
> >                       reg =3D <0>;
> >                       label =3D "poe";
> > +                     phy-mode =3D "rgmii";
> >               };
>
> It was never clear to me how to exactly specify "phy-mode".
>
> It'd values are documented in the:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/net/ethernet-controller.yaml
>
> In Broadcom's bcmrobo.c we can find:
> #define PAGE_GPHY_MII_P0        0x10    /* Port0 Internal GPHY MII regist=
ers page */
> #define PAGE_GPHY_MII_P4        0x14    /* Last/Port4 Internal GPHY MII r=
egisters page */
>
> That suggests ports 0, 1, 2, 3 and 4 use internal MII.
>
> Does it make "rgmii" a valid value for that?

From what I remember, the "RGMII" comes simply from the PHY-Chip's
datasheet itself. I "think" that it was a BCM50610.
(The POE is done by a separate TPS23754 chip). The datasheet (
B50610-DS07-R ) boast the following line
in the spec overview: "Supports only RGMII MAC interface" . So by that
logic, it can only be RGMII, since it's the only
mode the PHY-chip accepts.

But let's wait, I see if I can get phytool dump by the weekend, that
should tell me the ID. This can be matched with
the kernel's broadcom phy driver to tell which PHY-chip it is.

>
> Could we just specify a proper value for all 5 ports in the bcm-ns.dtsi?
>

puh, in a dtsi for the whole platform that can stand up to that schema
validation?
Well, I just ask myself: "What can we really set them to, if like
"nothing" is connected?
Are they internally unmuxed, pulled-down or maybe even kept floating?
don't know...".

Is it possible to skip over this question, if all the ports@X are by
default all set to ' status =3D "disabled" '
in the dtsi? And each device's dts has to set the individual status =3D
"okay" property to activate them
and then we can expect that the device's dts sets a proper phy-mode
setting? (I mean this is a
established method that all nodes should follow anyway already?)

(don't know if a per-port ' status =3D "disabled" ' property is
evaluated by the switch drivers/dsa though,
they might just ignore that)

> >               port@5 {
> >                       reg =3D <5>;
> >                       label =3D "cpu";
> >                       ethernet =3D <&gmac0>;
> > +                     phy-mode =3D "internal";
> >
> >                       fixed-link {
> >                               speed =3D <1000>;
> > -                             duplex-full;
> > +                             full-duplex;
> > +                             pause;
> >                       };
> >               };
> >       };
>
> Same here: could we specify "phy-mode" and "fixed-link" for ports 5, 7
> and 8 in the bcm-ns.dtsi? There are more devices with warnings:
>
>    DTC_CHK arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-buffalo-wzr-116=
6dhp.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required =
property
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp2.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-buffalo-wzr-116=
6dhp2.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required=
 property
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4708-luxul-xap-1510.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-luxul-xap-1510.=
dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prope=
rty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.=
dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prope=
rty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4708-netgear-r6250.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-netgear-r6250.d=
tb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required proper=
ty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-smartrg-sr400ac=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-buffalo-wzr-60=
0dhp2.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required=
 property
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47081-luxul-xap-1410.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-luxul-xap-1410=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-luxul-xwr-1200=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm4709-netgear-r8000.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4709-netgear-r8000.d=
tb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required proper=
ty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.=
dtb: ethernet-switch@18007000: ports:port@7: 'phy-mode' is a required prope=
rty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.=
dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required prope=
rty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-dlink-dir-885l.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-dlink-dir-885l=
.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-linksys-panamera.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-linksys-paname=
ra.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required pr=
operty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-linksys-paname=
ra.dtb: switch@0: ports:port@8: 'phy-mode' is a required property
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-abr-4500.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-abr-4500=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xap-1610.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xap-1610=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xbr-4500=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwc-2000=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwr-3100=
.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required prop=
erty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwr-3150=
-v1.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required p=
roperty
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm53015-meraki-mr26.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm53015-meraki-mr26.dt=
b: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required propert=
y
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm53016-meraki-mr32.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm53016-meraki-mr32.dt=
b: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required propert=
y
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml
>    DTC_CHK arch/arm/boot/dts/bcm953012er.dtb
> /home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm953012er.dtb: ethern=
et-switch@18007000: ports:port@5: 'phy-mode' is a required property
>          From schema: /home/rmilecki/linux/linux-next/Documentation/devic=
etree/bindings/net/dsa/brcm,b53.yaml

I've seen also drivers trying to handle that issue... Now in case of
the MR26 and MR32 this ethernet switch is a
IP-Block inside the SoC right next to the Ethernet-Core. So without
any of broadcom's datasheet about this, I
would just say that the link between the internal switches MAC (on the
"CPU"-port) to the internal
ethernet MAC is as "internal as it gets". (i.e. there's no phy there
at all, it's the one MAC talking directly to the other
MAC and vice versa.)

But for real "switches" chips this is an issue too. Recently, I read
this explanation in a commit write-up for the rtl8365mb switch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D487994ff75880569d32504d7e70da8b3328e0693

| Since commit a18e6521a7d9 ("net: phylink: handle NA interface mode in
| phylink_fwnode_phy_connect()"), phylib defaults to GMII when no phy-mode
| or phy-connection-type property is specified in a DSA port node of the
| device tree.
|    [...]
|
| It should be noted that the aforementioned regression is not because the
| blamed commit was incorrect: on the contrary, the blamed commit is
| correcting the previous behaviour whereby unspecified phy-mode would
| cause the internal interface mode to be PHY_INTERFACE_MODE_NA. The
| rtl8365mb driver only worked by accident before because it _did_
| advertise support for PHY_INTERFACE_MODE_NA, despite NA being reserved
| for internal use by phylink. With one mistake fixed, the other was expose=
d.

(In a way, phylib's default (whatever they currently are) could be the
answer to that decision?)

Cheers,
Christian
