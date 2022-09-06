Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87A365AEEE1
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239489AbiIFPdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:33:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233466AbiIFPc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:32:58 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AEDFC3F4C
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:43:50 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 6605F6601F4B;
        Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475109;
        bh=Gt/PPB04fvYukqskuRxnbybWAL1EFuXj4nMYNDzKjU8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Y/aCmtgYD4miEKu84cNJhrx6aYlgOtM6uCvhNgkUaMziey5L7xvvlEUCe2I/aHy9c
         U7j4My/sMP7DIw2PSrIOkp09LepFdOlauTzBUaQmu4vj21hnKwQ/77dXtU2m9UP8m8
         mj7d8td9zPNi/RV6fJXgDJYVw2eKL3sPn4Ub8+gJKvEQ77vXgyq2F1llBx6/Q/W+NZ
         dglK/9krOLbRUYMknDxusdCUXsXVkkgjc+OCTzI+YDQXKQP/hJc69d3r7sRVWoZYut
         3VBVJz6+5QFzQDydeVgyXw3VREONG6hOmS8VD0hytUPJny2WUGhX9baMb6MYPiaX4F
         Vhn95akbvfnAw==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 3DE8248016C; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 2/6] dt-bindings: add power-domain header for rk3588
Date:   Tue,  6 Sep 2022 16:38:21 +0200
Message-Id: <20220906143825.199089-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
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

Add all the power domains listed in the RK3588 TRM.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/power/rk3588-power.h | 69 ++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

diff --git a/include/dt-bindings/power/rk3588-power.h b/include/dt-bindings/power/rk3588-power.h
new file mode 100644
index 000000000000..1b92fec013cb
--- /dev/null
+++ b/include/dt-bindings/power/rk3588-power.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: (GPL-2.0 or MIT) */
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

