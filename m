Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFF122F8041
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 17:08:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730505AbhAOQH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 11:07:56 -0500
Received: from mail-oo1-f50.google.com ([209.85.161.50]:45393 "EHLO
        mail-oo1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728668AbhAOQH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 11:07:56 -0500
Received: by mail-oo1-f50.google.com with SMTP id o5so2310483oop.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 08:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/QRrPepIueUPUGgyuQRPWTiWrdA5KCQ1xLVEAMjrH2Q=;
        b=OCWN2J/v71nEZs9CkRIJpIlj7bSHC0lbIpdwC6Ma8SXl0s0lxLaMMUPtPaJ4ddoSzw
         t2HTOMjBOZUGrmF9/gas5d3ISLxhrUuhk3MOrenf/ZYWZwq3Ne6AEu7txx4iefXAb0eu
         YCJIjpzmXcj3hb5UHDA6tgYCBTfpR00ODxR3mdq8gwTYyiOdlqEc/rKJJrih8nTOw1yG
         6SHIP2pMOYCoswucK69Gz2MgWAD7kJC/tplCOBRlN1FutKorZLwUILfJ5sH8hnc9nnBp
         eh8j5tw1+8RYBdoo+YPFOWydA2De3H6hUcurFLuW8VE+9EhvuAQg1XH0NzQJOsU5c09V
         dA2A==
X-Gm-Message-State: AOAM532tzmOZwVBMPRCacSc10ovwnXeegq9mCFFldnbsFnErAXX9du62
        78/C94yWzdQdR6qLGEjRL10ZsxSBjQ==
X-Google-Smtp-Source: ABdhPJzmtO628wZGK4ysGymnUa/InhhVBJu2jhrxrq/nbI0GRacS4TTBdVHY0BBkp+TPbot63YlHuw==
X-Received: by 2002:a4a:a7c5:: with SMTP id n5mr8653884oom.9.1610726835465;
        Fri, 15 Jan 2021 08:07:15 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m29sm1883035oof.20.2021.01.15.08.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 08:07:14 -0800 (PST)
Received: (nullmailer pid 1357977 invoked by uid 1000);
        Fri, 15 Jan 2021 16:07:13 -0000
Date:   Fri, 15 Jan 2021 10:07:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Sean Anderson <seanga2@gmail.com>,
        Anup Patel <anup.patel@wdc.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v12 08/17] dt-bindings: fix sifive clint compatible string
Message-ID: <20210115160713.GA1353145@robh.at.kernel.org>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
 <20210115140352.146941-9-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210115140352.146941-9-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 11:03:43PM +0900, Damien Le Moal wrote:
> Fix the Sifive clint compatible string definition to make the value
> "sifive,fu540-c000-clint" optional, allowing a DT to specify only
> "sifive,clint0" for its generic implementation without any tweak.
> With this change, a Sifive clint node can now be defined as explained
> in the compatible string description.

NACK.

How do you know you'll never need some tweak? Adding it to the DT later 
defeats the whole point of not having to do DT updates to implement 
work-arounds and/or enhancements.

> 
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/timer/sifive,clint.yaml          | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index 2a0e9cd9fbcf..c6b1f37a2949 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -22,12 +22,13 @@ description:
>  
>  properties:
>    compatible:
> -    items:
> -      - const: sifive,fu540-c000-clint
> -      - const: sifive,clint0
> +    oneOf:
> +      - items:
> +          - enum:
> +              - sifive,fu540-c000-clint
> +              - sifive,clint0
>  
>      description:
> -      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
>        Supported compatible strings are -
>        "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
>        onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
> -- 
> 2.29.2
> 
