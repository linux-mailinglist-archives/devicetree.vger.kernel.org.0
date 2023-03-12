Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB1F6B6A02
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:21:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232085AbjCLSUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232140AbjCLSUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:20:35 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1D1127D6B
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:13:19 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s22so12965604lfi.9
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678644701;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rC/o1AQDcGAyPZ0tU6+VZIwVNayEqqDcPKH36IGj0wI=;
        b=l1DpXyni6ytSRLhmXx/6VWWarwUFwH5nTkRwVpZm/JZcccJQG9NSdxh75tCBa+qtNw
         ZJEU51b4+dcHYTCKKfBmB2T6bWevMmF9jMrUcC4Fl91V7L+DqACL5t1hSJ325215xoKn
         uf3xtZogVwB8zHjdjnnuAm58O6QG0gkR1kwwNafOtzu5yB2xjwLpPq/NjJPKDmjv8ShH
         nnt967fz82rXzkmG05stkXXUIa60krj5J2mKRuUkRLAcpwM1tFCZLhzgP98rgZSly059
         726beT/jgoO9NYH/OsinoME/WdoNEVPQDTOnZGZ+bXuSFo/S/26fklmEp5tMPvasSN49
         E+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678644701;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rC/o1AQDcGAyPZ0tU6+VZIwVNayEqqDcPKH36IGj0wI=;
        b=ZTCNqO8nQhJdG4tGjh0zz1ySbYgiYLsWaX5wmr1C4EoVF2tAy3r/TBOBd6pisZtZFT
         fllJehCLnJ3mykpUs3Z67tNC0/KWAQLlLl1w9/rJ/prAhlm61gyDYU3xMS7pI2i0+8a0
         cUn3ARKT62aT6Ir7Nb4TTF9Mf0I9Euo8E/PcPOu0LqhFXexiOux4qaEoU+Km88R0M1yv
         4AvbTU+DYfXyA/M9ISxJziSWfAXlCfWr16Acja1AshawRPGkjSwsyP4ZXaKqj32tywEa
         ZnWpAEMo3/y+wDokjJ8YnF0wfYzSvxiNUHhJBkY0vO5UJu5GVkyls0vZaZWmdunjHvuu
         8nKQ==
X-Gm-Message-State: AO0yUKVIB4S+ZjoUO4oBWtqskGkZ/zNdoRUlVb3wKH5odqFoexUXnNkh
        Ry1CvXks4PbsUzBfMtKrKZxrvQcqgw59JXgi
X-Google-Smtp-Source: AK7set/ggbmugHZzv0LWkUG0iT8fzV1/2p2pzgiCNGhrhNU/Hf34ZGPI98iEpxrErj3rlIHuTQdvDg==
X-Received: by 2002:ac2:514d:0:b0:4cc:6f59:ec79 with SMTP id q13-20020ac2514d000000b004cc6f59ec79mr8291484lfd.47.1678644701536;
        Sun, 12 Mar 2023 11:11:41 -0700 (PDT)
Received: from 0003-arm64-dts-exynos-fix-wrong-mmc-compatible-in-exynos7.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id q4-20020a19a404000000b004db44f782aesm715201lfc.4.2023.03.12.11.11.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:11:41 -0700 (PDT)
Message-Id: <1678644516.665314-3-sleirsgoevy@gmail.com>
In-Reply-To: <1678644516.665314-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 20:58:50 +0300
Subject: [PATCH v5 3/3] arm64: dts: exynos: fix wrong mmc compatible in
 exynos7885.dtsi
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This DW-MMC variant is not actually compatible with
"samsung,exynos7-dw-mshc-smu", and requires an additional quirk to handle
very short data transfers, typically used by SDIO cards. Update the
compatible string to "samsung,exynos7885-dw-mshc-smu" to reflect this fact.
---
 arch/arm64/boot/dts/exynos/exynos7885.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7885.dtsi b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
index 23c2e0bb0..b0addb0b3 100644
--- a/arch/arm64/boot/dts/exynos/exynos7885.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
@@ -294,7 +294,7 @@ pmu_system_controller: system-controller@11c80000 {
 		};
 
 		mmc_0: mmc@13500000 {
-			compatible = "samsung,exynos7-dw-mshc-smu";
+			compatible = "samsung,exynos7885-dw-mshc-smu";
 			reg = <0x13500000 0x2000>;
 			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <1>;
-- 
2.38.3


