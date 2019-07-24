Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC0C73397
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 18:22:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728734AbfGXQWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 12:22:38 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:43990 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726004AbfGXQWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 12:22:37 -0400
Received: by mail-io1-f68.google.com with SMTP id k20so90806743ios.10
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 09:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0pFUYCuG7AoXvxAAMye043kB0Ck5a/z3KzBcHr/NvUI=;
        b=db2D8G60zRmrWAunOU9yBhEhZDRENM2xd4ih0NDcOVDh8Q8lQbh8v/WZiSPmWRaA0f
         jlDY+tUwPGNuafrEAOmxYqrMSzKRX/AjNJyhUOWlSbTfHZmXv9dvP/OV32gHYXPhOrIo
         E5SRRZCSX+GhSaN+z+jPBUQnKKPN4p8KJ5SMpCvoirxEnHKDUAH9qgvDSy/UJ1ATYAnW
         jHx3UcBr0BbbxsqxIi017XKhKDga09bGPYeDlVZh0dXqsjJrUCekwxJGWjd4y49EETsJ
         aYvCGwm7T809vGUPrpBpSe/NjZwrUZpFeF/80woouJkSCZsAElwOGWxg046CxezcliGf
         u4eg==
X-Gm-Message-State: APjAAAVy0OesiSXREJHNv7KMd9LaFlOIXTZPRhiXpl0wa0K1S7/R1YGM
        v/6SffGUarQo++/rW1kM3w==
X-Google-Smtp-Source: APXvYqxwttEmughqFzxmK+5nmTZGEmzj0HE0CnKpoXP05dWh040CIEpFh3TcsYaHOy3fY/ZRZ6rexA==
X-Received: by 2002:a02:1607:: with SMTP id a7mr83847006jaa.123.1563985356884;
        Wed, 24 Jul 2019 09:22:36 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id y20sm35919391iol.34.2019.07.24.09.22.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:22:36 -0700 (PDT)
Date:   Wed, 24 Jul 2019 10:22:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 16/60] dt-bindings: Add vendor prefix for LG Display
Message-ID: <20190724162235.GA7651@bogus>
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-13-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190707181937.6250-13-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun,  7 Jul 2019 21:18:53 +0300, Laurent Pinchart wrote:
> LG Display is an LCD display manufacturer. Originally formed as a joint
> venture by LG Electronics and Philips Electronics, it was formerly known
> as LG.Philips LCD, hence the DT vendor prefix lgphilips (which is
> already in active use in the kernel).
> 
> More information is available at
> https://en.wikipedia.org/wiki/LG_Display.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
