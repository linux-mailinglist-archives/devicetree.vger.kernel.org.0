Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7456959E734
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243334AbiHWQ1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:27:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244259AbiHWQ12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:27:28 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408F8101CF
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:53:38 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id f21so13955356pjt.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=lFqUj0e3/i/tqAwqQTigUc8WNmkBbVlRnS33tyG3uh4=;
        b=oNz2n2HmIfOVwqOfbPnC1VAEas74GkCeXMRqgHG4hvhxvnwGErjDgRakkJglJ4Pfri
         3czov789LoG3YppYJMUY16x5y38C5qfnCNHVRLa949oS57ZBjvoPJqVxaXt1GSMSTOjk
         LmAlXgsmoxCtrhfo+FJWLfngdcxm8zU+jy1Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=lFqUj0e3/i/tqAwqQTigUc8WNmkBbVlRnS33tyG3uh4=;
        b=KFDE7HklGlOcuoFdxKfIGwSY6PUpwuB+yTkJ17bUtJWWCSn6/x8Lsqp4ka9mZnhjvp
         3yIhrR113iwPJxk9PwVGOoy+kFR7rsEEOEqahz+6oDfnEam+BhC+XIWbQFbg+kShSaOb
         +lgxcofmA5SROdSDgHLuthF/ZPhqsRwqo3NJCBD6gn0dgWHJ9JykrCCwNNjHevNHeEof
         KwxRKDwlNunHrj5DdtzrZ7vAL8PV5J6cmVaWsmpaL63NiE65Nso3AxQnikmyX7nb8s71
         gJCf/lx2H+nQG7LkqnE42iktRZHL3F7hfGC4vlZkTOPX2OQ5lvxHjxujPWLw/VIRAeSi
         uHQw==
X-Gm-Message-State: ACgBeo3ilhFmYDjMvgUeR5YrjDhfalLeTDgOzHyJi76r8CgqaCOavLtd
        u20MGvKr0hz66zGhUGGQqBKTsg==
X-Google-Smtp-Source: AA6agR6D3q2MK/0KAFpccK/AlJz+B6nxc7lUJ0MgxSJVNN0zPyuk71gILx3Unygouz+ytRjBlKq+pg==
X-Received: by 2002:a17:902:ea0d:b0:172:ce60:1d4f with SMTP id s13-20020a170902ea0d00b00172ce601d4fmr16234655plg.68.1661259217651;
        Tue, 23 Aug 2022 05:53:37 -0700 (PDT)
Received: from localhost.localdomain ([94.140.8.41])
        by smtp.gmail.com with ESMTPSA id l6-20020a170903120600b0016784c93f23sm10472984plh.197.2022.08.23.05.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 05:53:37 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] arm64: dts: imx8mm: Fix typo in license text for Engicam boards
Date:   Tue, 23 Aug 2022 18:23:25 +0530
Message-Id: <20220823125325.1232046-1-jagan@amarulasolutions.com>
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

Fix the Amarula Solutions typo mistake in license text for Engicam
i.MX8M boards add in below commits.

commit <60ac35268f85b> ("arm64: dts: imx8mm: Add Engicam i.Core MX8M
Mini SoM")
commit <aec8ad34f7f24> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
Plus EDIMM2.2 Starter Kit")
commit <eefe06b295087> ("arm64: dts: imx8mp: Add Engicam i.Core MX8M
Plus SoM")

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- s/lisense/license/

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

