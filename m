Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4424E63564C
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 10:31:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237715AbiKWJaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 04:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237619AbiKWJag (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 04:30:36 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1EF8112C65
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 01:28:49 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1oxm3j-0001mB-DL; Wed, 23 Nov 2022 10:28:47 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1oxm3d-0000Li-Qr; Wed, 23 Nov 2022 10:28:41 +0100
Date:   Wed, 23 Nov 2022 10:28:41 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        linux-rockchip@lists.infradead.org,
        Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
        heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        michael.riesch@wolfvision.net, robh+dt@kernel.org,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Message-ID: <20221123092841.GB13042@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
 <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
 <2694546.oTxpM42Gb3@archbook>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2694546.oTxpM42Gb3@archbook>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Nov 2022 20:47:49 +0100, Nicolas Frattaroli wrote:
> On Dienstag, 22. November 2022 00:10:25 CET Peter Geis wrote:
> > On Mon, Nov 21, 2022 at 12:34 PM Ezequiel Garcia
> > <ezequiel@vanguardiasur.com.ar> wrote:
> > > On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com> wrote:
> > > > I remember someone said that rga2 has only 32bit address space but not
> > > > having a mmu or mmu needs to be configured. Better ask by yourself in
> > > > pine64 discord since I'm not sure about that.
> > > > 于 2022年11月22日 GMT+08:00 上午12:41:16, Michael Tretter <m.tretter@pengutronix.de> 写到:
> > > > >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> > > > >> Someone from pine64 discord found that RGA2 doesn't work properly on over
> > > > >>
> > > > >> 4GB memory RK3568 devices. Are you sure current driver works now?
> > > > >
> > > > >I am absolutely sure that the driver works on a 2GB ROCK3A board.
> > > > >Unfortunately, I don't have a device with 4GB or more memory and I cannot test
> > > > >the driver with such a device.
> > > > >
> > > > >As the documentation for the RGA2 is the same in the TRM of the rk3288 and
> > > > >rk3568, I would guess that the driver doesn't work on a rk3288 with more than
> > > > >4GB (if there is such a thing) either and the driver needs to be fixed for
> > > > >both SoCs.
> > > > >
> > >
> > > In any case, if there's some kind of issue it must be in the driver,
> > > and not in the device tree binding (i.e. this patchset).
> > 
> > An unfortunate number of Rockchip drivers break on rk356x boards with
> > more than 4GB of ram. I've found requesting memory allocations with
> > the GFP_DMA flag solves the problem, as the kernel only allocates
> > 32bit addresses for DMA on rk356x. This is similar to the bug with the
> > ITS MSI allocations.
> 
> the problem in this case at least partly seems to be down to the driver
> assuming 32 bit addresses, see e.g. [1] (if I understand the code
> correctly) and [2]. When I asked in the #armlinux IRC on Libera.chat
> about this, Robin Murphy remarked:
> 
>   <robmur01> yeesh, the virt_to_phys/dma_sync abuse is even worse
>   - in that particular instance I'd be inclined to replace
>   {src,dst}_mmu_pages with proper coherent DMA buffers
> 
> So the driver in general needs some cleanup, which contributes to the
> problem.

As far as I understand the 4GB are a hardware limitation.

According to the rk3568 TRM, the RGA2_MMU_SRC_BASE has 28 bits for the upper
28 bits of the address of the MMU TLB. Thus the MMU TLB must be located within
4GB memory.

And within the MMU TLB, the addresses are 32 bit as well (unless I am missing
something important). Unfortunately, I couldn't find any documentation for the
TLB. The downstream driver writes only 32 bit addresses to the TLB as well.
Thus, I assume that all video buffers must be located within 4GB memory, too.

While I agree that the driver needs some cleanup and may use correct types for
handling the bit size limitation, I think this isn't some driver limitation.
Maybe the driver should set the dma mask to 32 bits and should be explicitly
aware of the 32 bit limit.

Michael

> 
> But as was said, this isn't a problem with the device tree, so it should
> still make it in. It just means that the driver is broken on 8GB RK356x.
> 
> Regards,
> Nicolas "someone from PINE64 discord (who was actually on IRC)" Frattaroli
> 
> [1]: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/media/platform/rockchip/rga/rga.c#L888
> [2]: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/media/platform/rockchip/rga/rga-buf.c#L120
> 
