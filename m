Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 195FF670F6E
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 02:05:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbjARBFa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 20:05:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjARBEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 20:04:40 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A15655D7CF
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:53:40 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h16so32387588wrz.12
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDRnB/Z4jSJBt/qZSOzeyTcHByoxHG9CkcxLpEDk5ZU=;
        b=TpWrnOfE0QFW+wvo9VFucznjolY/Sv/rk6A989y6OOr7eiIEDaGOCXx3t0wAulcm6D
         sV3f5QlJqAyci2djCsz3NZIQXKAfjZyEy1nS7rcIhJ2fY9zSqNq9ZrNpc6bDvQkr0HOy
         wOtk1MbXgpGRpjRbstJZWswz3xhy4gUxrS12UFr4TDzYD+EJbEZqfIedGhulnBjubg4y
         egb8pMoELB7c0iWT90Bn9s2D2+qBINREnwVJY41zm30IvlZSNlRNPpwDJs3t5kfwb3Gt
         0irvumsN9wpMKGqZtAH6d8B3JFIAty90nEEuVxRI0/vaZqYJXzUvnhq3ZRTmIl2PCI/w
         SdvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDRnB/Z4jSJBt/qZSOzeyTcHByoxHG9CkcxLpEDk5ZU=;
        b=pskhIJRHFYGN+NSItFJ9Gxx8L8sZOHdw7mna5P+xO/jlHpWeiaboHgM8v0DuFaB9o1
         iy4C0yaKLo9kwLw/6w6M5LPmV7mQgoelkJSmiSCW7P0Xzb2MZ4nQoqFpXO4PdxTR+9md
         X5+kjz07BGI/+92n8/Rpd0zUZ2BRPhUhOKm9nXO8bGeHy40f8d2CtRAsSR5TdNMlbB00
         z4IcAO/aaBgXinRnkRkRMO2dXKhlE//++ns/R7JKy1joKCLMMKx50GzVp5GkxswDJ2E2
         e5qd+pOYF5a+vcLC3oWUPEz8AiZ/74ASFDaFaOFTDQy5u6WRFmJKtrROAlkr/GclKUQJ
         SUiw==
X-Gm-Message-State: AFqh2krdeCxfIZdd6mge4nr/pZvuCfIQQVLd+pq3ilzRKSqqVqsv4VY/
        bLU2R+BPaCioDu6Z69i/oJOw2w==
X-Google-Smtp-Source: AMrXdXvwoWaDUjCW/o2PsWtNwA4jr3V4JW6+kw1jiRmnKo2KMQHXYLMx2LITNwt0ANp0jhWtFq1QDQ==
X-Received: by 2002:a5d:58f0:0:b0:2bc:7f51:41f with SMTP id f16-20020a5d58f0000000b002bc7f51041fmr4652024wrd.45.1674003219153;
        Tue, 17 Jan 2023 16:53:39 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:38 -0800 (PST)
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
Subject: [PATCH v3 6/8] phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
Date:   Wed, 18 Jan 2023 02:53:26 +0200
Message-Id: <20230118005328.2378792-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
PCIE g4x2. Add the new qserdes TX RX PCIE specific offsets in a
dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         | 45 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  1 +
 2 files changed, 46 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
new file mode 100644
index 000000000000..5385a8b60970
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V6_20_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V6_20_H_
+
+#define QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX		0x30
+#define QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX		0x34
+#define QSERDES_V6_20_TX_TRAN_DRVR_EMP_EN			0xac
+#define QSERDES_V6_20_TX_LANE_MODE_1				0x78
+#define QSERDES_V6_20_TX_LANE_MODE_2				0x7c
+#define QSERDES_V6_20_TX_LANE_MODE_3				0x80
+
+#define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2			0x08
+#define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3			0x0c
+#define QSERDES_V6_20_RX_UCDR_PI_CONTROLS			0x20
+#define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3		0x34
+#define QSERDES_V6_20_RX_IVCM_CAL_CTRL2				0x9c
+#define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET			0xa0
+#define QSERDES_V6_20_RX_DFE_3					0xb4
+#define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL			0xe8
+#define QSERDES_V6_20_RX_GM_CAL					0x10c
+#define QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4			0x120
+#define QSERDES_V6_20_RX_SIGDET_ENABLES				0x148
+#define QSERDES_V6_20_RX_PHPRE_CTRL				0x188
+#define QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET		0x194
+#define QSERDES_V6_20_RX_Q_PI_INTRINSIC_BIAS_RATE32		0x1dc
+#define QSERDES_V6_20_RX_MODE_RATE2_B0				0x1f4
+#define QSERDES_V6_20_RX_MODE_RATE2_B1				0x1f8
+#define QSERDES_V6_20_RX_MODE_RATE2_B2				0x1fc
+#define QSERDES_V6_20_RX_MODE_RATE2_B3				0x200
+#define QSERDES_V6_20_RX_MODE_RATE2_B4				0x204
+#define QSERDES_V6_20_RX_MODE_RATE2_B5				0x208
+#define QSERDES_V6_20_RX_MODE_RATE2_B6				0x20c
+#define QSERDES_V6_20_RX_MODE_RATE3_B0				0x210
+#define QSERDES_V6_20_RX_MODE_RATE3_B1				0x214
+#define QSERDES_V6_20_RX_MODE_RATE3_B2				0x218
+#define QSERDES_V6_20_RX_MODE_RATE3_B3				0x21c
+#define QSERDES_V6_20_RX_MODE_RATE3_B4				0x220
+#define QSERDES_V6_20_RX_MODE_RATE3_B5				0x224
+#define QSERDES_V6_20_RX_MODE_RATE3_B6				0x228
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 760de4c76e5b..e5974e6caf51 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -23,6 +23,7 @@
 
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 
-- 
2.34.1

