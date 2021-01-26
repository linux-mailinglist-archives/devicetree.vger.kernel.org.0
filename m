Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCFFF30446A
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 18:02:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727170AbhAZRBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:01:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389614AbhAZHqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 02:46:04 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073BCC0617AB
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 23:33:11 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id a8so21463173lfi.8
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 23:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W32USTVMA4Na4R83P1ldiQToO8MF00oSxMXfGmTH1mg=;
        b=iGGad8ZvGGCQxu9TMHL9veAeJhvUmkKrwjjKMwaNwfuM6xAnAIXUTRwKpHFa4HSTRx
         KeLwL2AaM4YYKmMFkxUUIAjBjJ1lXLdFg7bTMbgQpY3t2/F7y1zx/+8I+17UEvgsQf9U
         hb4wGQznDB3Has2Qt7crmDWfW3NkLi3VoHXXcZ3yOj8xzStYt3rajuw/v+hhfch2WAuP
         UX/D0jb+Hgzg4/WnIvILyeVnI04EY8zOR1i7wnNHkbtvHlgmSZzrpLWh5Ziab6y5ZUoS
         W8Wfi5503gqbWmfVrzYR7xOw37OYR258L7zhQPidFOK0I8WFj04u7Wv3BRwwDvqSdUqN
         zl9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W32USTVMA4Na4R83P1ldiQToO8MF00oSxMXfGmTH1mg=;
        b=aKGg9RULmUp+ha6tXAeJsm/aHRJW9qU7tbSA1tPsWNX2JInTEEMrZxfnlZPOPJu/7M
         emaeahQsK+ZtIn2t0oUBE+SAkBCVlyP1nMUnDHzsfGqKjpg8bJCcOz4G9VXH5dvrf6CR
         gBR1EoGhyL1TPMtdFizCwZH6jFMDa29JOYD1JonXqRmJ0+AOuZf0vq5AY2fpqxkBNDZM
         HL1fGN+5FX6HXytfRn6a8wUku1H3nRcZH8/ZLY5LYoFQFSq+z6I85EZLLqCmkrvQTslH
         SPtznyO6ehPNSs+ovgauJLf7C+NJ10BJRmsF0M8pvYZ/kIh2qUtUq+LnNjqk8RbwHRA5
         TtTg==
X-Gm-Message-State: AOAM530nJELgMPRWqBOvy9YfTt6xZ6P3kw3tmHRcZrktlCcdB5GFyeVt
        oLIaqOrVyn0Dq5Lo+kKOqSfnAKGOsjRxcqFEDXsdOQ==
X-Google-Smtp-Source: ABdhPJwXsF0xWCBhNsrr3s7doyV+JBsu/u9FZtgybX1V7crrHD588JGqYQnNs8eBrkRozy2tjTrONdtwgSFuQwqnwis=
X-Received: by 2002:a19:48d0:: with SMTP id v199mr2093711lfa.535.1611646389475;
 Mon, 25 Jan 2021 23:33:09 -0800 (PST)
MIME-Version: 1.0
References: <20210121175502.274391-1-minchan@kernel.org> <20210121175502.274391-5-minchan@kernel.org>
In-Reply-To: <20210121175502.274391-5-minchan@kernel.org>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 25 Jan 2021 23:32:57 -0800
Message-ID: <CALAqxLWJDo=pM8bvt9YWrzJ+VyK5gojoL-v7ch1fQC=cjGwJOw@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] dma-buf: heaps: add chunk heap to dmabuf heaps
To:     Minchan Kim <minchan@kernel.org>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        linux-mm <linux-mm@kvack.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Hyesoo Yu <hyesoo.yu@samsung.com>, david@redhat.com,
        Michal Hocko <mhocko@suse.com>,
        Suren Baghdasaryan <surenb@google.com>,
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

On Thu, Jan 21, 2021 at 9:55 AM Minchan Kim <minchan@kernel.org> wrote:

Hey Minchan,
  Thanks for sending this out! I'm still working through testing with
this patch set, so I may have some more feedback tomorrow, but a few
quick items I did hit below.

> +
> +#define CHUNK_PREFIX "chunk-"
> +
> +static int register_chunk_heap(struct chunk_heap *chunk_heap_info)
> +{
> +       struct dma_heap_export_info exp_info;
> +       const char *name = cma_get_name(chunk_heap_info->cma);
> +       size_t len = strlen(CHUNK_PREFIX) + strlen(name) + 1;
> +       char *buf = kmalloc(len, GFP_KERNEL);
> +
> +       if (!buf)
> +               return -ENOMEM;
> +
> +       sprintf(buf, CHUNK_PREFIX"%s", cma_get_name(chunk_heap_info->cma));
> +       buf[len] = '\0';
> +
> +       exp_info.name = buf;
> +       exp_info.name = cma_get_name(chunk_heap_info->cma);

I think you intended to delete this line, as it's overwriting your
prefixed name.

> +       exp_info.ops = &chunk_heap_ops;
> +       exp_info.priv = chunk_heap_info;
> +
> +       chunk_heap_info->heap = dma_heap_add(&exp_info);
> +       if (IS_ERR(chunk_heap_info->heap)) {
> +               kfree(buf);
> +               return PTR_ERR(chunk_heap_info->heap);
> +       }
> +
> +       return 0;
> +}
> +
> +static int __init chunk_heap_init(void)
> +{
> +       unsigned int i;
> +
> +       for (i = 0; i < chunk_heap_count; i++)
> +               register_chunk_heap(&chunk_heaps[i]);
> +
> +       return 0;
> +}
> +module_init(chunk_heap_init);
> +
> +#ifdef CONFIG_OF_EARLY_FLATTREE
> +
> +static int __init dmabuf_chunk_heap_area_init(struct reserved_mem *rmem)
> +{
> +       int ret;
> +       struct cma *cma;
> +       struct chunk_heap *chunk_heap_info;
> +       const __be32 *chunk_order;
> +
> +       phys_addr_t align = PAGE_SIZE << max(MAX_ORDER - 1, pageblock_order);
> +       phys_addr_t mask = align - 1;
> +
> +       if ((rmem->base & mask) || (rmem->size & mask)) {
> +               pr_err("Incorrect alignment for CMA region\n");
> +               return -EINVAL;

Passing this check can be tough if you're using dynamically assigned
rmem, so it might be helpful for debugging to print the base/size/mask
values?

thanks
-john
