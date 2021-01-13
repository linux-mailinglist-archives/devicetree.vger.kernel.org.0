Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7C822F512C
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 18:34:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727845AbhAMRcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 12:32:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726471AbhAMRcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 12:32:10 -0500
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B21FEC061794
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 09:31:30 -0800 (PST)
Received: by mail-qv1-xf2c.google.com with SMTP id l7so1122774qvt.4
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 09:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+V2Dr2muMkbk0Yt20+kBeKoC8rP7GJB7dLSdIgBdmPU=;
        b=TGvsxQuiRgpoRSNCinvSnrvriBuQfwHVZFHfM1a1dybagvBAQuJXoAB6tesQINtW66
         rZnAujCpdbZJiYkIikadqGylWKIlPfne/BLEPbWGrO57TszPd7LhSpHrbLH2QfZdjRNz
         cPFkmXQJw1OKpOMpbye9/FjUn7KOY1E7gxAyo17gO01nP5cSxzETAzSQ9pPWr9qPdgyh
         NdE/jLXnqXcK/psY1fmr9gqq9DpedoxySG1dpVSIp+FwCsQFtJrUhG3GiT2/yxFUA3Zg
         5Yr74jWVXlHzqNfZYdrqAF/ehceTrb5qJOB1IRFgLFPysIaSyOFCpUyxKC1G+G0OPyBS
         C5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+V2Dr2muMkbk0Yt20+kBeKoC8rP7GJB7dLSdIgBdmPU=;
        b=HrjXlVjZb2h0o9BbqlcFH7I3xvRVEQ+jTW+rD7I+hMhWfNE+aH+RVwTpj68jrubVYL
         9oKCsAI0bj34NUdVUb1QTeLr+kuyfBhDSGpB3Hg3ISngc0NX5zerRnZ955jdd/5n9tl4
         C1/k/yP6Ys+ohIsQlYs2UFNkwQsVUpe4SYB2xM5ggZhG1LJttG2FiXWNtDmmWxjmHGpU
         gjK0q0dNtVWZbpO7OW94B2lMeNn4+flEkb30siKdABBPwqmdc9ogQiwdJGJ1nXnvONgd
         Ie6xL5Pk4U8K13r6a+JOkny3O/bX0H6maxCEyZFP0k4dy4voz6ignVzj4pKxP7tZNjzS
         ruTw==
X-Gm-Message-State: AOAM531MVmS1DpmveCo25pPpFYaF2RfdcBllIOzeoVRNulk78MuqiawF
        n0LLwopsOCE5TjIYds4jRiMO1v3JPv3CmS9MKNJx+w==
X-Google-Smtp-Source: ABdhPJz285kiLrApEti5WJgRA1E13XN480igK5w4hFcgkOLK8+pftJijGcF2r5qhv2NtQ+Bq2oR1dKlDUWJkPD/JeWo=
X-Received: by 2002:a0c:8203:: with SMTP id h3mr3390601qva.0.1610559089537;
 Wed, 13 Jan 2021 09:31:29 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org> <20210113012143.1201105-4-minchan@kernel.org>
 <1610552704.254587.2506180.nullmailer@robh.at.kernel.org>
In-Reply-To: <1610552704.254587.2506180.nullmailer@robh.at.kernel.org>
From:   Hridya Valsaraju <hridya@google.com>
Date:   Wed, 13 Jan 2021 09:30:53 -0800
Message-ID: <CA+wgaPOwCWc+oYzzaLwUch32-vUMhma3UgFLWZTbOZ5jMuv6Ng@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: reserved-memory: Make DMA-BUF CMA
 heap DT-configurable
To:     Rob Herring <robh@kernel.org>
Cc:     Minchan Kim <minchan@kernel.org>,
        Hyesoo Yu <hyesoo.yu@samsung.com>,
        Christoph Hellwig <hch@infradead.org>,
        John Dias <joaodias@google.com>,
        "pullip.cho" <pullip.cho@samsung.com>,
        LKML <linux-kernel@vger.kernel.org>, mhocko@suse.com,
        robh+dt@kernel.org, linaro-mm-sig@lists.linaro.org,
        Suren Baghdasaryan <surenb@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        devicetree@vger.kernel.org, linux-mm <linux-mm@kvack.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        linux-media@vger.kernel.org, david@redhat.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 7:45 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, 12 Jan 2021 17:21:42 -0800, Minchan Kim wrote:
> > From: Hyesoo Yu <hyesoo.yu@samsung.com>
> >
> > Document devicetree binding for chunk cma heap on dma heap framework.
> >
> > The DMA chunk heap supports the bulk allocation of higher order pages.
> >
> > Signed-off-by: Hyesoo Yu <hyesoo.yu@samsung.com>
> > Signed-off-by: Minchan Kim <minchan@kernel.org>
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > Change-Id: I8fb231e5a8360e2d8f65947e155b12aa664dde01
> > ---
> >  .../reserved-memory/dma_heap_chunk.yaml       | 58 +++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/reserved-memory/dma_heap_chunk.yaml:58:1: [warning] too many blank lines (2 > 1) (empty-lines)
>
> dtschema/dtc warnings/errors:
>
> See https://patchwork.ozlabs.org/patch/1425577
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit.
>

Hi Rob,

Sorry about that, I can see the warning after installing yamllint.
Will fix it in the next version!

Thanks,
Hridya
