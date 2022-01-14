Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB58348E1AC
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 01:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238511AbiANAns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 19:43:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238493AbiANAnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 19:43:45 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 446F9C06161C
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 16:43:45 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id f13so1606012plg.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 16:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oOZFo592UdILGLoDGp89AJsD2A4mJA4MyK/MjP77tbM=;
        b=KVtjLHwGb6AIYwNB2flGInGHH25R4C1NvHcO4uZ8yoKCbfn0+Msq843IYhj7uZq/vQ
         MwTR1deqYLnUiV+tPYUT1SxADF8NuBmWTgYjcbJMzW/oveN6bXrJOkXYrAHDOj4IS/6W
         iTvkVbjk872M6Df84PDyn0W4FMA5Cc0Gik5sE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oOZFo592UdILGLoDGp89AJsD2A4mJA4MyK/MjP77tbM=;
        b=rIV32+t4pss5oi+SASLlJDr7i8IcBKY5AHPUM1uHbva9S6mlmNR7T3kHneohVMzLFN
         5M/QGq7Ww89PwYKxrhSf58a0In3XFaaa5zjcKZnw08oxyodfaWJOhNEBbdJQocMQ76Jv
         hCriw8t1TBXdFITVg5fOFjFAyP3GGV3NoofghdCwdS/ysRXLHCltl4RM6X8BK1BVaGWN
         aeF2TWgqoLDTvIb/88NwcVE5f/8lHfquKp7tJiEN52LRQe8wKgPcq3+jyCX4xjQ/oS43
         IUCXZqVYhhvNj4x1LIVo49CdiYkrP/FEg82+UOaWOfbyDQ4/bU6gCblJ60QatgRx/AiB
         KgEQ==
X-Gm-Message-State: AOAM53329WxtSzS4kH0adiANqxxQOReIWKs3L2lg36bdeGQnH2JrkbOY
        U2XOvshzXFJefMvIAC+byfenpw==
X-Google-Smtp-Source: ABdhPJwDuaMnySixe3jTI1iHzgs7G0LVCvvJSBOHLiQ/cTDNRUNlQr2UlYRo6HR3kTGONiNN+mBqXQ==
X-Received: by 2002:a17:903:41c4:b0:14a:4baa:4261 with SMTP id u4-20020a17090341c400b0014a4baa4261mr7058413ple.174.1642121024840;
        Thu, 13 Jan 2022 16:43:44 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:cf6e:9fa9:a398:4c9])
        by smtp.gmail.com with ESMTPSA id j4sm4061498pfj.217.2022.01.13.16.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 16:43:44 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     quic_rjendra@quicinc.com, sibis@codeaurora.org,
        kgodara1@codeaurora.org, mka@chromium.org, swboyd@chromium.org,
        pmaliset@codeaurora.org, Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: qcom: sc7280: Move herobrine-r0 to its own dts
Date:   Thu, 13 Jan 2022 16:43:01 -0800
Message-Id: <20220113164233.2.Id9716db8c133bcb14c9413144048f8d00ae2674f@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114004303.905808-1-dianders@chromium.org>
References: <20220114004303.905808-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The upcoming herobrine-r1 board is really not very similar to
herobrine-r0. Let's get rid of the "herobrine.dtsi" file and stick all
the content in the -r0 dts file directly. We'll also rename the dts so
it's obvious that it's just for -r0.

While renaming, let's actually name the file so it's obvious that
"herobrine" is both the name of the board and the name of the
"baseboard". In other words "herobrine" is an actual board but also
often used as the name of a whole class of similar boards that forked
from a design. While "herobrine-herobrine" is a bit of mouthful it
makes it more obvious which things are part of an actual board rather
than the baseboard.

NOTE: herobrine-rev0's days are likely doomed and this device tree is
likely to be deleted in the future.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/Makefile                  |  2 +-
 ...rine.dtsi => sc7280-herobrine-herobrine-r0.dts} |  6 ++++++
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts      | 14 --------------
 3 files changed, 7 insertions(+), 15 deletions(-)
 rename arch/arm64/boot/dts/qcom/{sc7280-herobrine.dtsi => sc7280-herobrine-herobrine-r0.dts} (99%)
 delete mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f7232052d286..9db743826391 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -82,7 +82,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-pompom-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-pompom-r3-lte.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-r1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7180-trogdor-r1-lte.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-herobrine.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-herobrine-herobrine-r0.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-idp2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-crd.dtb
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
similarity index 99%
rename from arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
rename to arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
index 4619fa9fcacd..8676c93590b5 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts
@@ -22,6 +22,12 @@
 #include "pm8350c.dtsi"
 #include "pmk8350.dtsi"
 
+/ {
+	model = "Google Herobrine (rev0)";
+	compatible = "google,herobrine",
+		     "qcom,sc7280";
+};
+
 /*
  * Reserved memory changes
  *
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dts
deleted file mode 100644
index 7a92679a688b..000000000000
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dts
+++ /dev/null
@@ -1,14 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Google Herobrine board device tree source
- *
- * Copyright 2021 Google LLC.
- */
-
-#include "sc7280-herobrine.dtsi"
-
-/ {
-	model = "Google Herobrine";
-	compatible = "google,herobrine",
-		     "qcom,sc7280";
-};
-- 
2.34.1.703.g22d0c6ccf7-goog

