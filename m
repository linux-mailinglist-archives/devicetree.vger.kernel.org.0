Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D1D3FD1CE
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 05:35:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241764AbhIADbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 23:31:20 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:12928 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231660AbhIADbT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 23:31:19 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 1813BFCp043735;
        Wed, 1 Sep 2021 11:11:15 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from ChiaWeiWang-PC.aspeed.com (192.168.2.66) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 1 Sep
 2021 11:30:16 +0800
From:   Chia-Wei Wang <chiawei_wang@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <linux-aspeed@lists.ozlabs.org>, <openbmc@lists.ozlabs.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC:     <ryan_chen@aspeedtech.com>
Subject: [PATCH v4 2/4] MAINTAINER: Add ASPEED eSPI driver entry
Date:   Wed, 1 Sep 2021 11:30:13 +0800
Message-ID: <20210901033015.910-3-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210901033015.910-1-chiawei_wang@aspeedtech.com>
References: <20210901033015.910-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.2.66]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 1813BFCp043735
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Ryan Chen and myself as the maintainer of Aspeed eSPI
driver. Joel Stanley is added as the reviewer.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f3267183e993..35c3164277ac 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1720,6 +1720,15 @@ F:	drivers/crypto/axis
 F:	drivers/mmc/host/usdhi6rol0.c
 F:	drivers/pinctrl/pinctrl-artpec*
 
+ARM/ASPEED ESPI DRIVER
+M:	Chia-Wei Wang <chiawei_wang@aspeedtech.com>
+M:	Ryan Chen <ryan_chen@aspeedtech.com>
+R:	Joel Stanley <joel@jms.id.au>
+L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
+L:	openbmc@lists.ozlabs.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/soc/aspeed/espi.yaml
+
 ARM/ASPEED I2C DRIVER
 M:	Brendan Higgins <brendanhiggins@google.com>
 R:	Benjamin Herrenschmidt <benh@kernel.crashing.org>
-- 
2.17.1

