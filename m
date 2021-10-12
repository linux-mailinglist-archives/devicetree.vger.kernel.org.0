Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53D4B42AD23
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 21:18:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233761AbhJLTUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 15:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232434AbhJLTUT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 15:20:19 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F66CC061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 12:18:17 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id ns7-20020a17090b250700b001a0937b87b7so2327701pjb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 12:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rZojLxNHDG9L7+3rBw8GD2erwwT1gR6rCpMitvc63e0=;
        b=tmFO6TcJoOdc9Uwt0V6Q6OIdANSPgpyKyYXF68sVhVU4R0xAQhislD8qKjtIimIDVa
         zdFb5nn6ehNoAp4vHMoIT9Mji+vLVRlE/PIAUQ3i0zhd+4+vxVkRLfSJ/yY3nb3aRZuC
         Kz4LQbD5By/aHvLScYZSZdZ6E4hK2Afy0xjW6q7WRBvZVy6J0UfEIAYi7MiL4pHW7oN4
         trkuplyZLAmeGJ8euR1Wavrd64RTePolxHvyxaNX+Rs9J5D0jKQk06opNsDrm24eVPnn
         ZpvqzLelSDG8dBOoyW8OYxYLXaq+Sm+AzvoonVkLFAd4ZLhxAUVQZQWiRZTgEEpCcHxg
         etbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rZojLxNHDG9L7+3rBw8GD2erwwT1gR6rCpMitvc63e0=;
        b=QoKOIqOZ1iAV+3ciyfVr5l9fLGDNImfoS9wNXL/XHvTyRgzNP5Vf/yHXgWWhB9p94u
         xNVDRcDUEi9xNNZAMcZU2B6SYx+HqtY2SFKGYZDxFgGElvJzlggoFvY3Vy91AHZGNZrk
         HzPcp38O2nS2PVYFGixoTb0RVujS1TZr3sP9lV+biE1Vs39mJBrNP7jSMb45iL08/7+J
         qG3JByyDkBT9WOKcUNumtB0Fhd9z7EK2ZefF1PGhZDRK9cs080M96SbvDvPk+iLdRl+T
         xrdj7LgeQpanOKG9KtRTvFxzbJ+BPmOwcMWwYQEgu4245YeHYZm9QbrU6v3RzbK6+f/H
         33dQ==
X-Gm-Message-State: AOAM5318GH5e86BKi7C+aFSEzNiIA2rCpL8viDy1b3+8cUKK5BKvAsgy
        KrnSy1gUKaT7tlzUCxOtvyq11g==
X-Google-Smtp-Source: ABdhPJxLhhrR7V1Yrp1Bh/N/xYlCfPjHADDWFcDrI1Nm4TmYW4ilTk5/Ck9mf1567yZUtUrCDO9JhQ==
X-Received: by 2002:a17:903:1207:b0:13d:b9b1:ead7 with SMTP id l7-20020a170903120700b0013db9b1ead7mr31653976plh.63.1634066297097;
        Tue, 12 Oct 2021 12:18:17 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1000:35e0:e8e2:9471:3c5b:c7c4])
        by smtp.gmail.com with ESMTPSA id z11sm11586812pfk.204.2021.10.12.12.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 12:18:16 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Benoit Cousson <bcousson@baylibre.com>,
        Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH] ARM: dts: am335x: Add rtc node as system-power-controller
Date:   Tue, 12 Oct 2021 12:13:12 -0700
Message-Id: <20211012191311.879838-1-dfustini@baylibre.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Keerthy <j-keerthy@ti.com>

PMIC_PWR_EN pin of RTC on am335x-evm, bone, and boneblack is connected to
PMIC on board, so flag rtc node as system-power-controller to allow
software to poweroff boards.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/arm/boot/dts/am335x-bone-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/am335x-bone-common.dtsi b/arch/arm/boot/dts/am335x-bone-common.dtsi
index 0ccdc7cd463b..56ae5095a5b8 100644
--- a/arch/arm/boot/dts/am335x-bone-common.dtsi
+++ b/arch/arm/boot/dts/am335x-bone-common.dtsi
@@ -399,6 +399,7 @@ &sham {
 &rtc {
 	clocks = <&clk_32768_ck>, <&clk_24mhz_clkctrl AM3_CLK_24MHZ_CLKDIV32K_CLKCTRL 0>;
 	clock-names = "ext-clk", "int-clk";
+	system-power-controller;
 };
 
 &pruss_tm {
-- 
2.27.0

