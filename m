Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E810421CA8
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 04:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbhJECsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 22:48:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbhJECsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 22:48:21 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64EEC061749
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 19:46:31 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id e66-20020a9d2ac8000000b0054da8bdf2aeso21908435otb.12
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 19:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2v0JRGt7XQAIcUQyPryK4l59xx+ixSfRdzcmJ7Ifc6E=;
        b=nUjK3wvf+yJ4MHvLPmEL7StrPrQWSx7XM+ohhKiWAJn6LqkbQ9oHruwYBdMokklk8k
         JwWn8G+7Ozlgo+0xeaObs+JLZjP6TjbgbeHDqtWJBHhSiG2GZAAi1pMH/o4KzDNuI02h
         BGjsWmQQ5qGw690I80qIhSBZr04u6C5nr6Z/+469oPvjL4hR9sUI554nFIRdWi15PRlR
         5Ma5QkaNsdzNKAw6yyM4QLnHy/R+mve4LMKRZoKWXdvaMDzBHs6vTIdxCmUHAmXak/IN
         zrzdYqUTiCWea7upxbYzYiukODVVJEGaVf0GkOPrGhAWhiEWJ8o2Fj6znDKn6VZjZS54
         y9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2v0JRGt7XQAIcUQyPryK4l59xx+ixSfRdzcmJ7Ifc6E=;
        b=AoW7sT0yKS+Gf/DDIBUPOv3hn0G/Ba/Sx7cxHTUkfOCVZU7aQ+r0ijn40//+TP1Liv
         9AkaNy2g2Byu9LEOWMAo1HHdx3Bh+mznUQQjEeSzdXNfVPbylttT9i268JJAlqmMYa2l
         8Emd3m40VX3/ab0IT5JD4NvT+NYhXGXJevtVXBzFRHtys9pCsya/yjvnOBMGorvGp1rd
         jGI66yZvffvepjKKNTw1cGF99WgqvStsrkq0QMUuZ5QzD1r7kKMLJZFMHzOkx9SO1afv
         nAcbx0+pnncwMIyvAFUIxTxOcZ/o9coUj4c6O5og4S4bX8m9o7lEgt/m8CvdRb3+buU8
         6nQg==
X-Gm-Message-State: AOAM531mFhQvapffsSTlHUUWlkzNz9kDvVMEUMj/o5wKWunWjgS6a9Bo
        lmw3qTXPegbsbKT9iWpC+rQyDQ==
X-Google-Smtp-Source: ABdhPJw3ZWEe1C/zsKGXF9zCJltt9v/8r3R2hD3/qFoo7i1IcQWTzVWQYu2uTWkI3q4dfLX3z10YVA==
X-Received: by 2002:a9d:2f28:: with SMTP id h37mr11920795otb.196.1633401991254;
        Mon, 04 Oct 2021 19:46:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id l25sm3034712oic.54.2021.10.04.19.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 19:46:30 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mfd: qcom-spmi-pmic: Add missing PMICs supported by socinfo
Date:   Mon,  4 Oct 2021 19:48:12 -0700
Message-Id: <20211005024812.2038249-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20211005024812.2038249-1-bjorn.andersson@linaro.org>
References: <20211005024812.2038249-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm socinfo driver has eight more PMICs described, add these to
the SPMI PMIC driver as well.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/mfd/qcom-spmi-pmic.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/mfd/qcom-spmi-pmic.c b/drivers/mfd/qcom-spmi-pmic.c
index a35d5cf16faa..0920d7aa43a7 100644
--- a/drivers/mfd/qcom-spmi-pmic.c
+++ b/drivers/mfd/qcom-spmi-pmic.c
@@ -31,6 +31,8 @@
 #define PM8916_SUBTYPE		0x0b
 #define PM8004_SUBTYPE		0x0c
 #define PM8909_SUBTYPE		0x0d
+#define PM8028_SUBTYPE		0x0e
+#define PM8901_SUBTYPE		0x0f
 #define PM8950_SUBTYPE		0x10
 #define PMI8950_SUBTYPE		0x11
 #define PM8998_SUBTYPE		0x14
@@ -38,6 +40,13 @@
 #define PM8005_SUBTYPE		0x18
 #define PM660L_SUBTYPE		0x1A
 #define PM660_SUBTYPE		0x1B
+#define PM8150_SUBTYPE		0x1E
+#define PM8150L_SUBTYPE		0x1f
+#define PM8150B_SUBTYPE		0x20
+#define PMK8002_SUBTYPE		0x21
+#define PM8009_SUBTYPE		0x24
+#define PM8150C_SUBTYPE		0x26
+#define SMB2351_SUBTYPE		0x29
 
 static const struct of_device_id pmic_spmi_id_table[] = {
 	{ .compatible = "qcom,spmi-pmic", .data = (void *)COMMON_SUBTYPE },
@@ -54,6 +63,8 @@ static const struct of_device_id pmic_spmi_id_table[] = {
 	{ .compatible = "qcom,pm8916",    .data = (void *)PM8916_SUBTYPE },
 	{ .compatible = "qcom,pm8004",    .data = (void *)PM8004_SUBTYPE },
 	{ .compatible = "qcom,pm8909",    .data = (void *)PM8909_SUBTYPE },
+	{ .compatible = "qcom,pm8028",    .data = (void *)PM8028_SUBTYPE },
+	{ .compatible = "qcom,pm8901",    .data = (void *)PM8901_SUBTYPE },
 	{ .compatible = "qcom,pm8950",    .data = (void *)PM8950_SUBTYPE },
 	{ .compatible = "qcom,pmi8950",   .data = (void *)PMI8950_SUBTYPE },
 	{ .compatible = "qcom,pm8998",    .data = (void *)PM8998_SUBTYPE },
@@ -61,6 +72,12 @@ static const struct of_device_id pmic_spmi_id_table[] = {
 	{ .compatible = "qcom,pm8005",    .data = (void *)PM8005_SUBTYPE },
 	{ .compatible = "qcom,pm660l",    .data = (void *)PM660L_SUBTYPE },
 	{ .compatible = "qcom,pm660",     .data = (void *)PM660_SUBTYPE },
+	{ .compatible = "qcom,pm8150",    .data = (void *)PM8150_SUBTYPE },
+	{ .compatible = "qcom,pm8150l",   .data = (void *)PM8150L_SUBTYPE },
+	{ .compatible = "qcom,pm8150b",   .data = (void *)PM8150B_SUBTYPE },
+	{ .compatible = "qcom,pmk8002",   .data = (void *)PMK8002_SUBTYPE },
+	{ .compatible = "qcom,pm8150c",   .data = (void *)PM8150C_SUBTYPE },
+	{ .compatible = "qcom,smb2351",   .data = (void *)SMB2351_SUBTYPE },
 	{ }
 };
 
-- 
2.29.2

