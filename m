Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB09B2B2FBA
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726172AbgKNScW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:45830 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726140AbgKNScV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:21 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4D8B42224F;
        Sat, 14 Nov 2020 18:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378740;
        bh=wM0gCNfCLl7AS3QIUVMNCEP29NWBLaNMTnbwWHQdWa8=;
        h=From:To:Cc:Subject:Date:From;
        b=qJ1isvE3r3jGt/InWb+4W5jxUEaWK210nmOdL36OE6hrBbt+idb4wAR1ABQGmsfx4
         hipCaoOAU/uyU0zzaK507qR1s2+sx/E6Gp5g7psWZOEnfr37hN1ak6qpU3sHdPq8fd
         9Zw7C39RaBIZj+PGePwONhqTCk9hmqGa5NlriZ5g=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 0/6] Turris Omnia device-tree changes
Date:   Sat, 14 Nov 2020 19:32:11 +0100
Message-Id: <20201114183217.1352-1-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Gregory,

v2 of series with changes for Turris Omnia device tree.
It applies on mvebu-dt branch.

Changes from v1:
- added patch which adds description for switch interrupt
- removed patch adding ethernet-phy interrupt: the PHY interrupt is
  asserted by level low, but the GPIO expander driver supports only
  edge rising/falling, and even then it may not be correct when an
  interrupt storm occurs. So keep polling the PHY
- added Andrew's Reviewed-by tags

Marek

Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org

Marek Behún (6):
  ARM: dts: turris-omnia: enable HW buffer management
  ARM: dts: turris-omnia: add comphy handle to eth2
  ARM: dts: turris-omnia: describe switch interrupt
  ARM: dts: turris-omnia: add SFP node
  ARM: dts: turris-omnia: add LED controller node
  ARM: dts: turris-omnia: update ethernet-phy node and handle name

 arch/arm/boot/dts/armada-385-turris-omnia.dts | 162 +++++++++++++++++-
 1 file changed, 157 insertions(+), 5 deletions(-)

-- 
2.26.2

