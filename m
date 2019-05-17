Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 320FE2156C
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 10:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727631AbfEQIhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 04:37:47 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:52783 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727530AbfEQIhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 04:37:47 -0400
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hRYN4-000810-P9; Fri, 17 May 2019 10:37:42 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hRYN2-0006zg-OI; Fri, 17 May 2019 10:37:40 +0200
Date:   Fri, 17 May 2019 10:37:40 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Sascha Hauer <kernel@pengutronix.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: add vendor prefix for Evervision
 Electronics
Message-ID: <20190517083740.vykcm7kphvsnmzv7@pengutronix.de>
References: <20190416100645.21689-1-m.felsch@pengutronix.de>
 <20190416100645.21689-2-m.felsch@pengutronix.de>
 <20190423122612.GN23448@ulmo>
 <CAL_JsqK5jKza61=KOmHCU9SjSsZf-jkstwDZYBr4V-JOa0iSsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqK5jKza61=KOmHCU9SjSsZf-jkstwDZYBr4V-JOa0iSsw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:37:10 up 118 days, 13:19, 90 users,  load average: 0.10, 0.05,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19-05-16 21:38, Rob Herring wrote:
> On Tue, Apr 23, 2019 at 7:26 AM Thierry Reding <thierry.reding@gmail.com> wrote:
> >
> > On Tue, Apr 16, 2019 at 12:06:43PM +0200, Marco Felsch wrote:
> > > Evervision Electronics is a panel manufacturer from Taipei.
> > > http://www.evervisionlcd.com/index.php?lang=en
> > >
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
> > >  1 file changed, 1 insertion(+)
> >
> > Applied, thanks.
> 
> I've converted this file to json-schema as of v5.2-rc1. See commit
> 8122de54602e. Applied, but doesn't seem to be in linux-next?
> 
> Rob

I tought this patch was already applied?

Regards,
  Marco

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
