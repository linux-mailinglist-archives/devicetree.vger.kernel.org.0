Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01FBD4761A4
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 20:24:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238863AbhLOTYJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 14:24:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238845AbhLOTYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 14:24:04 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF02C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 11:24:03 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so26150418otj.7
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 11:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4oNE1iW7fibm0JJSOAeZkA5i+qpsLKvVpg5qQJEMx1s=;
        b=idSHJ0iBYtTO2VOINlCC7ggUbxrlJGzd+MwOgeTiX2o84FEG+2LCaBSntbM4yYApNx
         pU08zuty86DGrPfpjIim5ZucDY0xhiqYUJyYVEMEugao+wjdF9VjK9S7sKZ1M0iFHUwj
         LHboTT++hMyhWGxsd5G/7YKRvp8S+L04QdM8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4oNE1iW7fibm0JJSOAeZkA5i+qpsLKvVpg5qQJEMx1s=;
        b=lV93sZSytgYMhpXPHuc4aolLFp2+nxIUd4uFLG11rwW36Nc79+iv93kNdMpVcBVR9J
         ELhLJZF5aES43wCW86vxS/tX8G/X7qd6JnU5990FrvqFRf4bharGeaVAUW7tWyZkSa9m
         OetEaLmyhLViJF/jv6tb5Gu/EAoMLfLyvci0QUOo045loQPkh/LMeaVIrw8zylt+S08t
         pzr/AsU+gGE/XCHrE3mTC4Ph4HPTPL7O4AFTDlre/Pgxry7+fgAPiJ6wGejZLD9dDWw3
         U4aqHB9Vu5U5LcaVRSg1ryQh42ThgLCFsJFN2a3Nf1sFpvQdS3aw9PXzeb0mGF3n/VqH
         maCA==
X-Gm-Message-State: AOAM531gP5u6VoK8TGg0B6rKeBVxDTJMrxcmdXjVNxJx8nigvjsgZb6Y
        BG+eBESpNhP/pF0utwmwTYB7L04/N5cqYFcSTD5xXg==
X-Google-Smtp-Source: ABdhPJxRwz9EiCEDTkqlQNhiXAVAW/lfF7Zrmuc9kI3QyvYrdf80wlkYOfGCjkUEztp2Ax8gD+K+x9qrzzfZwjyXPdk=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr9815391otj.77.1639596243072;
 Wed, 15 Dec 2021 11:24:03 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 11:24:02 -0800
MIME-Version: 1.0
In-Reply-To: <Ybm9F5AdCSGz6IwN@kernel.org>
References: <20211215072011.496998-1-swboyd@chromium.org> <Ybm6KQiS7B28QOSW@kernel.org>
 <Ybm9F5AdCSGz6IwN@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 11:24:02 -0800
Message-ID: <CAE-0n53NX0i3Jem+VJ3pE4HOpwYkWDfr=Vf3zd59RSE4-yr5aQ@mail.gmail.com>
Subject: Re: [PATCH v2] of/fdt: Don't worry about non-memory region overlap
 for no-map
To:     Mike Rapoport <rppt@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Quentin Perret <qperret@google.com>,
        Jan Kiszka <jan.kiszka@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Mike Rapoport (2021-12-15 02:01:59)
> On Wed, Dec 15, 2021 at 11:49:37AM +0200, Mike Rapoport wrote:
> >
> > On Tue, Dec 14, 2021 at 11:20:11PM -0800, Stephen Boyd wrote:
> > > @@ -482,9 +482,11 @@ static int __init early_init_dt_reserve_memory_arch(phys_addr_t base,
> > >     if (nomap) {
> > >             /*
> > >              * If the memory is already reserved (by another region), we
> > > -            * should not allow it to be marked nomap.
> > > +            * should not allow it to be marked nomap, but don't worry
> > > +            * if the region isn't memory as it won't be mapped.
> > >              */
> > > -           if (memblock_is_region_reserved(base, size))
> > > +           if (memblock_overlaps_region(&memblock.memory, base, size) &&
> > > +               memblock_is_region_reserved(base, size))
>
> One more small thing. Maybe add pr_warn() here?
>

There's already a print in __reserved_mem_reserve_reg() when this
function returns an error so it doesn't seem very useful to add another
print.
