Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B054E77EF6D
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 05:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347774AbjHQDQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 23:16:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347756AbjHQDQD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 23:16:03 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 437841724
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 20:16:01 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d63457dd8b8so6808387276.1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 20:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692242160; x=1692846960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lOES28x1vlU2LaHZjcK9BgxDCrzNHUrpAgbOp/z5G4=;
        b=AfTgrTN3o2bP+4yjfvTNeGc5GlYk+imYtU//mfdqolEe1dZJe9pHLEd6l+fas/d+/G
         M3j6cZccCNTcy2zLKQqTpB8l4sio9hD6c4kbNoz3ZclommrTzfrHgjeMM8jW9kpvumaC
         1fr6wdTMBagQWfZ3RCkXK9gTpHGrDJNRk/clRCF/dXWhP7yFxxHcjK/WxQaYyuUgfWni
         irDPtgba9QwOBTs5IFknnjlfIDWlr6Vwv2nq5wzG4/Fpc/kiirXD0L/XsyFzCpsOE2+d
         Qf3oq8ApmdiFMAGV/tWk/lCY0RoNdAboIYuZyJjh86l2kJByz+HErg8UqGuzmSLLZqzu
         HDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692242160; x=1692846960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9lOES28x1vlU2LaHZjcK9BgxDCrzNHUrpAgbOp/z5G4=;
        b=QM+/Tkm2apWLlJNaQbQmctWqCdYOVK87rzakIz/3hIhwPdISLGsNStcvgvLWrlH98C
         ECJH77uuciXPQ3M3LiZgtc6ED4/bR8IwPG9wWCs6wxEHmVvPlu7Ka2P0U4Mz2HrS36ji
         eu4njVgr4gPAWZjx4UN7klmwesE+Zlttgd//WXAZ/yG3jcaEZkWptl/ZKEpjpzRrbJeK
         nPJUKpAP2fPNUzJ42XUhrS7POIJEpimT+5JjXoefv9Smcd6wA+BOKfc+SfAhs+8Hck0Q
         WgiyfowoUhyqr+Po22OnTjAoBJLtfMd0H0KksIaA2W8ZoF5zZ7vL2v7vXjSOTi5h4EZU
         kqiw==
X-Gm-Message-State: AOJu0YzlhG1Dj0wAQRk2tPN8AifSXxFcWPbECedLj9XWGq2NgfA6+jq1
        USW07NWyV1EeoHA+2t6JccZ8im0R4M0ZBAJ+FAdMUV5zGNO0CnpPhok=
X-Google-Smtp-Source: AGHT+IG97rKMlejstahverF3sLciAyT8NrV9SnFfJRx78OgxULFe3DNvaUHLr9FOp44L3XzWON0JsYb6uEc2pzfyd58=
X-Received: by 2002:a0d:eb42:0:b0:565:c21d:8ec6 with SMTP id
 u63-20020a0deb42000000b00565c21d8ec6mr3793635ywe.6.1692242160492; Wed, 16 Aug
 2023 20:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692088166.git.zhoubinbin@loongson.cn> <f869b30d119a56abaa67ac78cd981fc0c2f0d28b.1692088166.git.zhoubinbin@loongson.cn>
 <20230815-renounce-reminder-a6728ebefb5f@spud>
In-Reply-To: <20230815-renounce-reminder-a6728ebefb5f@spud>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Thu, 17 Aug 2023 11:15:48 +0800
Message-ID: <CAMpQs4+dau2kZ5AJLyzO532x-8A4JmmLBoBVu29SvMwmASUZgQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
To:     Conor Dooley <conor@kernel.org>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor:

Thanks for your reply.

On Tue, Aug 15, 2023 at 10:09=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Aug 15, 2023 at 04:51:10PM +0800, Binbin Zhou wrote:
> > Add DeviceTree file for Loongson-2K0500 processor, which integrates one
> > 64-bit dual emission superscalar LA264 processor core.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  arch/loongarch/boot/dts/Makefile              |   2 +
> >  .../boot/dts/loongson-2k0500-ref.dts          | 115 +++++++++
> >  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 244 ++++++++++++++++++
> >  3 files changed, 361 insertions(+)
> >  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> >  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi
> >
> > diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts=
/Makefile
> > index 1e24cdb5180a..aa0b21d73d4e 100644
> > --- a/arch/loongarch/boot/dts/Makefile
> > +++ b/arch/loongarch/boot/dts/Makefile
> > @@ -1,3 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> > +dtb-$(CONFIG_MACH_LOONGSON64)        =3D loongson-2k0500-ref.dtb
> > +
> >  obj-$(CONFIG_BUILTIN_DTB)    +=3D $(addsuffix .dtb.o, $(CONFIG_BUILTIN=
_DTB_NAME))
> > diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loo=
ngarch/boot/dts/loongson-2k0500-ref.dts
> > new file mode 100644
> > index 000000000000..c89662e5a296
> > --- /dev/null
> > +++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> > @@ -0,0 +1,115 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2023 Loongson Technology Corporation Limited
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "loongson-2k0500.dtsi"
> > +
> > +/ {
> > +     compatible =3D "loongson,ls2k0500-ref", "loongson,ls2k0500";
> > +     model =3D "Loongson-2K0500 Reference Board";
> > +
> > +     aliases {
> > +             ethernet0 =3D &gmac0;
> > +             ethernet1 =3D &gmac1;
> > +             serial0 =3D &uart0;
> > +     };
> > +
> > +     chosen {
> > +             stdout-path =3D "serial0:115200n8";
> > +             bootargs =3D "earlycon";
> > +     };
> > +
> > +     cpu_clk: cpu-clk {
> > +             #clock-cells =3D <0>;
> > +             compatible =3D "fixed-clock";
> > +             clock-frequency =3D <500000000>;
> > +     };
> > +
> > +     cpus {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             cpu-map {
> > +                     cluster0 {
> > +                             core0 {
> > +                                     cpu =3D <&cpu0>;
> > +                             };
> > +                     };
> > +             };
> > +
> > +             cpu0: cpu@0 {
> > +                     compatible =3D "loongson,la264";
> > +                     device_type =3D "cpu";
> > +                     reg =3D <0x0>;
> > +                     clocks =3D <&cpu_clk>;
> > +             };
> > +     };
>
> I've not read this whole patch, but from a glance - why is the cpu node
> in the board file, not the soc one?

I'm very sorry, that was my mistake. cpu node should really be part of
soc, I'll put it in dtsi.

Thanks.
Binbin
