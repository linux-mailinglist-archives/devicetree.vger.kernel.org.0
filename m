Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A7043F406
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 02:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231455AbhJ2AoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 20:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231453AbhJ2AoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 20:44:14 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37BF6C0613B9
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 17:41:47 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id b4so1112387pgh.10
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 17:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I9emccBjxIUKCazA5NlmCKoYwEhSE/Ii2FhA4UznN5A=;
        b=hptQ6NfM9kgGdpm18xSquI4pxrrC/WROjj1EsjD5DGn3bcVZA1hEN5MEBjxgpP09ac
         b/jUrV4wpWEoZYy2wGFW7BHk8cJyXp6DYC0c5Aq03lafir7TgGYbMJylJJJhmgfgDK2E
         oExV3wQZmW7hj0gNAXkekbgwgwLf4XiQuK9MY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I9emccBjxIUKCazA5NlmCKoYwEhSE/Ii2FhA4UznN5A=;
        b=3+UBjkiPEV5ypBJjh4s0YCB5TkepzaaEZYz0g4z0n86Nk8D8NGBzzCT3jfg1ToMZTB
         TgR6Eb88HZ4Es4StSTfNnL+sbBVtA+F14r+zax6yK5EfvGQZolpAPaVYwBwcfGmDtXsP
         XHigC8fDkrZn/v94DXvVGkQtiWcxDME9d+IWib/x0D0Nhr8/tH/VrpWpLSNSnGcy0j4I
         6YeEa9bq9pP5ydBR85p4CskFfOFyCHZ/4vUZS5RJ4Q9pZ1Lu6y3wIUWHnSUm9SVL7UAo
         9w8k7o4j00jY60zzTV54QhRtPajWQzEPhkLgjPhJEWVlFG2LDNUfopCMT4TgJwY7CcmP
         G9BA==
X-Gm-Message-State: AOAM533McA6a+bbFEgM2jvqE8Uo43EANy0ou18BKVAOYl3TNwJsz1yXj
        t6kJjC2+F7diuNLhnx0RhRaGDw==
X-Google-Smtp-Source: ABdhPJzgsterO23hTorJ3opyoseKbT+GzfbBnxDSohKnB1sq5iI6WAlo7pQCfUJTyN70+X1P4EDUOA==
X-Received: by 2002:a63:1cd:: with SMTP id 196mr5668549pgb.39.1635468106740;
        Thu, 28 Oct 2021 17:41:46 -0700 (PDT)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:e956:ddc4:6e27:e270])
        by smtp.gmail.com with ESMTPSA id s2sm4373846pfe.215.2021.10.28.17.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 17:41:46 -0700 (PDT)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: sc7180: Support Homestar rev4
Date:   Thu, 28 Oct 2021 17:41:17 -0700
Message-Id: <20211028174015.v2.3.If7aaa8e36f1269acae5488035bd62ce543756bf8@changeid>
X-Mailer: git-send-email 2.33.1.1089.g2158813163f-goog
In-Reply-To: <20211028174015.v2.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
References: <20211028174015.v2.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support Homestar rev4 board where Parade ps8640 is added as the
second source edp bridge.

Support different edp bridge chips in different board revisions,
now we move the #incldue line of the edp bridge dts fragment (e.g.
sc7180-trogdor-ti-sn65dsi86.dtsi) from "sc7180-trogdor-homestar.dtsi"
to per-board-rev dts files.

Since the edp bridge dts fragment overrides 'dsi0_out', which is
defined in "sc7180.dtsi", move the #incldue line of "sc7180.dtsi" from
"sc7180-trogdor-homestar.dtsi" to per-board-rev dts files too, before
the #include line of the edp bridge dts fragment.

Signed-off-by: Philip Chen <philipchen@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Explain why "sc7180.dtsi" is moved out of "sc7180-trogdor-homestar.dtsi"
  in the commit message.

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
2.33.1.1089.g2158813163f-goog

