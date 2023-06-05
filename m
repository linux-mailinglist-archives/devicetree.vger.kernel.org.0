Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5AEE7231DD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 23:02:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbjFEVCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 17:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233550AbjFEVCL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 17:02:11 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD1110A
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 14:02:08 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6af873d1d8bso3210354a34.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 14:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685998927; x=1688590927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhdKp9+YgbPIydvGBFnGJlXPia3JzdMjm05AjwuRNQ0=;
        b=cR1czktk7wGzUXJsSdXh2U0lpv6Y2Qy7xVqMzVhpRyb40JKFf3XT6pUUltda+f3aQ6
         Y2ej113FixQ94X8r2JuITg4DiDKT3nhJV67MCp0Zrm7TPtMkh+PDcF+XY9Wg3z3BMABw
         8XF/GbrkAUgbd4ptLUMBQJfxzEsiM3INiyC+eAOCKFu+r0Qd65S9oguDMugBVD6wotcJ
         IH9eduM4Ae1Xbvms+hhzFTap/LzdNSMqk+sADzWf9anpBpoU+zT6obrkxdubPfS6Z/k+
         pV/KG1bpPc8bbH2psV4WQK5kWgP5JPbRW8CZ2Vp5IhumJ1KArxm5C9KGxzJbSPDJZ1Ej
         DoSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685998927; x=1688590927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vhdKp9+YgbPIydvGBFnGJlXPia3JzdMjm05AjwuRNQ0=;
        b=f22mXssHRJ6sb/sSsGnfjVp4Hv3L//7djvK72BDv/rP6GVASemF53el8744E+9sK1H
         XDI5f2Pn+jaEn5lrIWCCZSwqlnNcGmZPKNjAjVczi04gT5t2JB9+1J0p/ZFWMmlcooJI
         /Vz3QzpShLmm3I3ilJT3/dGBbzShA0em+fV8eVjHPhZQYtqiicst3Z7tSh52AkvTB1EN
         20CAhUHf5aBAY52KcvK+oGLWrJAK8JDMT7AUcExJWWWBCbKkG/ogLpTYwaN7ExKp4uWX
         DhEdnquukPlGVcB4WdJkC2BLM3nta9OeMOu8IZ7QI7v85L7jHEkI1F5BlOfBL7zH5MgF
         38eg==
X-Gm-Message-State: AC+VfDy0zLuzKsCuvJbqAwT+R5AnhGcXKPbdw0WptEJUnyXqPQq1mgtE
        Xukz9u757PojsRA8p97CUCg4aVbUdJS7fVYe41M=
X-Google-Smtp-Source: ACHHUZ6FvefK+OBeUe9aFB49k1aLf9ARU9Ai3O9cizCG2bufhtMcw88PgcLMbRheYbahijBYEu967fWcS94Y/7QLq84=
X-Received: by 2002:a9d:7e9a:0:b0:6ac:3c98:fed2 with SMTP id
 m26-20020a9d7e9a000000b006ac3c98fed2mr8307176otp.15.1685998926957; Mon, 05
 Jun 2023 14:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
 <7b63ceb0-5e27-8a12-fa25-8fdccad4f5aa@gmail.com>
In-Reply-To: <7b63ceb0-5e27-8a12-fa25-8fdccad4f5aa@gmail.com>
From:   Christian Lamparter <chunkeey@gmail.com>
Date:   Mon, 5 Jun 2023 23:01:56 +0200
Message-ID: <CAAd0S9BNBjRaRTGXiW9sXWePW8pH1kZgOR7fFuRkAUTAaH11-w@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] ARM: MR26: MR32: remove bogus nand-ecc-algo property
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

