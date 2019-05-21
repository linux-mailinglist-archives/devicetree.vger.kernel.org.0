Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B2848251E2
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728332AbfEUOZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:25:13 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:47213 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728331AbfEUOZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 10:25:13 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0D0A1FF815;
        Tue, 21 May 2019 14:25:06 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH resend 0/2] Marvell A7k/A8k thermal throttling
Date:   Tue, 21 May 2019 16:25:02 +0200
Message-Id: <20190521142504.31558-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series works on top of Gregory's series adding both CPUfreq (already
merged) and a suitable AP806 clock driver. These two patches can fly
as-is and do not depend on Gregory's work to apply and should probably
merged independently.

With his patches, all the pieces where available to enable thermal
throttling on the AP806 embedded in Marvell Armada 7k/8k SoCs. This is
just the glue to make it actually work.

Patch 1 changes the core numbering in the thermal-zone node to be in
sync with the CPU numbering in the DT (from 0 to 3 instead of from 1
to 4). Patch 2 adds trip points and cooling maps to actually enable
the feature.

Tested with an Armada 7k DB.

Thanks,
Miquèl

Miquel Raynal (2):
  arm64: dts: marvell: Change core numbering in AP806 thermal-node
  arm64: dts: marvell: Enable AP806 thermal throttling with CPUfreq

 .../boot/dts/marvell/armada-ap806-dual.dtsi   |   2 +
 .../boot/dts/marvell/armada-ap806-quad.dtsi   |   5 +
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 110 +++++++++++++++---
 3 files changed, 103 insertions(+), 14 deletions(-)

-- 
2.19.1

