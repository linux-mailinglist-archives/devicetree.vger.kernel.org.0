Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABDFE11B935
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 17:51:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729512AbfLKQv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Dec 2019 11:51:56 -0500
Received: from muru.com ([72.249.23.125]:45606 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727118AbfLKQv4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Dec 2019 11:51:56 -0500
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 63C4480FA;
        Wed, 11 Dec 2019 16:52:34 +0000 (UTC)
Date:   Wed, 11 Dec 2019 08:51:52 -0800
From:   Tony Lindgren <tony@atomide.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jyri Sarha <jsarha@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 1/3] ARM: dts: am437x-gp/epos-evm: fix panel compatible
Message-ID: <20191211165152.GB43123@atomide.com>
References: <20191114093950.4101-1-tomi.valkeinen@ti.com>
 <20191114093950.4101-2-tomi.valkeinen@ti.com>
 <20191202130129.GG4929@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202130129.GG4929@pendragon.ideasonboard.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Laurent Pinchart <laurent.pinchart@ideasonboard.com> [191202 13:02]:
> Hi Tomi,
> 
> Thank you for the patch.
> 
> On Thu, Nov 14, 2019 at 11:39:48AM +0200, Tomi Valkeinen wrote:
> > The LCD panel on AM4 GP EVMs and ePOS boards seems to be
> > osd070t1718-19ts. The current dts files say osd057T0559-34ts. Possibly
> > the panel has changed since the early EVMs, or there has been a mistake
> > with the panel type.
> > 
> > Update the DT files accordingly.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> 
> Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applying this one into fixes thanks.

Regards,

Tony
