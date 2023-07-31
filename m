Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A27A7769410
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjGaLBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjGaLBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:15 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E6A83
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:14 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2685bcd046eso2373836a91.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801274; x=1691406074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSUkajj9vQk/niNIRcq2pUFOSu5eZnt2RDC8js+87Hk=;
        b=h3Wc5vKtf4P1y1TpzhsWEbSQpbJpkAde9Z0fIZZyyRr8xbzEUP44GgcI7meTeWAnid
         N7Be+cbmSEOd1rtvCiVfrAhLRgdQyWAKB4+2D+VRs1mC8k4ychTzv4tpeuvvKlylNOpg
         55MP2bT3/qxY5kpZE7oaqoGb5dzaI8Ttoe7mWAmZaGiZUbXe/1OibX4TXIWD/a+Zrgu9
         TBFP2JFaOaKunJzQUMP6BDpOLX/nCpZoetS7fPJe2k/9o63whWcuaNtyXnJQjqsM0y1t
         5R7CI5YWGjtTN9LY3j7MS1ImPJIofPozuvTSlLnx4eQ23fzNrTFaOb1SURUhFkOeQ6+r
         LoqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801274; x=1691406074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vSUkajj9vQk/niNIRcq2pUFOSu5eZnt2RDC8js+87Hk=;
        b=J1xqkBFTsDsrKJgIWslLgQCGWYsvNrsxlZ1E6mI2lUHbKKzizzyBekdAU015xCcXoJ
         0gjC/gUU24K5nGAO+Kp2ptHsAS7yuPkvQgYapSiZx2KCtkJD6MH5kNXXWiwDFpLmY/Cr
         5LmKsM4G2WgDd32X1DkF2S7xLHpc+15BK/Pl+CllmtnCgRQXouUI8QbaCili+jCWJBCz
         pXgSy1uITiI4QwJ12ZyUcAI5XbtBxg7cJ630TCffcTaBPMiZA35qJWMKlYDcRuj9ycUb
         90JB6G/3vUol/6NijK+uOo65nphWjv+B9cG4CttKl3Y9aXY8c5KOJp+dJDEhgPiaOvIh
         QdyA==
X-Gm-Message-State: ABy/qLbPAwZNhWcQmoY4KypL7f0J0wzdaI/r/9TH12NjeUecilhu9OEI
        KgZPwswqfk7wksktgTdkfvqa0A==
X-Google-Smtp-Source: APBJJlFv+Auhpp+ucD2nmECue5JQg/g2CIwB//tveGShOF7nv4DbI4vc+goUslqYFxUEf3hdE8vFsA==
X-Received: by 2002:a17:90a:fd03:b0:25e:d013:c22c with SMTP id cv3-20020a17090afd0300b0025ed013c22cmr8567808pjb.47.1690801274239;
        Mon, 31 Jul 2023 04:01:14 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:13 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 14/14] ARM: dts: rockchip: Add Radxa Display 8HD overlay
Date:   Mon, 31 Jul 2023 16:30:12 +0530
Message-Id: <20230731110012.2913742-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string of Radxa Display 8HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile               |  1 +
 arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0a275549b213..053d24978f82 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	radxa-display-10hd.dtbo \
+	radxa-display-8hd.dtbo \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
diff --git a/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso b/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso
new file mode 100644
index 000000000000..d42499f8d6b2
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa Display 8HD compatible.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&panel {
+	compatible = "radxa,display-8hd-ad002", "jadard,jd9365da-h3";
+};
-- 
2.25.1

