Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB9EB571321
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 09:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbiGLHbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 03:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbiGLHbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 03:31:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 356A199661
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1657611075;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=JdO5MxAzmVOyjgWnn1pQedaEsg1HdPJj3a1oJOO8q64=;
        b=BxfsvhVhNtuN5/mu+F7QFRftX2m4R/GTQ2HT2fLoQ01K5JJpoz18UNGg2GucQwGtY8GBJX
        XQ6QTq9Jddz/UY18Mk73kfxPrbWk7RCUOFaeXY0c5TQQiwJYZCCdLsZeWdJs1Uabr0wv0A
        OtpG8RQLI32cPbJ4FaZVVt50slZ4sLU=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-W75N6b2dO-ylAAxsIDox9w-1; Tue, 12 Jul 2022 03:31:11 -0400
X-MC-Unique: W75N6b2dO-ylAAxsIDox9w-1
Received: by mail-wr1-f71.google.com with SMTP id n7-20020adfc607000000b0021a37d8f93aso1151398wrg.21
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:31:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=JdO5MxAzmVOyjgWnn1pQedaEsg1HdPJj3a1oJOO8q64=;
        b=281imyn92BKhCJ7uZ5WSCvXSbpf1vEG0Mw7/E7IW1cu1xKew0fcCH4SD/v9fLOEyX3
         xkD3JZXu2wU2MvVgIIFbF4eK3c/J6klKCKyCrj/1q10UsKT/4onsUoDo0qRP0+iKbaha
         ijtnH5kbnKoHhR6x0PD5AA9bb02tiCW2eX9NhDsx5l/n8ylTQNuaBPKuOXnG9ZxrkmjJ
         t2W30N6h5Kv0OY+RW/HgPKZM/te2WqFN8m98Dur/jUKM+iwDUd1RPknsLhIrTnMiw5jb
         C0zvzZKYErI2A3zr3NkrTWLLZFoSLcma2rSI78Ktr4ff222KeHRH29yX/glH4ZSXpYPK
         1xug==
X-Gm-Message-State: AJIora9o+vrFc8XFbl3Zaoek3nhr5w4FuD69o3EIX768URV24KskfE5w
        k0uwyTblciwNeVqCtUU1ZIZ6PhRz/IvDE9E4InjjPIzqm9Zj0mkuS+0oc/dRZ5z6wQ6s/IaVxni
        5Jq3npoqr+QumTTL9hXP2uA==
X-Received: by 2002:a05:600c:15c7:b0:3a2:dd5d:2514 with SMTP id v7-20020a05600c15c700b003a2dd5d2514mr2325570wmf.31.1657611069945;
        Tue, 12 Jul 2022 00:31:09 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tMaOvFB7ntQolPpHbs5LGtj2RVU3jED0+l76qVjzoYSHfm86bII08rLZtbYEYslh2Mv1KxIg==
X-Received: by 2002:a05:600c:15c7:b0:3a2:dd5d:2514 with SMTP id v7-20020a05600c15c700b003a2dd5d2514mr2325544wmf.31.1657611069642;
        Tue, 12 Jul 2022 00:31:09 -0700 (PDT)
Received: from ?IPV6:2003:cb:c703:d900:a75d:cddc:d29f:bdb3? (p200300cbc703d900a75dcddcd29fbdb3.dip0.t-ipconnect.de. [2003:cb:c703:d900:a75d:cddc:d29f:bdb3])
        by smtp.gmail.com with ESMTPSA id c9-20020adfed89000000b0021d9233e7e6sm9127869wro.54.2022.07.12.00.31.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 00:31:09 -0700 (PDT)
Message-ID: <4cf14bde-fb4c-99d9-58ce-a788a700d5f3@redhat.com>
Date:   Tue, 12 Jul 2022 09:31:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To:     Li Chen <me@linux.beauty>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Li Chen <lchen@ambarella.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-mm <linux-mm@kvack.org>
References: <20220711122459.13773-1-me@linux.beauty>
 <20220711122459.13773-3-me@linux.beauty>
 <c2d4c6ac-fad7-d5b3-8cbf-f62a7db5b998@redhat.com>
 <181f0a5f2a5.cf94ce78513585.4158910057206462182@linux.beauty>
