Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8F4778491
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 02:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbjHKAiU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 20:38:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229993AbjHKAiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 20:38:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665DFEA
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 17:38:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0288764EE0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 00:38:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D85FC433CB
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 00:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691714297;
        bh=aSQuUr1D/oAQ84rkg/vlpqzXN6Rs3mS5HZzm1CbDgwE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=rXVG83+JYd7DwIGA5D5L3HE7rX0IU8m58D7SoiMetBpk1129m1ROEcsyJI6EsdY73
         fB4JI3nw5DrSdkPxK7yzFclv9nkoSjJ6BA65/RgTmryhQYcD27DIsUDwiq6YgltNxo
         3XNmvxOZN1lvsg8g6bf2TnhDZrIvQ2lhMHJgZS3K3r6ZMX55Ga4FGvtNpU5aN7YHFw
         yzbhapF0mSjLbDxRmGTF9jrmNGsvX8vW/jd4cbJHDDhx/A4IVy0h44Svhof9OuKakr
         EtxdbiRDFsOZ9i4xiiFpvqQAISPaenF1Xb8skCre7QO/ujak3qMIvCl6d6nnBs2Fc7
         5Iz+i76uQPMWg==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-523225dd110so1912800a12.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 17:38:17 -0700 (PDT)
X-Gm-Message-State: AOJu0Yyzff1uK52mYiPrVmHCxKvEK20JfO0flF+G/KqIjGLEkraTC2qa
        Lo23r/s0tJfNK6RHrlgvl4PGDwtThE4CG2DptIc=
X-Google-Smtp-Source: AGHT+IHeZEiMWcF4MEaiNdRqdHN8385DqxfcGoCPgOBGSs2O38d+Cd9vD72HzkBOycZ5QZ60CSDWWFXfBlTleb1cHKA=
X-Received: by 2002:aa7:cd70:0:b0:523:3ef2:b97f with SMTP id
 ca16-20020aa7cd70000000b005233ef2b97fmr495181edb.1.1691714295605; Thu, 10 Aug
 2023 17:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
In-Reply-To: <ZNURXBKkYdiWLanf@xhacker>
From:   Guo Ren <guoren@kernel.org>
Date:   Fri, 11 Aug 2023 08:38:04 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTuKzX0O+wBX8j+qMp9SY2SGdKYEKpnP_e9=K39zbTuvA@mail.gmail.com>
Message-ID: <CAJF2gTTuKzX0O+wBX8j+qMp9SY2SGdKYEKpnP_e9=K39zbTuvA@mail.gmail.com>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     wefu@redhat.com, conor@kernel.org, jrtc27@jrtc27.com,
        anup@brainfault.org, samuel@sholland.org, bmeng.cn@gmail.com,
        opensbi@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 11, 2023 at 12:45=E2=80=AFAM Jisheng Zhang <jszhang@kernel.org>=
 wrote:
>
> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > Add detailed information about thead,reset-sample driver, and improve
> > usage documentation.
> >
> > Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> > Signed-off-by: Guo Ren <guoren@kernel.org>
> > ---
> >  docs/platform/thead-c9xx.md | 87 ++++++++++++++++++++++++++++---------
> >  1 file changed, 67 insertions(+), 20 deletions(-)
> >
> > diff --git a/docs/platform/thead-c9xx.md b/docs/platform/thead-c9xx.md
> > index 8bb9e91f1a9b..fe05fc5bb85a 100644
> > --- a/docs/platform/thead-c9xx.md
> > +++ b/docs/platform/thead-c9xx.md
> > @@ -1,8 +1,8 @@
> > -T-HEAD C9xx Series Processors
> > -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> > +T-HEAD Processors
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > -The **C9xx** series processors are high-performance RISC-V architectur=
e
> > -multi-core processors with AI vector acceleration engine.
> > +T-HEAD provides high-performance RISC-V architecture multi-core
> > +processors with AI vector acceleration engine.
> >
> >  For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
> >
> > @@ -12,15 +12,75 @@ To build the platform-specific library and firmware=
 images, provide the
