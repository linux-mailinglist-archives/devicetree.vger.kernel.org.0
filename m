Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E4F4778562
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 04:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjHKC15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 22:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjHKC15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 22:27:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB212D57
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:27:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E569864B35
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 02:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4515FC433CA
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 02:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691720875;
        bh=V2hVDs1AWNns8akP8WF7iwxEAXT5rnFQXKJ6kF3gdZI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=pBeuFrxz9wzpKVFgI8pvXjvYg6i9qI8IKomvnTUXz2DM/dE/SOTAMeTrRPO2yjAq8
         AkE8KWfkAW8O+3IDkcO617c2Kvsu0grVd0yeQOmexjpqBuhZX3i+sV2dqzuiYNh0kv
         nmrShE+q28lUXDGHBR5U0NHXmzGqgAxl0EkUelCPt3Sz7mDAeNhxmuXuSLnUxT6fGQ
         A+/aORdQkQmjQtXZHG83GIA7fjZr51VlXG8NDJ7tvRaM45X850RtqiZq7cplq71H4s
         U8fbGcl0zVkCMgdTwCZS4srgvGJxR7nnNgtBPTt59qsZph8f8VEtZDs1eUKQS+1X2h
         zG/9J+18WuKXQ==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so5485294a12.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:27:55 -0700 (PDT)
X-Gm-Message-State: AOJu0YymoWsEcU7gThPBMGgH2wk8KGtTeI9qLZTUnkVpha6GYgcw/GbW
        57n16Ys9af1WDfjc1kMYwnxYDypcorus3ybsNp8=
X-Google-Smtp-Source: AGHT+IGdrAw1dxWmJYvOAXISBMzIlyWRkb78TS6FZysXTC/GqdNASatPeW6lu4XwX4y/a1jY4r84Xdcal89l62vAI3w=
X-Received: by 2002:aa7:c2d1:0:b0:523:37f0:2d12 with SMTP id
 m17-20020aa7c2d1000000b0052337f02d12mr657520edp.17.1691720873523; Thu, 10 Aug
 2023 19:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com> <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
 <FD240B24-B8F8-4D7B-9036-EFFE70D68BA8@jrtc27.com>
In-Reply-To: <FD240B24-B8F8-4D7B-9036-EFFE70D68BA8@jrtc27.com>
From:   Guo Ren <guoren@kernel.org>
Date:   Fri, 11 Aug 2023 10:27:42 +0800
X-Gmail-Original-Message-ID: <CAJF2gTT9eaMKjCQxAOKHDesH+QZOXY2tM9p2ECm005zePJ_sag@mail.gmail.com>
Message-ID: <CAJF2gTT9eaMKjCQxAOKHDesH+QZOXY2tM9p2ECm005zePJ_sag@mail.gmail.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 11, 2023 at 10:05=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27.com>=
 wrote:
>
> On 11 Aug 2023, at 03:01, Guo Ren <guoren@kernel.org> wrote:
> >
> > On Fri, Aug 11, 2023 at 8:42=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27.c=
om> wrote:
> >>
> >> On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
> >>>
> >>> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> >>>> From: Guo Ren <guoren@linux.alibaba.com>
> >>>>
> >>>> Add detailed information about thead,reset-sample driver, and improv=
e
> >>>> usage documentation.
> >>>>
> >>>> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> >>>> Signed-off-by: Guo Ren <guoren@kernel.org>
> >>>> ---
> >>>> docs/platform/thead-c9xx.md | 87 ++++++++++++++++++++++++++++-------=
--
> >>>> 1 file changed, 67 insertions(+), 20 deletions(-)
> >>>>
> >>>> diff --git a/docs/platform/thead-c9xx.md b/docs/platform/thead-c9xx.=
md
> >>>> index 8bb9e91f1a9b..fe05fc5bb85a 100644
> >>>> --- a/docs/platform/thead-c9xx.md
> >>>> +++ b/docs/platform/thead-c9xx.md
> >>>> @@ -1,8 +1,8 @@
> >>>> -T-HEAD C9xx Series Processors
> >>>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> >>>> +T-HEAD Processors
> >>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>>>
> >>>> -The **C9xx** series processors are high-performance RISC-V architec=
ture
> >>>> -multi-core processors with AI vector acceleration engine.
> >>>> +T-HEAD provides high-performance RISC-V architecture multi-core
> >>>> +processors with AI vector acceleration engine.
> >>>>
> >>>> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
> >>>>
> >>>> @@ -12,15 +12,75 @@ To build the platform-specific library and firmw=
are images, provide the
> >>>> Platform Options
> >>>> ----------------
> >>>>
> >>>> -The *T-HEAD C9xx* does not have any platform-specific compile optio=
ns
> >>>> +The *T-HEAD CPU* does not have any platform-specific compile option=
s
> >>>> because it uses generic platform.
> >>>>
> >>>> ```
> >>>> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/make
> >>>> ```
> >>>>
> >>>> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will us=
ually have
> >>>> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible stri=
ngs.
> >>>> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will usu=
ally have
> >>>> +"thead,reset-sample" compatible strings. The "thead,reset-sample" i=
s a T-HEAD
> >>>> +custom driver for the SMP system bootup; the single-core system doe=
sn't need
> >>>> +it.
> >>>> +
> >>>> +T-HEAD Fdt Reset Driver Introduction
> >>>> +------------------------------------
> >>>> +
> >>>> +Every T-HEAD CPU provides a reset control signal and reset address =
signals.
> >>>> + - Reset address signal determines CPU where to start up.
> >>>> + - Reset control signal releases CPU from reset state and begins to=
 execute
> >>>> +   at reset address.
> >>>> +
> >>>> +Many vendors would gather these signals into SoC control registers.=
 These
> >>>> +register designs are similar but with different base addresses and =
bits
> >>>> +definitions. We only provide standard opensbi, Linux binaries, and =
jtag gdbinit
> >>>> +script to simplify Linux booting at the FPGA stage. The fdt reset d=
river helps
> >>>> +users bring up their SMP system quickly with the below settings:
> >>>
> >>> +DT maintainers and DT list.
> >>>
> >>> I can submit a dt-binding for this if DT maintainers agree with below
> >>> properties. Could you please help review?
> >>
> >> I thought this was already discussed on the OpenSBI list 2 months ago,
> >> and received pretty negative feedback.
> > Yes, we want to correct all DT grammar & compile problems, and make it
> > legal first and try again. I thought every vendor has their own choice
> > of how to deliver their hardware support. The motivation of this
> > driver is to ease the delivery of T-HEAD CPU cores on different
> > platforms; people only need three things: jtag_init_script & opensbi &
> > linux_Image, then they could boot on their own FPGA prototype
> > platform, and they needn't prepare any software stuff, all the generic
> > binaries could be directly used. The th1520 could be a good example
> > for them. That's why we consistently push this thing.
>
> What=E2=80=99s changed to make people say yes rather than no this time?
>
> I for one will not give positive feedback for self-modifying code in my
> firmware (outside of the necessary self-relocation at startup before
> the PMP is enabled).
I appreciate you pointing out that problem and that has been solved.
So I don't see any more security problems. You agree with
self-relocation but not self-modifying code. Is this a little
conflict? They are all self-modifying text areas before PMP lock.

Do you against alternative mechanisms in opensbi, which is also a
self-modifying code? We found that ticket_lock performance is lower
than qspinlock when opensbi tlb_flush and icahe_flush on the 128 cores
platform. We also want to introduce qspinlock into opensbi. Do you
think it's proper? I also want Anup's opinion before our work, thx.

>
> Jess
>


--=20
Best Regards
 Guo Ren
