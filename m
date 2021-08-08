Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA933E3AA3
	for <lists+devicetree@lfdr.de>; Sun,  8 Aug 2021 15:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhHHNuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Aug 2021 09:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbhHHNuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Aug 2021 09:50:16 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5944C061760
        for <devicetree@vger.kernel.org>; Sun,  8 Aug 2021 06:49:56 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id w13-20020a17090aea0db029017897a5f7bcso1847833pjy.5
        for <devicetree@vger.kernel.org>; Sun, 08 Aug 2021 06:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0Vlv4O+CiiGfTw/zofpUFed/v1n2oDY9+Y7Uzfj16wM=;
        b=KYiVC2VHaB71+mhgVAfQCeIDzoIcjQDknjKITc4iiH5+k9Gm88kp8ZtojDjeBlGOUj
         mQKOcFpLEOiU7ietPDo9fXihVtjcUzZSHmosSIc5fzV5dPpx9FMLwlzxusrkT3dwZBLw
         dY5OuHrGxD9YfHbtq73Ps9FcS/XDFG5CRGWJxvkPiBrNn5iCe5Z0DFoSMBkPdLWwvrnD
         FtCkZ0jhnZxQHR2IX0hM8Ph4Qf9EuSWKb30dBa1YIThdKyfzWlhVL8MCxNpiewEqYW8a
         5F+aQomnJnbAweXPkas5lUL5vrDJmuOvrQ2kP40TofmnSXRxzoEvYuUko3QJmHmtNXr9
         rc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0Vlv4O+CiiGfTw/zofpUFed/v1n2oDY9+Y7Uzfj16wM=;
        b=tu9/EDHIdCeg1ojGU2HdRIOGS+c/mqxTp0Lo+2+y0zI3xVoNb6YWubsWG8fYBkyfFv
         7hRlLG90/WooMLOMgdYFcjlxT+S904BXMI7ZbwXmLPvX+JHl+32WZsGkRv+BiPxIVzKk
         vVwB2uavgJnbTLwKQ2I2BRjOAa8fzGsPApq1BBw2gUvTYc4KHKGUP82rjSNzq+Vxpeve
         mYH5OMVmyO2YD1o9B9pBhgrbJMRvsHT0ZtHTpKvzNchNYF8+3e1tfiaEcq8VmMn8b8yu
         MW/dox+Ncm02+G7T3plY5IwbjWwn3cgEYEwbDSa3nobMxDwOBSxVWBMugy/62wCQxYyw
         99lw==
X-Gm-Message-State: AOAM533u1SSuuViuxfZf0U5MpR1Ne2Y8BMyYdocVRT+twv1Qmvel1N3b
        M1fOYM9AE2+z5ZJVN6ojmOmZVg==
X-Google-Smtp-Source: ABdhPJzgiNdBxlMSy7McgB8x2BvYMF00cwvkEtpi2GPLT1TEg8DH/SM0TQ9ph+jndb0I53Nrmn3pYg==
X-Received: by 2002:a63:5119:: with SMTP id f25mr190692pgb.271.1628430596514;
        Sun, 08 Aug 2021 06:49:56 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id r10sm16554406pff.7.2021.08.08.06.49.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Aug 2021 06:49:56 -0700 (PDT)
Date:   Sun, 8 Aug 2021 21:49:51 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/panel: Add Truly NT35521 panel driver
Message-ID: <20210808134950.GC6795@dragon>
References: <20210804081352.30595-1-shawn.guo@linaro.org>
 <20210804081352.30595-3-shawn.guo@linaro.org>
 <YQq/LOWEgTIk9zIT@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YQq/LOWEgTIk9zIT@ravnborg.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

On Wed, Aug 04, 2021 at 06:24:12PM +0200, Sam Ravnborg wrote:
> Hi Shawn,
> 
> see a few comments in the following.

Thanks for the review comments!  All of them will be addressed in v2.

Shawn

> On Wed, Aug 04, 2021 at 04:13:52PM +0800, Shawn Guo wrote:
> > It adds a drm driver for Truly NT35521 5.24" 1280x720 DSI panel, which
> > can be found on Sony Xperia M4 Aqua phone.  The panel backlight is
> > managed through DSI link.
> > 
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  drivers/gpu/drm/panel/Kconfig               |   9 +
> >  drivers/gpu/drm/panel/Makefile              |   1 +
> >  drivers/gpu/drm/panel/panel-truly-nt35521.c | 491 ++++++++++++++++++++
> >  3 files changed, 501 insertions(+)
> >  create mode 100644 drivers/gpu/drm/panel/panel-truly-nt35521.c
