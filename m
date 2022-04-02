Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A07E14F03A9
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 15:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239895AbiDBOAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 10:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235843AbiDBOAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 10:00:30 -0400
Received: from soltyk.jannau.net (soltyk.jannau.net [144.76.91.90])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5B9DF0E
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 06:58:36 -0700 (PDT)
Received: by soltyk.jannau.net (Postfix, from userid 1000)
        id B92FB26E7A7; Sat,  2 Apr 2022 15:58:34 +0200 (CEST)
Date:   Sat, 2 Apr 2022 15:58:34 +0200
From:   Janne Grunau <j@jannau.net>
To:     Sven Peter <sven@svenpeter.dev>
Cc:     Arnd Bergmann <arnd@arndb.de>, Keith Busch <kbusch@kernel.org>,
        "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
        "sagi@grimberg.me" <sagi@grimberg.me>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-nvme@lists.infradead.org
Subject: Re: [PATCH 6/9] nvme-apple: Add initial Apple SoC NVMe driver
Message-ID: <20220402135834.GC10474@jannau.net>
References: <20220321165049.35985-1-sven@svenpeter.dev>
 <20220321165049.35985-7-sven@svenpeter.dev>
 <CAK8P3a27-eWP=krGQOp29krcc7bVME9=MbN6B3Rs7Q4Ran_VFw@mail.gmail.com>
 <7876eb84-9803-48dc-ab6b-27d49858e27a@www.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7876eb84-9803-48dc-ab6b-27d49858e27a@www.fastmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-02 15:34:55 +0200, Sven Peter wrote:
> 
> 
> On Tue, Mar 22, 2022, at 14:38, Arnd Bergmann wrote:
> > On Mon, Mar 21, 2022 at 5:50 PM Sven Peter <sven@svenpeter.dev> wrote:
> >
> >> +static int apple_nvme_sart_dma_setup(void *cookie, struct apple_rtkit_shmem *bfr,
> >> +                                    dma_addr_t iova, size_t size)
> >> +{
> >> +       struct apple_nvme *anv = cookie;
> >> +       int ret;
> >> +
> >> +       if (iova)
> >> +               return -EINVAL;
> >> +
> >> +       bfr->buffer = dma_alloc_coherent(anv->dev, size, &iova, GFP_KERNEL);
> >> +       if (!bfr->buffer)
> >> +               return -ENOMEM;
> >
> > You pass 'iova' as an argument, but then replace it with the address
> > returned by dma_alloc_coherent(). Can you remove the function
> > argument?
> 
> Yup, will remove it.

You can remove it but we will have to add it back once we submit the dcp 
driver (display co-processor). dcp is initialized during boot and uses a 
single pre-allocated buffer which needs to be mapped instead of 
allocated. It seemed easier to make apple_rtkit_ops.shmem_setup() 
omnipotent than adding a different function pointer for this case.

Janne
