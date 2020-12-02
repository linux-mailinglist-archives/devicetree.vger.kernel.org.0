Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 218112CBCA3
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726562AbgLBMOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:14:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726066AbgLBMOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:14:31 -0500
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D8EDC061A4F
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:30 -0800 (PST)
Received: by mail-pj1-x1044.google.com with SMTP id iq13so907451pjb.3
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vMdoYjXNU8PWUqXISE9HkaafAaHPtR6gMqxyZjBfAqg=;
        b=hXrWSrS878VRdNXMN0GIuaAEWCQGGHVFxTdBf09X1pXrBg6w3Pc5yY+SMiF1/E1/zn
         UJvrZYRrjKZaVDSEae7LprO9pX47kiggm9zazI0My83HqR3+Vg/4XOwY365RqLjkkJL0
         1KqNFbmdKDbsdipBSHrYzI+Iq8jXD3zpLIFXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vMdoYjXNU8PWUqXISE9HkaafAaHPtR6gMqxyZjBfAqg=;
        b=EZ9trV2Vo+OGeGNYnCK0d+2tkjTFJvu/a4otila20coJvex6i3HvE9CGjn+aHeCsMM
         8fBfBwtLreVeTJds6M1qlJScciP0GUN4dUCR/G1YvJZkg9RAO+cIJEjrtdrHia81Xk1f
         dhAeCpOpEXpsXHyRKTgNVx1Z0MW92QNIx4JZWu7uUoLMR3/j19SKKcu6OoUcv3urngD1
         0PV+JbDU+zhHGXl3uMv7BsFhJG7l37ZtNe2VoB70Qrg2rQjgzrwEPBucp1s8yQq7KsJl
         6Gw9MN0bD8rN8DcOr4GKxT2XVp7NwWWcz6w5eteCENw2cg3t8yrNQuB4AdU1yrsgA9c9
         Iz4w==
X-Gm-Message-State: AOAM5307U2lIKgdTyJkTsobDDvWIuMPAhbBeOOGwUySsWOAPuYLX61Bg
        yTrrEwhXLkEiCH/DHgr7Vb/CTA==
X-Google-Smtp-Source: ABdhPJw/VM/Q2UOlfA7bR0lI1Zkcxvve19zEpMcJbH4RKxpDB2LYQf+VkiHRm2QU7qMO/xoBPrR4VQ==
X-Received: by 2002:a17:90a:cb84:: with SMTP id a4mr2218862pju.50.1606911210191;
        Wed, 02 Dec 2020 04:13:30 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:29 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 06/10] arm64: dts: imx: Add Engicam C.TOUCH 2.0
Date:   Wed,  2 Dec 2020 17:42:37 +0530
Message-Id: <20201202121241.109952-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose
carrier board with capacitive touch interface.

Genaral features:
- TFT 10.1" industrial, 1280x800 LVDS display
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN
- LVDS panel connector

SOM's like i.Core MX8M Mini needs to mount on top of this Carrier
board for creating complete i.Core MX8M Mini C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi
new file mode 100644
index 000000000000..294df07289a2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "imx8mm-engicam-common.dtsi"
-- 
2.25.1

