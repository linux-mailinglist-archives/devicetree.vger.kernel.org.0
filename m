Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BEEF662680
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236108AbjAINH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:07:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236667AbjAINHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:07:22 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0ACF32268
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:05:39 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id bu8so12844554lfb.4
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A85Hj2sYQJ0M2pCGuSbOsE3dYE86SavNJYR8ZErS730=;
        b=ykkKkU7ZATz8Dct73RoT7HCB4AZunV9Pg3q8e2FnBmyEj5I3qXuiRGvaqvnBL1bos5
         D2nPAh3OAZ4tHFODsR+FHNCVVlbhSEKMKgs1PKdT9+qobzwm3RcO4v2zRqoLqI+4xWSj
         reJ82uZyjY8KjafkOfNjzu5IC4NPGWtnAAJ6z1dH6AY53zrMUqoU0tc0KRd/x51tfCsB
         DnTWJ8I1tx7kVoQ3upjZOZtZ8b7Unyj/fgyDpDdhxbOzHDIw/7MQGbvwo1LVl+0PC+hC
         fA/GLTYabbLpEt1/bfgxhpXGbYKfGLShmqEdhzsFhIr1IoS0vH7dU5NjviBYDBi/xpCF
         /LJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A85Hj2sYQJ0M2pCGuSbOsE3dYE86SavNJYR8ZErS730=;
        b=JxGvtUQR/4AzGgymsopIaeeIuJKepJSKvAzxIpn8EKFLiqcdcT10a2W6jv1xgLnFg3
         ne9nyqN5Utt76qI4/3n7V/+1F/1twTBGh5ofhmnNLEBHxdN0ozvT73wHTcsVGi/WvrIM
         fqDeOEcwcp8xhFieB4zs5kVgEy8D+3PUVbhdmRuo/GDpAApiShIaEVrARDWGGYulO8vd
         2LZAakQsiBVX1/V1pS0ba2p8KUa4Je1rxelJMYHtQzb2NplMsxnif5YF1+tfw3fyJxk4
         /HGEvEWHH3ucJmXQ5K06Kj8kqSCIRqK8pYhEvBg7MWk7Hs8FlGPzHTgZnMLhyCccFn3C
         S87w==
X-Gm-Message-State: AFqh2kpL7P0QGdE1nxqRgZVyLtGnODOA3d0aU6LQIBnKXsrduz0Aec3F
        8Zf+f2pHIBSIqy6Q1Pd7+2litw==
X-Google-Smtp-Source: AMrXdXuT74yTrDXoHXj6XcSvg22YF7D7zxmFRWG1XvQXVIeAf3sXADXGnHQI5BQJk8irzP6EaEi9ig==
X-Received: by 2002:a05:6512:1385:b0:4ca:dd8a:8c1f with SMTP id p5-20020a056512138500b004cadd8a8c1fmr20012773lfa.22.1673269532661;
        Mon, 09 Jan 2023 05:05:32 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id f1-20020a056512360100b004cc5e97d356sm1615031lfs.148.2023.01.09.05.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 05:05:32 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v4 3/3] dt-bindings: firmware: qcom: scm: Separate VMIDs from header to bindings
Date:   Mon,  9 Jan 2023 14:05:23 +0100
Message-Id: <20230109130523.298971-3-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109130523.298971-1-konrad.dybcio@linaro.org>
References: <20230109130523.298971-1-konrad.dybcio@linaro.org>
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

The SCM VMIDs represent predefined mappings that come from the
irreplaceable and non-omittable firmware that comes with every
Qualcomm SoC (unless you steal engineering samples from the factory)
and help clarify otherwise totally magic numbers which we are
required to pass to the secure world for some parts of the SoC to
work at all (with modem being the prime example).

On top of that, with changes to the rmtfs binding, secure VMIDs will
become useful to have in device trees for readability. Separate them
out and add to include/dt-bindings.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v3 -> v4:
- Improve the commit message
- Dual-license
 include/dt-bindings/firmware/qcom,scm.h | 16 ++++++++++++++++
 include/linux/qcom_scm.h                |  7 ++-----
 2 files changed, 18 insertions(+), 5 deletions(-)
 create mode 100644 include/dt-bindings/firmware/qcom,scm.h

diff --git a/include/dt-bindings/firmware/qcom,scm.h b/include/dt-bindings/firmware/qcom,scm.h
new file mode 100644
index 000000000000..1a4e68fa0744
--- /dev/null
+++ b/include/dt-bindings/firmware/qcom,scm.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+/*
+ * Copyright (c) 2010-2015, 2018-2019 The Linux Foundation. All rights reserved.
+ * Copyright (C) 2015 Linaro Ltd.
+ */
+
+#ifndef _DT_BINDINGS_FIRMWARE_QCOM_SCM_H
+#define _DT_BINDINGS_FIRMWARE_QCOM_SCM_H
+
+#define QCOM_SCM_VMID_HLOS		0x3
+#define QCOM_SCM_VMID_MSS_MSA		0xF
+#define QCOM_SCM_VMID_WLAN		0x18
+#define QCOM_SCM_VMID_WLAN_CE		0x19
+#define QCOM_SCM_VMID_NAV		0x2B
+
+#endif
diff --git a/include/linux/qcom_scm.h b/include/linux/qcom_scm.h
index 150b72edb879..1e449a5d7f5c 100644
--- a/include/linux/qcom_scm.h
+++ b/include/linux/qcom_scm.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 #include <linux/cpumask.h>
 
+#include <dt-bindings/firmware/qcom,scm.h>
+
 #define QCOM_SCM_VERSION(major, minor)	(((major) << 16) | ((minor) & 0xFF))
 #define QCOM_SCM_CPU_PWR_DOWN_L2_ON	0x0
 #define QCOM_SCM_CPU_PWR_DOWN_L2_OFF	0x1
@@ -51,11 +53,6 @@ enum qcom_scm_ice_cipher {
 	QCOM_SCM_ICE_CIPHER_AES_256_CBC = 4,
 };
 
-#define QCOM_SCM_VMID_HLOS       0x3
-#define QCOM_SCM_VMID_MSS_MSA    0xF
-#define QCOM_SCM_VMID_WLAN       0x18
-#define QCOM_SCM_VMID_WLAN_CE    0x19
-#define QCOM_SCM_VMID_NAV        0x2B
 #define QCOM_SCM_PERM_READ       0x4
 #define QCOM_SCM_PERM_WRITE      0x2
 #define QCOM_SCM_PERM_EXEC       0x1
-- 
2.39.0

