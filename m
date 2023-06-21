Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 860BC737BBE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 09:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbjFUGrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 02:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbjFUGqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 02:46:47 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACAF02727
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:45:17 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-666e3b15370so3121798b3a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1687329917; x=1689921917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3PWNcofH+6pB/oLs4RxdAm9c1izTSo17OEuhMv0ehyw=;
        b=BiikUF1NGcgVQiQtmg5R1VKOOquvob6a+jWN8XJknCyvhAxqVsel6CW+W88hCB21v+
         gQpsvH5Hn73BCh7yafz0H0FN2ik/G7ueTHCur8mpPjRzVnKXbc7UBUNIz0DQJt6dEzYk
         az9DYMp6y6Nf70egY+xLh7MTmuhgtG3oP4qdoqe9clmBaz3dk4UseBO8bdtRCz/RdyF/
         uCB91/ltEpmYE0x9kUVVr162Zgns4wUm6syC0kJM3T9VIf2IrZ8Dwf1vVrGrkLKpSGe3
         Hmg5d1Pnhjw9Ygg3nD6hIIjBW233fIG4jqWzHFW7yaKGS3l6hSDIiTdkG3ZpgYU5+rCc
         kNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687329917; x=1689921917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PWNcofH+6pB/oLs4RxdAm9c1izTSo17OEuhMv0ehyw=;
        b=XuNsHYDBkT3Icvz5kmfBUNvDvzF91N5cUWwr8Os2/HlGEfBqAf+7pSO3QxeXNs9vhM
         /oEW5KnWZzncHfuN5Ofm2FfN6DGZZM6b6andaA97f8TsBp68OSn0GEnS7qw9yHP7o+dI
         JYovIg+Sb7Nu9MufCwWlMbmr5AJPBAEFKgOt5mKTpg7wqtjydmkTT7wWqiyVyMgXAG6E
         vf3jpGpV/K45zPPfH9mD5LVcbuCBP9G8TpJZgA8KBgrupKJuXLBnbWfOYaxXO4P0d6m5
         J/xCkR94Zfc9adAzxhXOk2vE19Kt9oT2y+q7oFkKybPblPrm6txdSY50X3XSrWvA4MGy
         vTGQ==
X-Gm-Message-State: AC+VfDwUKCc/DgNB1i/Mw/zj8/46D1uV/Ks44XAiWK35XSy4n/Pp7HhA
        zv/WXW5CKR2vGr2wZ+ZCBNs3Lw==
X-Google-Smtp-Source: ACHHUZ6+HQYwCqqt0Zk/7ftvnvknnfwp2Rkgd8Zph0O9k8aPu2QDBzLbLJJhS2dDalfuKzZhD8pCYQ==
X-Received: by 2002:a05:6a20:4419:b0:121:d489:5f11 with SMTP id ce25-20020a056a20441900b00121d4895f11mr6686983pzb.50.1687329917058;
        Tue, 20 Jun 2023 23:45:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:332c:9233:93ac:9811])
        by smtp.gmail.com with ESMTPSA id s2-20020a170902ea0200b001ac5896e96esm2643877plg.207.2023.06.20.23.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 23:45:16 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH] arm64: dts: rockchip: rk3588: Drop unchanged max-frequency
Date:   Wed, 21 Jun 2023 12:15:07 +0530
Message-Id: <20230621064507.479891-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

200MHz is the default rk3588 emmc max-frequency added in dtsi, so why
the board DT files are adding the same value explicitly?

Drop that unchanged property value.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts         | 1 -
 7 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
index 38e1a1e25f33..727580aaa105 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
@@ -25,7 +25,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
index 1c5bcf1280b4..4a87ead15b3f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -25,7 +25,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 4b2d857ee219..f06b2ddcfcb6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -149,7 +149,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index afda976680bc..435fa1456552 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -217,7 +217,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4d9ed2a02736..f0ce502e9b95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -401,7 +401,6 @@ &sdhci {
 	no-sd;
 	no-sdio;
 	non-removable;
-	max-frequency = <200000000>;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
@@ -429,7 +428,6 @@ &sdmmc {
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
-	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	sd-uhs-sdr104;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 93b4a0c4ed0f..82478a452533 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -25,7 +25,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 901825514f9d..c251f2fa0061 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -61,7 +61,6 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	max-frequency = <200000000>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	status = "okay";
-- 
2.25.1

