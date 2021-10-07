Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8E6F425B48
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 21:03:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243796AbhJGTFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 15:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233903AbhJGTFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 15:05:52 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B479C061570
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 12:03:58 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id j11-20020a9d190b000000b00546fac94456so8702187ota.6
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 12:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=;
        b=F+Xc/9Vb9mRVWaKbzV/SLflQZt1R0tgoVeb1fEBrn9ac3XQ913oPpkkh63hMaWRIxQ
         mFbz7KvPHJiQ2J7KbbFuZJAK2PA5ObShO8P7v2ZWyPRB+kGyG6As/Uj81aojQTuVm14O
         8/6EHgxnuYt7rJ/l2ZxAv2vYKCMnG0W6C631b5oaA5C7VxLDeHkWEGkb0Y4eH6RVTr5i
         W/3s9LEiSYNIQrvrXAu2o4yRb7/dl1+QjQ9VU905Yxz0mZTkFzraQ6W9NsjowexXOiA7
         1arUBFBATjrDXKTy9QbLFBFODBxJAEw9NFeMPMRfugKN02uIXCB6tV5Yryu/nmyHyYNf
         EVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to;
        bh=SxyXdNsyYmV5Tl8eNXZqHd4HMhchmqYT7ZdxvD1AScI=;
        b=F9R/pSh6m8tw24HxC5HCqgVr0rmW4xnuxs/46PCLC+2ODDoH8o9m6I3XVsLSLth0lX
         jjBy8YWPeJlMn+8vZ3QGaLagi9jOIIdRIWoKfd4id4CiQpJUy4vPUsPF0FUJAwNhjyqk
         gdIfMMngwkCW6DQEfFusNHG/seZ0MDA8dfZzUQ8AecFBEFq/LOTa4RbTlyPhoqmCmCKT
         UicLZtd2jL8f8ne1jWwBHF7KHsyViFmLcMjLA+M76Dgfsz5gliClQV2el92Qx23n9jM8
         o4d0Swvcs0rVFN+HuSfiNantgdWB6rIEDJPTpXoVy63jVFnnqdaxBVnblzP0E4Baf5un
         Ll9A==
X-Gm-Message-State: AOAM5322jtxuG0gj5GRif9GwR4l+FxewgDEuJ+RDwKLRt1BLMbsP/gUU
        DjIyCgAjaJv+ko7NQzNY4R5adRCRXg==
X-Google-Smtp-Source: ABdhPJyK026NoRKxTdlamHW752AxIjq919q2Bu/KdeQ+9IgHPzz6O3Stmx8RF8M7aBoy0KhbXfQ/xQ==
X-Received: by 2002:a9d:1b6f:: with SMTP id l102mr5084375otl.34.1633633437727;
        Thu, 07 Oct 2021 12:03:57 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
        by smtp.gmail.com with ESMTPSA id v6sm33219ooe.4.2021.10.07.12.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 12:03:57 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:656d:b396:af0f:bc35])
        by serve.minyard.net (Postfix) with ESMTPSA id 504AB1800F0;
        Thu,  7 Oct 2021 19:03:56 +0000 (UTC)
Date:   Thu, 7 Oct 2021 14:03:50 -0500
From:   Corey Minyard <minyard@acm.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh@kernel.org>,
        openipmi-developer@lists.sourceforge.net,
        Andrew Jeffery <andrew@aj.id.au>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH] ipmi: bt: Add ast2600 compatible string
Message-ID: <20211007190350.GA16026@minyard.net>
Reply-To: minyard@acm.org
References: <20210903015314.177987-1-joel@jms.id.au>
 <YTe46lyQDfV6OzOc@robh.at.kernel.org>
 <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACPK8XeC=ZN2SRP+M2pz9RiAPD=chZr9+aifnnY03HAXDQ3xOA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 07, 2021 at 06:37:00AM +0000, Joel Stanley wrote:
> On Tue, 7 Sept 2021 at 19:09, Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, 03 Sep 2021 11:23:14 +0930, Joel Stanley wrote:
> > > The AST2600 has the same register set as the previous generation SoCs.
> > >
> > > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > > ---
> > >  .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
> > >  drivers/char/ipmi/bt-bmc.c                                       | 1 +
> > >  2 files changed, 2 insertions(+)
> > >
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Corey, can you please merge this one?

Ok, it's in my linux-next branch.

Thanks,

-corey

> 
> Cheers,
> 
> Joel
