Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EBD2430A62
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 18:10:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242136AbhJQQMm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Oct 2021 12:12:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242090AbhJQQMl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Oct 2021 12:12:41 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31115C061765
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 09:10:32 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id l10-20020a056830154a00b00552b74d629aso740686otp.5
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 09:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kETnTI3KYuVTyvjmQeUhrBThiBm0S+axChyL+ZVMPek=;
        b=Wyhl3/efAHBGhLczTjfp2DFGDiKNi1RtUlHr+cBGUbyrmVOrlAFot/Vhlf4GECkV4G
         KvAOJ82ttBf4JISeIfKftHQg3OdLF1VcuHpLDpvO97VuUsv9RRgiz83vzgh9hV1pXW6J
         Oh5pW4m7v4klBZbA/8DkliWM6MpkxCJKEZTcleNf4LY0pPypDTu/KfcBCo99svVt8rSM
         jTQIy2VGdYcRhuV6tW1iCPJx+msCNe33KFfN9my+aYt3BN3mPZS2GVEZhlbf+hMIr3nG
         rLUSahRKRMLPxnLuXlU7UnnCMxMl7po3Vj9VfOomRAIKyTp9kivwpJSBPo1fCPeSsfhk
         H8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kETnTI3KYuVTyvjmQeUhrBThiBm0S+axChyL+ZVMPek=;
        b=cvNVRLE2BNmuHNuB/PB8Yta4RbqC7jAv7tyrVMIFug08FVhefA5YU8YmdlincqyDDB
         1nJNJR2q36pOwm3E8BW5cLNHzFGjW6OOstMRrHHw+wyBxLzfymJ7GS2SMGVsAXLnpvXF
         wJERpqgQbb1okLsv5cRmElBLKWnhE/bzWpU19JMrWaM7+SGIIYG/Mec+rt35yl7Oj3Ve
         RzDX/1fAPKJITDbxyZoCtfQPT3eObL4QvwWaPE2itbCjtkzG45FRCN+o5IG8BchVeW/8
         QDowgT78DBEKos+cEpdD0sfzpRTcae6tbV7I1wc/WtSuGhCryQS1YttvXS8th46tBHv7
         35Cw==
X-Gm-Message-State: AOAM533FLOK9D+7xRjtjiLyoIuG/42nKFg1AnY6y6aj0X1m+5V1UqDsl
        JSyG+4ctuETxbI3nB8EfrB8ppQ==
X-Google-Smtp-Source: ABdhPJyXL3SCwPAAezLijEiWCZxLx383YEsDndUFVZMZLvYtvzPrwVi0rIxHdT/sbWzcCsHYYqz+/Q==
X-Received: by 2002:a05:6830:30ba:: with SMTP id g26mr17037007ots.32.1634487031378;
        Sun, 17 Oct 2021 09:10:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id ay42sm2514892oib.22.2021.10.17.09.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Oct 2021 09:10:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] mfd: qcom-spmi-pmic: Sort the compatibles in the binding
Date:   Sun, 17 Oct 2021 09:12:15 -0700
Message-Id: <20211017161218.2378176-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Create some order in the list of compatibles by sorting them.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changed since v1:
- New patch

 .../bindings/mfd/qcom,spmi-pmic.txt           | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
index 5ef79bf3d035..67785b6d66e9 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.txt
@@ -15,28 +15,28 @@ each. A function can consume one or more of these fixed-size register regions.
 
 Required properties:
 - compatible:      Should contain one of:
-                   "qcom,pm8941",
-                   "qcom,pm8841",
-                   "qcom,pma8084",
+                   "qcom,pm7325",
+                   "qcom,pm8004",
+                   "qcom,pm8005",
                    "qcom,pm8019",
-                   "qcom,pm8226",
                    "qcom,pm8110",
-                   "qcom,pma8084",
-                   "qcom,pmi8962",
-                   "qcom,pmd9635",
-                   "qcom,pm8994",
-                   "qcom,pmi8994",
-                   "qcom,pm8916",
-                   "qcom,pm8004",
+                   "qcom,pm8226",
+                   "qcom,pm8350c",
+                   "qcom,pm8841",
                    "qcom,pm8909",
+                   "qcom,pm8916",
+                   "qcom,pm8941",
                    "qcom,pm8950",
-                   "qcom,pmi8950",
+                   "qcom,pm8994",
                    "qcom,pm8998",
+                   "qcom,pma8084",
+                   "qcom,pma8084",
+                   "qcom,pmd9635",
+                   "qcom,pmi8950",
+                   "qcom,pmi8962",
+                   "qcom,pmi8994",
                    "qcom,pmi8998",
-                   "qcom,pm8005",
-                   "qcom,pm8350c",
                    "qcom,pmk8350",
-                   "qcom,pm7325",
                    "qcom,pmr735a",
                    or generalized "qcom,spmi-pmic".
 - reg:             Specifies the SPMI USID slave address for this device.
-- 
2.29.2

