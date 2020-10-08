Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42A83286EB6
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 08:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727657AbgJHGdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 02:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726719AbgJHGdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 02:33:17 -0400
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com [IPv6:2607:f8b0:4864:20::944])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A781C0613D2
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 23:33:17 -0700 (PDT)
Received: by mail-ua1-x944.google.com with SMTP id z19so1559909uap.2
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 23:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lluFhrYB3PEvXC7CXE2TI2ye7nUNlCyHKSdtn268RHs=;
        b=Uap0QwGe0bVpSyDIMIQCU35AKa7J9SWbQxq4Chum27zoWrYm0yc+uCdxq3Os950AOP
         x8NW+2M/bu9wAG5+y29o7oqGlRwUQFTjW+YXpMMCZbZN6475NOGMu3dGaQJ6rgQXkLnl
         UfemFBwE3dwvFmsX8J68Y7M1D4Ltf0Aw/uovjKO5q6u+P6YeqD1TeJFPR3MCW7vQqZ5e
         7EnDOFQXrzf2NKBFkTcva8BC7cMT+Fy+xtWvX/6mggAlZJY+8K/TlWUrnFhKpEKQtYPs
         c6uzitFCHLPSXdoln1wx0HdD+WWfco61zakkolLzk7N217qF7k9/ZPPmO4GVfTGfx7Zs
         vR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lluFhrYB3PEvXC7CXE2TI2ye7nUNlCyHKSdtn268RHs=;
        b=PMnzJ34V7DMdUZleupyPXbdy364r8ES063MPuf3G/aXZ4boQqgvDBzCeyo1m4grZzI
         ntu3nDJ/lQQWMsbw8XIQz3VhCI9bi1GHmIwfVckN4ccBYO70MSK4dAaxy2y7gvTQ1Hoa
         2rXassQfmvY8b2A8JJxczv8H5gXLwqkMD/7W5OVz9uacnVntUV9TLz7mW+lzPFHKrFqk
         0JRLpzAM/zLYFAGgQY0PUUFXhvNIlfKUMDwTuWU+yhMyWQY840C/UdM2Lg4/jMF9rOPA
         mZJooMhdG2gqW3M5MNFySPi+8kQAODZ0N0KGAfXOxHLGt4+pKIQI9u2BoqMhuImRyp83
         CVcg==
X-Gm-Message-State: AOAM530rL4Fd1eMGS6/SlabCj85THiJ8t8m14wMZjUoXje3qPc2BK3bF
        wL7Kyv02wkdK1ctlQ8gfiS3TfJlDfD17TJLCdRqnCg==
X-Google-Smtp-Source: ABdhPJx+JgKbahMVZ03FJfQUtlBPU0ys6TF84oj1TdEQhmAc5Ww45cf+EbI2/l+liFuUa4xS5QxDNygwT10mFfdKtB4=
X-Received: by 2002:a9f:366e:: with SMTP id s43mr3791903uad.69.1602138796259;
 Wed, 07 Oct 2020 23:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200929024004.244992-1-badhri@google.com> <20200929024004.244992-3-badhri@google.com>
 <20201002133952.GA3411859@kroah.com> <20201002134041.GA3412330@kroah.com>
 <CAPTae5LBeY1qifPmGce+6Cu2hjVx=QZazk53Y=n6RPPRAuozLA@mail.gmail.com> <20201003155726.GC1509449@kroah.com>
In-Reply-To: <20201003155726.GC1509449@kroah.com>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Wed, 7 Oct 2020 23:32:39 -0700
Message-ID: <CAPTae5LiLKosJyLndf-T7wCuXKs6tL=vGpqtdqxfgyPMOFZ4wg@mail.gmail.com>
Subject: Re: [PATCH v9 02/15] usb: typec: tcpci: Add set_vbus tcpci callback
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        USB <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 3, 2020 at 8:56 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Oct 02, 2020 at 09:08:00AM -0700, Badhri Jagan Sridharan wrote:
> > Hi Greg,
> >
> > Yes I tested it on usb-next before sending it out.
> >
> >   630 |  tcpci->tcpc.enable_frs = tcpci_enable_frs;
> >
> > In https://patchwork.kernel.org/project/linux-usb/list/?series=356837
> > i.e v9 version of this series,
> > Patch 7 i.e. https://patchwork.kernel.org/patch/11804847/ is where the
> > above line is added.
> >
> > I restested in combinations [1]  [2] [3] [4]. All of them were clear
> > cherry-picks. I didnt any merge conflicts.
> >
> > Maybe you are applying patches in a different order ?
>
> I didn't think so.  Can you try applying the patches, in order, and
> building after each one to see if you get the same error or not?

Tried this as well. Not sure what I am doing differently.
Also was manually looking for "tcpci_enable_frs" in the series
and it's first occurrence is in:
"[PATCH v9 07/15] usb: typec: tcpci: Implement callbacks for FRS".

Just sent out the v10 after addressing a couple of comments from
Rob Herring.

Thanks,
Badhri


>
> My usb-next branch is up to date with all of the recent patches.
>
> thanks,
>
> greg k-h
