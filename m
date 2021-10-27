Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC7F543C00C
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 04:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238088AbhJ0CjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 22:39:13 -0400
Received: from mail-oo1-f43.google.com ([209.85.161.43]:40580 "EHLO
        mail-oo1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbhJ0CjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 22:39:13 -0400
Received: by mail-oo1-f43.google.com with SMTP id m37-20020a4a9528000000b002b83955f771so425087ooi.7
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 19:36:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jI9z9a1gDysnVm3oa9WFdAKEz+g7d4hn8d4bMm8IgT8=;
        b=j1Z5tHvxYrqFd6EHKb3V+g/5+WeefAu4qvJG/f2qU63aBYhHSnsAvL+7FWyCkcdle1
         1/LdiCiDjJMp9q/+yf6skmBLjd/D0k7BzNT8g1nR24eeqVKLbsb21XbfcIX9WV1hIE9f
         wA7aYIurbJiCZKy8HwvwLCIBJH9VlxesMCyMD0Vzr4uUJn+Jg5l0acf5cs7zi4/GxruZ
         MHLq/N4vtHNSNKBhAtulXw4rnrKWR6ODcEVz27abfCbmDEl2t9d//gWvG2Ok0e96MA3v
         FCsXxW8QNXi25ZSF29wxkbNPuvrnS/3bGKP4RJMK5aeV4o5VkzPpWD/PkoCnX+SdVq3o
         JiQw==
X-Gm-Message-State: AOAM531ogWM3vtHw8CeCtVvn3aqSsI4X6aoEr6d+t7wRz/K8QWZo+xWX
        XfbRqNJCtVvPNWUJfLa2BQ==
X-Google-Smtp-Source: ABdhPJy/MDV6eFHTxXR0hY+EMzdIR6w+iYtsfOeayvZfm4Dp+XFmunqyQqGJXgfAvMoMD2PGe5W0HA==
X-Received: by 2002:a4a:9204:: with SMTP id f4mr20226603ooh.87.1635302208282;
        Tue, 26 Oct 2021 19:36:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s206sm5237354oia.33.2021.10.26.19.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 19:36:47 -0700 (PDT)
Received: (nullmailer pid 3845431 invoked by uid 1000);
        Wed, 27 Oct 2021 02:36:47 -0000
Date:   Tue, 26 Oct 2021 21:36:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jonas Karlman <jonas@kwiboo.se>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andrzej Hajda <a.hajda@samsung.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: display: bridge: sn65dsi83: Make
 enable GPIO optional
Message-ID: <YXi7P1+mxj1zTDKW@robh.at.kernel.org>
References: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
 <20211019065239.969988-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211019065239.969988-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Oct 2021 08:52:36 +0200, Alexander Stein wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled by
> means not available to the kernel. Make the GPIO optional.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml         | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
