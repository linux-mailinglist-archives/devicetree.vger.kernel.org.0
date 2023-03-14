Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7B1F6B8FC5
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 11:25:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjCNKZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 06:25:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230415AbjCNKYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 06:24:55 -0400
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [IPv6:2001:1600:4:17::42ac])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 987A29BA74
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 03:24:26 -0700 (PDT)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PbV4k20q0zMqJDK;
        Tue, 14 Mar 2023 11:24:22 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PbV4j5Fnyz2N3w;
        Tue, 14 Mar 2023 11:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678789462;
        bh=/4dEeuZhDRUKDZi+e+g1n/LToFNUcSMkMAOslGOl27A=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tecOmwpnp9TCHHmOFjHKW9i/SKulOV4lp8XhwiXo+ckYJSLNY6p+wbiLT/La5JICY
         HIWmZQHy19+myoEeSTC1rrSy6idXxWC3GzdMC2CatWHVzHdjgU7Uj1o7OGTww4nn31
         dzEzpbcozolYTo06V2hqnSLMy1vFd14EyBQhegc8=
From:   Philippe Schenker <dev@pschenker.ch>
To:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/23] arm64: dts: colibri-imx8x: Update spdx license
Date:   Tue, 14 Mar 2023 11:23:48 +0100
Message-Id: <20230314102410.424773-3-dev@pschenker.ch>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314102410.424773-1-dev@pschenker.ch>
References: <20230314102410.424773-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Philippe Schenker <philippe.schenker@toradex.com>

GPL-2.0+ is deprecated, update it to GPL-2.0-or-later.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

(no changes since v1)

 arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi  | 2 +-
 arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dts b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dts
index 413a9e9d6c28..fe4597a6f7e0 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dts
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
  * Copyright 2019 Toradex
  */
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
index 1ffc42f4a4b3..0f1aa31dd3e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-colibri.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
  * Copyright 2019 Toradex
  */
diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
index 7c334b93db3b..dc0339b35a3c 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri-eval-v3.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
  * Copyright 2019 Toradex
  */
diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
index cb22bde19ea0..12056b77d22e 100644
--- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
  * Copyright 2019 Toradex
  */
-- 
2.39.2

