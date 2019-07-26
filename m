Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84C3376B3E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 16:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727269AbfGZONC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 10:13:02 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:46668 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726074AbfGZONC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 10:13:02 -0400
Received: by mail-ed1-f66.google.com with SMTP id d4so53442459edr.13
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 07:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h4O4z+O+RC1JwnWktDyaiJMFv2NH81YwETYIA8cC4R4=;
        b=aw5WQtbsqLZ0f8nctZ02nXZA/NLGPbLx7lFP0F/tGyj5eow+za6vJHr/9xIVsd7jnU
         ICYACBFD9ozBMsUnq5wBnpaA1P5MkvkEaMvwi/UUfWLl/NLvdQdq4mOOsEUKDqD1+dzu
         FW4cq5+prK2G5oYhDDqTLWI43JgEgs9ZbmDCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h4O4z+O+RC1JwnWktDyaiJMFv2NH81YwETYIA8cC4R4=;
        b=UBNB9zou0hAlXrKRlpdKVanvMjzZMOzpsZ4yFhtu84AMhjuAGX8u2kGueijNZH2WrH
         26wzgKjXlHW6m5WsX8b5PzSAaNut1r7wcpaxNtN/Afv2KRo8idHK7SO935xBxxBbdikl
         zH5ME1weIrLCarftA5BctnjSN6ppkLv5toScsNDMXOCpTBrC26nSBpCvqmk+E/WNunIo
         MTfvv3DBRbFDFCZWb6INAumSg2eQiEbK52S1PeGwse19KbMBmhNGhYmIypkXaWiHSmfd
         Y80Oml7PvgZFaPJQZec4Zk4X1N55PJ8TIYzFrHG5F1AIaBL6ZZOCcXRxxnPnflv5p1wx
         ec0w==
X-Gm-Message-State: APjAAAV4onONMX8VcHLIDx3IfErpLWTbd+BV43MoUE9kj2+rO0Ti3XXk
        KSrd6QMPpc1HCEgf6IPG0WBpxSW/U/YnKw==
X-Google-Smtp-Source: APXvYqzVNQi8dE3HtwzeVl4/hlNaoYfADp9DOpwGjwHRnDTYQItrrO4lYB4w97jtKHBM7YYZRxTJEw==
X-Received: by 2002:a17:906:2e59:: with SMTP id r25mr71601039eji.293.1564150379850;
        Fri, 26 Jul 2019 07:12:59 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id v6sm10192592eju.6.2019.07.26.07.12.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 07:12:59 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id 31so54658761wrm.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 07:12:59 -0700 (PDT)
X-Received: by 2002:adf:ed41:: with SMTP id u1mr97366899wro.162.1564149894620;
 Fri, 26 Jul 2019 07:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com> <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com> <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07> <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07> <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07> <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org> <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
 <4460bc91-352a-7f3a-cbed-1b95e743ca8c@arm.com> <1564142386.1212.621.camel@mtksdccf07>
In-Reply-To: <1564142386.1212.621.camel@mtksdccf07>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Fri, 26 Jul 2019 23:04:42 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BE1hAgYG-0OY_SEOcz2g4WLeCxP=6G=5xhLb++vewspw@mail.gmail.com>
Message-ID: <CAAFQd5BE1hAgYG-0OY_SEOcz2g4WLeCxP=6G=5xhLb++vewspw@mail.gmail.com>
Subject: Re: [RFC, v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To:     Jungo Lin <jungo.lin@mediatek.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Christoph Hellwig <hch@infradead.org>, devicetree@vger.kernel.org,
        =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= 
        <sean.cheng@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
        =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= 
        <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
        Sj Huang <sj.huang@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        ddavenport@chromium.org,
        =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= 
        <frederic.chen@mediatek.com>,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 26, 2019 at 8:59 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi Robin:
>
> On Fri, 2019-07-26 at 12:04 +0100, Robin Murphy wrote:
> > On 26/07/2019 08:42, Tomasz Figa wrote:
> > > On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
> > >>
> > >> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> > >>> Could you try dma_get_sgtable() with the SCP struct device and then
> > >>> dma_map_sg() with the P1 struct device?
> > >>
> > >> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> > >> the common near the arm implementation) and we should not add more
> > >> users of it.  If you want a piece of memory that can be mapped to
> > >> multiple devices allocate it using alloc_pages and then just map
> > >> it to each device.
> > >
> > > Thanks for taking a look at this thread.
> > >
> > > Unfortunately that wouldn't work. We have a specific reserved memory
> > > pool that is the only memory area accessible to one of the devices.
> > > Any idea how to handle this?
> >
> > If it's reserved in the sense of being outside struct-page-backed
> > "kernel memory", then provided you have a consistent CPU physical
> > address it might be reasonable for other devices to access it via
> > dma_map_resource().
> >
> > Robin.
>
> Thank you for your suggestion.
>
> After revising to use dma_map_resource(), it is worked. Below is the
> current implementation. Pleas kindly help us to check if there is any
> misunderstanding.
>
> #define MTK_ISP_COMPOSER_MEM_SIZE               0x200000
>
>         /*
>          * Allocate coherent reserved memory for SCP firmware usage.
>          * The size of SCP composer's memory is fixed to 0x200000
>          * for the requirement of firmware.
>          */
>         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
>                                  MTK_ISP_COMPOSER_MEM_SIZE, &addr, GFP_KERNEL);
>         if (!ptr) {
>                 dev_err(dev, "failed to allocate compose memory\n");
>                 return -ENOMEM;
>         }
>         p1_dev->composer_scp_addr = addr;
>         p1_dev->composer_virt_addr = ptr;
>         dev_dbg(dev, "scp addr:%pad va:%pK\n", &addr, ptr);
>
>         /*
>          * This reserved memory is also be used by ISP P1 HW.
>          * Need to get iova address for ISP P1 DMA.
>          */
>         addr = dma_map_resource(dev, addr, MTK_ISP_COMPOSER_MEM_SIZE,
>                                 DMA_BIDIRECTIONAL, DMA_ATTR_SKIP_CPU_SYNC);

This is still incorrect, because addr is a DMA address, but the second
argument to dma_map_resource() is a physical address.

>         if (dma_mapping_error(dev, addr)) {
>                 dev_err(dev, "Failed to map scp iova\n");
>                 ret = -ENOMEM;
>                 goto fail_free_mem;
>         }
>         p1_dev->composer_iova = addr;
>         dev_info(dev, "scp iova addr:%pad\n", &addr);
>
> Moreover, appropriate Tomasz & Christoph's help on this issue.

Robin, the memory is specified using the reserved-memory DT binding
and managed by the coherent DMA pool framework. We can allocate from
it using dma_alloc_coherent(), which gives us a DMA address, not CPU
physial address (although in practice on this platform they are equal
numerically).

Best regards,
Tomasz
