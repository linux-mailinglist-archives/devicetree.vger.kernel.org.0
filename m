Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 228CA778535
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 04:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231645AbjHKCCK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 22:02:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbjHKCCK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 22:02:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870442D55
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:02:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 24EB264656
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 02:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85803C433C9
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 02:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691719327;
        bh=WHCcQdX1O47U3LS8100epg2O9sGXSGio1q4AxZudwHk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=u8KAYMofsmjiKobjPLO+rlMeIOnxpvxroShxNA6VRr+EBw9HgttK7incBokUHAEEc
         fxaJlngRnpfdk+ETlUA+HYk7CPgIS9sZjSaOPu+An3GhwhsDSKrjdMYlv3R2ORJ+4A
         W00HhmD8rZZSG/SAd9IJYuV0pYvWHEoX4H0vKC3eaDHa2+3xKYSE0J7uQYdhxgmnfP
         i7xtJhWzvbOfjQU6x8/CVQKEdeil0xlCG15rC+HoVOvckkQSui173UcmBjUGEzX6z3
         UoT9avPTZQ0oEzAIUf2k6vxOcHnQ/FptpB0uW/Z3Sa7a50RtpRY8SCYLhWrSgs6Vmr
         aCae97+xE+SpQ==
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5233deb7cb9so1790265a12.3
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:02:07 -0700 (PDT)
X-Gm-Message-State: AOJu0YyrCe68Ua5pFn5qluTAa+CMlURNd//M9qdCs4gY2ggXWhAH2D7+
        BoW6T7tTsGgqAMoZMV39cN5jEl1XHDBWgK+eDD8=
X-Google-Smtp-Source: AGHT+IHmpdNy6bWcPG4ZrkAN68Xj52IdT6N04GFi/GMsY/xHd6Bf0VCIEz4MkIB52SqcNipiEY7lRrGUcQb44q1oykg=
X-Received: by 2002:aa7:c14f:0:b0:522:6e3f:b65 with SMTP id
 r15-20020aa7c14f000000b005226e3f0b65mr507962edp.33.1691719325768; Thu, 10 Aug
 2023 19:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com>
In-Reply-To: <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com>
From:   Guo Ren <guoren@kernel.org>
Date:   Fri, 11 Aug 2023 10:01:54 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
Message-ID: <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
To:     Jessica Clarke <jrtc27@jrtc27.com>
Cc:     Jisheng Zhang <jszhang@kernel.org>, wefu@redhat.com,
        Conor Dooley <conor@kernel.org>,
        Anup Patel <anup@brainfault.org>,
        Samuel Holland <samuel@sholland.org>, bmeng.cn@gmail.com,
        opensbi <opensbi@lists.infradead.org>,
        Guo Ren <guoren@linux.alibaba.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
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

