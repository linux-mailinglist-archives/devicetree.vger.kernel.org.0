Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEC7D2B2E4F
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:05:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726917AbgKNQEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:04:14 -0500
Received: from mail.kernel.org ([198.145.29.99]:52664 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726356AbgKNQEO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:04:14 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9152020665;
        Sat, 14 Nov 2020 16:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605369854;
        bh=AP7qjXnPw1RQ/dp788kF4IVmTYc5MGnxeYF6PshSdcg=;
        h=From:To:Cc:Subject:Date:From;
        b=2F5e6Bq3BBmPhzi8EJ76rdiwboMFeLlYqe34Ah/d54x2cdMEmiAOHIkNlccC/Ub7u
         XfaEdVd+6itgmjLdQtTszPoLP1q13G9gj3BpI7cf2WANPvrvzdAxO7NYNNa9VHRT24
         b/Ab2hOHv3eJsZSeqJSRvXiNDOJuDGa+wCfau2hI=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt 0/6] Turris Omnia device-tree changes
Date:   Sat, 14 Nov 2020 17:04:03 +0100
Message-Id: <20201114160409.19670-1-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Gregory,

these are some changes for Turris Omnia device tree.
This series applies onto your mvebu-dt branch.

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
  ARM: dts: turris-omnia: describe ethernet-phy interrupt
  ARM: dts: turris-omnia: add SFP node
  ARM: dts: turris-omnia: add LED controller node
  ARM: dts: turris-omnia: update ethernet-phy node and handle name

 arch/arm/boot/dts/armada-385-turris-omnia.dts | 156 +++++++++++++++++-
 1 file changed, 151 insertions(+), 5 deletions(-)

-- 
2.26.2

