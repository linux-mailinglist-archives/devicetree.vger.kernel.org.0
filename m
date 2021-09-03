Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4875A400754
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 23:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235821AbhICVOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 17:14:37 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:46019 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbhICVOh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 17:14:37 -0400
Received: by mail-oi1-f174.google.com with SMTP id q39so730818oiw.12
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 14:13:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IdRBiRgbLz9h7wcj6Wx3lq2PL3Y9R6ecHIBuO4pBVWs=;
        b=irTEJuEyp/t19kcE7sfOUihu3mxR6eZAYSAcZnA7Z26nhyk69eLrTUBpzHMZJAEr1m
         lKEIR2baD0B6bxJbihjBpjzzQ/3Ok4c/Vm6h3IDGryHg0Y7TZiFYZNm72b3Cq6RvQbJJ
         sk9INaqS/+mwoaf57Q8KHXGtTcHxmGAc2ej8VaBStqHwg0QG97OCSGk/PTMhw/11UOJU
         /xKbAaoyAMGwr+cQF6wYydEu6Fxgz8e8zw/GfeH6Q4W/m0Xr7i6KNpuhbqL+nssbnNNQ
         nUthRIT5jq9oBYgVPs4P+lX6jGI4+4CDQ04ifRJ2nTiefyimqrPCxp6ocoy+gqPnHOy+
         5yMw==
X-Gm-Message-State: AOAM532CdR0gSz5DCNEE9C1F8dBzyjCHp7xxECECds9i/sMe58P2G/gJ
        De6W9nyhNP8io9POXO5By56ai3lj5Q==
X-Google-Smtp-Source: ABdhPJwsQoIIoph64UxoAoHJNuWnevcbcG1fyzRdNx0hNG5ubMiRF2mMFpz4jtD9FeFFMpuZxy33+w==
X-Received: by 2002:aca:4e08:: with SMTP id c8mr637901oib.79.1630703616449;
        Fri, 03 Sep 2021 14:13:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id j10sm74839oog.13.2021.09.03.14.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 14:13:35 -0700 (PDT)
Received: (nullmailer pid 3471414 invoked by uid 1000);
        Fri, 03 Sep 2021 21:13:35 -0000
Date:   Fri, 3 Sep 2021 16:13:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH dt-schema v2] schemas: property-units: Sanitize unit
 naming
Message-ID: <YTKP/4nK45FwtC3m@robh.at.kernel.org>
References: <20210901151045.2483811-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901151045.2483811-1-geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 17:10:45 +0200, Geert Uytterhoeven wrote:
> Make the naming of units consistent with common practices:
>   - Do not capitalize the first character of units ("Celsius" is
>     special, as it is not the unit name, but a reference to its
>     proposer),
>   - Do not use plural for units,
>   - Do not abbreviate "ampere",
>   - Concatenate prefixes and units (no spaces or hyphens),
>   - Separate units by spaces not hyphens,
>   - "milli" applies to "degree", not to "Celsius".
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Cfr. Linux commit 573748081a66b2ba ("dt-bindings: property-units:
> Sanitize unit naming").
> 
> v2:
>   - Rebased on top of commit f5a200cb84c70565 ("schemas: Allow a matrix
>     for -microvolt suffix").
> ---
>  schemas/property-units.yaml | 40 ++++++++++++++++++-------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 

Applied, thanks!
