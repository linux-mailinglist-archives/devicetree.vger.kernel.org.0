Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6487877031D
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 16:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231512AbjHDOaj convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 4 Aug 2023 10:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231426AbjHDOah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 10:30:37 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 18E8646B1
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 07:30:34 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 591521007;
        Fri,  4 Aug 2023 07:31:16 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F3463F6C4;
        Fri,  4 Aug 2023 07:30:32 -0700 (PDT)
Date:   Fri, 4 Aug 2023 15:30:29 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "MOESSBAUER, Felix" <felix.moessbauer@siemens.com>,
        "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
        "wens@csie.org" <wens@csie.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Matzinger, Manuel Josef" <manuel.matzinger@siemens.com>,
        "Bovensiepen, Daniel (bovi)" <daniel.bovensiepen@siemens.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "Gylstorff, Quirin" <quirin.gylstorff@siemens.com>
Subject: Re: [PATCH 1/1] arm: dts: Enable device-tree overlay support for
 sun8i-h3 pi devices
Message-ID: <20230804153029.7ac9a6e6@donnerap.manchester.arm.com>
In-Reply-To: <5853794.MhkbZ0Pkbq@jernej-laptop>
References: <20230627133703.355893-1-felix.moessbauer@siemens.com>
        <a137cb78-f687-e9c6-e6f3-27be92c19da3@arm.com>
        <2dcc90f8329fe0f3306b8c2a6a1ab17fe1fc48c9.camel@siemens.com>
        <5853794.MhkbZ0Pkbq@jernej-laptop>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 03 Aug 2023 23:26:28 +0200
Jernej Škrabec <jernej.skrabec@gmail.com> wrote:

Hi,

> Dne torek, 01. avgust 2023 ob 13:59:49 CEST je MOESSBAUER, Felix napisal(a):
> > On Mon, 2023-07-31 at 10:53 +0100, Andre Przywara wrote:
> >   
> > > Hi,
> > > 
> > > On 31/07/2023 03:46, MOESSBAUER, Felix wrote:
> > >   
> > > > On Mon, 2023-07-31 at 00:12 +0200, Jernej Škrabec wrote:
> > > >   
> > > > > Dne sreda, 19. julij 2023 ob 14:26:13 CEST je Moessbauer Felix
> > > > > napisal(a):
> > > > >   
> > > > > > On Tue, 2023-07-11 at 21:42 +0200, Jernej Škrabec wrote:
> > > > > >   
> > > > > > > Dne torek, 27. junij 2023 ob 15:37:03 CEST je Felix
> > > > > > > Moessbauer
> > > > > > > 
> > > > > > > napisal(a):
> > > > > > >   
> > > > > > > > Add the '-@' DTC option for the sun8i-h3 pi-class devices.
> > > > > > > > This
> > > > > > > > option
> > > > > > > > populates the '__symbols__' node that contains all the
> > > > > > > > necessary
> > > > > > > > symbols
> > > > > > > > for supporting device-tree overlays (for instance from the
> > > > > > > > firmware
> > > > > > > > or
> > > > > > > > the bootloader) on these devices.
> > > > > > > > 
> > > > > > > > These devices allow various modules to be connected and
> > > > > > > > this
> > > > > > > > enables
> > > > > > > > users to create out-of-tree device-tree overlays for these
> > > > > > > > modules.
> > > > > > > > 
> > > > > > > > Please note that this change does increase the size of the
> > > > > > > > resulting DTB
> > > > > > > > by ~30%. For example, with v6.4 increase in size is as
> > > > > > > > follows:
> > > > > > > > 
> > > > > > > > 22909 -> 29564 sun8i-h3-orangepi-lite.dtb
> > > > > > > > 24214 -> 30935 sun8i-h3-bananapi-m2-plus.dtb
> > > > > > > > 23915 -> 30664 sun8i-h3-nanopi-m1-plus.dtb
> > > > > > > > 22969 -> 29537 sun8i-h3-nanopi-m1.dtb
> > > > > > > > 24157 -> 30836 sun8i-h3-nanopi-duo2.dtb
> > > > > > > > 24110 -> 30845 sun8i-h3-orangepi-plus2e.dtb
> > > > > > > > 23472 -> 30037 sun8i-h3-orangepi-one.dtb
> > > > > > > > 24600 -> 31410 sun8i-h3-orangepi-plus.dtb
> > > > > > > > 23618 -> 30230 sun8i-h3-orangepi-2.dtb
> > > > > > > > 22170 -> 28548 sun8i-h3-orangepi-zero-plus2.dtb
> > > > > > > > 23258 -> 29795 sun8i-h3-nanopi-neo-air.dtb
> > > > > > > > 23113 -> 29699 sun8i-h3-zeropi.dtb
> > > > > > > > 22803 -> 29270 sun8i-h3-nanopi-neo.dtb
> > > > > > > > 24674 -> 31318 sun8i-h3-nanopi-r1.dtb
> > > > > > > > 23477 -> 30038 sun8i-h3-orangepi-pc.dtb
> > > > > > > > 24622 -> 31380 sun8i-h3-bananapi-m2-plus-v1.2.dtb
> > > > > > > > 23750 -> 30366 sun8i-h3-orangepi-pc-plus.dtb
> > > > > > > > 
> > > > > > > > Signed-off-by: Felix Moessbauer
> > > > > > > > <felix.moessbauer@siemens.com>
> > > > > > > > ---
> > > > > > > > Please note that I only tested the overlay on the sun8i-h3-
> > > > > > > > nanopi-
> > > > > > > > neo
> > > > > > > > device. However, the devices are quite similar and in
> > > > > > > > general
> > > > > > > > the
> > > > > > > > change to add symbols should be pretty safe. Similar
> > > > > > > > patches
> > > > > > > > have
> > > > > > > > been
> > > > > > > > applied to various other devices in the past without any
> > > > > > > > negative
> > > > > > > > effect (except for the increased size).  
> > > > > > > 
> > > > > > > 
> > > > > > > I'm not a fan of this approach. What's wrong with letting
> > > > > > > kernel
> > > > > > > builders
> > > > > > > specify this flag on their own at compile time? That way size
> > > > > > > is
> > > > > > > still
> > > > > > > completely in domain of builder.  
> > 
> > 
> > At least the Debian maintainers decided to NOT include the -@ for all
> > targets, but purely rely on what the kernel offers [5]. They motivate
> > this with a similar decision made in the Kernel. This brings us back to
> > my patch which enables the -@ for particular boards in the Kernel
> > itself.
> > 
> > [5] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=910727#28
> > 
> >   
> > > > > > 
> > > > > > That's easier said than done. These symbols are only needed for
> > > > > > some
> > > > > > targets (that are commonly used with overlays). But how should
> > > > > > a
> > > > > > general purpose kernel builder like Debian know which DT to
> > > > > > build
> > > > > > with
> > > > > > symbols and which without? In Yocto the overlays are not really
> > > > > > needed,
> > > > > > as often the original dts is just patched directly.  
> > > > > 
> > > > > 
> > > > > LibreELEC (distro I help with) has support for DT overlays for
> > > > > some
> > > > > time and
> > > > > it was easy to enable symbols for all DTs with simple
> > > > > "DTC_FLAGS=-@"
> > > > > addition  
> > > 
> > > 
> > > So why don't you use the U-Boot provided copy of the DTB? We sync the
> > > DTs regularly from the kernel repo to the U-Boot repo, and the U-Boot
> > > build system builds all DTBs with overlay support already.
> > > This also saves you from the hassle to actually find and load the
> > > right 
> > > DTB, as it automatically comes as part of the U-Boot binary.
> > > On the U-Boot prompt (or rather in a script) you would then do:  
> > > => fdt move $fdtcontroladdr $fdt_addr_r
> > > => load <source> $fdtoverlay_addr_r <your_overlay>.dtbo
> > > => fdt apply $fdtoverlay_addr_r  
> > 
> > 
> > For systems that use u-boot this is a very convenient option. Thanks
> > for bringing this up. However, there are other boot-chains where this
> > is not an option.

