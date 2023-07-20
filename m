Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3C375B102
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 16:15:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232143AbjGTOPq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 10:15:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjGTOPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 10:15:45 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BD9A2137
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 07:15:43 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e526e0fe4so1213293a12.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 07:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689862542; x=1690467342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s1eL6ou30S0LTWBf2ctKzmWNJYDyrMM+62kAi59wxTc=;
        b=Csf5vUphxxPezEj6X/HKWjmb5Ijqctg+O90d5Di9tQWsF1UJpZiZjoyKk6PBt4EGnq
         IHyk3WB2mhSwQPoxH3gy8yq3drc1BO21O3ULRW3KT0uqR/AjeXpACh1UA0Z7Gk/1Ltvb
         iUcUznyntxrudPUZtIeZwiYg52wPMpnC0k5z1y0lQCAVMTHa4x2gWnwoNtSG4NhsYLjB
         iNLZa0xrJlXm3Hd1LUrdeXvikOmOFtdk3l/GTu9RaJTEZsYzeZJPukAUyPTjWeHquHva
         ZZuykHrMFgSxGaArK2+1JheJ1iAaRrF35StlGK/lKNr51k/59Ksd6WmU8wkCYMymvoJY
         V5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689862542; x=1690467342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1eL6ou30S0LTWBf2ctKzmWNJYDyrMM+62kAi59wxTc=;
        b=S1YIrh5PvWB9Rr1zlNOVcIaPjvlUv6NEBYIElJfMdgBIjs/SsEW2JubAFkOSB50C6r
         fI+DRGu9CVXsAx1voRZ0GAjSNgXEuJ32M/wrFs2pv31fQ3yKBJtaI/VZc1CkpoOXRzbg
         ndQd/Bfeib+Z40k1jRxCszyEiWPPV/QZ8L7WYuAONnBKhEXewbeKwINOSZMMJXqn0agW
         EY8p05hcyiUcALKJ+gGzPv+Z5/lco9ap3pQmQy4PuWL8F85w0eo1zVP9F38bnQD6GqWs
         yihGo3LQKBh1FJzWBwgSN50bYTtg+Thl5nG3/wPLhxRk0Ix1J44VzGd/8sOFUlK9aa/v
         I8Fw==
X-Gm-Message-State: ABy/qLZFsuxE5rZ6d0dMT7aUtMx4edJ2PRPoEz5GuS3bHPehY9U3TGD1
        63gzwbPFzxdb6HZsfAqOXhYQvg==
X-Google-Smtp-Source: APBJJlGXM58shUkfT8f7zvBfNW7Tvgas63QMlwJPEnjw/oUQAhYfq9PAp9XxpDqkEZ5FsdFRO54xiw==
X-Received: by 2002:a17:906:cc18:b0:988:d1d5:cd5b with SMTP id ml24-20020a170906cc1800b00988d1d5cd5bmr5272688ejb.75.1689862541743;
        Thu, 20 Jul 2023 07:15:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id d20-20020a17090648d400b00992a9bd70dasm783473ejt.10.2023.07.20.07.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 07:15:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Artur Weber <aweber.kernel@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Linux Kernel Functional Testing <lkft@linaro.org>,
        Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: [PATCH] ARM: dts: samsung: fix Exynos4212 Tab3 makefile entries
Date:   Thu, 20 Jul 2023 16:15:37 +0200
Message-Id: <20230720141537.188869-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Makefile targets are DTB, not DTS.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Closes: https://lore.kernel.org/linux-arm-kernel/CA+G9fYsfziBmQGQMGAKojhemCXssFyiNgk6aNjVXpJNNFh_5mg@mail.gmail.com/
Fixes: ee37a457af1d ("ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0 boards")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/Makefile b/arch/arm/boot/dts/samsung/Makefile
index 4469ec147ca3..7becf36656b1 100644
--- a/arch/arm/boot/dts/samsung/Makefile
+++ b/arch/arm/boot/dts/samsung/Makefile
@@ -9,9 +9,9 @@ dtb-$(CONFIG_ARCH_EXYNOS4) += \
 	exynos4210-smdkv310.dtb \
 	exynos4210-trats.dtb \
 	exynos4210-universal_c210.dtb \
-	exynos4212-tab3-3g8.dts \
-	exynos4212-tab3-lte8.dts \
-	exynos4212-tab3-wifi8.dts \
+	exynos4212-tab3-3g8.dtb \
+	exynos4212-tab3-lte8.dtb \
+	exynos4212-tab3-wifi8.dtb \
 	exynos4412-i9300.dtb \
 	exynos4412-i9305.dtb \
 	exynos4412-itop-elite.dtb \
-- 
2.34.1

