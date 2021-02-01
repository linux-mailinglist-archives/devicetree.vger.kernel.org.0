Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E99330A624
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 12:07:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233439AbhBALFf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 06:05:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233411AbhBALFd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 06:05:33 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9053C061574
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 03:04:52 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id w18so11325806pfu.9
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 03:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b0TEYyZ6Jpm1D9Hrf4Uirq5wkSl8rc4Igbimt+j818M=;
        b=Q8vAROO3LiDQh2TyKpVQclnSdULEDybL7T1GUumLWZKu/e3kssUpjvftmatn8c86nV
         /lT3PQx2ktWIMnigAuQKW3sYlbZSwjyf6UwEHtjqBBLsyh2vYwWqoUHsJ+o5c1ZLfhLh
         YcC9aNTeRnIDbbeSL/YuA53nOe9IYNcF25SGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b0TEYyZ6Jpm1D9Hrf4Uirq5wkSl8rc4Igbimt+j818M=;
        b=F/ai31dRfMzZ+tCToL3wF21saiMjITI8CkR3Pc02f1x5Tih6OUQl8BA67QrGMk27d0
         KmKMUBeoCBCuMwZPA5McS3do3k04S5d37XnsLqD/fj4WEA36aZ0h43HFybX+lF1ZyGbJ
         JMHOOmGcpY3LsaFSBABvx1QwkFmkWUEu+Wipt0e8F5zOeZFqHx68VC1T48wG5U0P9OaJ
         oPJtuKInP5UxHdGTaQgJbn9DLK5Vqs9Tg+ae3ynlUBCwctAV5Ti6yXGjaKc0pmH26cbZ
         RIaDe/F6XuaNf20e3I4ec58MEPkfC4LzJLJC2eNatMdX6KPa1HxRkyxlF3KWWSHMUoMK
         hlPQ==
X-Gm-Message-State: AOAM530XiplpfIZFaQ5te12e06mBl5HKK8EO7ncbPK7NhO7R2rgehsLn
        HJGAILyW0q1H6Mndv0OmmM/msr3nXNybDg==
X-Google-Smtp-Source: ABdhPJw9Te6d20sslYeqPQX+ekmR/N9YluTXGvvWRjDjCRO5dsDJOKwTHO2iICQGBysLzgpFTvmQIg==
X-Received: by 2002:a63:f95b:: with SMTP id q27mr16897164pgk.82.1612177492234;
        Mon, 01 Feb 2021 03:04:52 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:a0cd:1b84:6d56:68e1])
        by smtp.gmail.com with ESMTPSA id i6sm18041057pgc.58.2021.02.01.03.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 03:04:51 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: Add gce client reg for display subcomponents
Date:   Mon,  1 Feb 2021 19:04:47 +0800
Message-Id: <20210201110447.383473-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mediatek,gce-client-reg for ccorr, aal, gamma, dither.

Fixes: 91f9c963ce79 ("arm64: dts: mt8183: Add display nodes for MT8183")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index b3b8afec5ab9a..0ed37dd9d80b4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1058,6 +1058,7 @@ ccorr0: ccorr@1400f000 {
 			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
 			clocks = <&mmsys CLK_MM_DISP_CCORR0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
 		};
 
 		aal0: aal@14010000 {
@@ -1067,6 +1068,7 @@ aal0: aal@14010000 {
 			interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
 			clocks = <&mmsys CLK_MM_DISP_AAL0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
 		};
 
 		gamma0: gamma@14011000 {
@@ -1075,6 +1077,7 @@ gamma0: gamma@14011000 {
 			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
 			clocks = <&mmsys CLK_MM_DISP_GAMMA0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
 		};
 
 		dither0: dither@14012000 {
@@ -1083,6 +1086,7 @@ dither0: dither@14012000 {
 			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
 			clocks = <&mmsys CLK_MM_DISP_DITHER0>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
 		};
 
 		dsi0: dsi@14014000 {
-- 
2.30.0.365.g02bc693789-goog

