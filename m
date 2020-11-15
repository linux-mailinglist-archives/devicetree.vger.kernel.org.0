Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93A112B351F
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 14:59:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726859AbgKON72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Nov 2020 08:59:28 -0500
Received: from mail.kernel.org ([198.145.29.99]:40440 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726743AbgKON72 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 15 Nov 2020 08:59:28 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 225BA22447;
        Sun, 15 Nov 2020 13:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605448767;
        bh=96Aa2lRAnIrarHDVlTvB/0GLBlMoh1fpfk69ELTB+/Y=;
        h=From:To:Cc:Subject:Date:From;
        b=IE2g2FFCDG15QhlauJ7GYKPIlTvOX5TG0aAfRTLpZ/vy+XY45iMVuT4cAALeulDm+
         dfD0Ymo09xWahlel1iSMQSfQSo2jfTkkUVnGSoOIfAGyKl6/e8ECSJINoyJBBamFpO
         /9pxVgz8mP3zvKupQ/j9UqCp5Dy5M052Ytdjcj94=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v3 0/7] Turris Omnia device-tree changes
Date:   Sun, 15 Nov 2020 14:59:16 +0100
Message-Id: <20201115135923.11523-1-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Gregory,

v3 of series with changes for Turris Omnia device tree.

Changes since v2 (mostly thanks to Andreas):
- fixed typo in 2/7
- updated comment in 4/7 (describing current SFP cage binding status)
- changed commit message in 4/7 a little bit
- changed LED_FUNCTION_DEBUG to LED_FUNCTION_INDICATOR in 5/7
- updated comment about LED controller in 5/7
- added 7/7 which removes 2 unneeded status = "okay"

Changes since v1:
- added patch which adds description for switch interrupt
- removed patch adding ethernet-phy interrupt: the PHY interrupt is
  asserted by level low, but the GPIO expander driver supports only
  edge rising/falling, and even then it may not be correct when an
  interrupt storm occurs. So keep polling the PHY
- added Andrew's Reviewed-by tags

Cc: linux-arm-kernel@lists.infradead.org
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org

Marek Behún (7):
  ARM: dts: turris-omnia: enable HW buffer management
  ARM: dts: turris-omnia: add comphy handle to eth2
  ARM: dts: turris-omnia: describe switch interrupt
  ARM: dts: turris-omnia: add SFP node
  ARM: dts: turris-omnia: add LED controller node
  ARM: dts: turris-omnia: update ethernet-phy node and handle name
  ARM: dts: turris-omnia: remove unneeded status = "okay" properties

 arch/arm/boot/dts/armada-385-turris-omnia.dts | 178 +++++++++++++++++-
 1 file changed, 170 insertions(+), 8 deletions(-)

-- 
2.26.2

