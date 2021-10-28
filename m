Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EA7C43F26E
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 00:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhJ1WOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 18:14:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231322AbhJ1WOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 18:14:05 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D809C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:11:38 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id in13so3389038pjb.1
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E2XYIXxsuydI8ioAGS2fQXnQKNt1DsfxEx8xKppyXQU=;
        b=VqLj8waAnEF+goliIoRaUjzVr+g5HL63zzjrS76mjzr7yAqHE9fVDRdYO5eLrk94TC
         LJ7CygJJLfv1KxkAv5JWga2nnjFsCtbmVUs/CoXY5gbcvN+PTjHYWVQbVIBk8oVBwz8a
         faEeZucH1Ku6TxvCOJ5FcDrptWVCl3vJyOapo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E2XYIXxsuydI8ioAGS2fQXnQKNt1DsfxEx8xKppyXQU=;
        b=nN131VPudhkVTxXCbe6X65Ehy5LpE/g3fF01MObcr7HditkJgrBjx1C9f7C/bqqE+8
         e7ZoXgqTpMI+9q6XzXP1ng1C6Gv28f326V1J20byQpzgq0WHSQFoLuHNM/Uq12yLR6/a
         ImoJ1VSqQE6VBa4wUWIlD70P85I9oFR6vROfjusYOTLVvOB+tV8W/kfSUMijPGqMF5oc
         RRY26LmtkK1PJG2Kl88MYxFLHG2ayhI6o/d7LPTPS/grN0Ff96ZWslgQWiJHmdYri+4Y
         aZEoy6iw/jqM5ZiOhE5fTG6UjPR0jySK3RQHR+3Un3jl361EvGYAAa+02H1PpfI5BqoQ
         mgcA==
X-Gm-Message-State: AOAM531TvlFwf80YRn9WAd1cTeOGl8Dhn2qDYk4i62/smQtaVbfrY2Tc
        DfCCOHRuMltHm68HA0rOsRRmFg==
X-Google-Smtp-Source: ABdhPJzcNZsBgTjAuTy1EmmPdat5c/8rHkaLVHRt9eON7hxzgyRBvA2aL/UFu5K+dIxhrhYgEtIZ+A==
X-Received: by 2002:a17:90a:71c5:: with SMTP id m5mr15753014pjs.105.1635459098062;
        Thu, 28 Oct 2021 15:11:38 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:9954:4c46:483e:f139])
        by smtp.gmail.com with ESMTPSA id b8sm4634367pfv.56.2021.10.28.15.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 15:11:37 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: sc7180: Support Homestar rev4
Date:   Thu, 28 Oct 2021 15:11:32 -0700
Message-Id: <20211028151022.2.Ib9070172c8173d8e44c10352f68f2f507a151782@changeid>
X-Mailer: git-send-email 2.33.0.1079.g6e70778dc9-goog
In-Reply-To: <20211028151022.1.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
References: <20211028151022.1.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support Homestar rev4 board where Parade ps8640 is added as the
second source edp bridge.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

 arch/arm64/boot/dts/qcom/Makefile               |  1 +
 .../dts/qcom/sc7180-trogdor-homestar-r2.dts     |  2 ++
 .../dts/qcom/sc7180-trogdor-homestar-r3.dts     |  6 ++++--
 .../dts/qcom/sc7180-trogdor-homestar-r4.dts     | 17 +++++++++++++++++
 .../boot/dts/qcom/sc7180-trogdor-homestar.dtsi  |  3 ---
 5 files changed, 24 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f637c4d3729f..ba99aba1d51a 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -57,6 +57,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-coachz-r3-lte.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-homestar-r2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-homestar-r3.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-homestar-r4.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-lazor-r0.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-lazor-r1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-lazor-r1-kb.dtb
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r2.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r2.dts
index db6c2da67cea..70032983fb65 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r2.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r2.dts
@@ -7,6 +7,8 @@
 
 /dts-v1/;
 
+#include "sc7180.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 #include "sc7180-trogdor-homestar.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r3.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r3.dts
index 3fd8aa5bb7a6..e92e2e9e48ed 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r3.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r3.dts
@@ -7,9 +7,11 @@
 
 /dts-v1/;
 
+#include "sc7180.dtsi"
+#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 #include "sc7180-trogdor-homestar.dtsi"
 
 / {
-	model = "Google Homestar (rev3+)";
-	compatible = "google,homestar", "qcom,sc7180";
+	model = "Google Homestar (rev3)";
+	compatible = "google,homestar-rev3", "qcom,sc7180";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts
new file mode 100644
index 000000000000..fb27106bbb4a
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Homestar board device tree source
+ *
+ * Copyright 2021 Google LLC.
+ */
+
+/dts-v1/;
+
+#include "sc7180.dtsi"
+#include "sc7180-trogdor-parade-ps8640.dtsi"
+#include "sc7180-trogdor-homestar.dtsi"
+
+/ {
+	model = "Google Homestar (rev4+)";
+	compatible = "google,homestar", "qcom,sc7180";
+};
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
index 4ab890b2a1d4..f32369af1351 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
@@ -5,13 +5,10 @@
  * Copyright 2021 Google LLC.
  */
 
-#include "sc7180.dtsi"
-
 ap_ec_spi: &spi6 {};
 ap_h1_spi: &spi0 {};
 
 #include "sc7180-trogdor.dtsi"
-#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
 
 / {
 	/* BOARD-SPECIFIC TOP LEVEL NODES */
-- 
2.33.0.1079.g6e70778dc9-goog

