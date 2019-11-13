Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3521DFB192
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2019 14:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727497AbfKMNlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Nov 2019 08:41:08 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39792 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727463AbfKMNlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Nov 2019 08:41:08 -0500
Received: by mail-wr1-f66.google.com with SMTP id l7so2413420wrp.6
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2019 05:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=g2lD/Zhk10aEU/jv34FPJDsmkoPVsN84DE48zUMY4rY=;
        b=k2HbZ4e6sjvmBWQoY2Pe+72IYXI7kCB4Ng+pgaB+8dz45evIo4X+tazizhpNaJicuW
         wu9Loy/C6H1KAVbNc1dLto3ukDp2xzZX4B3EGV98R90cxh9kbeQMVoxzdxrHqW5d4v7t
         pqMpeN9O3+vMMei7IBZPhCnFIOBDaseMyS88qexO5BFiBCJv58I3m+pE2LDSgYdqpDhg
         cJUcdMaSPXyKUistFyhvPH3Q1KR4xLKlsILfHVpzZnHkuZdVkXfIekr94tn+MGJSQ+cx
         vYUgLWa+Jn3+nnVHgUFc9vMpzUBIQKkyO5D6ND2TSYAqY2k2QhpGCWin2gw++AmJBQon
         NiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=g2lD/Zhk10aEU/jv34FPJDsmkoPVsN84DE48zUMY4rY=;
        b=JuG3M5TYdLkzvYf2SKLs39iGpUhPm+d65x0f5Ug1A+3VwxrIyydZkdudA9Wl8l481c
         4kVHCW2l7qbwSyrxBSaBBvDrCYsDt4BDVC7HleTqcDvklmV3YASA9bIath5r+wmkOKfz
         6UcXVDYe+0E4wKdcjSgcdIaRDkYG5pNxfznabCz3eoapoDjzWAAudE9PhAp8rj3s9I1L
         4vkVQaB7W1xXyCmM14C1a2+heC2lggXXW7ryfcA0XsHs8l8dXbVb/IVDecDT67hH6W53
         KqOMSKroP+LHNexL67JcwavL2+cx+VWwaOBhtWZlTwkrfF/M9ptGqxjR+TEovf6fDRSY
         Xpsw==
X-Gm-Message-State: APjAAAWyhE5qsIz2pKDNsfD2AQyKa1ZaBI0dsFWkDhOPQLE7PkzOPW6Y
        QXEmT4DC1h65QfqoDfQTsq8=
X-Google-Smtp-Source: APXvYqycO5HiZc7MPLu7pM7pXGduRKfW/IStuxKimcQBGQLCOQcBh1dpMtENB6GL7jlCv07MW8MfXQ==
X-Received: by 2002:adf:e701:: with SMTP id c1mr2929025wrm.166.1573652466781;
        Wed, 13 Nov 2019 05:41:06 -0800 (PST)
Received: from mars.home (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
        by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Nov 2019 05:41:06 -0800 (PST)
From:   Christoph Fritz <chf.fritz@googlemail.com>
To:     Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Mark Brown <broonie@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Support Opensource <support.opensource@diasemi.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes explicitly
Date:   Wed, 13 Nov 2019 14:40:16 +0100
Message-Id: <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch sets initial buck regulator modes explicitly to a state this
hardware needs. So a wrong initial mode set by bootloader or pmic itself
does not interfere anymore.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 6486df3..644625d 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/dlg,da9063-regulator.h>
 
 / {
 	aliases {
@@ -109,6 +110,7 @@
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -116,6 +118,7 @@
 				regulator-name = "vdd_soc";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -123,6 +126,7 @@
 				regulator-name = "vdd_ddr3";
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1500000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -130,6 +134,7 @@
 				regulator-name = "vdd_eth";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
-- 
2.1.4

