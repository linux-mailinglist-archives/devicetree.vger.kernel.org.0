Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0932B352B84
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 16:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235876AbhDBOgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 10:36:02 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:26293 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235869AbhDBOgC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 10:36:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617374161;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dbSLew8mhA3CPW9rGzb5rYU5719GfEykfUChPKVn5Jw=;
        b=bvumKqG3kF3ZQfGDgmEz9RZrgbTASGKMfUKxk5UKCcwLLofsYmz1zt23pwPQodOSkqLZxQ
        CjVGeFPwZI1S861UB0PIB6D/m4FVUa4gv5ZS6NsPjLfYLHuoqp5TpVC3fDVBMjhs0D4FQe
        LR0qrbY4RnQUc+WE0Mk/LGPva+G+yio=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-a5162AggPVGbMVMMfy08dA-1; Fri, 02 Apr 2021 10:35:57 -0400
X-MC-Unique: a5162AggPVGbMVMMfy08dA-1
Received: by mail-qv1-f71.google.com with SMTP id r5so5279728qvc.11
        for <devicetree@vger.kernel.org>; Fri, 02 Apr 2021 07:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=dbSLew8mhA3CPW9rGzb5rYU5719GfEykfUChPKVn5Jw=;
        b=Yd8EYQ4VPX/EaYIQjCnAoFfVZa1dkuI6upGCT2k7uOBu32d/2L/bk2q/3ygZD595IL
         aTsFT5gmPE9xyyEQ9YfJf++bptgdM4k2ZXm6fMNMEMeKsro1JYMlSNeupIM9kJKyACOc
         N8Sjnugco77PlmQeNeqwr57Kmba10prmJvtqL+QOR3AIRv43KViiV3I30Yk2Nqnk6Ksp
         RC1/Bc8keiNDnLTzwSpjzphRJFb2vivzeM1AFLN3v/48YX8/s026TZe5HEKQBxagR841
         1ywJcs9RwIZKnM2TSNFvvHkzXl6hUGgjQUpVFR+OJqS4N+dX+1lWAJQvYn7QsbFWEV7x
         /www==
X-Gm-Message-State: AOAM532rKq4BGoxDJgiXSa80SFMuuDrqSxEmiQHxDsBg6nn6BDrUY8sR
        guzgmIENeEOcSwuq+KtJbGnv9ksoANs0QQXbE1HbEnIjmMEcaBZhC5b+CkUwVLpdEYw2tDtupVS
        49+1+phyqSN94V8jPkygl6A==
X-Received: by 2002:a37:615:: with SMTP id 21mr13401239qkg.421.1617374157126;
        Fri, 02 Apr 2021 07:35:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2JYxQhsnq8GXwaJBpbPQ9qEbMufMffGDiB8BqHyePDcCzZbxxbZ8pdHCByvdi8v+81NIOKw==
X-Received: by 2002:a37:615:: with SMTP id 21mr13401229qkg.421.1617374156960;
        Fri, 02 Apr 2021 07:35:56 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id g17sm6488596qts.93.2021.04.02.07.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 07:35:56 -0700 (PDT)
Subject: Re: [PATCH RFC 0/3] Adds support to allow the bitstream configuration
 from pre-allocated dma-buffer
To:     Nava kishore Manne <nava.manne@xilinx.com>, mdf@kernel.org,
        robh+dt@kernel.org, michal.simek@xilinx.com,
        sumit.semwal@linaro.org, christian.koenig@amd.com,
        linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linaro-mm-sig@lists.linaro.org, git@xilinx.com
References: <20210402090933.32276-1-nava.manne@xilinx.com>
From:   Tom Rix <trix@redhat.com>
Message-ID: <979ebb17-bc76-e0ef-10b4-996edc12dfa3@redhat.com>
Date:   Fri, 2 Apr 2021 07:35:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210402090933.32276-1-nava.manne@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Please add to this patch cover letter what you want to discuss.

Got this new feature, not sure about ...

Tom

On 4/2/21 2:09 AM, Nava kishore Manne wrote:
> Nava kishore Manne (3):
>   fpga: region: Add fpga-region property 'fpga-config-from-dmabuf'
>   fpga: support loading from a pre-allocated buffer
>   fpga: zynqmp: Use the scatterlist interface
>
>  .../devicetree/bindings/fpga/fpga-region.txt  |   2 +
>  drivers/fpga/fpga-mgr.c                       | 126 +++++++++++++++++-
>  drivers/fpga/of-fpga-region.c                 |   3 +
>  drivers/fpga/zynqmp-fpga.c                    |  35 +++++
>  include/linux/fpga/fpga-mgr.h                 |   6 +-
>  5 files changed, 169 insertions(+), 3 deletions(-)
>

