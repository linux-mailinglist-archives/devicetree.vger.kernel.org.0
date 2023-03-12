Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 025B46B688B
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbjCLRDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbjCLRDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:03:07 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EEF719AE
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:03:05 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id bi9so12869270lfb.2
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678640584;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yNccjh9ehO5GzEa2MK08HfZDjH6EdpZB9/Uqslpa9j8=;
        b=dsGv6cZ8fzu3aURK/gjfey24mvDGlrjGVZC4GwmXfwNnit65ACkVNn+IT7CyiDrpvz
         2xxtUP9GL/wMM53fPqBaPbFuVkvhsaME6GFbaHWGSW7RxFgl9a7U+gZUWC3/ChpckdgA
         ZE5ws+LFsfLCsL+G4lbZiB5Kapsz45nVm7xpBHpdLg73Jq40mY0XvS8oxQi9mdofm0Ii
         S2+F/P5/7sqjylHqL6sO60qRi6xiNc654hYqO67/0EEKQhHtMrdjh7U81IeDlgnuPsyj
         ob2EkzyZqCbCp+/X9Ljgdt37/an5Qjpc+L7fd7K7hwfGTTytGUZl0aFc1TQuMlgcqr8w
         r0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678640584;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yNccjh9ehO5GzEa2MK08HfZDjH6EdpZB9/Uqslpa9j8=;
        b=KvCXZPnN3HajtGSWbC9y4wa75Hwg9TALUMo2EQXDQ2A5VKsdrCSb84JhaZeSC0Wv4W
         oGa6z3DLRRXoXVLR/0ILTsVhITmoV12Y60WX0923UKshSDCHwJfmgNhDFu4ipEbJXwO6
         mKHY9sAk3oLCd4al4vV9KQoYKWeUO/OKXa+z45c+YntCMaXNSte42NuQigLZEB2DKDZM
         WJGzZ3nNlFSNwnlwKExS4w/VvrKNM0MOFZlFDFyZs1Ihl2w/kJI0CDitOhXzeeMgiWVJ
         9anozsi52laSqsg+tZBgziY2N79KbskVC7Z0cdLa3DmrlkJxoFz+uwNrjvRCHDk3kujU
         AjFA==
X-Gm-Message-State: AO0yUKULPO6b3s1wJ5OC9WTufcG+i6mKUskddWYjkUV9zSkmTUHPh37o
        KvV8TL9JB6eZalCQO1ssjwzrnPNVCXxALZO4
X-Google-Smtp-Source: AK7set9V6A08whHwaVTNB5j+QiJ8KuTgNVkn2IPcaJgF47Yaa4kJV88jAUUrUEXB+9sS3GSmYJCLMg==
X-Received: by 2002:a19:550c:0:b0:4b6:a6e4:ab7a with SMTP id n12-20020a19550c000000b004b6a6e4ab7amr8424711lfe.8.1678640583836;
        Sun, 12 Mar 2023 10:03:03 -0700 (PDT)
Received: from 0002-arm64-dts-exynos-fix-wrong-mmc-compatible-in-exynos7.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id w6-20020a05651203c600b004cc7acfbd2bsm703601lfp.287.2023.03.12.10.03.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:03:03 -0700 (PDT)
Message-Id: <1678640497.9030156-2-sleirsgoevy@gmail.com>
In-Reply-To: <1678640497.9030156-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 19:59:29 +0300
Subject: [PATCH v4 2/3] arm64: dts: exynos: fix wrong mmc compatible in
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
very short data transfers. Update the compatible string to
"samsung,exynos78xx-dw-mshc-smu" to reflect this fact.
---
 arch/arm64/boot/dts/exynos/exynos7885.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7885.dtsi b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
index 23c2e0bb0..4b94ac9da 100644
--- a/arch/arm64/boot/dts/exynos/exynos7885.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
@@ -294,7 +294,7 @@ pmu_system_controller: system-controller@11c80000 {
 		};
 
 		mmc_0: mmc@13500000 {
-			compatible = "samsung,exynos7-dw-mshc-smu";
+			compatible = "samsung,exynos78xx-dw-mshc-smu";
 			reg = <0x13500000 0x2000>;
 			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <1>;
-- 
2.38.3


