Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41800557FAD
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232152AbiFWQXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:23:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232200AbiFWQXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:23:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 336623BF83
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:23:20 -0700 (PDT)
Received: from jupiter.universe (unknown [95.33.159.255])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id C6CAE66017DF;
        Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001398;
        bh=vN4kmY04mNzLCL12mBQfRLfsXojEK7HYIW1GyujY8kM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=LjjJ3BBhRSWk+DCNGq1XPan72wthJeiJRv/2nX8Lf4MjO4EsHRBIzyeuXBRkyE61X
         hAreAW2ux3llnlfgHOkaAY+a7yM315WIRzLoBwg08XpCEkhdltfUNcDUdJb7SkLsFj
         BbRLbXBQbt6Z/gYA6PHUKQUn160EGifMiC0OdjsBtuaCzdp41TZ/iU3Vc25BLTBM0w
         Kv8r+Y0Smufk+GXmLPs56L1BrJXFIQBxK1v6dMGXSSIqBcfS/TiarlGfJBgjWOC3hO
         kQek1IfDyt4U7ryUcp3pJ1gV82j28lfpDRjcdVzEzZccXefrwT/ll3lfdUQljmjgmz
         pU3lKGX5ziB9w==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 7078B480126; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Date:   Thu, 23 Jun 2022 18:23:05 +0200
Message-Id: <20220623162309.243766-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162309.243766-1-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

According to a description from TRM, add all the power domains.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
new file mode 100644
index 000000000000..69f7e9060250
--- /dev/null
+++ b/include/dt-bindings/power/rk3588-power.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3588_POWER_H__
+#define __DT_BINDINGS_POWER_RK3588_POWER_H__
+
+/* VD_LITDSU */
+#define RK3588_PD_CPU_0		0
+#define RK3588_PD_CPU_1		1
+#define RK3588_PD_CPU_2		2
+#define RK3588_PD_CPU_3		3
+
+/* VD_BIGCORE0 */
+#define RK3588_PD_CPU_4		4
+#define RK3588_PD_CPU_5		5
+
+/* VD_BIGCORE1 */
+#define RK3588_PD_CPU_6		6
+#define RK3588_PD_CPU_7		7
+
+/* VD_NPU */
+#define RK3588_PD_NPU		8
+#define RK3588_PD_NPUTOP	9
+#define RK3588_PD_NPU1		10
+#define RK3588_PD_NPU2		11
+
+/* VD_GPU */
+#define RK3588_PD_GPU		12
+
+/* VD_VCODEC */
+#define RK3588_PD_VCODEC	13
+#define RK3588_PD_RKVDEC0	14
+#define RK3588_PD_RKVDEC1	15
+#define RK3588_PD_VENC0		16
+#define RK3588_PD_VENC1		17
+
+/* VD_DD01 */
+#define RK3588_PD_DDR01		18
+
+/* VD_DD23 */
+#define RK3588_PD_DDR23		19
+
+/* VD_LOGIC */
+#define RK3588_PD_CENTER	20
+#define RK3588_PD_VDPU		21
+#define RK3588_PD_RGA30		22
+#define RK3588_PD_AV1		23
+#define RK3588_PD_VOP		24
+#define RK3588_PD_VO0		25
+#define RK3588_PD_VO1		26
+#define RK3588_PD_VI		27
+#define RK3588_PD_ISP1		28
+#define RK3588_PD_FEC		29
+#define RK3588_PD_RGA31		30
+#define RK3588_PD_USB		31
+#define RK3588_PD_PHP		32
+#define RK3588_PD_GMAC		33
+#define RK3588_PD_PCIE		34
+#define RK3588_PD_NVM		35
+#define RK3588_PD_NVM0		36
+#define RK3588_PD_SDIO		37
+#define RK3588_PD_AUDIO		38
+#define RK3588_PD_SECURE	39
+#define RK3588_PD_SDMMC		40
+#define RK3588_PD_CRYPTO	41
+#define RK3588_PD_BUS		42
+
+/* VD_PMU */
+#define RK3588_PD_PMU1		43
+
+#endif
-- 
2.35.1

