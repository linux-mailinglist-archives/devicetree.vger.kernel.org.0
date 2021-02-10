Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C40FC31614A
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 09:46:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbhBJInR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 03:43:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbhBJIjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 03:39:53 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65396C0613D6
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 00:39:12 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1l9l1f-0002CI-DR; Wed, 10 Feb 2021 09:39:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1l9l1d-0006A9-A0; Wed, 10 Feb 2021 09:39:05 +0100
Date:   Wed, 10 Feb 2021 09:39:05 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-usb@vger.kernel.org, Minas Harutyunyan <hminas@synopsys.com>,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] dt-bindings: usb: dwc2: Add support for additional
 clock
Message-ID: <20210210083905.GN19583@pengutronix.de>
References: <20210125093825.4292-1-s.hauer@pengutronix.de>
 <20210125093825.4292-2-s.hauer@pengutronix.de>
 <20210209164659.GA3909217@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209164659.GA3909217@robh.at.kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:09:36 up 69 days, 20:36, 91 users,  load average: 0.11, 0.38,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 09, 2021 at 10:46:59AM -0600, Rob Herring wrote:
> On Mon, Jan 25, 2021 at 10:38:24AM +0100, Sascha Hauer wrote:
> > This adds support for an additional clock for the dwc2 core in case
> > there is another clock to the phy which must be enabled.
> 
> to the phy? 'clocks' is inputs to DWC2. Shouldn't there be a phy 
> device/driver?

Maybe I should have said "from the phy". I have a USB3320 ULPI phy here
connected to the DWC2. The usual setup would look like this:

-----.    clk60M   .------------
DWC2 |<------------| USB3320 Phy
-----'             '------------

I don't think this clock is abstracted anywhere in this case, it's just
there and always enabled.

For reasons unknown to me our customer decided to not let the USB3320
generate the clock, but used an external clock generator instead, so
my setup looks like this:

        | SI5351a |
        '---------'
  clk60M_1 |  | clk60M_2
-----.     |  |    .------------
DWC2 |<----'  '--->| USB3320 Phy
-----'             '------------

The SI5351a is abstracted as a clock driver in Linux. Note that clk60M_1
and clk60M_2 are really two clocks which must both be enabled. clk60M_2
is handled by the phy driver (which is the usb-nop-xceiver in my case),
what I am trying to add here in this patch is support for clk60M_1.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
