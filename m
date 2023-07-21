Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E907475C7DB
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 15:33:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbjGUNdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 09:33:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbjGUNcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 09:32:55 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7DE42D7B
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 06:32:51 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b962535808so28540131fa.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 06:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689946370; x=1690551170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W0uYu1nGfZP69MiWdgiab3hwZZBCh7iqRIV/41EShlM=;
        b=czaYeDM6idmON/pURat3n23uBUqcOtV5kRrTNR6GLLqmGA0wike+dIiaD1fM7BnBT4
         O3101zuZsq+GsETxVSxIADsBBCnuk6/xlqjT+OCVzCALS75q8SF8CEtBxEz3t3sNgCkV
         VvetBOZLpxMhU1sL2urU6VUC2t9pE34QtAUMYvKek9PxDQ3RqujRVyjRbyIqHeH40G69
         4awL/rKl13t7gdqJy0JeUfjV6R9ilEFz7t5HH2fNcPdZfOcongzJlWVjTDFt/FxdMyXR
         0jhzavh5bfdTA0o4CYQe6DxOH2K3J4MHaboM1/r/cQ8AkmCJG1JO7Mvk38jtMLgpjlkM
         UxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689946370; x=1690551170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W0uYu1nGfZP69MiWdgiab3hwZZBCh7iqRIV/41EShlM=;
        b=OK5BazLqODV2lWkSpHK+GsRmzswFsAlWB1fXbTLZifFEqX2ejg9Sj619szfOmSe4U0
         HYNRKmL4EdHjn6BI3Ga71qvxmyHV+kl4okSKp6G7b8TDv87ZpS7jvcunK6Y0KV6Nq+7X
         I8TACmafEop3GERG4hk0Rp8i8V9VJtWKO771mZorGSrdLr+ygo3X2LTA22pdugR9mXec
         5q60z3mRX6+KQEZU7LOge0b0JutvpdQgRMOpq6D+mkDr6Mck70KSGxl5bFjmn7v3OXGr
         qyeaZPmGDuv3839qKytUFqDqV377T9Xs6EXza1496FIGGDyDDiSsoCBaNJ6viHmQ2oS5
         1Jtg==
X-Gm-Message-State: ABy/qLY68BUwpGO0tjUV3tt06bDtNS+sx9YpnYXGrrCjuvxYkMTbzyAk
        mYe08tAvtVRD70Jx3DxOcKAwdg==
X-Google-Smtp-Source: APBJJlEi2MopZU7oAnL/+rBCeIMPcKzqLqaV3FA3GkXs7JdLJx009f/WfhoCtJCvTEJdBIMABJsFLQ==
X-Received: by 2002:a2e:9587:0:b0:2b6:e2aa:8fc2 with SMTP id w7-20020a2e9587000000b002b6e2aa8fc2mr1625081ljh.46.1689946369905;
        Fri, 21 Jul 2023 06:32:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z3-20020a170906270300b00993017b64a8sm2170613ejc.224.2023.07.21.06.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 06:32:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: samsung: exynos5250-snow: use 'gpios' suffix for i2c-arb
Date:   Fri, 21 Jul 2023 15:32:45 +0200
Message-Id: <20230721133246.15752-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Linux drivers support both variants - gpios and gpio - but first is
preferred.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi b/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
index c82e2762e07c..64f00c5fd322 100644
--- a/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi
@@ -65,7 +65,7 @@ i2c-arbitrator {
 
 		i2c-parent = <&i2c_4>;
 
-		our-claim-gpio = <&gpf0 3 GPIO_ACTIVE_LOW>;
+		our-claim-gpios = <&gpf0 3 GPIO_ACTIVE_LOW>;
 		their-claim-gpios = <&gpe0 4 GPIO_ACTIVE_LOW>;
 		slew-delay-us = <10>;
 		wait-retry-us = <3000>;
-- 
2.34.1

