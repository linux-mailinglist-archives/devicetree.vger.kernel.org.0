Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4486031010A
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231322AbhBDXty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:49:54 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:44867 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230286AbhBDXtw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:49:52 -0500
Received: by mail-ot1-f51.google.com with SMTP id e70so5178748ote.11
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:49:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ujKKPyVHwip2iooxgoniPpsfzJBEpSx9nQF+FjoURTE=;
        b=YFnY+yX53sZ4/T0aZE6I6+R615kyjK3I43v3aHhsJRe9WfRhmDqFKWh6EJSUgoyN47
         AnG9I/G9x7hpoCD/jeNXfYZvi0ngSNaaiGppbWR/yrJoX8+84wF6KtjqGc2tIiTGeq1t
         hBKnukzw5N9t4JN9cLVkyz+6bhbeq2LbkB/lY2sbGWD6RyG4lf2nQL/rJ7VrsAkCpg/2
         N29UznhlqcuKLHQ62eeQOR2UAFszw3Tg2YO1upsJVQyAu2AJh9MDTo9J2uCYGcfIbff7
         e/L5JZASCZcfTTygcDXs1B9K9yeAI3tkbzTGPCjWoWICG1Kjdar4iXMZ5fv/FmMp4MW4
         IaXA==
X-Gm-Message-State: AOAM530FKAzwssRM1Ufjw8Ror/aoBFCYB9cRrzuQE8CQGSHgGvd2bbKr
        VO25WYS4bvXgLrlpUT+rEGq+xlPlBw==
X-Google-Smtp-Source: ABdhPJwQXWC4FRe5+6UmvIvwWvEbR9zdYMHF0diVZ1sZNS48eDu698kJLYYfDt1Qlvp53k0tfAp+hA==
X-Received: by 2002:a9d:66d1:: with SMTP id t17mr1352306otm.163.1612482551356;
        Thu, 04 Feb 2021 15:49:11 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u191sm1489401oif.6.2021.02.04.15.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:49:10 -0800 (PST)
Received: (nullmailer pid 1352976 invoked by uid 1000);
        Thu, 04 Feb 2021 23:49:09 -0000
Date:   Thu, 4 Feb 2021 17:49:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v15 05/16] dt-bindings: update sifive clint compatible
 string
Message-ID: <20210204234909.GA1351854@robh.at.kernel.org>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
 <20210203125913.390949-6-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203125913.390949-6-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 03, 2021 at 09:59:02PM +0900, Damien Le Moal wrote:
> Add the "canaan,k210-clint" compatible string to the Sifive clint
> bindings to indicate the use of the "sifive,clint0" IP block in the
> Canaan Kendryte K210 SoC. The description of the compatible string
> property is also updated to reflect this addition.
> 
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  .../bindings/timer/sifive,clint.yaml          | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index 2a0e9cd9fbcf..1a7d582a208f 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -22,16 +22,23 @@ description:
>  
>  properties:
>    compatible:
> -    items:
> -      - const: sifive,fu540-c000-clint

Use enum here too.

> -      - const: sifive,clint0
> +    oneOf:
> +      - items:
> +          - const: sifive,fu540-c000-clint
> +          - const: sifive,clint0
> +
> +      - items:
> +          - const: canaan,k210-clint
> +          - const: sifive,clint0
>  
>      description:
> -      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
> +      Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
>        Supported compatible strings are -
>        "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
> -      onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
> -      CLINT v0 IP block with no chip integration tweaks.
> +      onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
> +      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
> +      "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
> +      integration tweaks.
>        Please refer to sifive-blocks-ip-versioning.txt for details
>  
>    reg:
> -- 
> 2.29.2
> 
