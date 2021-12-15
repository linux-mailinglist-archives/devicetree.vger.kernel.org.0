Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54C6B4761B7
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 20:28:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344204AbhLOT2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 14:28:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344247AbhLOT2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 14:28:16 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FDEC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 11:28:15 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id bj13so33111574oib.4
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 11:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Kj/BFZO3Hvw7KDfmOPPURsnohWF/YRKh55lIf7IVKHo=;
        b=lCWWDWlNGmoaQYNw7R9rVb+To+hJEvRVSPt7PpnoF5B9IY03uFCB60WnVPVc7MDaB4
         uQXUGTJmaDI5pssqR2T/medK1mKMSm+gUjRJMnFjtuviNhkqtadA1biCe76mEqzpLjN6
         w7RkGh7zOrp0/IJp6H/EK9yF2f82JlAtO4OcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Kj/BFZO3Hvw7KDfmOPPURsnohWF/YRKh55lIf7IVKHo=;
        b=UxRDc52bW0yTxeHaZu0QvtCb5gvBTTpAQUz1VeofgEl4Db6ETAek05xqDzTSEmGUMy
         Vmh4fLZZ5MPM8xqjxiDPx/iqUCvSg7OvK4z5ymLBnh+hOVFztcwfqdb+tBFs0Mk9wCXT
         2/2sPsUmuG66TYMfTVOsr+w8glHCArDOhhPTmwZ4CbHiDNFzvc2eQVls/UyD/ABmEKi2
         erF5DuZII407neWhbAJsrcbpLd13rFCevDXBnM/9K7SXClnk+zVZrSCb0gvUj74D4Fwh
         CBcaFj72tvq8GUqUyiqCNN666MVUT/F7lsZ3JXw8RRP4JknDEoQJKHISbpmjRz9CmYC6
         cqCg==
X-Gm-Message-State: AOAM533LfWrwaS/EmM8ham9enLzacbtF9MzOyooyL8y/tH1yU/nDCwA9
        fBtcOBURxK6Ey1vwoz2sZ79v6u+YHISABoHXcPeaJA==
X-Google-Smtp-Source: ABdhPJy2pVCa/ZruIwIjC9oyWlykk+V4rc88WGJyUS/ok5EcGwhGV2BAEEhsZ2wXJGNqoOY0NphDKrG1WoAaBp2N8Gc=
X-Received: by 2002:a05:6808:211f:: with SMTP id r31mr1299622oiw.64.1639596494559;
 Wed, 15 Dec 2021 11:28:14 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 11:28:14 -0800
MIME-Version: 1.0
In-Reply-To: <Ybm6KQiS7B28QOSW@kernel.org>
References: <20211215072011.496998-1-swboyd@chromium.org> <Ybm6KQiS7B28QOSW@kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 11:28:14 -0800
Message-ID: <CAE-0n53sMjF7-STAyn=snT5NSAMYSXhkBXJ4ay_fPiB_DbV_gg@mail.gmail.com>
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

Quoting Mike Rapoport (2021-12-15 01:49:29)
> Hi,
>
> On Tue, Dec 14, 2021 at 11:20:11PM -0800, Stephen Boyd wrote:
> > In commit 8a5a75e5e9e5 ("of/fdt: Make sure no-map does not remove
> > already reserved regions") we returned -EBUSY when trying to mark
> > regions as no-map when they're in the reserved memory node. This if
> > condition will still trigger though if the DT has a /memreserve/ that
> > completely subsumes the no-map memory carveouts in the reserved memory
> > node. Let's only consider this to be a problem if we're trying to mark a
> > region as no-map and it is actually memory. If it isn't memory,
> > presumably it was removed from the memory map via /memreserve/ and thus
> > can't be mapped anyway.
>
> I have no objections for this patch, but I afraid that this is a never
> ending story of reservation vs nomap ordering and this won't be the last
> fix in the area.

Ugh ok

>
> I was toying with the idea to use flags in memblock.reserved to have
> clearer view of how the reserved memory was used and then we won't need
> to guess firmware intentions.
> Thoughts?

My understanding of the commit being fixed was that it tried to detect
bad DT where two reserved regions overlapped and different reserved
memory regions stomped on each other. It certainly seems like that could
be improved by recording what reserved memory region it belongs to, but
within memblock I don't know if it cares. I thought memblock just cared
to find out what is memory and what is supposed to be mapped into the
page tables.

>
> > This silences a warning seen at boot on sc7180-trogdor.dtsi boards that
> > have /memreserve/ populated by the bootloader where those reserved
> > regions overlap with the reserved-memory carveouts that we have in DT
> > for other purposes like communicating with remote processors.
>
> Do you mind adding the relevant pats of the device tree to the changelog?

Sure. Let me add the reserved memory snippet.
