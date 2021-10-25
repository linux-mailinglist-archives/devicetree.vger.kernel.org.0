Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C72243A58B
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234627AbhJYVNH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:13:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:42388 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231618AbhJYVNG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:13:06 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F2E4760E05;
        Mon, 25 Oct 2021 21:10:43 +0000 (UTC)
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.lan)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mf7Ev-001WA3-QW; Mon, 25 Oct 2021 22:10:41 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com
Subject: [PATCH 0/5] arm64: apple: DT updates for M1 PCIe support
Date:   Mon, 25 Oct 2021 22:10:13 +0100
Message-Id: <20211025211018.744363-1-maz@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kettenis@openbsd.org, sven@svenpeter.dev, marcan@marcan.st, alyssa@rosenzweig.io, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that most of the PCIe dependencies are on their way to 5.16,
here are the last missing pieces in the form of DT updates.

Marc Zyngier (3):
  arm64: dts: apple: t8103: Add PCIe DARTs
  arm64: dts: apple: t8103: Add root port interrupt routing
  arm64: dts: apple: j274: Expose PCI node for the Ethernet MAC address

Mark Kettenis (2):
  arm64: apple: Add pinctrl nodes
  arm64: apple: Add PCIe node

 arch/arm64/boot/dts/apple/t8103-j274.dts |  23 +++
 arch/arm64/boot/dts/apple/t8103.dtsi     | 207 +++++++++++++++++++++++
 2 files changed, 230 insertions(+)

-- 
2.30.2

