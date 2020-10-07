Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B764286318
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 18:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729008AbgJGQDl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 12:03:41 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:46329 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729015AbgJGQDl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 12:03:41 -0400
Received: by mail-ot1-f65.google.com with SMTP id m11so2647232otk.13
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 09:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+uNSeizGcMO7Ee5Wm/T6nY+XKp+ooy1QRpr9WDpeJbY=;
        b=ir8++b68EmyT0iErabji4KGOQDFHxWFTT2xobiP2LznoNPNdmiadYAjVT+6yVqbdEX
         0FOrsGvcS9Z364e0p9G5Wh+LbIlKLM7ZUSKkScXgw5qP/gYxub4fkoPpN/+NDR0Wr1fM
         4lHT+zn6Wo+7AeEAX0NpG5tN5PRbkXFoCutKhq5Z1ULsan3yt+b6EzZqz8P07EIQdnwS
         YorbIxJ7sn00U/nIfCuix3UVmVvm6WrkJ07BzqFZ9tHdL1OljdTvbTPbJBzaZmA8poZm
         uXVOzPUrkp0w63ltC+51UskoOZgOhnym4Bqi8NIw6+J3D3BXasKulT3nj82+1hC8p2i9
         yLYw==
X-Gm-Message-State: AOAM533IlIy2+gxLPAxS6hGhPksvfW2I+Wc0y+QFJPh9cRFTOcfE4Vj+
        4h7ozRHSb8IzF8xTtcSLow==
X-Google-Smtp-Source: ABdhPJw/5GryXG7VqIPVylRV4dslWYWz/IEnv2+DafmBdeBYRU9P1WROTz2hQvp6x9hZgpcHFYjAgA==
X-Received: by 2002:a05:6830:14d7:: with SMTP id t23mr2336553otq.204.1602086620287;
        Wed, 07 Oct 2020 09:03:40 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z25sm2631510ood.21.2020.10.07.09.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 09:03:39 -0700 (PDT)
Received: (nullmailer pid 302110 invoked by uid 1000);
        Wed, 07 Oct 2020 16:03:38 -0000
Date:   Wed, 7 Oct 2020 11:03:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Marek Vasut <marex@denx.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/7] dt-bindings: display: mxsfb: Add a bus-width
 endpoint property
Message-ID: <20201007160338.GA302057@bogus>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Oct 2020 04:24:34 +0300, Laurent Pinchart wrote:
> When the PCB routes the display data signals in an unconventional way,
> the output bus width may differ from the bus width of the connected
> panel or encoder. For instance, when a 18-bit RGB panel has its R[5:0],
> G[5:0] and B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10]
> and LCD_DATA[23:18], the output bus width is 24 instead of 18 when the
> signals are routed to LCD_DATA[5:0], LCD_DATA[11:6] and LCD_DATA[17:12].
> 
> Add a bus-width property to describe this data routing.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
> 
> - Fix property name in binding
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml       | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
