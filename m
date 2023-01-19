Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED6DA673808
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 13:15:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbjASMP4 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 19 Jan 2023 07:15:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbjASMPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 07:15:55 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BE1C6E91
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:15:52 -0800 (PST)
Received: from wf0783.dip.tu-dresden.de ([141.76.183.15] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pITpV-0002mO-3s; Thu, 19 Jan 2023 13:15:41 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Michael Tretter <m.tretter@pengutronix.de>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        robh+dt@kernel.org, Peter Geis <pgwipeout@gmail.com>
Cc:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        linux-rockchip@lists.infradead.org,
        Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
        jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, michael.riesch@wolfvision.net
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date:   Thu, 19 Jan 2023 13:15:39 +0100
Message-ID: <4455473.LvFx2qVVIh@phil>
In-Reply-To: <5241675.okTXgP3Kn8@archbook>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <20230117124114.GF23495@pengutronix.de> <5241675.okTXgP3Kn8@archbook>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Mittwoch, 18. Januar 2023, 01:01:48 CET schrieb Nicolas Frattaroli:
> On Dienstag, 17. Januar 2023 13:41:14 CET Michael Tretter wrote:
> > On Wed, 23 Nov 2022 10:28:41 +0100, Michael Tretter wrote:
> > > On Tue, 22 Nov 2022 20:47:49 +0100, Nicolas Frattaroli wrote:
> > > > On Dienstag, 22. November 2022 00:10:25 CET Peter Geis wrote:
> > > > > On Mon, Nov 21, 2022 at 12:34 PM Ezequiel Garcia
> > > > > <ezequiel@vanguardiasur.com.ar> wrote:
> > > > > > On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com> wrote:
> > > > > > > I remember someone said that rga2 has only 32bit address space but not
> > > > > > > having a mmu or mmu needs to be configured. Better ask by yourself in
> > > > > > > pine64 discord since I'm not sure about that.
> > > > > > > 于 2022年11月22日 GMT+08:00 上午12:41:16, Michael Tretter <m.tretter@pengutronix.de> 写到:
> > > > > > > >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> > > > > > > >> Someone from pine64 discord found that RGA2 doesn't work properly on over
> > > > > > > >>
> > > > > > > >> 4GB memory RK3568 devices. Are you sure current driver works now?
> > > > > > > >
> > > > > > > >I am absolutely sure that the driver works on a 2GB ROCK3A board.
> > > > > > > >Unfortunately, I don't have a device with 4GB or more memory and I cannot test
> > > > > > > >the driver with such a device.
> > > > > > > >
> > > > > > > >As the documentation for the RGA2 is the same in the TRM of the rk3288 and
> > > > > > > >rk3568, I would guess that the driver doesn't work on a rk3288 with more than
> > > > > > > >4GB (if there is such a thing) either and the driver needs to be fixed for
> > > > > > > >both SoCs.
> > > > > > > >
> > > > > >
> > > > > > In any case, if there's some kind of issue it must be in the driver,
> > > > > > and not in the device tree binding (i.e. this patchset).
> > > > > 
> > > > > An unfortunate number of Rockchip drivers break on rk356x boards with
> > > > > more than 4GB of ram. I've found requesting memory allocations with
> > > > > the GFP_DMA flag solves the problem, as the kernel only allocates
> > > > > 32bit addresses for DMA on rk356x. This is similar to the bug with the
> > > > > ITS MSI allocations.
> > > > 
> > > > the problem in this case at least partly seems to be down to the driver
> > > > assuming 32 bit addresses, see e.g. [1] (if I understand the code
> > > > correctly) and [2]. When I asked in the #armlinux IRC on Libera.chat
> > > > about this, Robin Murphy remarked:
> > > > 
> > > >   <robmur01> yeesh, the virt_to_phys/dma_sync abuse is even worse
> > > >   - in that particular instance I'd be inclined to replace
> > > >   {src,dst}_mmu_pages with proper coherent DMA buffers
> > > > 
> > > > So the driver in general needs some cleanup, which contributes to the
> > > > problem.
> > > 
> > > As far as I understand the 4GB are a hardware limitation.
> > > 
> > > According to the rk3568 TRM, the RGA2_MMU_SRC_BASE has 28 bits for the upper
> > > 28 bits of the address of the MMU TLB. Thus the MMU TLB must be located within
> > > 4GB memory.
> > > 
> > > And within the MMU TLB, the addresses are 32 bit as well (unless I am missing
> > > something important). Unfortunately, I couldn't find any documentation for the
> > > TLB. The downstream driver writes only 32 bit addresses to the TLB as well.
> > > Thus, I assume that all video buffers must be located within 4GB memory, too.
> > > 
> > > While I agree that the driver needs some cleanup and may use correct types for
> > > handling the bit size limitation, I think this isn't some driver limitation.
> > > Maybe the driver should set the dma mask to 32 bits and should be explicitly
> > > aware of the 32 bit limit.
> > > 
> > > > 
> > > > But as was said, this isn't a problem with the device tree, so it should
> > > > still make it in. It just means that the driver is broken on 8GB RK356x.
> > 
> > Nicolas: Is this your Acked-By?
> > 
> > Who would pick up the patch? Heiko?
> > 
> > Michael
> > 
> 
> Sure,
> 
> Acked-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> 
> Though I'm not sure how much weight my Acked-by carries here.
> 
> For applying the patch, yes that would be done by Heiko.

Hmm, normally the binding goes through the relevant subsystem tree
(media in this case), after which I'd normally pick the dts patch.
Media is always pretty hard, as one never really knows if and when said
patches get applied.

I don't really see media-people in the Cc list as well, so don't
really know what's the plan.

I guess you might want to resend with Reviews appended and include
the media people + list for the binding. (Or I'd need an Ack from
someone from media for me to take the binding)


Heiko


