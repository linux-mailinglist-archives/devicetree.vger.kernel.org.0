Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18139629E05
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:48:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiKOPsx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:48:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiKOPsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:48:52 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2D735127
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:48:52 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id A6EAD80E0;
        Tue, 15 Nov 2022 15:38:50 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Georgi Vlaev <g-vlaev@ti.com>, Keerthy <j-keerthy@ti.com>
Subject: [PATCH v3 0/3] Collected pending TI dmtimer dts changes
Date:   Tue, 15 Nov 2022 17:48:39 +0200
Message-Id: <20221115154842.7755-1-tony@atomide.com>
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

Changes since v2:

- Fix an extra empty line for am62

- Drop the pwm-led patch as pwm-omap-dmtimer needs to be converted to
  yaml first

Changes since v1:

- Rebase to apply, use base commit fdb02688f22b ("arm64: dts: ti: k3-am65:
  Enable McASP nodes at the board level") as requested by Nishanth

Tony Lindgren (3):
  arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
  arm64: dts: ti: k3-am65: Add general purpose timers for am65
  arm64: dts: ti: k3-am62: Add general purpose timers for am62

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi |  96 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi  |  45 +++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 162 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  63 +++++++++
 4 files changed, 366 insertions(+)

-- 
2.38.1
