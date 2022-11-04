Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2B4661924F
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 09:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbiKDIBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 04:01:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiKDIBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 04:01:31 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BB59C633A
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 01:01:30 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 37D0580FE;
        Fri,  4 Nov 2022 07:51:52 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Georgi Vlaev <g-vlaev@ti.com>, Keerthy <j-keerthy@ti.com>
Subject: [PATCH 0/4] Collected pending TI dmtimer dts changes
Date:   Fri,  4 Nov 2022 10:01:18 +0200
Message-Id: <20221104080122.49220-1-tony@atomide.com>
X-Mailer: git-send-email 2.37.3
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
2.37.3
