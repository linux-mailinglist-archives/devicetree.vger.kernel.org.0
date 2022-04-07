Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 618F54F817F
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231370AbiDGOYN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:24:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbiDGOYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:24:12 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17238BF52D
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:21:48 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id g20so6599633edw.6
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3az0dsHhRbjAtvjLKgQFw2T2bUmh6TKysA+m1P0pGGU=;
        b=e+pjZBZ9Ab1nOqK9IYrgBwN04kNJAEfZChRyW+f/KTw428JVlN4vE3rBXrzyr6rvMu
         bf8trEZ0L+m94fGQBRWz+lx7RobDaVaGsJQMzdDsVS4NHM/+APAgsfNPWnLE3lpMQUaI
         6bd4C2NQfhABAM2tYlCdomWNIAmKSuxiMNBOAw48qKQh1DgO4BaZQqVZHpLEhpkIolJU
         imu0OrGekQiJIpOV5rHBT+3b4yOxPkoVN61TpGMAQQYpGZd+4QyvZiBDzmRKRTwwPmcq
         q02v+sb4n6rXuVCWfZiidtXzRb6OLCdPGXgRJcbzoIfrJTSNQ1hbE2+KQEMEWfeMJknW
         +XOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3az0dsHhRbjAtvjLKgQFw2T2bUmh6TKysA+m1P0pGGU=;
        b=5Jlf9t8WrVAATkbGWgU4hXnP6u/5UD355nFllzDwUD/ZVlsHr1Y6t4bhqfuPDTprzk
         DD1BnAh8zKFuyueOPVPUZhB7A27D1/beD6Eq6OuMPMguc+65vwzVOuaQyUY1jGORY71N
         HAl6UkCF9leXQXTcCLT9tbrm6tOdlxn7f8768IU7OeBZo8THUlI+qF/heHzIbqMDkq/Y
         R0AyL44OI76FzZXmSCdmirNoKZ0haGFAn27ypRFtOW2XWCYbd/yDDQVOeuWbD7whb8qg
         3mIcb/yYUVGhenZijafiyzm+wGDPQIYI10s7Dnt1Gotu4evrvF1vgJWH3xifk8p/2zmU
         yQRQ==
X-Gm-Message-State: AOAM530nL07ioEP8ZX/WOFxo9ZXF7RqD6lyTTDNAMEEMYD3tNAni96pC
        zbn4Pw177GTGpjiBZddASOeEiA==
X-Google-Smtp-Source: ABdhPJxJ+Ro2BmvGVRNloYDOX+r7PLvVDALhZHY4o7bDgmr9/dXcIP9WmdJvA86P3pUy91cdIl4leg==
X-Received: by 2002:a50:e79b:0:b0:41c:dd2c:3e19 with SMTP id b27-20020a50e79b000000b0041cdd2c3e19mr14497675edn.291.1649341306706;
        Thu, 07 Apr 2022 07:21:46 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id q15-20020a1709060e4f00b006cdf4535cf2sm7667869eji.67.2022.04.07.07.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:21:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mt8183-kukui: align SPI NOR node name with dtschema
Date:   Thu,  7 Apr 2022 16:21:43 +0200
Message-Id: <20220407142143.293740-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and SPI NOR dtschema expects "flash".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 0f9480f91261..8d5bf73a9099 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -849,7 +849,7 @@ &spi1 {
 	mediatek,pad-select = <0>;
 	status = "okay";
 
-	w25q64dw: spi-flash@0 {
+	w25q64dw: flash@0 {
 		compatible = "winbond,w25q64dw", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <25000000>;
-- 
2.32.0