> >  Platform Options
> >  ----------------
> >
> > -The *T-HEAD C9xx* does not have any platform-specific compile options
> > +The *T-HEAD CPU* does not have any platform-specific compile options
> >  because it uses generic platform.
> >
> >  ```
> >  CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/make
> >  ```
> >
> > -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will usual=
ly have
> > -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible strings=
.
> > +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will usuall=
y have
> > +"thead,reset-sample" compatible strings. The "thead,reset-sample" is a=
 T-HEAD
> > +custom driver for the SMP system bootup; the single-core system doesn'=
t need
> > +it.
> > +
> > +T-HEAD Fdt Reset Driver Introduction
> > +------------------------------------
> > +
> > +Every T-HEAD CPU provides a reset control signal and reset address sig=
nals.
> > + - Reset address signal determines CPU where to start up.
> > + - Reset control signal releases CPU from reset state and begins to ex=
ecute
> > +   at reset address.
> > +
> > +Many vendors would gather these signals into SoC control registers. Th=
ese
> > +register designs are similar but with different base addresses and bit=
s
> > +definitions. We only provide standard opensbi, Linux binaries, and jta=
g gdbinit
> > +script to simplify Linux booting at the FPGA stage. The fdt reset driv=
er helps
> > +users bring up their SMP system quickly with the below settings:
>
> +DT maintainers and DT list.
>
> I can submit a dt-binding for this if DT maintainers agree with below
> properties. Could you please help review?
Of cause, I would help review.

This documentation describes the fact of opensbi thead,reset-sample
driver's status. The node name and property names have existed for 2
years, changing them would cause confusion, so let's keep them
continuously.

>
> > +
> > + - entry-reg:
> > +     The base address to store reset address value
> > +
> > + - entry-cnt:
> > +     The numbers of entry-reg, all of them set the same reset address
> > +
> > + - control-reg:
> > +     The base address to reset the controller
> > +
> > + - control-val:
> > +     Write which bits of control-reg for booting
> > +
> > + - csr-copy:
> > +     This array determines which csrs to copy from primary hart to the
> > +     secondary harts, which are set in sequence from left to right. Th=
e
> > +     secondary harts should keep the same setting as the primary hart.
> > +     These settings are also the first part of the bootup instructions
> > +     for secondary harts.
> > +
> > + - using-csr-reset:
> > +     A legacy reset controller for the SMP system, but abandoned in th=
e
> > +     latest T-HEAD processors.
> > +
> > +Here is the dts example:
> > +```
> > +     reset: reset-sample {
> > +             compatible =3D "thead,reset-sample";
> > +             entry-reg =3D <0xff 0xff019050>;
> > +             entry-cnt =3D <4>;
> > +             control-reg =3D <0xff 0xff015004>;
> > +             control-val =3D <0x1c>;
> > +             csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> > +     };
> > +```
> > +
> > +Legacy dts example (Abandoned):
> > +```
> > +     reset: reset-sample {
> > +             compatible =3D "thead,reset-sample";
> > +             using-csr-reset;
> > +             csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> > +     };
> > +```
> >
> >  DTS Example1: (Single core, eg: Allwinner D1 - c906)
> >  ----------------------------------------------------
> > @@ -181,16 +241,3 @@ DTS Example2: (Multi cores with soc reset-regs)
> >               };
> >       }
> >  ```
> > -
> > -DTS Example2: (Multi cores with old reset csrs)
> > ------------------------------------------------
> > -```
> > -     reset: reset-sample {
> > -             compatible =3D "thead,reset-sample";
> > -             using-csr-reset;
> > -             csr-copy =3D <0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc
> > -                         0x3b0 0x3b1 0x3b2 0x3b3
> > -                         0x3b4 0x3b5 0x3b6 0x3b7
> > -                         0x3a0>;
> > -     };
> > -```
> > --
> > 2.36.1
> >



--=20
Best Regards
 Guo Ren
