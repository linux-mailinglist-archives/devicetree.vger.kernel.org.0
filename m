Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB521304AA
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:29:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726170AbgADV3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:29:45 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:39083 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726135AbgADV3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:29:45 -0500
Received: by mail-il1-f194.google.com with SMTP id x5so39381284ila.6
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:29:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O4H4SgxYFF1sZ0FF/6Ems4wMDN7ra7/R/gc5/aNjkHc=;
        b=ec9m/9EdoNcF/yu6mtmp+aFYEey/JnCzzI3eLA01lVLctj76j+hrg0L2EMzhLJ96lP
         jubuVCtLlTI7poWfm0SxET5u8wJmje2cG5YSjClxjcUJKYwCnMjkIj51aFktSGgOG+D5
         +K/g6eG/kXXpIQek6qP5fpPziFWQQ2qQddmX2Yh13KgJ2fu55uK/iHxe4loifTsEfncb
         eqQ9aVgURIuqmIIt1N3n5NdMvMoA3Bm/f3vAp90tXpdXtlkcqrZe3bgF39YNtNjBHlfU
         tKfS0PZHTB5bMcHfbfJjb6myOjVHB/JqK/NwPJPGtomMk+T+s2MyuMXv0YI/5JT3Ypfi
         bZQg==
X-Gm-Message-State: APjAAAXDtM3wVEm8xe9KhEDyQ13m3ByTjlpMnYJGQW6ixIO/gzNUkDK+
        oQ5fbcYpyHDK7OlNwbU0knapi2A=
X-Google-Smtp-Source: APXvYqzq97I8IXmOSFoLXu03v5q4rwNksEklOG+0u59bxd8O4/I9i8z/SvuYk7flfGsyvVATWLHo1w==
X-Received: by 2002:a92:1b59:: with SMTP id b86mr47152551ilb.84.1578173384371;
        Sat, 04 Jan 2020 13:29:44 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id u13sm16015300iof.2.2020.01.04.13.29.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:29:43 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219ec
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:29:42 -0700
Date:   Sat, 4 Jan 2020 14:29:42 -0700
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: display: rockchip-lvds: Document
 PX30 PHY
Message-ID: <20200104212942.GA18654@bogus>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191224143900.23567-3-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Dec 2019 15:38:51 +0100, Miquel Raynal wrote:
> PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
> and LVDS. In the case of the LVDS IP, document the possibility to fill
> a PHY handle.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
