Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C513E381BDB
	for <lists+devicetree@lfdr.de>; Sun, 16 May 2021 02:47:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbhEPAsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 May 2021 20:48:23 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:34748 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbhEPAsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 May 2021 20:48:23 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F7122BA;
        Sun, 16 May 2021 02:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1621126028;
        bh=y22OiUo17yK6rBbpTsXssLO5LCnk1ST6vy0PnB1LKD8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZeSMu0OvIK8jxZGzpZ+rjT13jkw7jrqm4QC6pnK6ujtG487lPmWIwQqbjxf2J7YRk
         TV6esioPA6BQJs5GvfXvv6xx8n4//tSJsJYcvjikWlR9X/GWA5Ytey/KvAuORnzA7x
         68zSgjUywgSOJ+0nhJKBjr7Qbcr3OWhvMONnEJXc=
Date:   Sun, 16 May 2021 03:46:58 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix spacing
Message-ID: <YKBrgk/jJ3pLgkNj@pendragon.ideasonboard.com>
References: <20210515203932.366799-1-marex@denx.de>
 <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
 <b2d1119e-f875-6775-3813-7d342d66c465@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b2d1119e-f875-6775-3813-7d342d66c465@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Sun, May 16, 2021 at 01:49:11AM +0200, Marek Vasut wrote:
> On 5/15/21 11:48 PM, Laurent Pinchart wrote:
> > Hi Marek,
> 
> Hi,
> 
> > Thank you for the patch.
> > 
> > On Sat, May 15, 2021 at 10:39:32PM +0200, Marek Vasut wrote:
> >> Add missing spaces to make the diagrams readable, no functional change.
> > 
> > Looks better indeed. The patch view looks bad though, because of the
> > tabs. Maybe you could replace them with spaces, while at it ?
> 
> It is all spaces, where do you see tabs ?

Right after "Slot", "Clock" and "DATA[0123]". You're not touching those
lines, but having tabs there messes up the formatting of the patch
itself (the resulting bindings file looks good).

By the way, the subject line doesn't match the patch, you're modifying
panel/lvds.yaml, not bridge/lvds-codec.yaml.

-- 
Regards,

Laurent Pinchart