What other firmware / bootloader would those boards use then? And how would
the overlays be applied then? Can't the DTs then not be built with overlay
support in this other firmware build process?

> Also, with this argument no target in the Kernel
> > would need to be compiled with -@.
> > 
> > My understanding was that adding the -@ is generally accepted if it is
> > only done on a per-device basis (which this patch does), but not
> > accepted for whole architectures. By that, I expect to see many similar
> > patches in the future.  
> 
> I don't necessarly agree with this approach, but since other ways are 
> rejected, I'll merge this one if there are no further complaints.

Well, I don't really mind too much, but I don't think this is sustainable:
- The requirement to apply overlays is not really confined to just a few
named boards, because anyone could find a reason why they would need to
change something. So what about the
sun8i-h3-emlid-neutis-n5h3-devboard.dts, for instance?

- I understand that this might sound like a broken record, but I still
consider the whole idea of building DTBs through the *kernel* build
system, then somehow deploying them along with the kernel and letting the
board's firmware load them again as somewhat bonkers to begin with.
Although by now it apparently became so ubiquitous that most people seem
to accept this as a given.

As the devicetree describes the device, it should be considered part of
the firmware, so just integrating it into the firmware (SPL/bootloader) is
the natural choice. And in this process you can choose to build with
overlay support - which is exactly what U-Boot does.

I consider the Linux kernel repository just the canonical place to store
the DT files, although more for historic than for really good reasons.
So building them using the kernel build system is more a matter of build
testing and validation than something really to be used.

Cheers,
Andre.

