Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E5761F9FA
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 17:35:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbiKGQfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 11:35:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232276AbiKGQfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 11:35:48 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4FEBC10E6
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 08:35:43 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 7C64280A8;
        Mon,  7 Nov 2022 16:25:58 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Georgi Vlaev <g-vlaev@ti.com>, Keerthy <j-keerthy@ti.com>
Subject: [PATCH v2 0/4] Collected pending TI dmtimer dts changes
Date:   Mon,  7 Nov 2022 18:35:29 +0200
Message-Id: <20221107163533.48777-1-tony@atomide.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Here are the pending TI dmtimer dts changes posted earlier. The related
driver and binding changes are now in the mainline Linux. There has been
no changes to these patches, I just updated them against current Linux
next and added the tags from Georgi.

Regards,

Tony

Changes since v1:

- Rebase to apply, use base commit fdb02688f22b ("arm64: dts: ti: k3-am65:
  Enable McASP nodes at the board level") as requested by Nishanth

Tony Lindgren (4):
  arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
  arm64: dts: ti: k3-am65: Add general purpose timers for am65
  arm64: dts: ti: k3-am62: Add general purpose timers for am62
  arm64: dts: ti: k3-am625-sk: Use pwm-led instead of gpio-led

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi |  97 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi  |  45 +++++++
 arch/arm64/boot/dts/ti/k3-am625-sk.dts   |  17 ++-
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 162 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  63 +++++++++
 5 files changed, 379 insertions(+), 5 deletions(-)

-- 
2.38.1
