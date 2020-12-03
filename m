Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46D4D2CE099
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 22:25:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728210AbgLCVZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 16:25:13 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:46988 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727213AbgLCVZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 16:25:13 -0500
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 01527804D9;
        Thu,  3 Dec 2020 22:24:23 +0100 (CET)
Date:   Thu, 3 Dec 2020 22:24:22 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>, Sekhar Nori <nsekhar@ti.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Nikhil Devshatwar <nikhil.nd@ti.com>
Subject: Re: [PATCH v4 0/2] drm: add DisplayPort connector
Message-ID: <20201203212422.GA81406@ravnborg.org>
References: <20201130112919.241054-1-tomi.valkeinen@ti.com>
 <0110944b-f531-1a2c-2263-e5cba86730e4@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0110944b-f531-1a2c-2263-e5cba86730e4@ti.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=Itgwjo3g c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=RvfnRF042-DQDJFLRnMA:9 a=CjuIK1q_8ugA:10
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tomi,
On Thu, Dec 03, 2020 at 01:52:21PM +0200, Tomi Valkeinen wrote:
> Hi DRM Bridge maintainers,
> 
> On 30/11/2020 13:29, Tomi Valkeinen wrote:
> > Hi,
> > 
> > This series adds the DT bindings and a driver for DisplayPort connector.
> > 
> > Minor changes since v3:
> > - Added Laurent's reviewed-bys
> > - Added $ref to graph schema
> > - Use 'ret' instead of 'r'
> > - Add the missing period
> > 
> >  Tomi
> > 
> > Tomi Valkeinen (2):
> >   dt-bindings: dp-connector: add binding for DisplayPort connector
> >   drm/bridge: display-connector: add DP support
> > 
> >  .../display/connector/dp-connector.yaml       | 56 +++++++++++++++++++
> >  drivers/gpu/drm/bridge/display-connector.c    | 46 ++++++++++++++-
> >  2 files changed, 100 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml
> > 
> 
> Is it ok for me to push this to drm-misc-next, or does one of the bridge maintainers want to handle
> that?

IMO apply them to drm-misc-next.
But I am not bridge maintainer so...

	Sam