> 
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> Best regards,
> Jernej
> 
> > 
> > Cheers,
> > Felix
> > 
> >   
> > > 
> > > You could also chime in on this U-Boot patch of mine, that loads and 
> > > applies all .dtbo files found in a given directory:
> > > https://lore.kernel.org/u-boot/20230210110213.2531190-1-andre.przywara@arm
> > > .com/  
>  
> > > Cheers,
> > > Andre
> > > 
> > >   
> > > > 
> > > > Thanks for the pointer. If this would be a kconfig option, I would
> > > > agree. There's a patch to add this option, but this did not get
> > > > accepted [3]. Just manually adding some "magic" options does not
> > > > feel
> > > > correct.
> > > > 
> > > >   
> > > > > to build command [1]. Do you see any downside except knowing you
> > > > > have
> > > > > to
> > > > > include it? On the upside, there is no need to patch each and
> > > > > every
> > > > > file and
> > > > > kernel builder has a choice if overlays should be supported or
> > > > > not.  
> > > > 
> > > > 
> > > > There is a similar feature request for Debian, but without a
> > > > decision
> > > > yet [4]. I just cross-referenced it to this thread.
> > > > 
> > > >   
> > > > > Note that
> > > > > in some cases overlays can be needed even in the case when board
> > > > > doesn't have
> > > > > expansion ports.  
> > > > 
> > > > 
> > > > If that is the case, why can't we at least add the patch from [3]
> > > > and
> > > > provide the distros an easy option to enable overlays? Once
> > > > integrated,
> > > > we can eventually get rid of all the per-device patches in the
> > > > kernel.
> > > > 
> > > > Best regards,
> > > > Felix
> > > > 
> > > > [3] https://www.spinics.net/lists/kernel/msg4252361.html
> > > > [4] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=910727
> > > > 
> > > >   
> > > > > 
> > > > > Best regards,
> > > > > Jernej
> > > > > 
> > > > > [1]
> > > > > https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/linux/
> > > > > package.mk#L213
> > > > > 
> > > > >   
> > > > > > 
> > > > > > There has been a discussion in 2017 to improve the situation in
> > > > > > general, but without any final decision or implementation [1].
> > > > > > By
> > > > > > that,
> > > > > > these patches got more and more common. I recently sent a very
> > > > > > similar
> > > > > > patch for a riscv board that got accepted [2].
> > > > > > 
> > > > > > IMHO it is better to have these patches in the kernel instead
> > > > > > of
> > > > > > carrying different variants of this in each Linux distro. IMHO,
> > > > > > the
> > > > > > board vendors themselves should add this when they add a board.
> > > > > > 
> > > > > > [1]
> > > > > > https://lore.kernel.org/lkml/1502831736-28282-1-git-send-email-trini
> > > > > > @konsulk  
>  o.com/ [2]
> > > > > > https://lore.kernel.org/linux-devicetree/20230627080620.329873-1-fel
> > > > > > ix.moess  
>  bauer@siemens.com/
> > > > > > 
> > > > > > Best regards,
> > > > > > Felix
> > > > > > 
> > > > > >   
> > > > > > > Best regards,
> > > > > > > Jernej
> > > > > > > 
> > > > > > >   
> > > > > > > > Felix Moessbauer
> > > > > > > > Siemens AG
> > > > > > > > 
> > > > > > > >   arch/arm/boot/dts/allwinner/Makefile | 19
> > > > > > > > +++++++++++++++++++
> > > > > > > >   1 file changed, 19 insertions(+)
> > > > > > > > 
> > > > > > > > diff --git a/arch/arm/boot/dts/allwinner/Makefile
> > > > > > > > b/arch/arm/boot/dts/allwinner/Makefile index
> > > > > > > > 589a1ce1120a..eebb5a0c873a
> > > > > > > > 100644
> > > > > > > > --- a/arch/arm/boot/dts/allwinner/Makefile
> > > > > > > > +++ b/arch/arm/boot/dts/allwinner/Makefile
> > > > > > > > @@ -179,6 +179,25 @@ dtb-$(CONFIG_MACH_SUN7I) += \
> > > > > > > >          sun7i-a20-pcduino3-nano.dtb \
> > > > > > > >          sun7i-a20-wexler-tab7200.dtb \
> > > > > > > >          sun7i-a20-wits-pro-a20-dkt.dtb
> > > > > > > > +
> > > > > > > > +# Enables support for device-tree overlays for all pis
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-lite := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-bananapi-m2-plus := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-m1-plus := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-m1 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-duo2 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-plus2e := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-one := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-plus := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-2 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-zero-plus2 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-neo-air := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-zeropi := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-neo := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-nanopi-r1 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-pc := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-bananapi-m2-plus-v1.2 := -@
> > > > > > > > +DTC_FLAGS_sun8i-h3-orangepi-pc-plus := -@
> > > > > > > >   dtb-$(CONFIG_MACH_SUN8I) += \
> > > > > > > >          sun8i-a23-evb.dtb \
> > > > > > > >          sun8i-a23-gt90h-v4.dtb \  
> > > > > 
> > > > > 
> > > > > 
> > > > > 
> > > > >   
> > > > 
> > > >   
> > 
> >   
> 
> 
> 
> 

