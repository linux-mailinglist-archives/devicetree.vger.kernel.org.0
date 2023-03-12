Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65BD06B6A0C
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:25:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbjCLSZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231169AbjCLSYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:24:45 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A30BF67024
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:17:44 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id cn21so9973587edb.0
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678645002;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rC/o1AQDcGAyPZ0tU6+VZIwVNayEqqDcPKH36IGj0wI=;
        b=Mfn1f0uWfZ1Qslj66IEPL8GxCYTJxHLg1CjlUjfDJMJvydoIFrHB5rR/i4LmLpqfWx
         8yjvBpGp0cab1w8CE0vcwOVuq7siCMOIvO21PkQmBi89zoy8U0fJFTJzQHMVXRAakukK
         bfZs2/tVFuJxOAri12C2Ixxy+58EoLpsjnz5bs6wdFOcdh9WCnldtpmszJQ04DcoW/OS
         RLO/nxyw5JFAH52GT5Y3yc6AhqjfygBj8fRMoHI6BLy7yNWoArEFEe0qHeRHFukBkJ6Z
         p7RfjzfUJ2oaw/ZowxE9DIFJ9Z4D12GalNhAm9u/epdc5rMQfOkj8/fpFckTJ/Mljruy
         fsaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678645002;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rC/o1AQDcGAyPZ0tU6+VZIwVNayEqqDcPKH36IGj0wI=;
        b=p8o34U3TPrfVSjQ686mOeswEaDBWaTYRln39BnQReGrgBO+Oyf1xqTe1MrLeIxlDhI
         UidA+emT8lnUJbYFOasG2S5jdrU/S7yeDozGWL3tKIlH7ndDg4+vfAnp30FHjsw9HZsP
         G7uKpXTd1kp1585rfmDXznkJk6G5C87zLDS4ogw+JyJPTF9RfCAj/ac9wy5ab7q2SQOI
         GRtI2wN81l5Vvjhi3HbXMi0l2C6n7sdmQQEsDonU/1AOgSFS9BkZS/tYKXNAAirbS597
         WlwUFODZn4EYIx8K+2lXp4ETyvqV4cNkLmHcDjSoPzA7fvYYBMZylfHnYsCd+2iUmbrT
         Bl0w==
X-Gm-Message-State: AO0yUKVzv8IZ6xEbtsH16luvE3M2AwidhvFvVeTXPmGbwg5uehERjVew
        uLkR+pyuwcQcgObAbsnEo5jy6fIOdnENWU8M
X-Google-Smtp-Source: AK7set9o5crSdBuiWhEyplqAJYgwID9XS1lMePX0NPQhek9f3I/RVsa4f4sQBJAJlTGxwCnSrLhvlA==
X-Received: by 2002:ac2:4a8c:0:b0:4d5:95c9:4eb9 with SMTP id l12-20020ac24a8c000000b004d595c94eb9mr9419374lfp.44.1678644313289;
        Sun, 12 Mar 2023 11:05:13 -0700 (PDT)
Received: from 0003-arm64-dts-exynos-fix-wrong-mmc-compatible-in-exynos7.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id o5-20020a056512050500b004d0b1327b75sm715268lfb.61.2023.03.12.11.05.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:05:12 -0700 (PDT)
Message-ID: <640e1458.050a0220.beca.19ba@mx.google.com>
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


