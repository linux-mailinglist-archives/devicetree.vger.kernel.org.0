Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A59A329400
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 22:45:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237741AbhCAVoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 16:44:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242117AbhCAVkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 16:40:36 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C899C061A2A
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 13:35:01 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id x29so4212280pgk.6
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 13:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TlWXwvFYXokduORUwulUZ7cOw3te/q/W8pSCRFa5whA=;
        b=Sl4NNWg8xqy7BpI7lsrbZPkY9kICEuQ4HWufUUAIfGK9vHMSr+64D9WT+oJTUT8u28
         d3ZeKB5ZYGJLYcyHGlsV81PPgPTvMa0at9WNq1D7myvxh9wBfK5i6LcqfZtz35B4Tmrl
         WkC+69sxOb2AJY8Kl94JxgfgroPNq9n0fzdPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TlWXwvFYXokduORUwulUZ7cOw3te/q/W8pSCRFa5whA=;
        b=CEoXGyZdBNV0HOoCZx29OADCSpbSJBbVwHjXWYBCJLdYNOo6PlCqCTNkap6qVQBTPD
         ugkA+/x/t+p87Fm8wEb77qvAa6cVlAJIEPogTHlZIv4IzE03ny/LE2fLdoaO7fWtsvgw
         1WzWw9r8vbaO/5tP37lx/Tf5uRglzx5wHNw5K7YcYyGVLe518LhGFw9cTOZ+XUJOv+EE
         gCmFgACH8Z43IntOvPoLVY6NisPdt4NlDl2pvksEaJ4dEtOyqlmW3xmwA1iPt0V7RRZP
         c4m2CGAE/wfn46W6rhwIrurz6jRj9m6S/+Hf1IFbLq+A1XZPYjlLxljJ5SBvTUHGsnU+
         Ko6w==
X-Gm-Message-State: AOAM531xYh/llSWktlsitflKBZG95I2h+nLjXzN/glP6cKNSjwVBFOy7
        +7gHLC7hgDrcCS3SceD1Zg90Jg==
X-Google-Smtp-Source: ABdhPJzlinyEIqF2J0y3A4xwcOxYj8VLODA3XlbQmIvff/Zcr8Go+6OyKGPZXU+ELjrkKODCSbzx4Q==
X-Received: by 2002:a63:4708:: with SMTP id u8mr15326609pga.102.1614634500799;
        Mon, 01 Mar 2021 13:35:00 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:c086:5f6:85dd:98c8])
        by smtp.gmail.com with ESMTPSA id f13sm790366pjj.1.2021.03.01.13.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 13:35:00 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/13] arm64: dts: qcom: sc7180: Set up lazor r3+ as sc7180-lite SKUs
Date:   Mon,  1 Mar 2021 13:34:34 -0800
Message-Id: <20210301133318.v2.10.Ia3795e192f5bbe17e6714e45fcb0bf5acdbd4c17@changeid>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
In-Reply-To: <20210301213437.4165775-1-dianders@chromium.org>
References: <20210301213437.4165775-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matthias Kaehlcke <mka@chromium.org>

Lazor rev3 and later use the 'lite' version of the SC7180 SoC.

Cc: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
[dianders: Adjust commit message which referred to downstream history]
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts  | 5 ++++-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts | 4 +++-
 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts     | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts
index 6985beb97e53..dcb41afdc82a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dts
@@ -5,7 +5,10 @@
  * Copyright 2020 Google LLC.
  */
 
-#include "sc7180-trogdor-lazor-r3.dts"
+/dts-v1/;
+
+#include "sc7180-trogdor-lazor.dtsi"
+#include "sc7180-lite.dtsi"
 
 / {
 	model = "Google Lazor (rev3+) with KB Backlight";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts
index 0881f8dd02c9..be44900602d7 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dts
@@ -5,7 +5,9 @@
  * Copyright 2020 Google LLC.
  */
 
-#include "sc7180-trogdor-lazor-r3.dts"
+/dts-v1/;
+
+#include "sc7180-trogdor-lazor.dtsi"
 #include "sc7180-trogdor-lte-sku.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
index 19e69adb9e04..ea8c2ee09741 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7180-trogdor-lazor.dtsi"
+#include "sc7180-lite.dtsi"
 
 / {
 	model = "Google Lazor (rev3+)";
-- 
2.30.1.766.gb4fecdf3b7-goog

