Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2B3B43C011
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 04:37:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238130AbhJ0Cjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 22:39:43 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:45043 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbhJ0Cjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 22:39:42 -0400
Received: by mail-ot1-f48.google.com with SMTP id d21-20020a9d4f15000000b0054e677e0ac5so1536339otl.11
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 19:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=u92E0EpFtZ3++MIktilNtSGwwznQbIIm/fPoIeal4/4=;
        b=Fbwn70VbWOtIuAOLFy2lx5R5KQQxMAgtLfBs6h/OSpqag0g3Y6GV6qcsf5L/dcEdhO
         nxLmYs6saZejvFTGj7gCBQWPIqn7BsbLF5alo4AJEn8P5lncEaYBTDFKlL3Jgt42Ze54
         lIoUUg7qaQLw3U4n9/osmqQ1mkTPzXaLoQ2bm4Q8VEAwzHKYCnJomMRqcpRqE3zWnl8v
         gytBE+XxeclT/va4SccwsC3JjiySOtdcoqEIf5tfDnJFuS1wRuj8WYs78boqtXbcDMBy
         DX2sbjCrc3qGLaNP0YSFX8Vk47ES1cW7xmWqP78ZbArSarfuoVQIUJH6x3MJk1ulWbkV
         /Hrw==
X-Gm-Message-State: AOAM532uaXbmtXr5Xjlhlk9KN5Z0NyP7nR5Ed9Cg2hWmj8thF3QLSC1v
        ub1dmp8Mji7Rv1ZM2O8jJg==
X-Google-Smtp-Source: ABdhPJxlQCgNJcOdH6QHUyXjxReaOauicUSabSwGKhvr1usEJl3GquscqQh/iQLcY1OZKw5v4FmV+g==
X-Received: by 2002:a05:6830:101:: with SMTP id i1mr22304080otp.107.1635302237996;
        Tue, 26 Oct 2021 19:37:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bp21sm5787606oib.31.2021.10.26.19.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 19:37:17 -0700 (PDT)
Received: (nullmailer pid 3846294 invoked by uid 1000);
        Wed, 27 Oct 2021 02:37:16 -0000
Date:   Tue, 26 Oct 2021 21:37:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v3 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc
 supply bindings
Message-ID: <YXi7XKhYWe4f+SJW@robh.at.kernel.org>
References: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
 <20211019065239.969988-4-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211019065239.969988-4-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Oct 2021 08:52:38 +0200, Alexander Stein wrote:
> Add a VCC regulator which needs to be enabled before the EN pin is
> released.
> 
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
