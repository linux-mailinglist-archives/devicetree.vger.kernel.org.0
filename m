Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5319C3EBB9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 19:44:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbhHMRos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 13:44:48 -0400
Received: from mail-oi1-f181.google.com ([209.85.167.181]:39680 "EHLO
        mail-oi1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbhHMRos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 13:44:48 -0400
Received: by mail-oi1-f181.google.com with SMTP id bj40so17036986oib.6
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 10:44:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5xa6KFLbYMLK2XmSwG9VkKmKTgPndFyfJuVEfJj+zXE=;
        b=faAisRlHxV7XKNlAGPnyzyG+LG9Iw2SBkpicCZ9nBt48+vMhNdf2j6cl7aqDSLX1CB
         tbCmDR4lQrEAA9fIWj1k0SUhJ22nzmoVKymFuyoCj9S/5qxR1l9Q+If0Q+euwfd5EzT9
         s2YcIswxbrmMnl14ckml3tRfZa2Xz7XRF9YNNIS59dy99awkaxvJyTxvfilnQlFrU32P
         jvbqKesX1wTXhzWwn7t3dfc0X1S82DaAd3Q5uf37L/zbKhzW/Vnmhz7WdNG5gw/o1+ye
         ie+KV2q3u0W+i/+ZI/rWQeBkGfnz9ivBHjbCoJlO9WDPZX0OjFQS0xlsadf/GIg7PJWW
         e81A==
X-Gm-Message-State: AOAM533dQROR3UxaQ0p8BTTAS8q04GDDDv1cjA/RKNbMUQZP9yPmTnG3
        ZX/i0gQkoFwAn/bc4KwjjA==
X-Google-Smtp-Source: ABdhPJzpCFkPaOBQGhiv/E4nr2gpXGpQOcCN5X9J2GCmT2kK2WdhVH+imhWU8REx1t03sEaH0OoXSg==
X-Received: by 2002:a05:6808:1386:: with SMTP id c6mr3105533oiw.18.1628876661088;
        Fri, 13 Aug 2021 10:44:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 45sm444869otm.43.2021.08.13.10.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 10:44:20 -0700 (PDT)
Received: (nullmailer pid 3741722 invoked by uid 1000);
        Fri, 13 Aug 2021 17:44:19 -0000
Date:   Fri, 13 Aug 2021 12:44:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two
 clocks
Message-ID: <YRavc3mcjtiTKCqj@robh.at.kernel.org>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210805025948.10900-2-ezequiel@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 04, 2021 at 11:59:45PM -0300, Ezequiel Garcia wrote:
> Commit b681af0bc1cc ("drm: panfrost: add optional bus_clock")
> added an optional bus_clock to support Allwinner H6 T-720 GPU.
> Increase the max clock items in the dt-binding to reflect this.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 0f73f436bea7..01532140096e 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -38,7 +38,12 @@ properties:
>        - const: gpu
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2

You have to define what the names are.

>  
>    mali-supply: true
>  
> -- 
> 2.32.0
> 
> 
