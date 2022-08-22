Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E949459BD9E
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 12:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233014AbiHVKcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 06:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233871AbiHVKcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 06:32:07 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E8A73120C
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 03:32:04 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id ds12-20020a17090b08cc00b001fae6343d9fso5554172pjb.0
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 03:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=sdUtQC8RcNHTME4LoH47YANx9C/gcCBks6WtCeU62aU=;
        b=IKIrpARdU9bBuItBYRukdQx5V86JSUeCxDDScdxEwqrUi5PfOh4ZnIMBD63aX5ZbMK
         Q4xpAGEUFyxrQx6+Bgxr2QjYjcS7XC/EGCTwykDapephVyDgocJOzva45MsS135q97Gi
         EYQMxcD1IOlIPkZjA9K//MnmsDY14fIrl+03U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=sdUtQC8RcNHTME4LoH47YANx9C/gcCBks6WtCeU62aU=;
        b=6/ESqKKTNx10pCB0ICgmhKX1RDqP5oheQ0ppY1MGf7XgXw4L0/q+rrxIZV6ilRvpI1
         mXjptEtoADdbdnB9WG3jyeOR44tuTshBYcqIfSj8SUcFNxjuGwDAEpHIKs0EMYcoXQvI
         jXfwZuBBdgje3bFP0Tj84q3tUiVXb0w04bs+SNhiTbVIbqQwxejrT9N69AsImjutil/w
         MT/yIKKm1bMhI+amXH2znGQHwXs93RVuJpwOZvQOcCTW7o/SCOk1F1qT6XGHn1ydE/0n
         MrHVT0wOZ0uXznc4LFhXrPz+tAtXEYeZO+mYfipC6cdN8WMuwkUNAoBNLE5NN42lwLxy
         ycDQ==
X-Gm-Message-State: ACgBeo3J/QrzFUyaxl23gOCQuDHW1mKekNXTIEyAA6rwDOd/Dw5pBJQD
        JXmzJQAtpIlBgXukl4eClWjfTu+saqaNHAsf/MY=
X-Google-Smtp-Source: AA6agR6JmtKlTU6UOo0RpN8WiQSwlfDVXLpV7H5dKRwE4e3yVn2O6g3izQMQAKFh5GckQWGV8PNefw==
X-Received: by 2002:a17:902:b090:b0:172:deae:b990 with SMTP id p16-20020a170902b09000b00172deaeb990mr7238498plr.31.1661164324309;
        Mon, 22 Aug 2022 03:32:04 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:1990:f7e9:cb35:d592])
        by smtp.gmail.com with ESMTPSA id y4-20020a170902864400b0016ecc7d5297sm1168734plt.292.2022.08.22.03.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 03:32:03 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: imx8mm: Fix typo in lisense text for Engicam boards
Date:   Mon, 22 Aug 2022 16:01:50 +0530
Message-Id: <20220822103150.266266-1-jagan@amarulasolutions.com>
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

Fix the Amarula Solutions typo mistake in lisense text for Engicam
i.MX8M boards add in below commits.

commit <60ac35268f85b> ("arm64: dts: imx8mm: Add Engicam i.Core MX8M
Mini SoM")
commit <aec8ad34f7f24> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
Plus EDIMM2.2 Starter Kit")
commit <eefe06b295087> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
Plus SoM")

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi
index 9e6170d9394e..def7bb5d37cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) 2018 NXP
  * Copyright (c) 2019 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 / {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts b/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts
index dd703b6a5e17..a02b31c42db4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) 2018 NXP
  * Copyright (c) 2019 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 /dts-v1/;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi
index 5116079cce22..a6319824ea2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi
@@ -2,7 +2,7 @@
 /*
  * Copyright (c) 2018 NXP
  * Copyright (c) 2019 Engicam srl
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 / {
-- 
2.25.1

