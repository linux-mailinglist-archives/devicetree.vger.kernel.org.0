Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75AC74CB38D
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 01:35:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbiCCABS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 19:01:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbiCCABL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 19:01:11 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C583968FA4
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 16:00:24 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id o7-20020a056820040700b003205d5eae6eso3404951oou.5
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 16:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=69GnuX/DlHMuyPais5LI1pLr2/a0D5I151xAdaVafa8=;
        b=ZY8iF9fzZmTNx217VFMzaaYLMDOXXmN+QRru4gNYCTaIjuRTCGeViqd4TXe9mksaiR
         xKZ7GPf2VBvywVxh5m5qY90RVNS5a3jNpmH9CC9jRH8MEVADsj+MKwdXBVJls1O4iKT0
         Lib0oy+0gkPjSyqE9xEtRNguTJILOn6WzZIJDzkPvb3FlcpzohbsRF3qnWG3K5MrwzGS
         LrbYRjQwbRQG7Gvth5cLmSPVSqZUTKlnbrc76ctxTRmob5EdsR97vLwUc7RTjQzwi7da
         uS/xWXRlMSNzLpbFm3a1eDmKGtzCQ29LOdVyGacyiBCS1O3wtLRh3i7k/iAqvQe3RmO2
         dqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=69GnuX/DlHMuyPais5LI1pLr2/a0D5I151xAdaVafa8=;
        b=ftqGig3lM6Sclbwd2gmvhWNCWrbHusg8cuXiLw267Ffe6yRn+ANm4+O8YYeushC0Ob
         1FZUC6pY+sF9OdBMNdn0tz8zYZkmQ4QqpSi+LoHCvoaMtJov1CkaT73l1NYGxoAPELyU
         JKXpyKRI+fS3UA3fOD1k1IcS+F1JHcf6fHS9mMXlgEYPWjg3lHxlqFiiZljdz19UJa4K
         GzvsdaSSRsc0FzrrM9+FPCZXV0bTxFZSGknm2CDsGer6SBM6MPMpKk0EHkImQDEkLZTm
         u9V6qqaADAd1NOTs/WOUEuZA8tajxjI01FJWOsQAWRC9+QtIYN/VvMjQHQ9LGO4/Kbce
         lIrg==
X-Gm-Message-State: AOAM530uLxRupTXQFgPvHF0+5bnEbGIuP0UFQgpIKtO5PL9tL/ttM55G
        K5wjGtt3VQNklCC2Ns9u5EwGWxZTV2A=
X-Google-Smtp-Source: ABdhPJzl7aDt87SF+6GznU825cf6beMwzCnX7pZLurFz43Xaqnz6PCO9tQpRNL+3t23Bx1MZPCv33Q==
X-Received: by 2002:a05:6808:d4e:b0:2d7:5047:37ee with SMTP id w14-20020a0568080d4e00b002d7504737eemr2076844oik.167.1646263588578;
        Wed, 02 Mar 2022 15:26:28 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 15:26:26 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3 v4] dts: rockchip: Add #clock-cells value for rk805
Date:   Wed,  2 Mar 2022 17:26:11 -0600
Message-Id: <20220302232612.25455-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302232612.25455-1-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Based on a brief discussion on the mailing list it was determined that
clock-cells should be a required parameter in the event that a consumer
of the clock gets added in an overlay.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/rv1108-elgin-r1.dts      | 1 +
 arch/arm/boot/dts/rv1108-evb.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index f62c9f7af79d..0c99a5934ebf 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -72,6 +72,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index fe5fc9bf75c9..46cad7cb94bf 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -85,6 +85,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index de2d3e88e27f..40bf808642b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -160,6 +160,7 @@ pmic@18 {
 		pinctrl-0 = <&pmic_int_l>;
 		rockchip,system-power-controller;
 		wakeup-source;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
-- 
2.25.1

