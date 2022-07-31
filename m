Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5554A586029
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbiGaRrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGaRrr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:47 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC400BE00
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id f11so7811741pgj.7
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=hNp+zXQtih6SV1d7Y3TwxaTJ8vdr23qkoBd9YNJH1oQ=;
        b=zIkygsKa/ie+N46RVweKCsJfT/QlkqGUQWBSEK085Xglo4851t93ARMH9s1q9gXtzF
         mnsHKCSNC99qpKxTykBxHA+Vcx3Yw8mHFSAW+32o0nixVHWR/czTCjvoXDTAGdPNxonH
         SBvIhLeZJKtJRlGGnvLoA8PHQjg/S7h0fJ0Y8TgO18oouG5VotA1NkzrdnhurAXArb+9
         A6X2LxxREIzOAwmxfSqza1Juz7XVwUdc7SA10dxPw3X9fFgGUjSF2sBZ16ncrDwSFXmd
         IyVGnIRBceuNf9WEg448FYpugkP2J7w3iz8NLzFvxKd/HcgnHhRgI2X4EbaCz5XZOvac
         uqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=hNp+zXQtih6SV1d7Y3TwxaTJ8vdr23qkoBd9YNJH1oQ=;
        b=vMZ+4kdVVucAwfpyNofSd/qiBHLGJkk9LNklJmOR9dxmAvT2y9YzSYv+t0BfNXbgb4
         PTWoRzSuvLuUpN4WOeZh5aVPONrbXlBzcs+unCY1Af2ydZE3AtC2za/p9fA1be5oYZA3
         4w2wmNyUb2bUwGLKiNPT+K9+XMc7ZuXsAjvqH1iVTrdBtCVirruErBCOt0LfJOUJlyGf
         4ivEq5FB7nPiocsvAY4Iy3j8RW9EKPPiALeI2T4EatwLqaK5Dn7dBUTeTSIJRiEY9+c1
         9wgT1wLode8mWnKTGVpvlXTdZDh46CX/6XHXhjC/6cDs1q87BnNzymHvHNah91TXScUq
         6pgQ==
X-Gm-Message-State: AJIora/qzjcv76A15FzXzcLVa5Wp/GeYnDUGUSgH1Oo50/0OWNyG7vsf
        DFxM5RyO1bOnk1mqbTZP+chpZeA+7E2clsjcpWeBXg==
X-Google-Smtp-Source: AGRyM1uxj4Y4o4w0/ySjDNkP99FefLttWtVg7uFLpnxnoH5UbFra+6aJcfga6ZFZPTCrgQ6Gr9KiMw==
X-Received: by 2002:a05:6a00:24d6:b0:52b:ee89:ecb2 with SMTP id d22-20020a056a0024d600b0052bee89ecb2mr12967794pfv.15.1659289666321;
        Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
Date:   Sun, 31 Jul 2022 23:17:08 +0530
Message-Id: <20220731174726.72631-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power-domain header for RV1126 SoC from description in TRM.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- add blank line

 include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rv1126-power.h

diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
new file mode 100644
index 000000000000..38a68e000d38
--- /dev/null
+++ b/include/dt-bindings/power/rv1126-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
+#define __DT_BINDINGS_POWER_RV1126_POWER_H__
+
+/* VD_CORE */
+#define RV1126_PD_CPU_0		0
+#define RV1126_PD_CPU_1		1
+#define RV1126_PD_CPU_2		2
+#define RV1126_PD_CPU_3		3
+#define RV1126_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RV1126_PD_PMU		5
+#define RV1126_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RV1126_PD_NPU		7
+
+/* VD_VEPU */
+#define RV1126_PD_VEPU		8
+
+/* VD_LOGIC */
+#define RV1126_PD_VI		9
+#define RV1126_PD_VO		10
+#define RV1126_PD_ISPP		11
+#define RV1126_PD_VDPU		12
+#define RV1126_PD_CRYPTO	13
+#define RV1126_PD_DDR		14
+#define RV1126_PD_NVM		15
+#define RV1126_PD_SDIO		16
+#define RV1126_PD_USB		17
+#define RV1126_PD_LOGIC_ALIVE	18
+
+#endif
-- 
2.25.1

