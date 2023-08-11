Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2781B779112
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 15:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbjHKNyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 09:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjHKNyA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 09:54:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9450718F
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 06:53:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 31AA267085
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:53:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E402C433CD
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 13:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691762037;
        bh=ev7VPgCJIqVgR8LekWFLj7e96UKDf+6s2k0v/I1Ba6U=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=VapMBxMWElHyVYi0i0g4wmcCqqNtDXN70l2p7oiPVVzMA2mq//vlT4zRSX33TgcPm
         AWQEs4PEVF4FUa4Yjn73jN93DZwTeyafM/sR5YnHSbsOE8QDthAICO2kSCPQVSF+w2
         BKZOFvVfUUfIoGZF8bOuvYeNSNyivo7eaiIt77FOlOQ/UlPpM6ZaQandKMYbSXPGSA
         yP2JZWiEQW9cHmba1t6fy+dh6m5ehYt9SVQzllXpaLSC8qsbheSLZjldtC/dEfaJF7
         D8vJoZ+6kI6S6nwKrQq7Bq4f8gZE8GmTJr0ZfWBjY0uq+WBLqLxwDNj++n6SuaVh4Y
         wdugYqEWdUXpw==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5236b2b4cdbso2549069a12.3
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 06:53:57 -0700 (PDT)
X-Gm-Message-State: AOJu0YxoJ2OxJwFj9DKZPI1FvJ0OHXuP3pidQTNPFlWP97fDJ8g65iu/
        ieYV52BBCa5Uo7TDpH+3BSX7m+Eqv9sytHj0ZLU=
X-Google-Smtp-Source: AGHT+IGo4fn2Bk142Y1He9+U5jK4Td9+0bhKZRTUEk5daGhhkDeK06t38zRXqOIc8kVKSOE+2Hlve9BHIp2l7NAUrRI=
X-Received: by 2002:a05:6402:2045:b0:523:1e0a:e12e with SMTP id
 bc5-20020a056402204500b005231e0ae12emr1735261edb.23.1691762035748; Fri, 11
 Aug 2023 06:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com> <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
 <FD240B24-B8F8-4D7B-9036-EFFE70D68BA8@jrtc27.com> <CAJF2gTT9eaMKjCQxAOKHDesH+QZOXY2tM9p2ECm005zePJ_sag@mail.gmail.com>
 <77E6E5A6-A151-431E-A80A-20141153C9D9@jrtc27.com>
In-Reply-To: <77E6E5A6-A151-431E-A80A-20141153C9D9@jrtc27.com>
From:   Guo Ren <guoren@kernel.org>
Date:   Fri, 11 Aug 2023 21:53:41 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRUq++sUsvqvfu8yMAkAMVo0mwXATRCfHeqWmwbjdenAg@mail.gmail.com>
Message-ID: <CAJF2gTRUq++sUsvqvfu8yMAkAMVo0mwXATRCfHeqWmwbjdenAg@mail.gmail.com>
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

On Fri, Aug 11, 2023 at 10:46=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27.com>=
 wrote:
>
> On 11 Aug 2023, at 03:27, Guo Ren <guoren@kernel.org> wrote:
> >
> > On Fri, Aug 11, 2023 at 10:05=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27.=
com> wrote:
> >>
> >> On 11 Aug 2023, at 03:01, Guo Ren <guoren@kernel.org> wrote:
> >>>
> >>> On Fri, Aug 11, 2023 at 8:42=E2=80=AFAM Jessica Clarke <jrtc27@jrtc27=
.com> wrote:
> >>>>
> >>>> On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
> >>>>>
> >>>>> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> >>>>>> From: Guo Ren <guoren@linux.alibaba.com>
> >>>>>>
> >>>>>> Add detailed information about thead,reset-sample driver, and impr=
ove
> >>>>>> usage documentation.
> >>>>>>
> >>>>>> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> >>>>>> Signed-off-by: Guo Ren <guoren@kernel.org>
> >>>>>> ---
> >>>>>> docs/platform/thead-c9xx.md | 87 ++++++++++++++++++++++++++++-----=
----
> >>>>>> 1 file changed, 67 insertions(+), 20 deletions(-)
> >>>>>>
> >>>>>> diff --git a/docs/platform/thead-c9xx.md b/docs/platform/thead-c9x=
x.md
> >>>>>> index 8bb9e91f1a9b..fe05fc5bb85a 100644
> >>>>>> --- a/docs/platform/thead-c9xx.md
> >>>>>> +++ b/docs/platform/thead-c9xx.md
> >>>>>> @@ -1,8 +1,8 @@
> >>>>>> -T-HEAD C9xx Series Processors
> >>>>>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> >>>>>> +T-HEAD Processors
> >>>>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>>>>>
> >>>>>> -The **C9xx** series processors are high-performance RISC-V archit=
ecture
> >>>>>> -multi-core processors with AI vector acceleration engine.
> >>>>>> +T-HEAD provides high-performance RISC-V architecture multi-core
> >>>>>> +processors with AI vector acceleration engine.
> >>>>>>
> >>>>>> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
> >>>>>>
> >>>>>> @@ -12,15 +12,75 @@ To build the platform-specific library and fir=
mware images, provide the
> >>>>>> Platform Options
> >>>>>> ----------------
> >>>>>>
> >>>>>> -The *T-HEAD C9xx* does not have any platform-specific compile opt=
ions
> >>>>>> +The *T-HEAD CPU* does not have any platform-specific compile opti=
ons
> >>>>>> because it uses generic platform.
> >>>>>>
> >>>>>> ```
> >>>>>> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/mak=
e
> >>>>>> ```
> >>>>>>
> >>>>>> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will =
usually have
> >>>>>> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible st=
rings.
> >>>>>> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will u=
sually have
> >>>>>> +"thead,reset-sample" compatible strings. The "thead,reset-sample"=
 is a T-HEAD
