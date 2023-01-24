Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D94FF67985C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 13:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233978AbjAXMrf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 07:47:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234004AbjAXMrd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 07:47:33 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5DC540BF2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 04:47:27 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h12so9762724wrv.10
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 04:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bW3g+f1jFOh6Xbc2Yz4xv9Ez8/6bfoPw3+sQ1Y19h5s=;
        b=wsx4tRRgJsOsVyc/1uDPeFYJ3RlNVqKMmmbgSwkZjgZnIG/PXThjD50MSy53JwLmmZ
         PKliezxSrBfNlF7XkOdI/NIDyYh9Usbhk+C6ZlNKIzey9mFQFMQgyLmW/EG6jBCPWQKo
         p5hKklnOndxf1Zh+A2MqPb4maVUnL2Y6Y4VeqhOxHd7y/jdTSU+IeJ42RRzOShdyzaax
         AvWRxrzB9/WWWyrS27XdqiOM0xj/iJV8rAsxD2rD8ASIeK9EIcZhf+sjXUdUFcazJe4z
         Zq/r8f9tk8t/VMHDuss9JjkX3fB8JPC7h3D/sooA4HQYUBE8derChO8FlpmhgzPIpwEk
         f7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bW3g+f1jFOh6Xbc2Yz4xv9Ez8/6bfoPw3+sQ1Y19h5s=;
        b=e8UR8pUBMtEl9hlNNckbe3zFdhMD5Kf3FhzA8t2+ruTsy9YQUurIp4VFeLNL+dnx71
         kPoP9YZfzgoa7Q0//a1ruO1/lombexSTE7CR1dGfKTVe+D0P9t6kVUXQN+JrOqeCA228
         PzIdpxDe9fHWxXOXP4S3jdU9Sy4lWEdWgODCuB0uD07NLdYmK6WKXKuC3ZWh84k8eUbV
         zKIZfMo9VmDCE8YMByl0onlL+zFu3w6ld+/mJHOJ+o/QOkLAZ4RSLi+7pVag+v27NUlH
         rftDUjEV0QAtjKSiMdxtcQd5NAZvZXdwJebLVZllGPJn8VTzdm0L81sSZO7KUYzxkY9+
         ApRA==
X-Gm-Message-State: AFqh2kqDTYCmMxvUP4LzjxDa3TvRrs9XKh01x9bO/NGk6zKfJI6V41Vn
        MKibe5PQGZAdGNw5B6jWSKBHdw==
X-Google-Smtp-Source: AMrXdXtiEzdiF5TNoUEQ0vtlT1+QUG6yOByUtltYok26sIp2wVLnX3FJA8BG+9hShKQu9FG9zjoPkQ==
X-Received: by 2002:a5d:6b01:0:b0:2bd:fd81:b503 with SMTP id v1-20020a5d6b01000000b002bdfd81b503mr25784430wrw.1.1674564447469;
        Tue, 24 Jan 2023 04:47:27 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:26 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 04/12] phy: qcom-qmp: pcs-pcie: Add v6 register offsets
Date:   Tue, 24 Jan 2023 14:47:06 +0200
Message-Id: <20230124124714.3087948-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new PCS PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-5-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c        |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 21727e90fad1..d4ca38f31e3f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -29,6 +29,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v4_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
+#include "phy-qcom-qmp-pcs-pcie-v6.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
new file mode 100644
index 000000000000..91e70002eb47
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V6_H_
+
+/* Only for QMP V6 PHY - PCIE have different offsets than V5 */
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2	0x0c
+#define QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4	0x14
+#define QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x20
+#define QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
+
+#endif
-- 
2.34.1

