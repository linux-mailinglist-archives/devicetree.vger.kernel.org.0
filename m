Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FA7646DAEF
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 19:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235144AbhLHSZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 13:25:09 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:40592 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232836AbhLHSZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 13:25:09 -0500
Received: by mail-ot1-f49.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so3588691otj.7
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 10:21:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mK1SfBlNFT2r+eZo73stjQlgR22TCAiK1fRlrLMmmcQ=;
        b=3HUB0Nw7eWGY4ddLP8v0X8Ywx84sQLWW2JmrozdNwj16dnyU63gyOgUOV0EY4nPPzg
         y4bA0ZMTBqUw+0uWdQuqy4bkJaUVtr2OKvvED2moULEbYRL7+gGt5RZCdhSG6QVmN27i
         UA634exH5DmeUXousWwkpw3pXKHUdI6kl4Z64eJcQOGXkKuTcRdywYMKLJ2GMJwGh1jr
         tfeDau8/1G3L9Hc6bxJuKT809h7mvwI9dVOlH6T51ayCIwWeqbkFGj2AKxlCQM+dj5gT
         5035jDwjCn46nB+Y8Avg+5ZowCbtWEcrMi1LmucjNf2iUEAHrKVsbZkIBaJOqi5CHTaU
         9O3w==
X-Gm-Message-State: AOAM5316/DWIIIi6SLP6iaE6TZSuZfHFwqyOsG868dFz7b+bH7g9+PBQ
        C1SKKpUed6RPO/sBfDnwp3np+SSusg==
X-Google-Smtp-Source: ABdhPJyDRQXuP0En+4YSofGmXSOm26H4OnI04aul6/iWTg7WO/M58jXkUzfTN4C29ZhTHHSJMuPDVw==
X-Received: by 2002:a05:6830:310f:: with SMTP id b15mr1033233ots.31.1638987696625;
        Wed, 08 Dec 2021 10:21:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bi20sm910677oib.29.2021.12.08.10.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 10:21:35 -0800 (PST)
Received: (nullmailer pid 93575 invoked by uid 1000);
        Wed, 08 Dec 2021 18:21:34 -0000
Date:   Wed, 8 Dec 2021 12:21:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
Message-ID: <YbD3risJTt2dECOq@robh.at.kernel.org>
References: <cover.1638900542.git.robin.murphy@arm.com>
 <b9364dc5dd31cea84a58c156cfce5b90b9248d7d.1638900542.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b9364dc5dd31cea84a58c156cfce5b90b9248d7d.1638900542.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 06:20:43PM +0000, Robin Murphy wrote:
> DSU-110 is the newest and shiniest for Armv9. Its programmer's model is
> largely identical to the previous generation of DSUs, so we can treat it
> as compatible, but it does have a a handful of extra IMP-DEF PMU events
> to call its own. Thanks to the new notion of core complexes, the maximum
> number of supported CPUs goes up as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> index b78b6b0fce66..b623520ad302 100644
> --- a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> +++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
> @@ -21,7 +21,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: "arm,dsu-pmu"
> +    oneof:

'oneOf' and should be a list.

jsonschema is case sensitive yet the tools are silent on wrong case (but 
handled by dtschema). 

> +      const: "arm,dsu-pmu"
> +      items:
> +        const: "arm,dsu-110-pmu"
> +        const: "arm,dsu-pmu"

'items' needs to be a list here (Use '-').

>  
>    interrupts:
>      items:
> @@ -30,7 +34,7 @@ properties:
>    cpus:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      minitems: 1
> -    maxitems: 8
> +    maxitems: 12
>      description: List of phandles for the CPUs connected to this DSU instance.
>  
>  required:
> -- 
> 2.28.0.dirty
> 
> 
