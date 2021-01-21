Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 214B42FE423
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 08:40:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727383AbhAUHiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 02:38:55 -0500
Received: from segapp03.wistron.com ([103.200.3.20]:62677 "EHLO
        segapp03.wistron.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726524AbhAUHiv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 02:38:51 -0500
X-Greylist: delayed 378 seconds by postgrey-1.27 at vger.kernel.org; Thu, 21 Jan 2021 02:38:50 EST
Received: from EXCHAPP03.whq.wistron (unverified [10.37.38.26]) by 
    TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id 
    <Te431fb7fcec0a816721aa0@TWNHUMSW4.wistron.com>; Thu, 21 Jan 2021 
    15:31:49 +0800
Received: from EXCHAPP03.whq.wistron (10.37.38.26) by EXCHAPP03.whq.wistron 
    (10.37.38.26) with Microsoft SMTP Server 
    (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 
    15.1.1913.5; Thu, 21 Jan 2021 15:31:48 +0800
Received: from gitserver.wistron.com (10.37.38.233) by EXCHAPP03.whq.wistron 
    (10.37.38.26) with Microsoft SMTP Server id 15.1.1913.5 via Frontend 
    Transport; Thu, 21 Jan 2021 15:31:48 +0800
From:   Ben Pai <Ben_Pai@wistron.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
CC:     <claire_ku@wistron.com>, Ben Pai <Ben_Pai@wistron.com>
Subject: [PATCH v1] ARM: dts: aspeed: Add Mowgli rtc driver
Date:   Thu, 21 Jan 2021 15:31:46 +0800
Message-ID: <20210121073146.28217-1-Ben_Pai@wistron.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-TM-SNTS-SMTP:     33431E5E8F89510968F99CC5EE2665AB0CD5DBCA1446DBBFDC9A097D43E4BC3B2000:8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mowgli rtc driver.

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-mowgli.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mowgli.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mowgli.dts
index b648e468e9db..8503152faaf0 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-mowgli.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-mowgli.dts
@@ -582,6 +582,11 @@
 	/* TMP275A */
 	/* TMP275A */
 
+	rtc@32 {
+		compatible = "epson,rx8900";
+		reg = <0x32>;
+	};
+
 	tmp275@48 {
 		compatible = "ti,tmp275";
 		reg = <0x48>;
-- 
2.17.1


---------------------------------------------------------------------------------------------------------------------------------------------------------------
This email contains confidential or legally privileged information and is for the sole use of its intended recipient. 
Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
---------------------------------------------------------------------------------------------------------------------------------------------------------------
