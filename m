Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BAC553589A
	for <lists+devicetree@lfdr.de>; Fri, 27 May 2022 06:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234216AbiE0EyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 May 2022 00:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbiE0EyH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 May 2022 00:54:07 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E002E2CC81
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 21:54:05 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id m1so3199139plx.3
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 21:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ah0qq/44qu92lJrc/9Ym0VrmRbzTW6DXhcFw2aQA3A0=;
        b=CjLcfK30sB5zIjoOt9r3bEp/4Um7vtJFS3CPwj0l2PJ/Vt34aB2/ye5F8QCCwprSeq
         vjImnF/O+DCNYpvS4T2OSYWhJoPC8vFAIeCofmQq3HmnlayjUG3xVq8hHF+mU4+TxGfe
         r3aE6dZBTgs7+puwSYJJSQsM0jslNNP/QPMvs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ah0qq/44qu92lJrc/9Ym0VrmRbzTW6DXhcFw2aQA3A0=;
        b=I3/ya5yxvJ/pr/YZiGYgyD/7hyFaqahQZr9G5Vy3bRIsNusTOgb2Xx189+IF676dgq
         A/XPuOZ+n4yWEKaa8WiPQTCfBu0THI6AY53eMatjoUDiKjnEO7MxI3tcHlRHgOsPoZps
         L4Ya9u9QHfdy63DshVsTji1ZYLIBk7b8O9JAbs5xDcBWgPtsOtmsjaOoCOrd5kYxWGWk
         aeYJAKrTKHmnTy7vY1MXPraBZP7RogYTIiTzZs4piGjEW1neN+7IYCQjxkNcwKiUs7sM
         QPX1RcM7m59OuHnyG7o/kqWYsu0pK7hgMxUEHTwsNJ0JroOjSz0oaN0lqv2K7PazQZfs
         qYIg==
X-Gm-Message-State: AOAM531052nJ7L0lm8vRt3FlXQbOosrmealYLv2D5YFYNsHkdu10mUQx
        4qLe0UuycHT830hIYF/4FSHBKA==
X-Google-Smtp-Source: ABdhPJyQaVNSreDjoLxy1z7jBdXbXPN06DmgzqzQXFXxZBEMuheWNL6LT0VtrAIIdHBerUVhfbR8JA==
X-Received: by 2002:a17:902:ebd1:b0:162:224f:abbb with SMTP id p17-20020a170902ebd100b00162224fabbbmr23874766plg.160.1653627245309;
        Thu, 26 May 2022 21:54:05 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6eff:2f2b:6d21:12b])
        by smtp.gmail.com with ESMTPSA id l184-20020a6391c1000000b003c14af505fbsm2398481pge.19.2022.05.26.21.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 21:54:04 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8183: kukui: Split out keyboard node and describe detachables
Date:   Fri, 27 May 2022 12:53:54 +0800
Message-Id: <20220527045353.2483042-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kukui devices krane, kodana, and kakadu use detachable keyboards, which
only have switches to be registered.

Change the keyboard node's compatible of those boards to the newly
introduced "google,cros-ec-keyb-switches", which won't include matrix
properties.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 ++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi  | 6 ++++++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi  | 6 ++++++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi   | 6 ++++++
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi         | 1 -
 5 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index 2d7a193272ae..981c889a22ea 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -4,6 +4,8 @@
  */
 
 #include "mt8183-kukui.dtsi"
+/* Must come after mt8183-kukui.dtsi to modify cros_ec */
+#include <arm/cros-ec-keyboard.dtsi>
 
 / {
 	panel: panel {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
index 28966a65391b..4b419623c8dc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
@@ -372,6 +372,12 @@ pen_eject {
 	};
 };
 
+&cros_ec {
+	keyboard-controller {
+		compatible = "google,cros-ec-keyb-switches";
+	};
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_KAKADU";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
index 06f8c80bf553..4864c39e53a4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
@@ -339,6 +339,12 @@ touch_pin_reset: pin_reset {
 	};
 };
 
+&cros_ec {
+	keyboard-controller {
+		compatible = "google,cros-ec-keyb-switches";
+	};
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_KODAMA";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
index a7b0cb3ff7b0..d5f41c6c9881 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
@@ -343,6 +343,12 @@ rst_pin {
 	};
 };
 
+&cros_ec {
+	keyboard-controller {
+		compatible = "google,cros-ec-keyb-switches";
+	};
+};
+
 &qca_wifi {
 	qcom,ath10k-calibration-variant = "LE_Krane";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 8d5bf73a9099..db1388550f98 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -986,5 +986,4 @@ hub@1 {
 	};
 };
 
-#include <arm/cros-ec-keyboard.dtsi>
 #include <arm/cros-ec-sbs.dtsi>
-- 
2.36.1.124.g0e6072fb45-goog

