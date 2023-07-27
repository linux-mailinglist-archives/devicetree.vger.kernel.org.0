Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD586765495
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 15:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233017AbjG0NJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 09:09:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232770AbjG0NJQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 09:09:16 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61ABF26BB
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 06:09:15 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fbc1218262so10099325e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690463354; x=1691068154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LfI3hFLaFslE2ut4ABq9gA6oxvBYW17t8wTdiYXypo=;
        b=rHb6hCs2a+N8Sj2s66KoEMK75Td4Tjd/zoNJ0+GhAUP/msL1zspKkVI9Lbm/0hZQRU
         tzi2CQBS78awmgftcTpUkZdZ41HmEXCo3gl2v1dYQETdv666MgkvTp7Rc6voOzfqLWLL
         A0yOeaThHWVHbq/y2wdqDeOcdqOYFQESSX5sQaZSEvQnYZRPpC0Wqc6q9LpXVQs9mNnJ
         WAsgiw5FwpwyksL9E7B3pJ/EjpnLW/zsK7W7RWk3apso3SF9HEYGM66ZxsKwFsV9QTao
         /nVvq87m5EZqa8hch7+1u9Z3FeTbF1lhEUHeFyWfmV8S9NDhpgN/ZBNlgOtGxY1xDhrq
         L0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690463354; x=1691068154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7LfI3hFLaFslE2ut4ABq9gA6oxvBYW17t8wTdiYXypo=;
        b=DOUUD+rKSBHhrl2PIiz97QsghepbBni2hkHXnl/UGjP/bYhUjtCKmrcsBo/R/0V8nb
         oP1A+gUEJKBr5l1rTh1R3xjTvxynXgguWWlXf7MBpXUF7Sq3NkgV0bvJUEWqxzNnQTrC
         ikfh6/525FTgcdQy6EMl4ShjPFJlDu8BymF0c4AO82okcoU5nqjWfZED330TwxqFsxyB
         uafQKAsNWhC5F71QLLQSk9A4lwc4a9qGTagMl6uTFPpCxW9xD0XZ51aAoPr9TjbQC6pV
         f9Z9rUYcA/ihMKxlIiF8jFKcVmW/bkTvGeLfnAmtHR9gN+z8Bseq4jq+sjUGK1xv9izo
         BhhA==
X-Gm-Message-State: ABy/qLY3l7m6yv1QZikardWQfthX3OEEBSySRylZ/Ge5xm3RYpx1gvhO
        FvMDQrsrxWAg9Fwy9hYcDMhbwg==
X-Google-Smtp-Source: APBJJlECI/vThNChE3IgWj+RGZTt9uIS0Y8uIqSJUTjxO7pvIiK6rJnvQs5yLpYYlSV4YBI6lnDrYg==
X-Received: by 2002:a05:600c:255:b0:3fa:9939:47c with SMTP id 21-20020a05600c025500b003fa9939047cmr1652741wmj.37.1690463353690;
        Thu, 27 Jul 2023 06:09:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:28d:66d0:4512:80d4:6b13:bb70])
        by smtp.gmail.com with ESMTPSA id h14-20020a05600c260e00b003fbca942499sm4698042wma.14.2023.07.27.06.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 06:09:13 -0700 (PDT)
From:   Esteban Blanc <eblanc@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, u-kumar1@ti.com, eblanc@baylibre.com,
        jneanne@baylibre.com, aseketeli@baylibre.com, jpanis@baylibre.com
Subject: [PATCH v4 4/6] arm64: dts: ti: k3-j784s4-evm: Fix interrupt ranges for TPS6594 PMIC
Date:   Thu, 27 Jul 2023 15:09:06 +0200
Message-ID: <20230727130908.10656-5-eblanc@baylibre.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230727130908.10656-1-eblanc@baylibre.com>
References: <20230727130908.10656-1-eblanc@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Apelete Seketeli <aseketeli@baylibre.com>

This patch fixes the interrupt range for TPS6594 PMIC on MCU/WAKEUP
domain for RTC peripheral.

Signed-off-by: Apelete Seketeli <aseketeli@baylibre.com>
Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
index 657fb1d72512..62a0f172fb2d 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
@@ -107,7 +107,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
 		#interrupt-cells = <1>;
 		ti,sci = <&sms>;
 		ti,sci-dev-id = <177>;
-		ti,interrupt-ranges = <16 928 16>;
+		ti,interrupt-ranges = <16 960 16>;
 	};
 
 	/* MCU_TIMERIO pad input CTRLMMR_MCU_TIMER*_CTRL registers */
-- 
2.38.5

