Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4B315432C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2020 12:33:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727456AbgBFLdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Feb 2020 06:33:41 -0500
Received: from Galois.linutronix.de ([193.142.43.55]:37583 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727390AbgBFLdl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Feb 2020 06:33:41 -0500
Received: from [5.158.153.53] (helo=adam.lab.linutronix.de)
        by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
        (Exim 4.80)
        (envelope-from <bage@linutronix.de>)
        id 1izfPe-0001yw-MJ; Thu, 06 Feb 2020 12:33:38 +0100
From:   bage@linutronix.de
To:     devicetree@vger.kernel.org
Cc:     Bastian Germann <bage@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 0/5] dts: Add Linutronix Testbox
Date:   Thu,  6 Feb 2020 12:33:22 +0100
Message-Id: <20200206113328.7296-1-bage@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bastian Germann <bage@linutronix.de>

The Testbox board is an open hardware enhancement for the Lamobo R1 router
board.  The Testbox board is used in the CI-RT project to manage devices
under test (https://ci-rt.linutronix.de).

This series adds the device tree for that board and the nececessary
bindings.

Bastian Germann (5):
  dt-bindings: Add vendor prefix lx for Linutronix
  dt-bindings: arm: sunxi: Add Linutronix Testbox
  ARM: dts: sun7i: lamobo-r1: Use SPDX identifier
  ARM: dts: sun7i: lamobo-r1: Split out commons
  ARM: dts: sun7i: Add Linutronix Testbox v2 board

 .../devicetree/bindings/arm/sunxi.yaml        |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/sun7i-a20-lamobo-r1-common.dtsi  | 271 ++++++++++++++++
 arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts     | 303 +-----------------
 arch/arm/boot/dts/sun7i-a20-lx-testbox-v2.dts |  65 ++++
 6 files changed, 347 insertions(+), 301 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun7i-a20-lamobo-r1-common.dtsi
 create mode 100644 arch/arm/boot/dts/sun7i-a20-lx-testbox-v2.dts

-- 
2.20.1