On Mon, Jun 5, 2023 at 1:19=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmai=
l.com> wrote:
> On 3.06.2023 16:16, Christian Lamparter wrote:
> > | bcm53015-meraki-mr26.dtb: nand-controller@18028000:
> > |   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
> > | From schema: Documentation/[...]/nand-controller.yaml
> > | bcm53016-meraki-mr32.dtb: nand-controller@18028000:
> > |   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
> > | From schema: Documentation/[...]/nand-controller.yaml
> >
> > original ECC values for these old Merakis are sadly not
> > provided by the vendor. It looks like Meraki just stuck
> > with what Broadcom's SDK was doing... which left it up
> > to their proprietary nand driver.
> >
> > It's clear at least that they used the hardware's ecc
> > engine, so update the device-tree file accordingly to
> > specify the nand-controller as the ecc-engine.
>
> I believe that initial state can be "setup" at hardware level. I believe
> Broadcom's bootloader and their SDK driver just reads current ECC setup
> (which goes down to the hardware level).
>
> Years ago I proposed change for brcmnand to do the same (which was
> apparently a bad idea):
> [PATCH] mtd: brcmnand: set initial ECC params based on info from HW
> https://lists.infradead.org/pipermail/linux-mtd/2016-February/065314.html
>
> That said I think it still should be possible to determine what algo is
> used and specify that in DT.

I just remembered something possibly very important.

See, the MR26 and MR32 use both one big UBI partition to store the kernel
(blob), rootfs (squashfs), "storage" (ubifs), caldata/nvmem in individual U=
BI
volumes. Now, this one "weird" thing with ubi is:

| Q: Why UBI does not use OOB area of NAND flashes?
| A: Because many flashes (e.g., NOR) do not have OOB and UBI was
designed to be generic. Also, modern
| MLC NAND flashes use whole OOB area for the ECC checksum, so there
is no room for application data.
| But of course, things could be optimized for SLC NAND flashes if UBI
used the space available in the OOB area.
| This is not implemented, but one could probably do this.
<http://www.linux-mtd.infradead.org/faq/ubi.html#L_why_no_oob>

so the comment about "It's clear at least that they used the
hardware's ecc..." could be very wrong,
because they could just get away with not using any of the NAND-Chips
or SOCs ECC features.

The reason why nand-ecc-step-size and nand-ecc-strength are there in
the both MR32+MR26 DTS
is because it tells UBI about the supposed layout of the flash (Note:
This does not necessarily have
to exactly match the NAND-Chips real layout, since you can force it
through ubi-parameters too.).
UBI then uses this information to store two headers (EC and VID) at
specific locations based on the
supplied information. This is also in the FAQ under these topics.
<http://www.linux-mtd.infradead.org/doc/ubi.html#L_ubi_headers>
<http://www.linux-mtd.infradead.org/faq/ubi.html#L_find_min_io_size>
<http://www.linux-mtd.infradead.org/faq/ubi.html#L_force_no_subpage>

> > this patch also removes the partition index numbers
> > from the MR32's partition node-names and does some
> > whitespace removal in order to fit the comment about
> > the partition oddities into the 100 characters per
> > limit.
> >
> > Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
> > Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
> > Reported-by: Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> (via mail)
> > Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> >
> > mr32
> > ---
> >   arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 68 +++++++++--------
> >   arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 88 ++++++++++++---------=
-
> >   2 files changed, 86 insertions(+), 70 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot=
/dts/bcm53015-meraki-mr26.dts
> > index a2eee9a1e5a7..9ea4ffc1bb71 100644
> > --- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> > +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> > @@ -9,7 +9,6 @@
> >   /dts-v1/;
> >
> >   #include "bcm4708.dtsi"
> > -#include "bcm5301x-nand-cs0-bch8.dtsi"
> >   #include <dt-bindings/leds/common.h>
> >
> >   / {
> > @@ -73,41 +72,50 @@ &gmac3 {
> >       status =3D "disabled";
> >   };
> >
> > -&nandcs {
> > -     nand-ecc-algo =3D "hw";
> > +&nand_controller {
> > +     nand@0 {
> > +             compatible =3D "brcm,nandcs";
> > +             reg =3D <0>;
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <1>;
> >
> > -     partitions {
> > -             compatible =3D "fixed-partitions";
> > -             #address-cells =3D <0x1>;
> > -             #size-cells =3D <0x1>;
> > +             nand-ecc-engine =3D <&nand_controller>;
> > +             nand-ecc-strength =3D <8>;
> > +             nand-ecc-step-size =3D <512>;
>
> If we really can't determine ECC algo maybe we could still have sth like
> bcm5301x-nand-cs0-FOO.dtsi
> to match other ECC setup?
>
> That way you probably also shouldn't need &nand_controller here.
>
yes, this might be the way.

Regards,
Christian
