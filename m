Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97B7C12CFD3
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2019 13:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727441AbfL3MAq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Dec 2019 07:00:46 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:35937 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727376AbfL3MAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Dec 2019 07:00:46 -0500
Received: by mail-pj1-f67.google.com with SMTP id n59so8030958pjb.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2019 04:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jyGtSwgFvChJP9qUZS2htQwi6EMpdKF3tyPpfkjOp/g=;
        b=kRfxtsSQsCzNL6Ua0j2ypLxHJstPdl236RB2VNQVC5gW+22hcGhM+5D7MZFjSa1SEI
         1dDUfqZXoBHdUi0Jan/MPE1Ngh3iDojG+N0qlf/8vYy2/R1gWj/wL2cUaBvfm1sIbiVc
         r66m1tnlizpFIEZyZajhiQxzf1uNufYWMgR9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jyGtSwgFvChJP9qUZS2htQwi6EMpdKF3tyPpfkjOp/g=;
        b=l9vWrcKh2lYSJjVBt+/8cZ4NTNmZeo68wKhZvh7Pe723m86/Yg3UsHNbkS77fjzrLn
         4Cwv+agwznIOQaV1nok/M4N44if0DXMLjFKvqp2Q5w5/mFX8dSv1fY4Pll/CyQl2k3re
         XWb/fAe1t0Lxcc7TSvQlVVEPVDCyPoOmU0wUtXAkUY0pMKSXICVslvsrirPTAqqqOIxS
         G3Cn2WmBO9KDYiaG8B2gye5wRlzWwdjjWwF7FcVfc88cQeucnZyN0oKvzA7AXl8jhxSx
         nRw013hiyLZbD93JtlqoB+uVwJm5ebTSSh79Eb0wcxEhY5g4lj9Bui2wcL7fWC2r7yhT
         asag==
X-Gm-Message-State: APjAAAWUDz5MqhWQNI8+cirTNnD4H9LHa/gBfRy1E3zBRkRjNWtrM6Ig
        NdeYsxj/wbG1Q2scdufvObV04Q==
X-Google-Smtp-Source: APXvYqyRLv5fCREtyDwQJMehOfppISQaH6t1nBy3584eULSwQjPKdOuLZiBf4pLQnKYlRI2BVoOmDA==
X-Received: by 2002:a17:90a:930f:: with SMTP id p15mr46096254pjo.2.1577707245545;
        Mon, 30 Dec 2019 04:00:45 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
        by smtp.gmail.com with ESMTPSA id 7sm41894122pfx.52.2019.12.30.04.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2019 04:00:45 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jacopo Mondi <jacopo@jmondi.org>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 2/3] ARM: dts: imx6qdl-icore-1.5: Remove duplicate phy reset methods
Date:   Mon, 30 Dec 2019 17:30:20 +0530
Message-Id: <20191230120021.32630-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230120021.32630-1-jagan@amarulasolutions.com>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Trimarchi <michael@amarulasolutions.com>

Engicam i.CoreM6 1.5 Quad/Dual MIPI dtsi is reusing fec node
from Engicam i.CoreM6 dtsi but have sampe copy of phy-reset-gpio
and phy-mode properties.

So, drop this phy reset methods from imx6qdl-icore-1.5 dsti file.

Cc: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch.

 arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
index d91d46b5898f..0fd7f2e24d9c 100644
--- a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
@@ -25,10 +25,8 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET_REF>;
-	phy-mode = "rmii";
 	status = "okay";
 };
-- 
2.18.0.321.gffc6fa0e3

