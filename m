Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A75614FF06
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 04:05:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726489AbfFXCFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 22:05:36 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:40567 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726853AbfFXCFg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jun 2019 22:05:36 -0400
Received: by mail-oi1-f196.google.com with SMTP id w196so8578004oie.7
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2019 19:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ceS3b4OHLGN2y+ADGLcxDQc+vCOn9IPrXQG5cYdwc8k=;
        b=cTi1YZBmlmFkWg6W92XNtHbwKXb0cnNniIIhJ7iQX5EPU5Hq+hk2p9I8FGWPOrOud7
         xxRkWYWLSaeI947qtGbAuoWBTcYIHv+3xNFVsHeRkRwxeZ3ArIYIwlKwC2HEdS2kDCzd
         8z3LwyUPBR8bNAG8+jpbPaavyHNIaaZQl00IE8hgNEW6UGNT5g4E2BbabU7EoB+Jh12P
         v9IN2qrQf3v4rTTXH5Ise8dLVT8/pWAdif/8ZIpea1yK/7DH2P7ExLnhW22sImv9jGzP
         0pOaLuxFICsFGhIhxIwRCnplMhD2LMyyQtcB9Ua+zgrKvgomc6rvDIRg4MHQ0LsK/Z35
         FW2Q==
X-Gm-Message-State: APjAAAXIx4z6QKYhyRL/htX3wBwf7zNGm+G5RKSyXDseR7o4gW+phu+c
        hX25ejXj9mNBsOStQYZrritvRorkYNc=
X-Google-Smtp-Source: APXvYqzZ55+uOj6KyfmKoEeXquv0Oh5LBoN4V8hk1gNozIV6d8KkD80erc7Q6t5wnuKi8MC9BGBgqQ==
X-Received: by 2002:a1f:9ed1:: with SMTP id h200mr10614513vke.16.1561338738547;
        Sun, 23 Jun 2019 18:12:18 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id j127sm2897508vkg.52.2019.06.23.18.12.17
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 23 Jun 2019 18:12:18 -0700 (PDT)
From:   Shawn Guo <shawnguo@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] arm64: dts: imx8qxp: sort LSIO subsystem devices
Date:   Mon, 24 Jun 2019 09:12:03 +0800
Message-Id: <20190624011203.10711-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190624011203.10711-1-shawnguo@kernel.org>
References: <20190624011203.10711-1-shawnguo@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We prefer to sort device nodes under simple bus in order of unit
address.  Let's sort the devices under lsio_subsys properly.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 106 ++++++++++-----------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 33bf0a53db9e..2ce7030c5c4f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -403,59 +403,6 @@
 		#size-cells = <1>;
 		ranges = <0x5d000000 0x0 0x5d000000 0x1000000>;
 
-		lsio_lpcg: clock-controller@5d400000 {
-			compatible = "fsl,imx8qxp-lpcg-lsio";
-			reg = <0x5d400000 0x400000>;
-			#clock-cells = <1>;
-		};
-
-		lsio_mu0: mailbox@5d1b0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1b0000 0x10000>;
-			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu1: mailbox@5d1c0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1c0000 0x10000>;
-			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-		};
-
-		lsio_mu2: mailbox@5d1d0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1d0000 0x10000>;
-			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu3: mailbox@5d1e0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1e0000 0x10000>;
-			interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu4: mailbox@5d1f0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d1f0000 0x10000>;
-			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			status = "disabled";
-		};
-
-		lsio_mu13: mailbox@5d280000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
-			reg = <0x5d280000 0x10000>;
-			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
-			#mbox-cells = <2>;
-			power-domains = <&pd IMX_SC_R_MU_13A>;
-		};
-
 		lsio_gpio0: gpio@5d080000 {
 			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
 			reg = <0x5d080000 0x10000>;
@@ -543,5 +490,58 @@
 			#interrupt-cells = <2>;
 			power-domains = <&pd IMX_SC_R_GPIO_7>;
 		};
+
+		lsio_mu0: mailbox@5d1b0000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1b0000 0x10000>;
+			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu1: mailbox@5d1c0000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1c0000 0x10000>;
+			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+		};
+
+		lsio_mu2: mailbox@5d1d0000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1d0000 0x10000>;
+			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu3: mailbox@5d1e0000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1e0000 0x10000>;
+			interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu4: mailbox@5d1f0000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d1f0000 0x10000>;
+			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			status = "disabled";
+		};
+
+		lsio_mu13: mailbox@5d280000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d280000 0x10000>;
+			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			power-domains = <&pd IMX_SC_R_MU_13A>;
+		};
+
+		lsio_lpcg: clock-controller@5d400000 {
+			compatible = "fsl,imx8qxp-lpcg-lsio";
+			reg = <0x5d400000 0x400000>;
+			#clock-cells = <1>;
+		};
 	};
 };
-- 
2.18.0

