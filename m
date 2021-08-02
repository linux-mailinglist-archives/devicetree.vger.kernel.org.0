Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71C3E3DE110
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 22:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231339AbhHBUyE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 16:54:04 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:33360 "EHLO
        mail-io1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231231AbhHBUyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 16:54:03 -0400
Received: by mail-io1-f47.google.com with SMTP id n19so21966952ioz.0
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 13:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CMmbkJn1hqKrrKfWcOMgT+dzBp8rg8s8rjX9yupZqck=;
        b=P4Krms2+wLBCMwUzWtvSKxok/6Iai65iuriDAsQRvVjphBbWisq6Tof741nj9z7p3k
         9q6K6jTnvARlus3HB/5qTKacPb8upJAukXphd7dDCYzXrrKRs7wTBNCXL1EjmWymqPGD
         2Iuyt4ARyReZpjPgJYzZlH/Ih2Gde6nSBNXhpOAnJ+0TMXTISHgLXM7dM7XwKgNnImwf
         YyCJc4bKjuEhQDqZBDLS2vVq+jGaWAmiA8FDkWMhXzGBu7UZHQCYCZUTRualhgVamZWj
         XEpvJxu1UV2XEzp2WVvIH+x+oAyRWth/F0yBuDvdTgzv/0B+LA+9iR4Qqln6uQthkP8M
         knFA==
X-Gm-Message-State: AOAM532KfT3w86GNb8IfTqPxDNEfOnMYXqFqb1X0SvQj2+ef3Vos31J5
        8CyOKC/9ZCSkdm4H5NqUBw==
X-Google-Smtp-Source: ABdhPJz6AI1jSrvVWmHeW1RFE01hM2uoqCxwrHYU5Cud/yUlAuMXyxMxVo5/EcUnQIPvWHBC4MNpgw==
X-Received: by 2002:a5d:93d1:: with SMTP id j17mr2310903ioo.123.1627937632798;
        Mon, 02 Aug 2021 13:53:52 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id g26sm7778228ioh.48.2021.08.02.13.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 13:53:52 -0700 (PDT)
Received: (nullmailer pid 1591239 invoked by uid 1000);
        Mon, 02 Aug 2021 20:53:50 -0000
Date:   Mon, 2 Aug 2021 14:53:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH V4 1/2] dt-bindings: display: bridge: lvds-codec:
 Document LVDS data mapping select
Message-ID: <YQhbXvNoR1J9NCAE@robh.at.kernel.org>
References: <20210727161357.8842-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210727161357.8842-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Jul 2021 18:13:56 +0200, Marek Vasut wrote:
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
> V3: - Rebase on V2 submitted a while ago, reinstate changelog
>     - Drop the allOf and un-rebase on previous pclk patch
> V4: - port@1, remove $ref: /schemas/graph.yaml#/properties/port and
>       add $ref: /schemas/graph.yaml#/$defs/port-base
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 33 ++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
