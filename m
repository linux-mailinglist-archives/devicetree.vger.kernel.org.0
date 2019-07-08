Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3287E62A10
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 22:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404793AbfGHUBj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 16:01:39 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:34313 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731885AbfGHUBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 16:01:39 -0400
Received: by mail-pf1-f194.google.com with SMTP id b13so3509761pfo.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 13:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+rS3r5/o5WlglKViT05ZfPqB6A1XK/bfTpeSIbtHg0Q=;
        b=CVOcYgSEvh1Iyt/5ekj6VuLbZ/qdh9vrCDeeWY5d34h1vdMhsbs3BCYEHu95y6UvMM
         7Z70VYRicybfXnwBIUHXnFSffN53pGjH4NJdHVy3khRhRSkh/u4e774D/T/dn4OLilrg
         YeZsbuL8rp3AIbIebFwZJBZ9IiJXCa+vbIkNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+rS3r5/o5WlglKViT05ZfPqB6A1XK/bfTpeSIbtHg0Q=;
        b=Cfw+hGWuvVEhy1NrNP0Eqxpen7MJpskrQhsEZQE3+AQCy+YZNvXZzdTWHpSp/MgwUV
         5Ly6Iq+6dbogBVo1hIzWSEDuPN7QNDPbq2agyD7rVisYPRC+1AtCcV1fUGbyTpd8Vw4m
         hv9rx+d4zyVJiwDRIKIl6i+1R0MNgeZmValwq1ku4lbpvqoof15RScAYO1Az/NM+iWLW
         JPlGnbxiGZyE0ndJ6TdMJLjo0+Twg+PAphzN78kK/TkPjvD/RImhfvFKn/91+OLWgN1u
         lcyhiA6tmesZsIMYqCiE33TIIVVeTiQzONoqFTMAdi4kVV/7g7BZMfNYBJz+k3OpTSDq
         OzKQ==
X-Gm-Message-State: APjAAAUjsmisgkaf8A/Mn2QSz0Q4s5lxRn6sKQNls+1LQj7C/FXnD6LL
        63R2bCSALyXpYJXbxkKDJBeAKg==
X-Google-Smtp-Source: APXvYqxsXmL8H3YlaNJHrM80DDPyuqBUBVzPdrdzzDi2u7Tph0fpyS7VUV+Z2JjPq13R9E7qjd5tfA==
X-Received: by 2002:a63:b904:: with SMTP id z4mr25368975pge.388.1562616098656;
        Mon, 08 Jul 2019 13:01:38 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id l124sm24507761pgl.54.2019.07.08.13.01.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 13:01:38 -0700 (PDT)
Date:   Mon, 8 Jul 2019 13:01:36 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/7] dt-bindings: net: Add bindings for Realtek PHYs
Message-ID: <20190708200136.GM250418@google.com>
References: <20190708192459.187984-1-mka@chromium.org>
 <20190708192459.187984-2-mka@chromium.org>
 <20190708194615.GH9027@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190708194615.GH9027@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 08, 2019 at 09:46:15PM +0200, Andrew Lunn wrote:
> On Mon, Jul 08, 2019 at 12:24:53PM -0700, Matthias Kaehlcke wrote:
> > Add the 'realtek,eee-led-mode-disable' property to disable EEE
> > LED mode on Realtek PHYs that support it.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > TODO: adapt PHY core to deal with optional compatible strings
> 
> Yes. Does this even work at the moment? I would expect
> of_mdiobus_child_is_phy() to return false, indicating the device is
> not actually a PHY.

Indeed, it currently doesn't work atm. I found that removing the check
for dev->of_node in of_mdiobus_link_mdiodev() helps, but I imagine
doing (only) this might have undesired side-effects.
