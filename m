Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0DF11B93A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 17:53:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730058AbfLKQxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Dec 2019 11:53:34 -0500
Received: from muru.com ([72.249.23.125]:45622 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730612AbfLKQxe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Dec 2019 11:53:34 -0500
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 4B58380FA;
        Wed, 11 Dec 2019 16:54:13 +0000 (UTC)
Date:   Wed, 11 Dec 2019 08:53:31 -0800
From:   Tony Lindgren <tony@atomide.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomi Valkeinen <tomi.valkeinen@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jyri Sarha <jsarha@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 2/3] ARM: dts: am437x-gp/epos-evm: drop unused panel
 timings
Message-ID: <20191211165331.GC43123@atomide.com>
References: <20191114093950.4101-1-tomi.valkeinen@ti.com>
 <20191114093950.4101-3-tomi.valkeinen@ti.com>
 <20191202130459.GH4929@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202130459.GH4929@pendragon.ideasonboard.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Laurent Pinchart <laurent.pinchart@ideasonboard.com> [191202 13:05]:
> Hi Tomi,
> 
> Thank you for the patch.
> 
> On Thu, Nov 14, 2019 at 11:39:49AM +0200, Tomi Valkeinen wrote:
> > panel-simple now handled panel osd070t1718-19ts, and we no longer need
> > the panel timings in the DT file. So remove them.
> 
> Should you in that case drop the panel-dpi compatible string too, as the
> panel-dpi bindings require panel timings in DT ?

Yeah sounds like if panel-dpi is no longer usable for this device it
should be dropped from the compatible list.

Regards,

Tony
