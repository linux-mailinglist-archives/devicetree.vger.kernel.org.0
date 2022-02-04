Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1BC24AA30F
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 23:21:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238837AbiBDWVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 17:21:20 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:35576 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344064AbiBDWVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 17:21:19 -0500
Received: by mail-oi1-f174.google.com with SMTP id m10so10200345oie.2
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 14:21:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Z3JMW2yZttnXWB73Kc9ilTSw1PTFSAZTZxgKEm+ViCI=;
        b=Ln9WqofF6M5wdga5h15SD2GidXUhHZOxlJn080OY/mQgG5TRaO9ufEFs4vGOJgUzFJ
         x8H/GGdvwIEolOX7n5to2eP/CFR+F3I2bsPBbbp+ksW3GSWaZ1GfW2oGEuEOW3O9iRYC
         RCG/mNT+dXkT26tI9QxaJdv3UCXIQVIqgujPNoIF3bRb6pQ4bipqXyV1UM+dpsIhsfCw
         iN0q2QD9tbL8L+YwMR5QyvrOlJQbrGq9ziYIlXHvjYliMAM+c9H6ylKxRGhQWVLwFE9g
         keqSnaqOjoBc0JSRTuvwdjFlirTegKZ4C714CGqIGzxLh/lCMraCZXKgIYPWhsabnzk0
         F/ow==
X-Gm-Message-State: AOAM532pvksh199jGoRRq6Z3dy3VulhoNCtX7MfTsrKkFkXhaXy6mcsh
        IKziOZDzG0Ced6xsRBJoBA==
X-Google-Smtp-Source: ABdhPJwpZtYU6c3ypc+PbXSeyEaUfExaJMPhfDFP8M3HEfo9t/rJKUTjaRX5QhQtzj24iqPFsYn6+A==
X-Received: by 2002:a54:460e:: with SMTP id p14mr2450971oip.162.1644013279244;
        Fri, 04 Feb 2022 14:21:19 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x12sm1229247otq.6.2022.02.04.14.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 14:21:18 -0800 (PST)
Received: (nullmailer pid 3286046 invoked by uid 1000);
        Fri, 04 Feb 2022 22:21:17 -0000
Date:   Fri, 4 Feb 2022 16:21:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 2/3] dt-bindings: net: support for Allwinner R40 EMAC
 controller
Message-ID: <Yf2m3RwR4ZGPnS8G@robh.at.kernel.org>
References: <20220113053734.105813-1-boger@wirenboard.com>
 <20220113053734.105813-3-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113053734.105813-3-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 13 Jan 2022 08:37:33 +0300, Evgeny Boger wrote:
> R40 and A10/A20 share the same EMAC IP.
> However, on R40 the EMAC reset needs to be deasserted first,
> so resets property is required.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  .../bindings/net/allwinner,sun4i-a10-emac.yaml  | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