On Fri, Aug 11, 2023 at 8:42=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27.com> =
wrote:
>
> On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
> >
> > On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> >> From: Guo Ren <guoren@linux.alibaba.com>
> >>
> >> Add detailed information about thead,reset-sample driver, and improve
> >> usage documentation.
> >>
> >> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> >> Signed-off-by: Guo Ren <guoren@kernel.org>
> >> ---
> >> docs/platform/thead-c9xx.md | 87 ++++++++++++++++++++++++++++---------
> >> 1 file changed, 67 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/docs/platform/thead-c9xx.md b/docs/platform/thead-c9xx.md
> >> index 8bb9e91f1a9b..fe05fc5bb85a 100644
> >> --- a/docs/platform/thead-c9xx.md
> >> +++ b/docs/platform/thead-c9xx.md
> >> @@ -1,8 +1,8 @@
> >> -T-HEAD C9xx Series Processors
> >> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> >> +T-HEAD Processors
> >> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>
> >> -The **C9xx** series processors are high-performance RISC-V architectu=
re
> >> -multi-core processors with AI vector acceleration engine.
> >> +T-HEAD provides high-performance RISC-V architecture multi-core
> >> +processors with AI vector acceleration engine.
> >>
> >> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
> >>
> >> @@ -12,15 +12,75 @@ To build the platform-specific library and firmwar=
e images, provide the
> >> Platform Options
> >> ----------------
> >>
> >> -The *T-HEAD C9xx* does not have any platform-specific compile options
> >> +The *T-HEAD CPU* does not have any platform-specific compile options
> >> because it uses generic platform.
> >>
> >> ```
> >> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/make
> >> ```
> >>
> >> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will usua=
lly have
> >> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible string=
s.
> >> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will usual=
ly have
> >> +"thead,reset-sample" compatible strings. The "thead,reset-sample" is =
a T-HEAD
> >> +custom driver for the SMP system bootup; the single-core system doesn=
't need
> >> +it.
> >> +
> >> +T-HEAD Fdt Reset Driver Introduction
> >> +------------------------------------
> >> +
> >> +Every T-HEAD CPU provides a reset control signal and reset address si=
gnals.
> >> + - Reset address signal determines CPU where to start up.
> >> + - Reset control signal releases CPU from reset state and begins to e=
xecute
> >> +   at reset address.
> >> +
> >> +Many vendors would gather these signals into SoC control registers. T=
hese
> >> +register designs are similar but with different base addresses and bi=
ts
> >> +definitions. We only provide standard opensbi, Linux binaries, and jt=
ag gdbinit
> >> +script to simplify Linux booting at the FPGA stage. The fdt reset dri=
ver helps
> >> +users bring up their SMP system quickly with the below settings:
> >
> > +DT maintainers and DT list.
> >
> > I can submit a dt-binding for this if DT maintainers agree with below
> > properties. Could you please help review?
>
> I thought this was already discussed on the OpenSBI list 2 months ago,
> and received pretty negative feedback.
Yes, we want to correct all DT grammar & compile problems, and make it
legal first and try again. I thought every vendor has their own choice
of how to deliver their hardware support. The motivation of this
driver is to ease the delivery of T-HEAD CPU cores on different
platforms; people only need three things: jtag_init_script & opensbi &
linux_Image, then they could boot on their own FPGA prototype
platform, and they needn't prepare any software stuff, all the generic
binaries could be directly used. The th1520 could be a good example
for them. That's why we consistently push this thing.

>
> Jess
>
> >> +
> >> + - entry-reg:
> >> + The base address to store reset address value
> >> +
> >> + - entry-cnt:
> >> + The numbers of entry-reg, all of them set the same reset address
> >> +
> >> + - control-reg:
> >> + The base address to reset the controller
> >> +
> >> + - control-val:
> >> + Write which bits of control-reg for booting
> >> +
> >> + - csr-copy:
> >> + This array determines which csrs to copy from primary hart to the
> >> + secondary harts, which are set in sequence from left to right. The
> >> + secondary harts should keep the same setting as the primary hart.
> >> + These settings are also the first part of the bootup instructions
> >> + for secondary harts.
> >> +
> >> + - using-csr-reset:
> >> + A legacy reset controller for the SMP system, but abandoned in the
> >> + latest T-HEAD processors.
> >> +
> >> +Here is the dts example:
> >> +```
> >> + reset: reset-sample {
> >> + compatible =3D "thead,reset-sample";
> >> + entry-reg =3D <0xff 0xff019050>;
> >> + entry-cnt =3D <4>;
> >> + control-reg =3D <0xff 0xff015004>;
> >> + control-val =3D <0x1c>;
> >> + csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> >> + };
> >> +```
> >> +
> >> +Legacy dts example (Abandoned):
> >> +```
> >> + reset: reset-sample {
> >> + compatible =3D "thead,reset-sample";
> >> + using-csr-reset;
> >> + csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
> >> + };
> >> +```
> >>
> >> DTS Example1: (Single core, eg: Allwinner D1 - c906)
> >> ----------------------------------------------------
> >> @@ -181,16 +241,3 @@ DTS Example2: (Multi cores with soc reset-regs)
> >> };
> >> }
> >> ```
> >> -
> >> -DTS Example2: (Multi cores with old reset csrs)
> >> ------------------------------------------------
> >> -```
> >> - reset: reset-sample {
> >> - compatible =3D "thead,reset-sample";
> >> - using-csr-reset;
> >> - csr-copy =3D <0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc
> >> -     0x3b0 0x3b1 0x3b2 0x3b3
> >> -     0x3b4 0x3b5 0x3b6 0x3b7
> >> -     0x3a0>;
> >> - };
> >> -```
> >> --
> >> 2.36.1
>
>


--=20
Best Regards
 Guo Ren
