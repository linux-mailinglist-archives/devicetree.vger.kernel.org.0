Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36DFE47D632
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 19:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237406AbhLVSDa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 13:03:30 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:46910 "EHLO
        mail-qv1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232105AbhLVSD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 13:03:29 -0500
Received: by mail-qv1-f47.google.com with SMTP id r6so2983935qvr.13
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 10:03:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4fVfy0VZMJjefrEnDYXEJyypYgBf7xTeJkE+5TiMOcQ=;
        b=M3H+FfuiQG+OD49G0YY+QGPl+BnWL/rDcUoSpqjXlg5TJ2/yHRd7R/ueRLP0e/NExf
         R5MCYTCuhKyaR38v9fI5zf128Bfovn8O6U/h+15TMESEVlbeJxK7ANnOoUFxYIY8d/OE
         d9QHLYL46i/gXTld9dswXnPM4V14xTv17SuTfui/u4TvVN0NeP7beqWra1a2OfhnuYkE
         qwzKQ7vrTKYID+ipQROnVPUnSNo/5yMT4iJ5VA9vYu37pBELVY1A3uYFbejj6pZLCXK2
         xr4iJE+UMmk2oT/KuS84RkGLhuq8S/KVDJImxdtu9mf6u2WzOju4I9jhNJMDpC0Fxv9H
         Ua2g==
X-Gm-Message-State: AOAM530YNQ1QL0cTqa4v34fN4htHoaBWWG2ZL3dav3KsKhofz+Mmvin4
        XLi/F5xGkyLNieMkWVyOYA==
X-Google-Smtp-Source: ABdhPJzR+ZxBvybDxpigxbPuFoMxaj4PERdOGS5pX08g6AGVBeYpcqh8o+IHw2Q3akU/vfsa4oOp9g==
X-Received: by 2002:a05:6214:2306:: with SMTP id gc6mr3492573qvb.34.1640196208799;
        Wed, 22 Dec 2021 10:03:28 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id r185sm2149005qke.134.2021.12.22.10.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 10:03:28 -0800 (PST)
Received: (nullmailer pid 2421141 invoked by uid 1000);
        Wed, 22 Dec 2021 18:03:26 -0000
Date:   Wed, 22 Dec 2021 14:03:26 -0400
From:   Rob Herring <robh@kernel.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix duplicate
 key
Message-ID: <YcNobgVJADzY8waQ@robh.at.kernel.org>
References: <20211220125147.519880-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211220125147.519880-1-thierry.reding@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Dec 2021 13:51:47 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> In order to validate multiple "if" conditionals, they must be part of an
> "allOf:" list, otherwise they will cause a failure in parsing the schema
> because of the duplicated "if" property.
> 
> Fixes: d7df3948eb49 ("dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select")
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 43 ++++++++++---------
>  1 file changed, 22 insertions(+), 21 deletions(-)
> 

I went ahead and applied to drm-misc, so linux-next is fixed. 

Rob
