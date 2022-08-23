Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E760459E739
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244717AbiHWQ2c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:28:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243191AbiHWQ2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:28:12 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C69111BB10
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:55:29 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id c13-20020a17090a4d0d00b001fb6921b42aso1338724pjg.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ntf8pJ/mCr/PN47lvfeT07hvZTemlqDjjhowOXyjUhk=;
        b=hm6IiuLSPsReps3SjptCRALv42PeBxuhXENo4NYyT96hYgc/3YuX3j2l4yDgToVTe8
         YH6fn4Efl6Q/6ATSSI17iRz3b/Z9LT7rv6rJKp+4vwgovQrBWVhN+S+mU7JPwYoUyBki
         ICws51cofqZQ06ZLr3RM//t1oucS6LBx0+fMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ntf8pJ/mCr/PN47lvfeT07hvZTemlqDjjhowOXyjUhk=;
        b=mGg2NEBQMpKaX0Ykg0Y2JUcx3pdE1Xq7oUCjRKeHOoP6KWIfAVUGTeU0IUaRUqdm0e
         YGPQowNQKiF5TVt/LV/0ANwK81M+/HjnTcCWJrcucd6XZxXY+TpDEtTEBewRk9/HqLAo
         zWU9LtV1fxPq5rtH6aJ14QLdZccwdG7UNPdWc6aNWYltyTvSVY+FGMt6q2Gm7dTh6fWr
         9kQVOf7AF4IcURAEuYnBG/1xUwM8YZrf5kNFF7oSclxfDGI5MAqkd9Dlz2dQS3d7KcbT
         8YHErr612da6bPNytZ8B/lvnlMNg0yYypP9J+NvxE6E/QJG6HAftn/8QgTwy3MPawU3L
         klpw==
X-Gm-Message-State: ACgBeo1h/TdizA6OFRLzBaPpObIK9HhJZ4Ofl5BrhA4P7S7evYOhfHYB
        jJjbhiPq6kyxFDafToR4cuq+CfejEQIx5ZEBOus=
X-Google-Smtp-Source: AA6agR7TxdZmV+a+y/3/0TEcrQx6vCajTGFAzpTn21kgQ1258WwCkmIwU0MZ/ed1Gr0Rsrv0x3coyA==
X-Received: by 2002:a17:90b:1a8f:b0:1fb:6f83:81b3 with SMTP id ng15-20020a17090b1a8f00b001fb6f8381b3mr1311638pjb.205.1661259328942;
        Tue, 23 Aug 2022 05:55:28 -0700 (PDT)
Received: from localhost.localdomain ([94.140.8.41])
        by smtp.gmail.com with ESMTPSA id n11-20020a63a50b000000b0041c8e489cc2sm9055134pgf.19.2022.08.23.05.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 05:55:28 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] ARM: dts: stm32: Fix typo in license text for Engicam boards
Date:   Tue, 23 Aug 2022 18:25:17 +0530
Message-Id: <20220823125517.1232448-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the Amarula Solutions typo mistake in license text added in below
commits.

commit <3ff0810ffc479> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
C.TOUCH 2.0 10.1" OF")
commit <6ca2898df59f7> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
C.TOUCH 2.0")
commit <adc0496104b64> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
EDIMM2.2 Starter Kit")
commit <30f9a9da4ee13> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
SoM")
commit <1d278204cbaa1> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
MicroDev 2.0 7" OF")
commit <f838dae7afd00> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
MicroDev 2.0 board")
commit <0be81dfaeaf89> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
SoM")

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- s/lisense/license/ 

 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts   | 2 +-
 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts        | 2 +-
 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts       | 2 +-
 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi               | 2 +-
 .../boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts  | 2 +-
 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts | 2 +-
 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi            | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts
index 2a2829283456..9a2a4bc7d079 100644
--- a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
index 1f75f1d45181..60ce4425a7fd 100644
--- a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
index ba92d7d8ed00..390ee8c05754 100644
--- a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
index 01166ccacf2b..9de893101b40 100644
--- a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 / {
diff --git a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
index fae656edd820..0d7560ba2950 100644
--- a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
+++ b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
index b9d0d3d6ad15..d949559be020 100644
--- a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
+++ b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
index 0b85175f151e..fb4600a59869 100644
--- a/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
+++ b/arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 / {
-- 
2.25.1

