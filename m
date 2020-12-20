Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 191252DF433
	for <lists+devicetree@lfdr.de>; Sun, 20 Dec 2020 07:37:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726996AbgLTGgm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Dec 2020 01:36:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726902AbgLTGgl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Dec 2020 01:36:41 -0500
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3133AC0613CF
        for <devicetree@vger.kernel.org>; Sat, 19 Dec 2020 22:35:52 -0800 (PST)
Received: by mail-qv1-xf2b.google.com with SMTP id az16so3074675qvb.5
        for <devicetree@vger.kernel.org>; Sat, 19 Dec 2020 22:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8KQzSwVhVPrMTFiKK5zcVnTGXaTdTl16gjC5nDFjrik=;
        b=Ukp1RMF/5A86WTY3wlgY8TbBHP+KrFbjj7VPpakT259+bzIGqLx+zb8RNhwwNCJJbd
         2N05RB14y3DufQkCs+S3+a7Q1/gtsg9UNurHFe0OLUpvbTtB8BQa2LA61jsJOKRoiF/W
         si6VDNnGAIKUizeoNM/KNIFYU5h5SdOBPlc4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8KQzSwVhVPrMTFiKK5zcVnTGXaTdTl16gjC5nDFjrik=;
        b=XIAylhiyfprXS+/RAZi6KCq3Lh2h+dpH8RsUMRvSaqlnFaTRKsssJJ0t2qODJtrqSc
         MtnR6L6++3jcnYrOHXibh0tirUh/T9QxOK8hOZ3isREnXvUItFqKdCjTlAvdL/k9mamg
         BuUqcG+Hs458qA8e2YiNqhaqP/KN/bn1jnSt3g6I6qCL8B4/co3aXyvxFYMA7vP3nwDu
         q4KEXbbnyEDI5E2WC7o9PCljWTi5adMwZ14oyXkl44tAqL+NrEFkUNLPJpaLqwNxhQzw
         0lzYQZdWqjKMQCddVztYUGnt4FIYBtLHcx9XuHBslTWUNy0NOV9jPuw5zmhdF/4k4Jll
         DipQ==
X-Gm-Message-State: AOAM532UgBdhlyApqIZlXpRXZGJGwbCoXpYXfuumojFpPyyrTeajwDn0
        aZuikjPWB6yo+ujSr2TZ8MITuyS73i7duyb/Y2u0Zw==
X-Google-Smtp-Source: ABdhPJxdPhtXXaO5QG2qMf+7byySCoi8Od7JhDQ6s4ZtD71A+pcvqZBFderGkPMbt0Flapkt1yKBMoyrHutfFgIm+Yw=
X-Received: by 2002:ad4:5a50:: with SMTP id ej16mr12406191qvb.25.1608446152018;
 Sat, 19 Dec 2020 22:35:52 -0800 (PST)
MIME-Version: 1.0
References: <20201114135044.724385-1-daniel@0x0f.com> <20201114135044.724385-3-daniel@0x0f.com>
 <160843556037.1580929.13575770228476494246@swboyd.mtv.corp.google.com>
In-Reply-To: <160843556037.1580929.13575770228476494246@swboyd.mtv.corp.google.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sun, 20 Dec 2020 15:35:41 +0900
Message-ID: <CAFr9PX=f=HyHBk4s3e_vnMDC53R1X18m7sKFCLMMjitPm+8oEQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: clk: mstar msc313 mpll binding description
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

On Sun, 20 Dec 2020 at 12:39, Stephen Boyd <sboyd@kernel.org> wrote:
> > +  clock-output-names:
> > +    minItems: 8
> > +    maxItems: 8
> > +    description: |
> > +      This should provide a name for the internal PLL clock and then
> > +      a name for each of the divided outputs.
>
> Is this necessary?

I found without the names specified in the dt probing of muxes that
depend on the outputs but appear earlier didn't work.
Also this same PLL layout seems to be used in some other places so
eventually I was thinking this driver would get used for those PLLs
with different output names.

Thanks,

Daniel
