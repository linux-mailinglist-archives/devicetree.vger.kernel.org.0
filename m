Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D74F56B3571
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 05:12:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbjCJEMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 23:12:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbjCJELI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 23:11:08 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1993BAB880
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 20:09:50 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id fd25so2879384pfb.1
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 20:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678421384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfGaCzEutI1ZxAuEhg+K1BmQaCq/7g5+zrL93kp+oys=;
        b=hYP3bxNUWN+cDM56wIW5jHqBMTGJY5MpDds/b+AcTuqU6Tl+GBM8Hdk/iy+xZLDU2Q
         LcFhkkJUAtLBLgGDQ/FBdnvsSeBT6rNX/xwSUH1Rw3FpovXy0cg2cJnZ62a4hOB7CUYr
         i/I6hUAVAvdnO3eTnp0gu2SIlf4teIBioRdcUFmuFXjrIRdsDwRgYCKetGSr2/5aV/5z
         1wVtpdwJ/4DwFiDh2SM4QxN6b+zAb+uGIkW6e7mIZnZJj+dMwzJaLw2no2q+DGqEzwi1
         77nXkAWzhmrDqYE27e+rkYYSXkqql9u66ySYgu9LSWUcxl85iKlXBqoMtHTTGum4a+7V
         e9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678421384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfGaCzEutI1ZxAuEhg+K1BmQaCq/7g5+zrL93kp+oys=;
        b=PFMhfOYnynBti97NAyIT1ZC/t2o6Yb58VMrk2/pH4rdysVRAr0yg6IhYEF6euSmWNf
         Q08kSFr6tkgUgO4RSMWtJub7ca56gs1xdFXwhk39jCrKyRfaZjDUnonTShFd3+VaHJZC
         HoMf6mKuKhcx4kjast0ZCNm6EhXoygWWPnteqJsmTo6f3O6VEink9c5tTJteCAEC5Kcy
         Q3ybZuoZYlBOCaVt7RlbrGPsv23IZAIwrXhHGPN8RxccmSMqz1NO35Q21za6SDcZTtNF
         FhZOrA+/9Yk/C6rIKvUtkAjS5oBebR38V+2qm0h6eU1BRAs5uKr/At/yJt29bfxZwMWq
         dKpg==
X-Gm-Message-State: AO0yUKV3pIwXRMIxlatKfYvhXO9+HIKZLHrxkUbKduEGBiCTui2SK+Sx
        RF0Z8cboCkt9fs4PrgBZvqxK
X-Google-Smtp-Source: AK7set/4pNSj969315rt8pVl6hBMGuJfDedYhhW2cJ8CkAfOk42sbXlP+vWpBfjIMWj/N3WmPsGiwg==
X-Received: by 2002:aa7:968e:0:b0:5a9:bba9:f25b with SMTP id f14-20020aa7968e000000b005a9bba9f25bmr23736644pfk.17.1678421384135;
        Thu, 09 Mar 2023 20:09:44 -0800 (PST)
Received: from localhost.localdomain ([27.111.75.67])
        by smtp.gmail.com with ESMTPSA id y26-20020aa7855a000000b0058d92d6e4ddsm361846pfn.5.2023.03.09.20.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 20:09:42 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_srichara@quicinc.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 17/19] arm64: dts: qcom: sc8280xp: Add "mhi" region to the PCIe nodes
Date:   Fri, 10 Mar 2023 09:38:14 +0530
Message-Id: <20230310040816.22094-18-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230310040816.22094-1-manivannan.sadhasivam@linaro.org>
References: <20230310040816.22094-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "mhi" region contains the debug registers that could be used to monitor
the PCIe link transitions.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 0d02599d8867..eb87c3e5d2bc 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1653,8 +1653,9 @@ pcie4: pcie@1c00000 {
 			      <0x0 0x30000000 0x0 0xf1d>,
 			      <0x0 0x30000f20 0x0 0xa8>,
 			      <0x0 0x30001000 0x0 0x1000>,
-			      <0x0 0x30100000 0x0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0x0 0x30100000 0x0 0x100000>,
+			      <0x0 0x01c03000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges = <0x01000000 0x0 0x30200000 0x0 0x30200000 0x0 0x100000>,
@@ -1752,8 +1753,9 @@ pcie3b: pcie@1c08000 {
 			      <0x0 0x32000000 0x0 0xf1d>,
 			      <0x0 0x32000f20 0x0 0xa8>,
 			      <0x0 0x32001000 0x0 0x1000>,
-			      <0x0 0x32100000 0x0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0x0 0x32100000 0x0 0x100000>,
+			      <0x0 0x01c0b000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges = <0x01000000 0x0 0x32200000 0x0 0x32200000 0x0 0x100000>,
@@ -1849,8 +1851,9 @@ pcie3a: pcie@1c10000 {
 			      <0x0 0x34000000 0x0 0xf1d>,
 			      <0x0 0x34000f20 0x0 0xa8>,
 			      <0x0 0x34001000 0x0 0x1000>,
-			      <0x0 0x34100000 0x0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0x0 0x34100000 0x0 0x100000>,
+			      <0x0 0x01c13000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges = <0x01000000 0x0 0x34200000 0x0 0x34200000 0x0 0x100000>,
@@ -1949,8 +1952,9 @@ pcie2b: pcie@1c18000 {
 			      <0x0 0x38000000 0x0 0xf1d>,
 			      <0x0 0x38000f20 0x0 0xa8>,
 			      <0x0 0x38001000 0x0 0x1000>,
-			      <0x0 0x38100000 0x0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0x0 0x38100000 0x0 0x100000>,
+			      <0x0 0x01c1b000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges = <0x01000000 0x0 0x38200000 0x0 0x38200000 0x0 0x100000>,
@@ -2046,8 +2050,9 @@ pcie2a: pcie@1c20000 {
 			      <0x0 0x3c000000 0x0 0xf1d>,
 			      <0x0 0x3c000f20 0x0 0xa8>,
 			      <0x0 0x3c001000 0x0 0x1000>,
-			      <0x0 0x3c100000 0x0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0x0 0x3c100000 0x0 0x100000>,
+			      <0x0 0x01c23000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges = <0x01000000 0x0 0x3c200000 0x0 0x3c200000 0x0 0x100000>,
-- 
2.25.1

