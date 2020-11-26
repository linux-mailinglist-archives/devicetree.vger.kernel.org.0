Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 436B92C4F86
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 08:31:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388550AbgKZH3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 02:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729701AbgKZH3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 02:29:51 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F932C0617A7
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 23:29:50 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id b63so840480pfg.12
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 23:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DrIF8npwlrqxLr6Igah5Ek/omJmCk/eZLSe1ULAbqaY=;
        b=vwjnecL7+HRvNcp2/QtOXgiS5f1StvfUiYod01dCOQllzXdtF9MY2EUZdSOnOd0zjg
         rcyRDx080Fua0RfOcotAkNLHVETyneFv5Z4d2HiA48uJ46O09h5uJjkFPb4NvY5rsjoG
         r15qsySIVo6wFxU/ZGZQ60SRKayEup6ZBr5J91mBimojS6VMXJmJWvor8lViSrW//ukZ
         jKWtC1LLR+XrssnKeYTbKao98VHkmCCmVS0Mocb6jVtlnUqQkRG+CYnrsTcmfBoJ3ics
         m37I0olDtj15mp9oW6G9/nROfyL9YA/G1a2cSZP46W6K4+iMMxTugZa66smHM+y1U33K
         frzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DrIF8npwlrqxLr6Igah5Ek/omJmCk/eZLSe1ULAbqaY=;
        b=SlX/P3C/kac1K+EUNHTsmAl64nxenq9CYzKFMYV0kDr433qx9TNkrtFZTL6FBvEaWr
         L9SMPqCk9LQidIIrvUGELTPLqh97kxHiOBvA+4HwPxoYbNel/l6nLCOilYDVw0UmCAOC
         msWo1D0UiiGtZIUgNR1l38KBXLNoZnccwhgEwF7pl43Vnfb35XvEA8ka8qfv0qgO/IiW
         9QQ9fU3DQKVp8x+laJ54BRJr9TA3SXJtCdYDjFLCyHjnHiC8q4syn0zd/xoq/vD0ThTM
         fBiI5XTnzyqWdk5qiEZFT4R8b9GE94D1h31LXaSz2VNBJqgLAwxeuH4hRCZJcySTkxHW
         B5cQ==
X-Gm-Message-State: AOAM533Nzony9YT5OiKjU//xF6e/HgJaRj2vsRkvW6zEp2so/t8tjdEQ
        U3vx2sRAnlIhzzwz38Uo7cTm
X-Google-Smtp-Source: ABdhPJxnW6Di3Yy8aHSj3rGQbdFEbp6WxXhA9CofeXAnnQgscmsA6ITioMijAb8veJ08ST2oH7Ghjw==
X-Received: by 2002:a17:90a:4a0f:: with SMTP id e15mr2162901pjh.182.1606375789668;
        Wed, 25 Nov 2020 23:29:49 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6e95:f2a:3996:9d7f:e389:7f7d])
        by smtp.gmail.com with ESMTPSA id t9sm5508097pjq.46.2020.11.25.23.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 23:29:49 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [RESEND PATCH v4 5/6] dt-bindings: clock: Add GDSC in SDX55 GCC
Date:   Thu, 26 Nov 2020 12:58:43 +0530
Message-Id: <20201126072844.35370-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126072844.35370-1-manivannan.sadhasivam@linaro.org>
References: <20201126072844.35370-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add GDSC instances in SDX55 GCC block.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-sdx55.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-sdx55.h b/include/dt-bindings/clock/qcom,gcc-sdx55.h
index c372451b3461..fb9a5942f793 100644
--- a/include/dt-bindings/clock/qcom,gcc-sdx55.h
+++ b/include/dt-bindings/clock/qcom,gcc-sdx55.h
@@ -109,4 +109,9 @@
 #define GCC_USB3PHY_PHY_BCR					13
 #define GCC_USB_PHY_CFG_AHB2PHY_BCR				14
 
+/* GCC power domains */
+#define USB30_GDSC						0
+#define PCIE_GDSC						1
+#define EMAC_GDSC						2
+
 #endif
-- 
2.25.1