From:   David Hildenbrand <david@redhat.com>
Organization: Red Hat
Subject: Re: [PATCH 2/4] mm/sparse: skip no-map memblock check when
 fill_subsection_map
In-Reply-To: <181f0a5f2a5.cf94ce78513585.4158910057206462182@linux.beauty>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.07.22 06:23, Li Chen wrote:
> Hi David,
>  ---- On Mon, 11 Jul 2022 22:53:36 +0800  David Hildenbrand <david@redhat.com> wrote --- 
>  > On 11.07.22 14:24, Li Chen wrote:
>  > > From: Li Chen <lchen@ambarella.com>
>  > > 
>  > > When mhp use sparse_add_section, don't check no-map region,
>  > > so that to allow no-map reserved memory to get struct page
>  > > support.
>  > > 
>  > > Signed-off-by: Li Chen <lchen@ambarella.com>
>  > > Change-Id: I0d2673cec1b66adf695251037a00c240976b226f
>  > > ---
>  > >  mm/sparse.c | 4 +++-
>  > >  1 file changed, 3 insertions(+), 1 deletion(-)
>  > > 
>  > > diff --git a/mm/sparse.c b/mm/sparse.c
>  > > index 120bc8ea5293..a29cd1e7014f 100644
>  > > --- a/mm/sparse.c
>  > > +++ b/mm/sparse.c
>  > > @@ -690,7 +690,9 @@ static int fill_subsection_map(unsigned long pfn, unsigned long nr_pages)
>  > >  
>  > >      if (bitmap_empty(map, SUBSECTIONS_PER_SECTION))
>  > >          rc = -EINVAL;
>  > > -    else if (bitmap_intersects(map, subsection_map, SUBSECTIONS_PER_SECTION))
>  > > +    else if (memblock_is_map_memory(PFN_PHYS(pfn)) &&
>  > > +         bitmap_intersects(map, subsection_map,
>  > > +                   SUBSECTIONS_PER_SECTION))
>  > >          rc = -EEXIST;
>  > >      else
>  > >          bitmap_or(subsection_map, map, subsection_map,
>  > 
>  > I'm not sure I follow completely what you are trying to achieve. But if
>  > you have to add memblock hacks into mm/sparse.c you're most probably
>  > doing something wrong.
>  > 
>  > Please explain why that change is necessary, and why it is safe.
> 
> In the current sparse memory model, free_area_init will insert all memblock.memory into subsection_map and no-map rmem is also a 
> memblock.memory. So, without this change, fill_subsection_map will return -EEXIST.
> 
> I would say it's not a good idea to insert no-map memblock into subsection_map, and I have no idea why sparse do this.
> So, I simply skip no-map region here.

The thing is:

if the subsection map is set, then there already *is* a memmap and you
would simply be ignoring it (and overwriting a memmap in e.g.,
ZONE_NORMAL to be in ZONE_DEVICE suddenly, which is wrong).


Reading memblock_mark_nomap():

"The memory regions marked with %MEMBLOCK_NOMAP will not be added to the
direct mapping of the physical memory. These regions will still be
covered by the memory map. The struct page representing NOMAP memory
frames in the memory map will be PageReserved()"


So having a memmap for these ranges is expected, and a direct map is not
desired. What you propose is a hack. You either have to reuse the
existing memmap (which is !ZONE_DEVICE -- not sure if that's a problem)
or we'd have to look into teaching init code to not allocate a memmap
for sub-sections that are fully nomap.

But not sure who depends on the existing memmap for nomap memory.

> 
> As for safety:
> 1. The caller of fill_subsection_map are mhp and *_memremap_pages functions, no-map regions are not related to them, so existing codes won't be broken.
> 2. This change doesn't change memblock and subsection_map.
> 

Sorry, but AFAIKT it's a hack and we need a clean way to deal with nomap
memory that already has a memmap instead.


-- 
Thanks,

David / dhildenb

