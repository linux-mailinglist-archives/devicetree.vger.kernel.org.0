Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F500412C08
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 04:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352346AbhIUCmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 22:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346612AbhIUCSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 22:18:37 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084B1C09B191
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:39:26 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id k23so12672513pji.0
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=frpV2KjL9O4b/2Y9jxZTDUyRJEQdHYp6on9tzVgeCIQ=;
        b=ZWlVLl0edVPr49dYp31FiTmSJxyPEQx3iZqavs7jGQDcyh8VyIvlCT0X4dFACT5z2W
         DqFzCiB/KBwo8feodMxGxSfPudZnnSjpPEy8wpl8IGJk59BSh9X/Mkb0mI0venyUcBn7
         qNAcLIRrUwdbE4eh/ZtE++h9OWmKpvwVwJ5yA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=frpV2KjL9O4b/2Y9jxZTDUyRJEQdHYp6on9tzVgeCIQ=;
        b=pGcnLB8r5vt6dR0nC8dRS8dzP/MdthYIRwIYKMSgdBx7WMmWi9f1L5Ud+Oa6XP9G//
         kwtW0l9ETCFiQ5j85e15WVJ5saqTsw6SpksQV8lVZu713CPUCZWXGcnjXYRGdViawDr7
         zw/QyY27TCmOKt//zZTeid7cttGQ+JT3M+GljYi/rhezuYs23SUcstIRv9bs6vIvvtuJ
         UmMlYsXQ9W5BUAUhn5Ip/jcFJETmGjFEoCylbAHEhmH19H0A3K6JCKIOpeTl42PMhnQg
         6anH6pI6Ilpf6P9WnHYLHTk875RQpFW9Ys8MMuObudma8dXqb7imqpHdVncGY3TFIAyj
         WB7A==
X-Gm-Message-State: AOAM532Q/BUlwvvxXd24mylfyBmIa0M3w1esGyFEmlhj/GIh3XpC3I1F
        kseum/1jjbyQm7Lz44BoKzqndw==
X-Google-Smtp-Source: ABdhPJzgKvvf2bobtfDNd9fqzq1s9eSAWtu4TmcZ3I7Ye0dLz8rX8jFmO7/cGm/5Cq1p4QkF+MM/Dg==
X-Received: by 2002:a17:902:7488:b0:13c:9740:3c13 with SMTP id h8-20020a170902748800b0013c97403c13mr23849037pll.76.1632163165487;
        Mon, 20 Sep 2021 11:39:25 -0700 (PDT)
Received: from sujitka-glaptop.hsd1.ca.comcast.net ([2601:646:8e00:b2f0:e1f3:7004:a225:f03a])
        by smtp.gmail.com with ESMTPSA id b3sm14499075pfo.23.2021.09.20.11.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:39:24 -0700 (PDT)
From:   Sujit Kautkar <sujitka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     swboyd@chromium.org, devicetree@vger.kernel.org, elder@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sujit Kautkar <sujitka@chromium.org>
Subject: [PATCH v1] arm64: dts: qcom: sc7180-trogdor: Enable IPA on LTE only SKUs
Date:   Mon, 20 Sep 2021 11:32:50 -0700
Message-Id: <20210920113220.v1.1.I904da9664f294fcf222f6f378d37eaadd72ca92e@changeid>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the IPA node for LTE and skip for wifi-only SKUs

Signed-off-by: Sujit Kautkar <sujitka@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor-lte-sku.dtsi | 11 +++++++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi         | 11 -----------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lte-sku.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lte-sku.dtsi
index 469aad4e5948c..fd4b712037542 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lte-sku.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lte-sku.dtsi
@@ -17,3 +17,14 @@ &remoteproc_mpss {
 	firmware-name = "qcom/sc7180-trogdor/modem/mba.mbn",
 			"qcom/sc7180-trogdor/modem/qdsp6sw.mbn";
 };
+
+&ipa {
+	status = "okay";
+
+	/*
+	 * Trogdor doesn't have QHEE (Qualcomm's EL2 blob), so the
+	 * modem needs to cover certain init steps (GSI init), and
+	 * the AP needs to wait for it.
+	 */
+	modem-init;
+};
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 6e96024a487cd..3d8b9c6b21a85 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -754,17 +754,6 @@ alc5682: codec@1a {
 	};
 };
 
-&ipa {
-	status = "okay";
-
-	/*
-	 * Trogdor doesn't have QHEE (Qualcomm's EL2 blob), so the
-	 * modem needs to cover certain init steps (GSI init), and
-	 * the AP needs to wait for it.
-	 */
-	modem-init;
-};
-
 &lpass_cpu {
 	status = "okay";
 
-- 
2.31.0

