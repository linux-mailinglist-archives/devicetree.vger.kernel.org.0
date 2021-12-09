Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5DC546E867
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 13:24:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhLIM1g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 07:27:36 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:36011 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229501AbhLIM1f (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 Dec 2021 07:27:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639052642; x=1670588642;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MAK4o+PK3ziY28c7nROFdQy4/tjx0fQJIR78lzQYWjY=;
  b=MgLTPsSDiyxM+LYS4kHF0bXzSB9l1gyEOqWoPDETso/uYHZtlj6Cqrl2
   shZ/ylHDP+tf29/qy9rLBPzKgYiUb2gAZjeGkw+/oZriapGWgkFXO6xvK
   lWXsB1atkmb7QU6mwheAlms1Z3zNEgp+beCkcI+AOv1x+f7bdJcR+0y+4
   +PwfN8RtAQRMGP6dLTMVto0bTkXbdJO10uGbMwoqwVeaMYiJTQl5DnUVK
   GgVnQ70id0rnbUa5PKuRh7R2czrHAF/lnSU9cutj+8vwpgZJt59o09S1Q
   9KHkAwG3PGYkpGxEOqe+24EhV11fcczSw6LNCZ4Z6sE4GzeJQ9XzE6Sd0
   w==;
X-IronPort-AV: E=Sophos;i="5.88,192,1635199200"; 
   d="scan'208";a="20954244"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Dec 2021 13:24:01 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 09 Dec 2021 13:24:01 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 09 Dec 2021 13:24:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639052641; x=1670588641;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MAK4o+PK3ziY28c7nROFdQy4/tjx0fQJIR78lzQYWjY=;
  b=RKyd6IAZImR6Z50zX3A9Wj+DJgOEJQAyGW2CMUNCKFTTNLwKJTYfZyxF
   qxPVm2kFTMDX6tMlddDI2x3QtyQwHRuQvScYfvSryx/un4JWAeyaKeCx4
   XSoc3q39FjZVdV1bWlTFsyW53a0B8XcFiIfgC4ePCP0OzigRfYs3oNcHs
   UUoSaDHB57rUBU7AlHMpbZZkSedxKlIIguX5B9HGWWbmprWFP6jl7OP2m
   1+euglSA9wXL0EJosyMst93GVj5G9HTx5rsVNQRCwD0g+zpgt8rrYwBS2
   FOYFlqxGAfOIBcPU/AjOHGDJdOSYVU2mCu467XruTZLT8ZAKBh08vwaf6
   g==;
X-IronPort-AV: E=Sophos;i="5.88,192,1635199200"; 
   d="scan'208";a="20954243"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Dec 2021 13:24:01 +0100
Received: from steina-w (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E5B5F280065;
        Thu,  9 Dec 2021 13:24:00 +0100 (CET)
Message-ID: <802891a3e0ddf2ce833a269df7c43f12614988b7.camel@ew.tq-group.com>
Subject: Re: (EXT) Re: [PATCH v4 1/4] dt-bindings: display: bridge:
 sn65dsi83: Make enable GPIO optional
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Date:   Thu, 09 Dec 2021 13:23:58 +0100
In-Reply-To: <CAMty3ZA7d9bSvmG4nGd9Lncw9wm6wiAq1pKSOFX03h_BU7JR-A@mail.gmail.com>
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
         <20211118091955.3009900-2-alexander.stein@ew.tq-group.com>
         <CAMty3ZA7d9bSvmG4nGd9Lncw9wm6wiAq1pKSOFX03h_BU7JR-A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, dem 09.12.2021 um 12:37 +0530 schrieb Jagan Teki:
> On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein
> <
> alexander.stein@ew.tq-group.com
> > wrote:
> > From: Laurent Pinchart <
> > laurent.pinchart@ideasonboard.com
> > >
> > 
> > The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled
> > by
> > means not available to the kernel. Make the GPIO optional.
> 
> Sorry, I couldn't understand what it means. Does it mean VCC enabled
> designs no need to enable GPIO? I've a design that do support both EN
> and VCC.

The patches 1 & 2 are only about the "enable" gpio for the bridge, it's
unrelated to the VCC regulator introduced in patch 3 & 4.
Maybe the commit message should say:
> The SN65DSI8x EN signal may be hard-wired to VCC, or otherwise
controlled[...]
But I copied the message from bbda1704fc15 ("drm/bridge: ti-sn65dsi86:
Make enable GPIO optional").

This is for use-cases where there is no GPIO the kernel can use, to
control the EN pad of the bridge. Thus make this gpio optional in
bindings and driver.

HTH
Alexander

