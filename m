Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C049B66DB9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236262AbjAQKzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236495AbjAQKzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:31 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD79E2FCE5
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:30 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id v3so21645998pgh.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdJOc6HmPoDjd/7V0dPuhrTlxhOueTXLQLGnwbV08gU=;
        b=UJfOAbjo/SviBm6fQ+/Vv6qQAtLAxZYsQ3sy0EzbA5CjQxx1KD0nfPyNLhVyONvIec
         4jIFsE46Nrh14tYR98YtTwA4Usxs1vRfa5sCH+UzDCTL3vUd0/IUa+hzw8K6+m8H3TqP
         sAbSC2TGtsjcoz4pMczGJ3U2F6DfbzdfROKfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdJOc6HmPoDjd/7V0dPuhrTlxhOueTXLQLGnwbV08gU=;
        b=VluMD6xqKLVRcjv9XVxCqJLOSe511Ush5RG2NOUPRnPCTWQKAeANVQECcqCE9lvzC7
         v+oMDuzxIGxCR1bbtM3PNS6+BwOQVvvvP5PyLT8YPlWzv6TXzF3UoRAFMBO6DEO1oOM7
         ixPW2vB1uZa8RwWRjL9jaaMRpumuvYbDOHrv79G2Bjlu89dS8BkrsC04ZU7GRQtWY5Ig
         iBOyULJDbiTx5PSgDHHUR+2RIdWzOqrrf9UCg8fcuYq5KG/CWmb7BpizdPSfDYt54x1w
         6n083G5gwbuPnz7VyzVUBpCXd4BSvVh1IYj0xHKAVw3CcihVZ8GBbVGVbpKuTlLPVKYd
         YWxQ==
X-Gm-Message-State: AFqh2kq56N2K6pXRyg94WkMRISL8uL5H9dUsHBz5Qbvcnc6p9K7GgFW7
        2gxaSB/abWJYO+tu9TNXr/XAMAtTl9jyECF8Vfc=
X-Google-Smtp-Source: AMrXdXu33Ja/XnAn0PBA98EgnuNi0Z24u9Km2ZUY11zOLBU0mcHpF6cB39J5Msmh0iMQEv2NcknUoA==
X-Received: by 2002:aa7:8a0e:0:b0:58d:9850:d55f with SMTP id m14-20020aa78a0e000000b0058d9850d55fmr3003182pfa.21.1673952930589;
        Tue, 17 Jan 2023 02:55:30 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:30 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for Radxa CM3i
Date:   Tue, 17 Jan 2023 16:25:01 +0530
Message-Id: <20230117105504.18296-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the model name and compatible strings for Radxa CM3i SoM
and Carrier board based on Radxa recommendation.

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 225dbbe4955d..0c9a918b809a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -7,7 +7,7 @@
 
 / {
 	model = "Radxa CM3 Industrial Board";
-	compatible = "radxa,cm3i", "rockchip,rk3568";
+	compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc0 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index a4c33310ca42..8ca15b723799 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -4,8 +4,8 @@
 #include "rk3568-radxa-cm3i.dtsi"
 
 / {
-	model = "Radxa E25";
-	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
+	model = "Radxa E25 Carrier Board";
+	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc0 = &sdmmc0;
-- 
2.25.1

