Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C90BC3F79D8
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 18:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237904AbhHYQGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 12:06:44 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:40928 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235365AbhHYQGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 12:06:44 -0400
Received: by mail-ot1-f52.google.com with SMTP id x9-20020a056830278900b0051b8be1192fso34797685otu.7
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 09:05:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6B/RU3QQJyY4Yz0pNwefBYsy/M+wDG4+xpzlsRF/atk=;
        b=hKMr0WViYgnXtqqLhTDN21yepGtidlaND8/5P1Cn4gfqORWS7rbetUAe8VIhLRnBgl
         tD4emZuLigyB58uj3wEzNrruxOfA5mQYyPrrSh01YxmbaFE13KJiNOP+3p3UmUoIDbV2
         XpUGLLo874nIEK7T6yceBwo5ysSDBew1z1SDbY0/FYKJHFiDABlfdlN52zG4NiqiOilP
         wJZQ3pYCgfXkCLc5VI1DUU6LD5vys5Ch4oUvm3IwDBg4pNJCwhG1dnAKZnMcb7xZrPUU
         0suupPI78Eg2w46ebqu2UTzmydSHJyHlIUTTT7QhrB8pU/yUZ/UZzufasGe9gw8F9RCP
         CjMg==
X-Gm-Message-State: AOAM532WXCyU4jgzJltCANCqsMcvhIJpVRy8q3ZCPS0bkDxdK3xEheLJ
        nuT2Cbg7w9Du27PYm3hOZFjxUzXKdg==
X-Google-Smtp-Source: ABdhPJwxhnQTT7fn3qSSxZhTEcdvBaMpTzt9QPopFRD9riM7WWoPV9BEhy1UjL2xrFYlQY0H+wlNgA==
X-Received: by 2002:a9d:20a4:: with SMTP id x33mr37856813ota.43.1629907557975;
        Wed, 25 Aug 2021 09:05:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f17sm41399otl.24.2021.08.25.09.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 09:05:57 -0700 (PDT)
Received: (nullmailer pid 2872178 invoked by uid 1000);
        Wed, 25 Aug 2021 16:05:56 -0000
Date:   Wed, 25 Aug 2021 11:05:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        kernel test robot <lkp@intel.com>,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] of: fdt: Rename reserve_elfcorehdr() to
 fdt_reserve_elfcorehdr()
Message-ID: <YSZqZFdNbzwk4ZXH@robh.at.kernel.org>
References: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 25 Aug 2021 11:40:40 +0200, Geert Uytterhoeven wrote:
> On ia64/allmodconfig:
> 
>     drivers/of/fdt.c:609:20: error: conflicting types for 'reserve_elfcorehdr'; have 'void(void)'
>       609 | static void __init reserve_elfcorehdr(void)
> 	  |                    ^~~~~~~~~~~~~~~~~~
>     arch/ia64/include/asm/meminit.h:43:12: note: previous declaration of 'reserve_elfcorehdr' with type 'int(u64 *, u64 *)' {aka 'int(long long unsigned int *, long long unsigned int *)'}
>        43 | extern int reserve_elfcorehdr(u64 *start, u64 *end);
> 	  |            ^~~~~~~~~~~~~~~~~~
> 
> Fix this by prefixing the FDT function name with "fdt_".
> 
> Fixes: f7e7ce93aac13118 ("of: fdt: Add generic support for handling elf core headers property")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> This change was planned for v6.
> Feel free to fold into the original.
> ---
>  drivers/of/fdt.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!
