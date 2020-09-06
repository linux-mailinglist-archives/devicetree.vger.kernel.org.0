Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43F225EF53
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 19:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726211AbgIFRXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Sep 2020 13:23:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbgIFRXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Sep 2020 13:23:50 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C94BBC061573
        for <devicetree@vger.kernel.org>; Sun,  6 Sep 2020 10:23:49 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id o21so11363086wmc.0
        for <devicetree@vger.kernel.org>; Sun, 06 Sep 2020 10:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=24ZDJaQJlYP3s2jo1tr1kyqJxA9JzOYlONK3x6abO2U=;
        b=d6FbYoTX3LMhvmjG+jX+H6oSnX1Qndfcpvcxt5qQWX4Y78bPaBDa4xRRJkGGV3QlvM
         8YGb6Im8Mjept7h32sZJHxabk5VZWWfaUnye/cogIJqV0e4NpJvYMHNRsw76PExqbw0n
         V2LbQzQxx4zsAfESqEZmi2i19fQAtKzIAN/VDiajDzm1tAIzrS4jC8t9JP6Zp653HTc2
         oj14wcAknZHl8N1J8852WE4H7MWHqFQ+XFphCD1eANKYQ2zcT84/gySUtgVmkCV65WyZ
         +iAO629pmuiiuoIhcGiM4BDh9ehdIHjYeZp2XDbMe8GsPKenMVEpZCiQ2m+EiVE6BFtL
         sa3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=24ZDJaQJlYP3s2jo1tr1kyqJxA9JzOYlONK3x6abO2U=;
        b=J/+DO2NUmsDTfV0eKIcpcxYtubVDlQCWnOfHth8glaDkMQ42tM2m+3XcIk54mczopW
         bQJMGVly0QwJfpyFI/VT730coVxjJ5725gcGakB0INPmvI3JZK2dEFxF+CQbWxFp3lx3
         9RxJLfFSzsFhojgJjW5r1519Up+rbmSSXF1flzf8DnGOGj3VqXbF+2T9gc3hmUkPfb+e
         3xFdh73NKWM4uzGG49w1S/mxnH8RW/T5Mb+awa61DFoCPXCshozWIOMnjk/yY1mqNNLo
         SL6M0FG3stE7z23WfF0osGZpPSiEryZ1YA3cXm3712oUIteYG0jc1ZB6hK9UcLnQLy4J
         rakA==
X-Gm-Message-State: AOAM533mE8AuIHS6qZzgt3+yWOgeMvuBBs0bWPiWb4Pt6M5dgFIpRXHP
        6boU7lq97FMhwyXqmNPp3ur6MPo94Nd7bQ==
X-Google-Smtp-Source: ABdhPJzaf8R4dDPqvdxcZZz/jT1v1MZKWYRXPj9+fLQGi86TF6O09EDkNB0DzeAay/sWNs2GuzJqnA==
X-Received: by 2002:a7b:c1d4:: with SMTP id a20mr17151926wmj.30.1599413027189;
        Sun, 06 Sep 2020 10:23:47 -0700 (PDT)
Received: from localhost.localdomain (208.19.23.93.rev.sfr.net. [93.23.19.208])
        by smtp.gmail.com with ESMTPSA id p18sm4490311wrx.47.2020.09.06.10.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 10:23:46 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     krzk@kernel.org, mars.cheng@mediatek.com, owen.chen@mediatek.com,
        macpaul.lin@mediatek.com, ulf.hansson@linaro.org,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: mediatek: add MT8167 power dt-bindings
Date:   Sun,  6 Sep 2020 19:23:36 +0200
Message-Id: <20200906172337.1052933-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the SCPSYS binding documentation for MediaTek MT8167 SoCs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/soc/mediatek/scpsys.txt    |  3 +++
 include/dt-bindings/power/mt8167-power.h           | 14 ++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 include/dt-bindings/power/mt8167-power.h

diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
index 2bc367793aec..08cb8438a35d 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
@@ -10,6 +10,7 @@ domain control.
 The driver implements the Generic PM domain bindings described in
 power/power-domain.yaml. It provides the power domains defined in
 - include/dt-bindings/power/mt8173-power.h
+- include/dt-bindings/power/mt8167-power.h
 - include/dt-bindings/power/mt6797-power.h
 - include/dt-bindings/power/mt6765-power.h
 - include/dt-bindings/power/mt2701-power.h
@@ -26,6 +27,7 @@ Required properties:
 	- "mediatek,mt7623-scpsys", "mediatek,mt2701-scpsys": For MT7623 SoC
 	- "mediatek,mt7623a-scpsys": For MT7623A SoC
 	- "mediatek,mt7629-scpsys", "mediatek,mt7622-scpsys": For MT7629 SoC
+	- "mediatek,mt8167-scpsys"
 	- "mediatek,mt8173-scpsys"
 - #power-domain-cells: Must be 1
 - reg: Address range of the SCPSYS unit
@@ -42,6 +44,7 @@ Required properties:
 	Required clocks for MT6797: "mm", "mfg", "vdec"
 	Required clocks for MT7622 or MT7629: "hif_sel"
 	Required clocks for MT7623A: "ethif"
+	Required clocks for MT8167: "mm", "mfg", "vdec", "axi_mfg"
 	Required clocks for MT8173: "mm", "mfg", "venc", "venc_lt"
 
 Optional properties:
diff --git a/include/dt-bindings/power/mt8167-power.h b/include/dt-bindings/power/mt8167-power.h
new file mode 100644
index 000000000000..8e7bcb4834dc
--- /dev/null
+++ b/include/dt-bindings/power/mt8167-power.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _DT_BINDINGS_POWER_MT8167_POWER_H
+#define _DT_BINDINGS_POWER_MT8167_POWER_H
+
+#define MT8167_POWER_DOMAIN_MM		0
+#define MT8167_POWER_DOMAIN_DISP	0
+#define MT8167_POWER_DOMAIN_VDEC	1
+#define MT8167_POWER_DOMAIN_ISP		2
+#define MT8167_POWER_DOMAIN_CONN	3
+#define MT8167_POWER_DOMAIN_MFG_ASYNC	4
+#define MT8167_POWER_DOMAIN_MFG_2D	5
+#define MT8167_POWER_DOMAIN_MFG		6
+
+#endif /* _DT_BINDINGS_POWER_MT8167_POWER_H */
-- 
2.28.0

