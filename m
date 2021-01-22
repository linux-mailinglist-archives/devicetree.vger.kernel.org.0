Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57A9C300194
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 12:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728401AbhAVL3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 06:29:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728312AbhAVL1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 06:27:42 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33DF7C06178B
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 03:27:01 -0800 (PST)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1l2uae-0000Wu-In; Fri, 22 Jan 2021 12:26:56 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1l2uae-0007d6-0w; Fri, 22 Jan 2021 12:26:56 +0100
From:   Oleksij Rempel <o.rempel@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        William Breathitt Gray <vilhelm.gray@gmail.com>
Cc:     Oleksij Rempel <o.rempel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>,
        Robin van der Gracht <robin@protonic.nl>,
        linux-iio@vger.kernel.org
Subject: [PATCH v2 0/2] add support for GPIO based counter 
Date:   Fri, 22 Jan 2021 12:24:32 +0100
Message-Id: <20210122112434.27886-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

changes v3:
- convert counter to atomic_t

changes v2:
- add commas
- avoid possible unhandled interrupts in the enable path
- do not use of_ specific gpio functions

Add support for GPIO based pulse counter. For now it can only count
pulses. With counter char device support, we will be able to attach
timestamps and measure actual pulse frequency.

Never the less, it is better to mainline this driver now (before chardev
patches go mainline), to provide developers additional use case for the counter
framework with chardev support.

Oleksij Rempel (2):
  dt-bindings: counter: add gpio-pulse-counter binding
  counter: add GPIO based pulse counters

 .../bindings/counter/gpio-pulse-counter.yaml  |  39 +++
 drivers/counter/Kconfig                       |   9 +
 drivers/counter/Makefile                      |   1 +
 drivers/counter/gpio-pulse-cnt.c              | 244 ++++++++++++++++++
 4 files changed, 293 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/counter/gpio-pulse-counter.yaml
 create mode 100644 drivers/counter/gpio-pulse-cnt.c

-- 
2.30.0

