Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C286F779C19
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:44:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233767AbjHLAoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:44:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjHLAoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:44:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84DCD10DF
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:44:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0614264673
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E848C433C7
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691801049;
        bh=co1qgukDxnwu8ihtnDcIiIJV5ZpCrvOkMGpBxqXwvJ8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=E1fEOcl4B4y4ekTj+a9nLRQkfms++a6K5IdqfCaAzlNYtDcDsmdwppzHB+LFwbleE
         o6Af1U8KsIkgVg5EtggsLAqqPdN8QY2wEnwP9tJEOZplvOeB3W+K9BTLeZ47GUXgsp
         /dd6ND4BWq9CrOr9E7Pn24x+4VRB1nqvHuJZx0f2XqVGyVnE8BtjoUUZiCik2afLv4
         n6gw0ADXpGKzOrk/SDyP+JEQecpDmH+uSqArNRPxjqyjCCKfDXuxj0TGBmbuhiV8B2
         UCENRJntFA+cfSR9LOlt8QIT943y0I3QpRrOQYcB0XuDtUs0Kde1xR7rTjsXYvHvom
         gueQXd93XQ+Hg==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-52256241c66so5191010a12.1
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:44:09 -0700 (PDT)
X-Gm-Message-State: AOJu0YynzAUy44jtx//ubdldCiUL7bfraqMmjIQLYv+0HQ3WOTRm6oyD
        lWhM3XKj/+LgQeKtkle/c0Dr3wUNY0nZ19B2Wkw=
X-Google-Smtp-Source: AGHT+IELivPB/D/CdGvlRPOS6XLUIlHNvEdOP9pyc/ADPUeO+5me1K5E40lvSzZ0uJJXBU1JEEUrlt1ay4EVloBCev4=
X-Received: by 2002:aa7:c907:0:b0:522:3149:159b with SMTP id
 b7-20020aa7c907000000b005223149159bmr4133559edt.2.1691801047638; Fri, 11 Aug
 2023 17:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
In-Reply-To: <ZNURXBKkYdiWLanf@xhacker>
From:   Guo Ren <guoren@kernel.org>
Date:   Sat, 12 Aug 2023 08:43:56 +0800
X-Gmail-Original-Message-ID: <CAJF2gTR86hWjcbKdk7w97nZjJ+42sMrEr-G07HXhPpRSHX=7gw@mail.gmail.com>
Message-ID: <CAJF2gTR86hWjcbKdk7w97nZjJ+42sMrEr-G07HXhPpRSHX=7gw@mail.gmail.com>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     wefu@redhat.com, conor@kernel.org, jrtc27@jrtc27.com,
        anup@brainfault.org, samuel@sholland.org, bmeng.cn@gmail.com,
        opensbi@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jisheng,

Could you give a review on this patch? This only corrects the
documentation for the current thead, reset-sample driver of opensbi.

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
