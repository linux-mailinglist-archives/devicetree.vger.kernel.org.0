Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A429F3A32C4
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 20:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbhFJSN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 14:13:56 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:41681 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230211AbhFJSNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 14:13:55 -0400
Received: by mail-ot1-f43.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so562541oth.8
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 11:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/Z0ty/mR6mYLBOug47A4Z8fGnYIgj+PliPGyR3KY+r8=;
        b=H2vGFcdB/ygkXlFl4hIzkVHNLFThJ7Kv185sqy9ZL6cVGT0lmVOFZ2MdissMaxHTYA
         CUZEGvIgVGc8Z+dZC41H0xp8Agp3Wafgd+BnHA5UgbtBmaguuQrVOTU5prgXVKkZSb47
         ZT0MVdEYPKk7XVHxCMlbEpfnSBqR/5SeyyP264gB1AN1PaWqgmTN6JxGLPfrqGL927wV
         7Gq1iwy7hGlVPbdhMAP9+KtxWtEVTSbmU5SScgDbr4attBZzGsqMBW076KHb6RyYJxzC
         8+hgrz7ILW1vPQe5oMN+rs87h1y+5+v9xqwmExKX7S/OasVWF9bEwuIsa7h3ExWsREQL
         lvlA==
X-Gm-Message-State: AOAM533MBZ8V8l4xVkxL1Z/ROeclk56KwV0taB6Y41azRcz2JoCOGl0f
        10Ln+x5rbEP+vG24bQJfVA==
X-Google-Smtp-Source: ABdhPJzTMWaFnPIn6O6bVtyKqfFiCIM9FGrsKf1TFyLFmYDWc51t+5Ia4JuHRkODaiWYV4umYzXYCQ==
X-Received: by 2002:a9d:2f62:: with SMTP id h89mr3408357otb.225.1623348718950;
        Thu, 10 Jun 2021 11:11:58 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.99.113])
        by smtp.gmail.com with ESMTPSA id j14sm236368otn.18.2021.06.10.11.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 11:11:58 -0700 (PDT)
Received: (nullmailer pid 2407438 invoked by uid 1000);
        Thu, 10 Jun 2021 18:11:55 -0000
Date:   Thu, 10 Jun 2021 12:11:55 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, ch@denx.de
Subject: Re: [PATCH V2 1/2] dt-bindings: display: bridge: lvds-codec:
 Document LVDS data mapping select
Message-ID: <20210610181155.GA2407404@robh.at.kernel.org>
References: <20210602203731.419310-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210602203731.419310-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021 22:37:30 +0200, Marek Vasut wrote:
> Decoder input LVDS format is a property of the decoder chip or even
> its strapping. Add DT property data-mapping the same way lvds-panel
> does, to define the LVDS data mapping.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: - Use allOf
>     - Move the data-mapping to endpoint
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 53 ++++++++++++++-----
>  1 file changed, 41 insertions(+), 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
