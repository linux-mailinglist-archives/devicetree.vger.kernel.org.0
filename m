Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44DC967CB27
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 13:47:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236518AbjAZMrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 07:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236171AbjAZMrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 07:47:06 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE2F6C542
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 04:47:04 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h16so1627442wrz.12
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 04:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWuG/tl6av7N7lYBvnhsaaFb5xBOZ+IkswLQCDJkdys=;
        b=ZgnwOUaCO4Tghs3bB2vuMB9BxMyxnM4d95K4MqatxIZtj4xgq6gkyKY11jxe03czyV
         479+hgzYbkIHVlvxw6NA6OTSt/Ps1pt1zIYBFJCFOM4rpu4cjnR7hv2l/iVOSrGSMZus
         TyO3sXnL2NeetV4DCMMprm1yLD4t1b3zjDuV7u3yeRlez6P3pViXIXIFpjot1TL4zi2w
         rulVuLhNJZj+XaCwCcdvCakflytONAsFFhc1+qXISIEUjnduO5+EzErtRKY7h8gaX6OJ
         3l3aJmb/nBL7vnWk+7ACyM45p7Uuxtv0VHw+ea9rC88+ED6OZgdi8amJfUWpuvIQsaQ7
         62EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YWuG/tl6av7N7lYBvnhsaaFb5xBOZ+IkswLQCDJkdys=;
        b=vgIyu293cU+/mB17WTa9fyMgClp7pTIkiqvwdZ3S2YMfSD8cJ61j8F/8uug5roa7iL
         OH5U7Pf+v0FYTkD+JMLFfNx4SxtGF0IZWgJnce46Migh9iPwzFk3yCvyIQXfMBI6QDp2
         huA4ygylwch8EXgl2SIMQrpwZBZmgpXl4t4HakhfEdl46vvUrJkan7QrhDKrWkFJuO0b
         ei2WjQsJzCBBVqJCK2VOl7uDeVnyfp5eZsRP+hh9lRJFiCJiHcgVowRFipg9H+AfXjXQ
         Nj+sdcj8gU+/Kom0BPBbWauXe+vfWwMUeCiUZv3zGjdMQ0E8ZFmdOI1C1E6aGSMfdbrk
         UqAA==
X-Gm-Message-State: AO0yUKVssRGsQ7tAMnFo8oRfk3CgSxDhLfRbLJw11B/Ckf+y5wpppabB
        k5xL9DYRRD3pjtyuWotC2x1zGA==
X-Google-Smtp-Source: AK7set/LbAa/qM28lU2dAIdWN2QzSLwCUWuX/8s6Nq4LfA6eCCGcFk7v+PtxwxSIEERQX2XH15/onw==
X-Received: by 2002:a5d:658f:0:b0:2bf:bac7:30d4 with SMTP id q15-20020a5d658f000000b002bfbac730d4mr4941977wru.53.1674737222674;
        Thu, 26 Jan 2023 04:47:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:47:02 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-phy@lists.infradead.org
Subject: [PATCH v2 4/8] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date:   Thu, 26 Jan 2023 14:46:47 +0200
Message-Id: <20230126124651.1362533-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB.
Add the new PCS USB specific offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v1 version of this patch was here:
https://lore.kernel.org/all/20221116120157.2706810-2-abel.vesa@linaro.org/

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 521ea3ce6b83..14d12d198d87 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -26,6 +26,7 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
+#include "phy-qcom-qmp-pcs-usb-v6.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
new file mode 100644
index 000000000000..9510e63ba9d8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V6_H_
+#define QCOM_PHY_QMP_PCS_USB_V6_H_
+
+/* Only for QMP V6 PHY - USB3 have different offsets than V5 */
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
+#define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_USB_V6_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
+
+#define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif
-- 
2.34.1

