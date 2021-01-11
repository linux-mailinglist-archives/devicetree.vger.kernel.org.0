Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F296C2F206B
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 21:11:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390397AbhAKUKR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 15:10:17 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:34016 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404091AbhAKUJ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 15:09:57 -0500
Received: by mail-oi1-f180.google.com with SMTP id s75so681591oih.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 12:09:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YB2EuAlCGeeKCDwXJx/9Do1McjsKnxFERCsd18d3sxw=;
        b=HjM5OEDsmXWufI8FB/ytoCxg9WS8yCDZggmzSb6yJBtQ4H+XvEHB7qlkJHOu0ItN92
         H3x9Vt2y2YV1DblxY+S4h7HZIUvIIy2ngmMZQoQXOhqdK/28J59GZBicoinu8viC5vFf
         rJGW688smkqATs9GtFUw1cSqamut8pknr3oD1sQz7qRHDtv00/53nG7Lf89Wv6Xsx6ZE
         xGsVkapmX6Vlc8viRPSbImGJiqwH/BamRuTsLbRvHVXSqdReVqur2zn/VVgatJVRm8gw
         JKvYKwFr2rFrt1TVjy0lzQoykbqO4K41u2Ko2If8xZ1sSlDMm77EvscZ7oc8NiJg5w5g
         3zQg==
X-Gm-Message-State: AOAM531J19mYt8FxTG5K5mS3MhMetmhbvqZf28VfWlmngVr9spQViNsQ
        cr6tUZOPAqewxiYpZ/QNsQ==
X-Google-Smtp-Source: ABdhPJz295DLRmcguShbSYD9qeBuKqjpL4V8Mc3uyuYE1NNpoVax/tXctManSppCh4OgSpH/b0ItSA==
X-Received: by 2002:aca:ded4:: with SMTP id v203mr328666oig.148.1610395756451;
        Mon, 11 Jan 2021 12:09:16 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e10sm165789otl.38.2021.01.11.12.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:09:15 -0800 (PST)
Received: (nullmailer pid 2986514 invoked by uid 1000);
        Mon, 11 Jan 2021 20:09:14 -0000
Date:   Mon, 11 Jan 2021 14:09:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marty Jones <mj8263788@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3
Message-ID: <20210111200914.GA2985472@robh.at.kernel.org>
References: <20201228141150.2ccc4f30@marty-x570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201228141150.2ccc4f30@marty-x570>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 28, 2020 at 02:11:50PM -0500, Marty Jones wrote:
> From 4979bc740c982a15f36002fbb97979cba5d99739 Mon Sep 17 00:00:00 2001
> From: Marty Jones <mj8263788@gmail.com>
> Date: Mon, 28 Dec 2020 13:16:53 -0500
> Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3

Your patch is corrupted.

> 
> Add devicetree binding documentation for the FriendlyARM NanoPi NEO3
> 
> Signed-off-by: Marty Jones <mj8263788@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ef4544ad6f82..a0aaae08c97b 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -122,6 +122,11 @@ properties:
>                - firefly,roc-rk3399-pc-mezzanine
>            - const: rockchip,rk3399
>  
> +      - description: FriendlyElec NanoPi NEO3
> +        items:
> +          - const: friendlyarm,nanopi-neo3
> +          - const: rockchip,rk3328
> +
>        - description: FriendlyElec NanoPi R2S
>          items:
>            - const: friendlyarm,nanopi-r2s
> -- 
> 2.27.0
> 
