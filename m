Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 376F52C9508
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 03:11:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726780AbgLACKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 21:10:32 -0500
Received: from mail-il1-f193.google.com ([209.85.166.193]:40385 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726754AbgLACKc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 21:10:32 -0500
Received: by mail-il1-f193.google.com with SMTP id g1so162757ilk.7
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 18:10:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MpPE/ZHbmmVqufzPxdpfXKuHGuOl5hc4CwSkh/vGOFM=;
        b=qWSh7OpjjP0TpKDW4+o58/zdsceheQ7/UroeCn1nk3z46wjjwPw5GFC2pxSxMBty2V
         K0rjgxrg/OSmO9hdNs/FJfDk7pTnLoCqT0Qk1D4U3P+SQ5wmwvzIIixhPCyykvgOyIYm
         fhVnfKzvmOqUf2YrNuLPodKHF7DlCL3psIBDEg1M/7kftgu4MSgvBclRbL0Rj+ZbEmQN
         NUIOlunVpKS7NAsms26rXPVd6jETYZ+DFppxGx2IQSG88y8gHTMy6oaeqjzf8GgMnlnG
         EtG1yEe8tb8LsHcYgl4/jwYB3Lqnloob5Jz6J0vG8k2EIzj27deheXU7zIBAUBc4Dez0
         873Q==
X-Gm-Message-State: AOAM531AFqDntfqOtcg0SDyn6KhId44D/dLym1RrOBZTHI8uPh8Ob/9z
        rumZRARgeo/4Vyuq8n0v8A==
X-Google-Smtp-Source: ABdhPJx5kwfHCZMlpRm78VIoPM3QiXYGKFaDNwWxZdXKOdAesao/jzAi9FBP6y1XMGvldwVapjqAnw==
X-Received: by 2002:a92:c5c6:: with SMTP id s6mr591317ilt.185.1606788591283;
        Mon, 30 Nov 2020 18:09:51 -0800 (PST)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id h6sm49063iob.35.2020.11.30.18.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 18:09:50 -0800 (PST)
Received: (nullmailer pid 3495971 invoked by uid 1000);
        Tue, 01 Dec 2020 02:09:49 -0000
Date:   Mon, 30 Nov 2020 19:09:49 -0700
From:   Rob Herring <robh@kernel.org>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Nikhil Devshatwar <nikhil.nd@ti.com>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: dp-connector: add binding for
 DisplayPort connector
Message-ID: <20201201020949.GA3495918@robh.at.kernel.org>
References: <20201130112919.241054-1-tomi.valkeinen@ti.com>
 <20201130112919.241054-2-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201130112919.241054-2-tomi.valkeinen@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 Nov 2020 13:29:18 +0200, Tomi Valkeinen wrote:
> Add binding for DisplayPort connector. A few notes:
> 
> * Similar to hdmi-connector, it has hpd-gpios as an optional property,
>   as the HPD could also be handled by, e.g., the DP bridge.
> 
> * dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
>   is not strictly required: standard DP cables do not even have the pin
>   connected.
> 
> * Connector type. Full size and mini connectors are identical except for
>   the connector size and form, so I believe there is no functional need
>   for this property. But similar to 'label' property, it might be used
>   to present information about the connector to the userspace.
> 
> * No eDP. There's really no "eDP connector", as it's always a custom
>   made connection between the DP and the DP panel, although the eDP spec
>   does offer a few suggested pin setups. So possibly there is no need for
>   edp-connector binding, but even if there is, I don't want to guess what
>   it could look like, and could it be part of the dp-connector binding.
> 
> * No DP++. I'm not familiar with DP++. DP++ might need an i2c bus added
>   to the bindings.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../display/connector/dp-connector.yaml       | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
