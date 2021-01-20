Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 562FD2FDB92
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 22:26:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732830AbhATU4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:56:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389938AbhATUxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:53:53 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC53C0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 12:53:13 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id 7so17129741wrz.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 12:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Fzlnu2gDVF5uqigGznocNtk8tICKRhrhDQur+g+6zI=;
        b=Ap8blQxbIDeY1iMmJMm2T7KYPQi0avue3p1JK+vpgNKrG9yC08Oz5D7lBwGvPTP9o+
         8jSoY81LwRelmRszwF2zG4x520gG/eqyTx5SRcjPWx9fQEEL8US+OLreGcAUFvbReIa3
         5mPpM8BlbbIDjxcbZn9XBEXaS1s1aewOvZJVUCyo7FLc57nql3qDt6wJOe7VbiEq8YBQ
         PU5jZL4IfoLhrHykg9Y0que2Dg9Hi6IDGuhfMik2k4my3sxHlrKVRrV/BXXQqc1inbXa
         23MeK88WsAUO0Mtvxb2kHB3hYIvMCKlMrykrS2j4lEX+MME/c9gJuSdIRxBe98rw6C4T
         aseQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Fzlnu2gDVF5uqigGznocNtk8tICKRhrhDQur+g+6zI=;
        b=ZaBqAzWlnz0O96/k97lndbpqrJEhBb4UsvZ9C970LCCjWxnO9YdYVHb4aEXC1sIy+J
         9aaOkices8fsrlmC3lEakpTTHJo6otBw7iX1E+jAvct1xsKT4yTJOnydRew76b15PYlQ
         3vCdQQo4d45aLN6YC6pw6kbwQeVLEoong49GS50oh2ejn66wtWTYSwPri6+Z/MWVHwFv
         oETD5OEZjpUqg1J9/s3AiFD6QLUEIQdLOcrQRQKdAbu3+TAGpw2tW5xho/e73q+53gDA
         5OWkV/BdPmYB0zwefBQsnKEOWcKLMQYrX92Jy2Vu89VyE+jFgLP6nfuVhLYUZU5xeJfZ
         dpFQ==
X-Gm-Message-State: AOAM530NoL2CNikYR7NSm7zyN5CWRpeAoJrG1sFT9d6RXfbEmNKy0tSQ
        7UDgRv4GcW7OP32fqXX0mC8PGUUYbyb8WLm8F6sM3Q==
X-Google-Smtp-Source: ABdhPJwt7pT74j5UgBuf0hqmfBTKggX4sl1ee2GbnEY6OrFXtj1vnr4AMrVjK/Sb4RohxWtiIk9c6lfylvwXhnh6I2k=
X-Received: by 2002:a5d:4704:: with SMTP id y4mr10992455wrq.358.1611175991891;
 Wed, 20 Jan 2021 12:53:11 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org> <20210113012143.1201105-5-minchan@kernel.org>
 <CALAqxLWPT8PWYue0h1863NjNxKn_FH0DtoRtArpmmxZ1Ve5xCw@mail.gmail.com>
 <CGME20210119203646epcas2p2622d11cb2cf90a7bd24050a5238e78ef@epcas2p2.samsung.com>
 <YAdC2J4x/4J9ozkq@google.com> <20210120033208.GA179511@KEI>
In-Reply-To: <20210120033208.GA179511@KEI>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Wed, 20 Jan 2021 12:53:01 -0800
Message-ID: <CAJuCfpFN5ntfTT9N==wxnZM2rbFXWuL_PJhpJLA=AnYgEsReFQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] dma-buf: heaps: add chunk heap to dmabuf heaps
To:     Hyesoo Yu <hyesoo.yu@samsung.com>
Cc:     Minchan Kim <minchan@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-mm <linux-mm@kvack.org>,
        LKML <linux-kernel@vger.kernel.org>, david@redhat.com,
        Michal Hocko <mhocko@suse.com>,
        KyongHo Cho <pullip.cho@samsung.com>,
        John Dias <joaodias@google.com>,
        Hridya Valsaraju <hridya@google.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        linux-media <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:DMA BUFFER SHARING FRAMEWORK" 
        <linaro-mm-sig@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 7:39 PM Hyesoo Yu <hyesoo.yu@samsung.com> wrote:
>
> On Tue, Jan 19, 2021 at 12:36:40PM -0800, Minchan Kim wrote:
> > On Tue, Jan 19, 2021 at 10:29:29AM -0800, John Stultz wrote:
> > > On Tue, Jan 12, 2021 at 5:22 PM Minchan Kim <minchan@kernel.org> wrote:
> > > >
> > > > From: Hyesoo Yu <hyesoo.yu@samsung.com>
> > > >
> > > > This patch supports chunk heap that allocates the buffers that
> > > > arranged into a list a fixed size chunks taken from CMA.
> > > >
> > > > The chunk heap driver is bound directly to a reserved_memory
> > > > node by following Rob Herring's suggestion in [1].
> > > >
> > > > [1] https://lore.kernel.org/lkml/20191025225009.50305-2-john.stultz@linaro.org/T/#m3dc63acd33fea269a584f43bb799a876f0b2b45d
> > > >
> > > > Signed-off-by: Hyesoo Yu <hyesoo.yu@samsung.com>
> > > > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > > > Signed-off-by: Minchan Kim <minchan@kernel.org>

After addressing John's comments feel free to add Reviewed-by: Suren
Baghdasaryan <surenb@google.com>

> > > > ---
> > > ...
> > > > +static int register_chunk_heap(struct chunk_heap *chunk_heap_info)
> > > > +{
> > > > +       struct dma_heap_export_info exp_info;
> > > > +
> > > > +       exp_info.name = cma_get_name(chunk_heap_info->cma);
> > >
> > > One potential issue here, you're setting the name to the same as the
> > > CMA name. Since the CMA heap uses the CMA name, if one chunk was
> > > registered as a chunk heap but also was the default CMA area, it might
> > > be registered twice. But since both would have the same name it would
> > > be an initialization race as to which one "wins".
> >
> > Good point. Maybe someone might want to use default CMA area for
> > both cma_heap and chunk_heap. I cannot come up with ideas why we
> > should prohibit it atm.
> >
> > >
> > > So maybe could you postfix the CMA name with "-chunk" or something?
> >
> > Hyesoo, Any opinion?
> > Unless you have something other idea, let's fix it in next version.
> >
>
> I agree that. It is not good to use heap name directly as cma name.
> Let's postfix the name with '-chunk'
>
> Thanks,
> Regards.