> >>>>>> +custom driver for the SMP system bootup; the single-core system d=
oesn't need
> >>>>>> +it.
> >>>>>> +
> >>>>>> +T-HEAD Fdt Reset Driver Introduction
> >>>>>> +------------------------------------
> >>>>>> +
> >>>>>> +Every T-HEAD CPU provides a reset control signal and reset addres=
s signals.
> >>>>>> + - Reset address signal determines CPU where to start up.
> >>>>>> + - Reset control signal releases CPU from reset state and begins =
to execute
> >>>>>> +   at reset address.
> >>>>>> +
> >>>>>> +Many vendors would gather these signals into SoC control register=
s. These
> >>>>>> +register designs are similar but with different base addresses an=
d bits
> >>>>>> +definitions. We only provide standard opensbi, Linux binaries, an=
d jtag gdbinit
> >>>>>> +script to simplify Linux booting at the FPGA stage. The fdt reset=
 driver helps
> >>>>>> +users bring up their SMP system quickly with the below settings:
> >>>>>
> >>>>> +DT maintainers and DT list.
> >>>>>
> >>>>> I can submit a dt-binding for this if DT maintainers agree with bel=
ow
> >>>>> properties. Could you please help review?
> >>>>
> >>>> I thought this was already discussed on the OpenSBI list 2 months ag=
o,
> >>>> and received pretty negative feedback.
> >>> Yes, we want to correct all DT grammar & compile problems, and make i=
t
> >>> legal first and try again. I thought every vendor has their own choic=
e
> >>> of how to deliver their hardware support. The motivation of this
> >>> driver is to ease the delivery of T-HEAD CPU cores on different
> >>> platforms; people only need three things: jtag_init_script & opensbi =
&
> >>> linux_Image, then they could boot on their own FPGA prototype
> >>> platform, and they needn't prepare any software stuff, all the generi=
c
> >>> binaries could be directly used. The th1520 could be a good example
> >>> for them. That's why we consistently push this thing.
> >>
> >> What=E2=80=99s changed to make people say yes rather than no this time=
?
> >>
> >> I for one will not give positive feedback for self-modifying code in m=
y
> >> firmware (outside of the necessary self-relocation at startup before
> >> the PMP is enabled).
> > I appreciate you pointing out that problem and that has been solved.
> > So I don't see any more security problems. You agree with
> > self-relocation but not self-modifying code. Is this a little
> > conflict? They are all self-modifying text areas before PMP lock.
>
> No. Self-relocation modifies data (in the absence of text relocations,
> which aren=E2=80=99t supported in OpenSBI), something which happens durin=
g
> normal execution. The instruction bytes themselves are never changing.
> Self-modifying code modifies code, something which should not be done
> unless you absolutely have to.
>
> > Do you against alternative mechanisms in opensbi, which is also a
> > self-modifying code?
>
> Yes. I hate that Linux does it, but I understand why it is that way.
>
> > We found that ticket_lock performance is lower
> > than qspinlock when opensbi tlb_flush and icahe_flush on the 128 cores
> > platform. We also want to introduce qspinlock into opensbi. Do you
> > think it's proper?
>
> No. If you have operations that are that performance-sensitive in
> firmware then they should not be in firmware. The cost of an SBI call
> will far outweigh the cost of slightly slower locking.
This is a good opinion for me to reference; thx. My intuition is the
same. We should keep tlb_flush, icache_flush in Linux and decrease
sbi_call for ipi operations.

>
> Jess
>
> > I also want Anup's opinion before our work, thx.
> >
> >>
> >> Jess
> >>
> >
> >
> > --
> > Best Regards
> > Guo Ren
>
>


--=20
Best Regards
 Guo Ren
