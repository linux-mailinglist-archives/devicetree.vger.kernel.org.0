Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CDB63EE4AE
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 05:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233438AbhHQDAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 23:00:36 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:41507 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233722AbhHQDAd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 23:00:33 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 17H2eVL4035573;
        Tue, 17 Aug 2021 10:40:31 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from ChiaWeiWang-PC.aspeed.com (192.168.2.66) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 17 Aug
 2021 10:58:38 +0800
From:   Chia-Wei Wang <chiawei_wang@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <cyrilbur@gmail.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
        <openbmc@lists.ozlabs.org>
Subject: [PATCH v2 0/2] aspeed: Add LPC mailbox support
Date:   Tue, 17 Aug 2021 10:58:46 +0800
Message-ID: <20210817025848.19914-1-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.2.66]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 17H2eVL4035573
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver support for the LPC mailbox controller of ASPEED SoCs.

v2:
 - Fix error handling for copy_to_user
 - Fix incorrect type in the .poll initializer

Chia-Wei Wang (2):
  soc: aspeed: Add LPC mailbox support
  ARM: dts: aspeed: Add mailbox to device tree

 arch/arm/boot/dts/aspeed-g4.dtsi     |   7 +
 arch/arm/boot/dts/aspeed-g5.dtsi     |   8 +-
 arch/arm/boot/dts/aspeed-g6.dtsi     |   7 +
 drivers/soc/aspeed/Kconfig           |  10 +
 drivers/soc/aspeed/Makefile          |   9 +-
 drivers/soc/aspeed/aspeed-lpc-mbox.c | 418 +++++++++++++++++++++++++++
 6 files changed, 454 insertions(+), 5 deletions(-)
 create mode 100644 drivers/soc/aspeed/aspeed-lpc-mbox.c

-- 
2.17.1

