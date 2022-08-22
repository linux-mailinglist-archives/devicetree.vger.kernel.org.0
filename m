Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2045A59BD24
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 11:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233665AbiHVJwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 05:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbiHVJwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 05:52:30 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B09E82982F
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 02:52:28 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id p18so9433610plr.8
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 02:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=l/pLXlXgVyep10FEWX90faOKFAnCMaF0abs584Gd/2w=;
        b=J+n9JZ+f7Cvc79C+8yo3QkF4NX/k5m8lATuCZmx/LZ19WxUZCIg25SR50MzQYbJNZ6
         7SvHTGy6snGK9pERM4/QwnUbXQ2LS2q0onLXKKm7z+wQM0U1/NrBjZDv0DRts0L4j4l/
         HAQai+AFtgcsza3CAvYd7z+F45D38yjZeZVvU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=l/pLXlXgVyep10FEWX90faOKFAnCMaF0abs584Gd/2w=;
        b=8DBO9201fGL6ZtOpstMkMzzL6RYQIvlMtWencDXCpdXjC3q2HahUAgO1GX7fGdbDRf
         rjQpqrgTCt73lwXMannQrajD25UikWJzxVnzUf+mj3xSCYjnUxX2fM2Y7YjEBUgo5IdE
         soKWx9qHJ4DqjcN5xVxHW7IJjs5ZNgFHMbfQNc6qNkVL6vUmBPlXoLVFGrjH4erUgaCx
         36ACdJf9m2IVzymh9etDR69ifX1gbljy4oSJWFGOotoMJxVYNSqebYZ5njFDWXauk7L8
         3HuwOQfjiaYqMnXbSBU5Gu2/TnZ5BOWZuL8U9886lxsuZWgjL+eCOEANJ5OT3N1EYdl2
         F/eQ==
X-Gm-Message-State: ACgBeo3zAW311urVoGEekeRefykPz04TUWvGohEpOO6gX46uDRUmWv9t
        plAFIbhdw09KIBqorJfFu9oOLg==
X-Google-Smtp-Source: AA6agR6JfJyIBZ8rr0WmNo25/dTCtk0vizuzsYM4dVs5YjYVdzMfQ/+T5gsxABCPr6sN7Yb7qKAX8A==
X-Received: by 2002:a17:90a:150f:b0:1fb:aee:cd2a with SMTP id l15-20020a17090a150f00b001fb0aeecd2amr10233425pja.47.1661161948160;
        Mon, 22 Aug 2022 02:52:28 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:1990:f7e9:cb35:d592])
        by smtp.gmail.com with ESMTPSA id d9-20020a17090a2a4900b001f326ead012sm9604839pjg.37.2022.08.22.02.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 02:52:27 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] ARM: dts: stm32: Fix typo in lisense text for Engicam boards
Date:   Mon, 22 Aug 2022 15:22:05 +0530
Message-Id: <20220822095205.264587-1-jagan@amarulasolutions.com>
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

Fix the Amarula Solutions typo mistake in lisense text added in below
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

