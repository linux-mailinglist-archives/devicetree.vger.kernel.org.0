Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 484106DA238
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 22:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236757AbjDFUHz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 16:07:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238472AbjDFUHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 16:07:53 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 707D886A6
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 13:07:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d17so40635507wrb.11
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 13:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680811670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J5KzQ/setbKY8lyetTIrWZS3cTz0x9uOqzpCXoBBYus=;
        b=OO7jftT3SEXL7Jt/pRI20vYdPY/73+/0XyoXNvxBoPfyoll4Yyr+Gw/r1FoyWnGyrd
         QvC9lBn7bfzuj8Fd4A8gbxtUPMQj4JoTXHC4ZEmeOSv5UdmFvw2x8xFuSLnHjcpRQ3Ir
         XTaHCtLJpZxIU26TuSNmWrb+b00AwpH6w4YgY2t4l2GUd2kpnweSUkXe03MOVpyeYrf8
         depcmgn2NLToadIh74sw9eJhMCMLzTHUJdLtVgjFowqzfUvDwLLb+49mhGKewQElijla
         UjCONa4S8sZ8I1ezXcrVX2ajQrRNFKTbCXZ1111h1OZ0Rfaqs9LgbT2GO9ZENdrvRYA9
         5dCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680811670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5KzQ/setbKY8lyetTIrWZS3cTz0x9uOqzpCXoBBYus=;
        b=0k0mnNb6sCufYh+cnYSSCaTOM0iLPcBrvQ6HWqmGQOJbV4RofsunKCTOV6C0LdTxQv
         w54zEHygTi844ZHiTojZKS+rlMpGXukxCIFVLoOkY9C+VIo7lIZeGk/lMZ9Z3SRyUplX
         24PMruSsi3wNETVHm6+QET1tbs0foPB0y0moHaewpEaccfyxYdT7ffpY6VMqDkdHqW6T
         4uiCbw1mzjSqCGRtxvUmDFVKcE+GyRvmtwLu/v4UAI2rRbIZ+tdEMogisLrVAGpqGoec
         N7+zAT0pKcsqcmAbBZpxpBi8wL3BXnXepbl0VlVV4nsxUtOM8FS858egeuYSRGrvIJ5S
         yMlQ==
X-Gm-Message-State: AAQBX9fEt1fLdc9Bib7w3eQnPY/JnG8+tG9oXS7Y9YkFkFYvT2waURbz
        Ibc6UGU1HtwRJAQd+Z5HXrGTXw==
X-Google-Smtp-Source: AKy350azZmS1Sul6NSqnkoda4N2fOk9MomlerAJ20oYikPJzyB/PwBlu093sjvClP2uDUvvH/AARwQ==
X-Received: by 2002:adf:f1c8:0:b0:2c3:e7d8:245c with SMTP id z8-20020adff1c8000000b002c3e7d8245cmr6907217wro.13.1680811669938;
        Thu, 06 Apr 2023 13:07:49 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id c11-20020adfe74b000000b002d89e113691sm2560506wrn.52.2023.04.06.13.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 13:07:49 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/7] dt-bindings: clock: qcom: describe the GPUCC clock for SA8775P
Date:   Thu,  6 Apr 2023 22:07:17 +0200
Message-Id: <20230406200723.552644-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406200723.552644-1-brgl@bgdev.pl>
References: <20230406200723.552644-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the compatible for the Qualcomm Graphics Clock control module present
on sa8775p platforms. It matches the generic QCom GPUCC description. Add
device-specific DT bindings defines as well.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/qcom,gpucc.yaml |  2 +
 .../dt-bindings/clock/qcom,sa8775p-gpucc.h    | 50 +++++++++++++++++++
 2 files changed, 52 insertions(+)
 create mode 100644 include/dt-bindings/clock/qcom,sa8775p-gpucc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
index db53eb288995..1e3dc9deded9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gpucc.yaml
@@ -15,6 +15,7 @@ description: |
 
   See also::
     include/dt-bindings/clock/qcom,gpucc-sdm845.h
+    include/dt-bindings/clock/qcom,gpucc-sa8775p.h
     include/dt-bindings/clock/qcom,gpucc-sc7180.h
     include/dt-bindings/clock/qcom,gpucc-sc7280.h
     include/dt-bindings/clock/qcom,gpucc-sc8280xp.h
@@ -27,6 +28,7 @@ properties:
   compatible:
     enum:
       - qcom,sdm845-gpucc
+      - qcom,sa8775p-gpucc
       - qcom,sc7180-gpucc
       - qcom,sc7280-gpucc
       - qcom,sc8180x-gpucc
diff --git a/include/dt-bindings/clock/qcom,sa8775p-gpucc.h b/include/dt-bindings/clock/qcom,sa8775p-gpucc.h
new file mode 100644
index 000000000000..a5fd784b1ea2
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sa8775p-gpucc.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2022, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPUCC_SA8775P_H
+#define _DT_BINDINGS_CLK_QCOM_GPUCC_SA8775P_H
+
+/* GPU_CC clocks */
+#define GPU_CC_PLL0				0
+#define GPU_CC_PLL1				1
+#define GPU_CC_AHB_CLK				2
+#define GPU_CC_CB_CLK				3
+#define GPU_CC_CRC_AHB_CLK			4
+#define GPU_CC_CX_FF_CLK			5
+#define GPU_CC_CX_GMU_CLK			6
+#define GPU_CC_CX_SNOC_DVM_CLK			7
+#define GPU_CC_CXO_AON_CLK			8
+#define GPU_CC_CXO_CLK				9
+#define GPU_CC_DEMET_CLK			10
+#define GPU_CC_DEMET_DIV_CLK_SRC		11
+#define GPU_CC_FF_CLK_SRC			12
+#define GPU_CC_GMU_CLK_SRC			13
+#define GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK		14
+#define GPU_CC_HUB_AHB_DIV_CLK_SRC		15
+#define GPU_CC_HUB_AON_CLK			16
+#define GPU_CC_HUB_CLK_SRC			17
+#define GPU_CC_HUB_CX_INT_CLK			18
+#define GPU_CC_HUB_CX_INT_DIV_CLK_SRC		19
+#define GPU_CC_MEMNOC_GFX_CLK			20
+#define GPU_CC_SLEEP_CLK			21
+#define GPU_CC_XO_CLK_SRC			22
+
+/* GPU_CC resets */
+#define GPUCC_GPU_CC_ACD_BCR			0
+#define GPUCC_GPU_CC_CB_BCR			1
+#define GPUCC_GPU_CC_CX_BCR			2
+#define GPUCC_GPU_CC_FAST_HUB_BCR		3
+#define GPUCC_GPU_CC_FF_BCR			4
+#define GPUCC_GPU_CC_GFX3D_AON_BCR		5
+#define GPUCC_GPU_CC_GMU_BCR			6
+#define GPUCC_GPU_CC_GX_BCR			7
+#define GPUCC_GPU_CC_XO_BCR			8
+
+/* GPU_CC power domains */
+#define GPU_CC_CX_GDSC				0
+#define GPU_CC_GX_GDSC				1
+
+#endif /* _DT_BINDINGS_CLK_QCOM_GPUCC_SA8775P_H */
-- 
2.37.2

