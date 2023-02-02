Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47A8D687E99
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:25:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232517AbjBBNZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:25:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232431AbjBBNZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:25:26 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B5368F250
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:25:22 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o36so1393074wms.1
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=axZmrk/nkDmtPomkR0fmKhcUmJk4Y03dAWE31oS09K0=;
        b=VN6odhrNo8DLT5dgJRQl9geIjbVTf9p/OpiiZ3n/cs/YAZp6NoETURDCZGLdw6f5YZ
         EIr1BD9fEoMvL6I5WNy2c58RMaKCO7TB0cOP0DOcKyE4EsF8+EvBa0wjhz7Np7Hg5/lK
         C5OhcwEaPJPfVyPLxZghRgCEiRZKCktwEEZfm5aJG6y2MiNzH2mrih5GE+flZn8qWNcq
         OYt0QiMa8vZfDpK0StrfGizHucQLZVqg2hwOxuKT2BD7D4uJcD8fqzJnW+RZyCBstMZD
         bsMSb/wvqBjc1W1sW/JLhlVulblZf5a+mjV4e8mE7TJHmpCoyymQW1WTRWZq2ZgkLMy8
         J3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=axZmrk/nkDmtPomkR0fmKhcUmJk4Y03dAWE31oS09K0=;
        b=KJ9cvWuO/jHAyvWFYKhycCgIiQdKh5/0ATBSww0A0FifO4ojZ7z+Ja6xTpG5R23Zyz
         HXdfsL7hs6hAfJDuIrxhjk17/Ll7dnjsmDwFLpkVB02p4Fst6hqt7GgNBXdz5xta8aR5
         dx3TfMb39sIPTLWJucqbeelrRT8+cgvoBASLlmYWCX/B7f9qmOY9tJ1FrD+iqo0o/NgC
         WnCdH++bsr3m6+Z7nqPZSvfw5sPoNX+cFJZJFRgdOYhRNBww2V6F5540XzF+nG7XOCtB
         Jb4dBed6yD+5g9i7RUqmtUo0RhxzPbH1FlzlJxom2URX44/qRgwLBnquCL2i326Aq3k5
         83XQ==
X-Gm-Message-State: AO0yUKXEhxp1xF3vI5wQYb6banfOYdlyWeo8BQeNAMoOFBSYnRIrr3lT
        pXR9AkkmNaHFAcdNGwQ7zK70R0iF4fmxYHdE
X-Google-Smtp-Source: AK7set/u2QiBcVxQRR0aoeKvKGTdGvoGxaa8LRnm4vJtb1lMyrVxzwdonWZ5ZDMykX2gmudsqMPv1w==
X-Received: by 2002:a05:600c:1d04:b0:3dc:5dd4:7d3f with SMTP id l4-20020a05600c1d0400b003dc5dd47d3fmr5512542wms.24.1675344320738;
        Thu, 02 Feb 2023 05:25:20 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:20 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 5/8] phy: qcom-qmp: Add v6 DP register offsets
Date:   Thu,  2 Feb 2023 15:25:08 +0200
Message-Id: <20230202132511.3983095-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.
Add the new DP specific offsets in the generic qmp header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-6-abel.vesa@linaro.org/

Changes since v3:
 * none

Changes since v2:
 * none

This patch did not exist in v1. Since then, the DP support has been
added.

 drivers/phy/qualcomm/phy-qcom-qmp.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 148663ee713a..7ee4b0e07d11 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -134,4 +134,8 @@
 #define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
 #define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
 
+/* Only for QMP V6 PHY - DP PHY registers */
+#define QSERDES_V6_DP_PHY_AUX_INTERRUPT_STATUS		0x0e0
+#define QSERDES_V6_DP_PHY_STATUS			0x0e4
+
 #endif
-- 
2.34.1

