Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D374B21BD78
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 21:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727083AbgGJTRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 15:17:12 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:52084 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726942AbgGJTRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 15:17:12 -0400
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 365C28051F;
        Fri, 10 Jul 2020 21:17:09 +0200 (CEST)
Date:   Fri, 10 Jul 2020 21:17:07 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Cc:     Chris Zhong <zyw@rock-chips.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3 0/3] dt-bindings: display: convert panel bindings to
 DT Schema
Message-ID: <20200710191707.GA675682@ravnborg.org>
References: <20200704102806.735713-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200704102806.735713-1-sam@ravnborg.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=aP3eV41m c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8
        a=KES7fKIIVwMXKWEOJbMA:9 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
        a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 04, 2020 at 12:28:03PM +0200, Sam Ravnborg wrote:
> This patch-set convert 3 of the remaining panel bindings to yaml.
> 
> This is a follow-up on v2 that converted a lot of panel bindings:
> https://lore.kernel.org/dri-devel/20200408195109.32692-1-sam@ravnborg.org/
> All was applied except for the reaming three patches included here.
> 
> One binding is a DSI binding so just added to panel-simple-dsi.
> The other two bindings addressed review feedback from Rob.
> 
> Sebastian Reichel has a pending patch to address the remaining
> panel binding in display/panel/
> 
> All bindings pass dt-binding-check.
> Based on top of drm-misc-next.
> 
> 	Sam
> 
> 
> Sam Ravnborg (3):
>       dt-bindings: display: convert innolux,p079zca to DT Schema
>       dt-bindings: display: convert samsung,s6e8aa0 to DT Schema
>       dt-bindings: display: convert sharp,lq101r1sx01 to DT Schema

All applied to drm-misc-next.

	Sam

> 
>  .../bindings/display/panel/innolux,p079zca.txt     |  22 -----
>  .../bindings/display/panel/panel-simple-dsi.yaml   |   2 +
>  .../bindings/display/panel/samsung,s6e8aa0.txt     |  56 ------------
>  .../bindings/display/panel/samsung,s6e8aa0.yaml    | 100 +++++++++++++++++++++
>  .../bindings/display/panel/sharp,lq101r1sx01.txt   |  49 ----------
>  .../bindings/display/panel/sharp,lq101r1sx01.yaml  |  87 ++++++++++++++++++
>  6 files changed, 189 insertions(+), 127 deletions(-)
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
