Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73B6230478D
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 20:09:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727070AbhAZRAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:00:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389305AbhAZHIp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 02:08:45 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D1FC061573
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 23:07:35 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id s18so5169144ljg.7
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 23:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kZn4RLcS22zFx/2DTlAuwltfIUf6VsTelsb0t+E6OVU=;
        b=pE8xWIBoOLny7oXqvXpMfoJi7JvpcpxmDh8zm4lh6Uyvr7b7j2jJ7UZOS+MLQo/FQl
         ubWzJy4Q9s96T7Xf5E4zjvCYdacNMNyt+STvwNBvFn+DFbK1IOa45QTNx0CK4tqt2MpE
         9q6lIDbdd6oVcqVQ0kyJ3m+Pa4KmXb/GEkNs+DukdguxZPCCldWwxVUSFHBQY8TTXzaw
         r84fbwLTu2moq87yE0Jn9wp0/Z/tqpyc8iNyG3SkbdlThnz5e02C5xiKzbm9LVhu0+50
         1mKgeNkq8I0jWJozi9klT6Xk9zf53USHbrk6wyKE2duKkRFShkvcooM40NT48zxOfIeg
         CSEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kZn4RLcS22zFx/2DTlAuwltfIUf6VsTelsb0t+E6OVU=;
        b=LiYh6d7QYWhbrNjNyCDdQYOYZ0q1mUs0owFJ1fgTzMlnY4nushLu/NZY7s7kdr2t6m
         qHMXv4E8npmefPPidXBoEBWuDm8dpNhunCFCWU0AKw/vYy1S66RWvPavqozH/WfiK8WE
         b7IcbaQhFedzrufH/1/3Pz1uIgbSye6qhyqZOJ9hPgn966hqBC3FDO8C2MOIVko50JVg
         6CWCCKFpuXj/KRMrmZ15hdBJ2smIOPmKFblk6vfz/98h/ukNXKLsVDgZdSk8Wz419yoB
         UKTgSExc3Qigw/zmoRbEISYAY9u0jllepL9GkS9CFf7sYQLGOoh/tSA/Fw4SPmTEwiiF
         gUqg==
X-Gm-Message-State: AOAM5300cnkoOQcnu4QA9Ozfh5YwcS/+r+7xi0vZ9+cLcT2AroZG5kyO
        QM01DxYBhkt3pmEEVjUO7lmyaAraxruGJUYF4eJZTg==
X-Google-Smtp-Source: ABdhPJwPrhIKzj8GZZNZJ8aPtOX3sEhjLT4uJM9gyulJIyHIGvl4KbrgVs2kwfOBdPjMvdI2rfwpFkVem0QwXxEa/PE=
X-Received: by 2002:a2e:a554:: with SMTP id e20mr2151530ljn.128.1611644853468;
 Mon, 25 Jan 2021 23:07:33 -0800 (PST)
MIME-Version: 1.0
References: <20210121175502.274391-1-minchan@kernel.org> <20210121175502.274391-4-minchan@kernel.org>
In-Reply-To: <20210121175502.274391-4-minchan@kernel.org>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 25 Jan 2021 23:07:21 -0800
Message-ID: <CALAqxLU3yU8e006G0W-mSBLogWAru6jOJcBbuH5wFHoi1JitPA@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: reserved-memory: Make DMA-BUF CMA
 heap DT-configurable
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
>  .../reserved-memory/dma_heap_chunk.yaml       | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml
>
> diff --git a/Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml b/Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml
> new file mode 100644
> index 000000000000..00db0ae6af61
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/dma_heap_chunk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Device tree binding for chunk heap on DMA HEAP FRAMEWORK
> +
> +description: |
> +  The DMA chunk heap is backed by the Contiguous Memory Allocator (CMA) and
> +  supports bulk allocation of fixed size pages.
> +
> +maintainers:
> +  - Hyesoo Yu <hyesoo.yu@samsung.com>
> +  - John Stultz <john.stultz@linaro.org>
> +  - Minchan Kim <minchan@kernel.org>
> +  - Hridya Valsaraju<hridya@google.com>
> +
> +
> +properties:
> +  compatible:
> +    enum:
> +      - dma_heap,chunk
> +
> +  chunk-order:
> +    description: |
> +            order of pages that will get allocated from the chunk DMA heap.
> +    maxItems: 1
> +
> +  size:
> +    maxItems: 1
> +
> +  alignment:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - size
> +  - alignment
> +  - chunk-order
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    reserved-memory {
> +        #address-cells = <2>;
> +        #size-cells = <1>;
> +
> +        chunk_memory: chunk_memory {
> +            compatible = "dma_heap,chunk";
> +            size = <0x3000000>;

Hey Minchan,
  Looking closer here, would it make more sense to document the "reg =
<>" parameter here as well instead of just "size = <>"?

That way the address of the region could be explicitly specified (for
instance, to ensure the CMA region created is 32bit addressable). And
more practically, trying to satisfy the base address alignment checks
in the final patch when its set dynamically may require a fair amount
of luck  - I couldn't manage it in my own testing on the hikey960 w/o
resorting to reg=  :)

It does look like the RESERVEDMEM_OF_DECLARE() logic already supports
this, so it's likely just a matter of documenting it here?

thanks
-john
