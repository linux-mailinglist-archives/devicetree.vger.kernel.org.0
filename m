Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33C4E50EC22
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 00:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231898AbiDYWfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 18:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232034AbiDYWf3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 18:35:29 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0237FD893D
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 15:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1650925944; x=1682461944;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WDxL6UNOFL2BSSLVJaVgMQUEn8QdMOtJt7tXsA+CHSY=;
  b=QaBEpfnWsjJgKfT4wp+t0e8G7Fh+Mx/yQnCXXPT6bH1QLRulBbMk1wpW
   Nd0xF1YDHA5XPD/kakr864miaBbmOrA27hWQBYlxmvDDBKWvXsT90Vx50
   gMDo9I2KXtj6odMN+FHbaKB/cZLJ36HcEsMuCcsl4ULZhDLOtI85N5kck
   c=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 25 Apr 2022 15:32:23 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2022 15:32:23 -0700
Received: from nalasex01b.na.qualcomm.com (10.47.209.197) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 25 Apr 2022 15:32:23 -0700
Received: from hu-pdaly-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 25 Apr 2022 15:32:23 -0700
Date:   Mon, 25 Apr 2022 15:32:21 -0700
From:   Patrick Daly <quic_pdaly@quicinc.com>
To:     Rob Herring <robh+dt@kernel.org>
CC:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <surenb@google.com>
Subject: Re: [PATCH] of: of_reserved_mem: Increase limit for reserved_mem
 regions
Message-ID: <20220425223221.GA9901@hu-pdaly-lv.qualcomm.com>
References: <1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com>
 <CAL_JsqKSJbPT5ChmLLQME7rF=OYFe8Mk_x-DH7hL9FoV9zprRg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAL_JsqKSJbPT5ChmLLQME7rF=OYFe8Mk_x-DH7hL9FoV9zprRg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 22, 2022 at 08:48:25AM -0500, Rob Herring wrote:
> On Wed, Apr 20, 2022 at 4:09 PM Patrick Daly <quic_pdaly@quicinc.com> wrote:
> >
> > The reserved_mem array must be statically allocated because it is used
> > prior to memblock being aware of all "no-map" or otherwise reserved
> > regions which have fixed physical addresses. Due to this limitation,
> > if one architecture/board has a large number of reserved_mem regions,
> > this limit must be raised for all.
> >
> > In particular, certain new qcom boards currently have 63 reserved memory
> > regions, which when new features are added, pushes them over the existing
> > limit of 64.
> 
> Please revive this instead:
> 
> https://lore.kernel.org/all/20211119075844.2902592-3-calvinzhang.cool@gmail.com/

Looks interesting, thanks for pointing it out.

> 
> >
> > A generalized breakdown by region type:
> > 13 for linux-loaded device firmware
> 
> If loaded by linux, why do you need fixed carveouts in DT? The devices
> can't be told what address their fw is at?
> 

These are good questions, but I don't know enough about the various usecases to
give complete answers.

> > 9 for guest-vms or inter-vm communication
> 
> Why does that need to be in DT?

Its a type-one hypervisor, so the guest VMs don't run in userspace. We want
to use largely physically contiguous memory to reduce TLB pressure - so a
devicetree carveout seemed to be a simple way of realizing this.

> 
> > 15 cma heaps/dma-buf heaps
> 
> Sounds like not trusting the OS to allocate memory itself. From what
> I've read, the kernel's memory allocation abilities are better now
> than when CMA was added.

Greater than MAX_ORDER physically contiguous memory is only available through
CMA. So it comes down to whether the usecase supports scattered memory or not.
I believe there is also a concern that placing many usecases in the same
CMA area could lead to fragmentation & allocation failures for sizes which
are a large percentage of the total CMA area size.

> 
> > 24 for bootloaders/hypervisor/secure-world devices or software
> > 2 misc
> >
> > Although this number could be reduced by a minor amount by combining
> > physically adjacent regions, this comes at the cost of losing
> > documention on what/who the regions are used by. In addition, combining
> > adjacent regions is not possible if there are phandles in devicetree
> > referring to the regions in question, such as "memory-region".
> >
> > Vmlinux before:
> > text      data      bss     dec       hex      filename
> > 31030829  15807732  588524  47427085  2d3ae0d  dist/vmlinux
> >
> > Vmlinux after:
> > text      data      bss     dec       hex      filename
> > 31030877  15807668  592108  47430653  2d3bbfd  dist/vmlinux
> >
> > Signed-off-by: Patrick Daly <quic_pdaly@quicinc.com>
> > ---
> >  drivers/of/of_reserved_mem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > index 75caa6f..de0cdda 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -26,7 +26,7 @@
> >
> >  #include "of_private.h"
> >
> > -#define MAX_RESERVED_REGIONS   64
> > +#define MAX_RESERVED_REGIONS   128
> >  static struct reserved_mem reserved_mem[MAX_RESERVED_REGIONS];
> >  static int reserved_mem_count;
> >
> > --
> > 2.7.4
> >
