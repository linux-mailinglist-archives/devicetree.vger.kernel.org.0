Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3590345A363
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 14:00:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235777AbhKWNDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 08:03:19 -0500
Received: from cpanel.siel.si ([46.19.9.99]:58310 "EHLO cpanel.siel.si"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232746AbhKWNDT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Nov 2021 08:03:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=KVRmAD9FlVOEDBVZnzgzFws+L1j5LpO7FvkCdPb2RUQ=; b=lefCebaxkJA9pKuqXIP9DTht2r
        dzmuN8CBGIpGOHbngSmhXJzRsjhVDxoSuIJjehKOOlpXvHp3np8RuOUCAnw46TpZWe84JbOn0fFAa
        tBR9ChKptzOiZiARBVkDJlq0Ubit+rBBR0oMGGPBAeGp1W1NN+csL3DUWkuB7/BOKKxPtI5gxwZmb
        2AjWdCMj2fCyXffYXDx9SOjOhthJVDR7g3NuuZOsJW05rjQnPBSKaB1NM197Uic6LkpTu8NKXW1Fl
        39GrlcaKfOvDgw40x9LktiTTvtFgrrsXx6XdaO7fApzattyQFjqxfrIAnLgMLxV/k8vQnuGDRi5NW
        hFveNI1A==;
Received: from [89.212.21.243] (port=52734 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1mpUl3-001MMS-I3; Tue, 23 Nov 2021 13:18:45 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, andrej.picej@norik.com,
        y.bas@phytec.com
Subject: [PATCH 1/2] ARM: dts: imx6: phyFLEX: add missing pmic mfd subdevices
Date:   Tue, 23 Nov 2021 13:18:32 +0100
Message-Id: <20211123121833.2439901-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

phyFLEX PMIC DA9063 has also RTC and watchdog support. Add both
mfd subdevices so they can be used.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
index f3236204cb5a..2ec154756bbc 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -205,6 +205,14 @@ vdd_mx6_high_reg: ldo11 {
 				regulator-always-on;
 			};
 		};
+
+		pmic_rtc: rtc {
+			compatible = "dlg,da9063-rtc";
+		};
+
+		da9063_wdog: wdt {
+			compatible = "dlg,da9063-watchdog";
+		};
 	};
 };
 
-- 
2.25.1

