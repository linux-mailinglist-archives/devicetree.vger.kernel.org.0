Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D2A566E045
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 15:20:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232039AbjAQOUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 09:20:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbjAQOUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 09:20:39 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66CB23C2A5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 06:20:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id j17so3836119wms.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 06:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=bDSOWy/wcE6qhjPtA8g7nZagiFARU4kdRAQ2QBD21MugTReENn7xKuSvVw2jCFSEWH
         vFkiQrQdSPDz20rvrJvlZ0bdUfrlW+I2zImshJf0ERMM6Gs/t0ABguBMjntpU2vEYyW2
         yHucTjPghwrnfWdt/RK26pFzzY+VBl6oKSC6D4/kpxzB20A9ylkEhcyCjHwNmnUTHQGm
         W/eSy/JcZ7aWImqSJmGi0IpCWB6PPhbzPfouLup2mYsc5JPW5QJmdjle2WfCUXYnQmHa
         0q6gT5jVrGSSdMswUNaXQjMMBRlST3u8lCXK/abuwGqhSrojD8M7FA9ciqGPaN9K754N
         AR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezzDBHpwPnfB4Q0kir/WyX7JUPDBDOHZZFSD5lm4cOw=;
        b=8Bb+B26a1BHS4iI3A0xBfOQvITnuy/6ouCFHQQoTcnKsKw2gs4/8h44YU7otZIiGYm
         0Lur8P2POL+B6z6Q0pPVn+w6mr3Eva+6kKay50GnRFsvVPAsfsyhMbES3BMcOiDriazf
         yUjLpGL6J76Xf9Ab1TgRrJ4HEtDddUiXPvxU3IHgtw3lQ5z+Mj2K+wMfgnxT0vkf+Ay2
         zFLmuyNik1rmRuWbj22adOcsYbmK+vpbGSaT3Vgn0Ogo43gwvu7047UZvrm8oVNYC8ld
         rEBtsfIWsKJayvM+wgJiqXAbbUNSmGah2rZ/nthiUS85/nrpWmwoHTeuRxY/6KtI3mmP
         yOXQ==
X-Gm-Message-State: AFqh2kp1Cboo+CSffCF13FifHU+fxbZZKa4mtFeU+ubV26GYDWDQaTZu
        w9hHUrTE8WpjE34tnUft+pnWuQ==
X-Google-Smtp-Source: AMrXdXsR9oqPeaz0hSHKeQnDArzDo9ilTPiP5TG2YLjUBeWjOrROgnMvZJ4IRgOU6YqZVRW03exBTg==
X-Received: by 2002:a05:600c:4256:b0:3da:1d51:ef9e with SMTP id r22-20020a05600c425600b003da1d51ef9emr3185452wmm.17.1673965236971;
        Tue, 17 Jan 2023 06:20:36 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b003cf894dbc4fsm40443133wmq.25.2023.01.17.06.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:20:36 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Johan Hovold <johan@kernel.org>
Subject: [PATCH v4 5/6] phy: qcom-qmp: pcs-ufs: Add v6 register offsets
Date:   Tue, 17 Jan 2023 16:20:14 +0200
Message-Id: <20230117142015.509675-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117142015.509675-1-abel.vesa@linaro.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new PCS UFS specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    | 31 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  1 +
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
new file mode 100644
index 000000000000..c23d5e41e25b
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_UFS_V6_H_
+#define QCOM_PHY_QMP_PCS_UFS_V6_H_
+
+/* Only for QMP V6 PHY - UFS PCS registers */
+#define QPHY_V6_PCS_UFS_PHY_START			0x000
+#define QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL		0x004
+#define QPHY_V6_PCS_UFS_SW_RESET			0x008
+#define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB	0x00c
+#define QPHY_V6_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB	0x010
+#define QPHY_V6_PCS_UFS_PLL_CNTL			0x02c
+#define QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x030
+#define QPHY_V6_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x038
+#define QPHY_V6_PCS_UFS_BIST_FIXED_PAT_CTRL		0x060
+#define QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
+#define QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0bc
+#define QPHY_V6_PCS_UFS_DEBUG_BUS_CLKSEL		0x158
+#define QPHY_V6_PCS_UFS_LINECFG_DISABLE			0x17c
+#define QPHY_V6_PCS_UFS_RX_MIN_HIBERN8_TIME		0x184
+#define QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2			0x18c
+#define QPHY_V6_PCS_UFS_TX_PWM_GEAR_BAND		0x178
+#define QPHY_V6_PCS_UFS_TX_HS_GEAR_BAND			0x174
+#define QPHY_V6_PCS_UFS_READY_STATUS			0x1a8
+#define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1		0x1f4
+#define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1		0x1fc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a5cdd58c5b4d..f142235432e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -26,6 +26,7 @@
 #include "phy-qcom-qmp-pcs-ufs-v3.h"
 #include "phy-qcom-qmp-pcs-ufs-v4.h"
 #include "phy-qcom-qmp-pcs-ufs-v5.h"
+#include "phy-qcom-qmp-pcs-ufs-v6.h"
 
 #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
 
-- 
2.34.1

