Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1D9674500E
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbjGBSxk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:53:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230269AbjGBSxe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:53:34 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3095AE55
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:53:16 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-98e011f45ffso344869766b.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323991; x=1690915991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wWk7/BJYcaXybeIHvvjs7M3dY4Qac44XwWn9PyfHMC8=;
        b=fVdamkZzdZH+VFdzNNZSATuhTchsrbzTXdMpiJHkdiEDtN1uA8YJRpQNx7VMjh8Xdl
         sxFhpR8g0BbZDIgCUyKdy+SWzBOAt5YTYKSl0nSIm4VOn4iH4xAGqKvWjS4uXFFXXsCW
         HSGfdXyXqp9/UrG9OKrNtnYd6GsB8QBWKY1pDduZcgiwD+GdJyRE94znT365ILS2E3/r
         7TWN/E7+Vu/DgaMNw0lLOawnMkw0LJE7uGuCOiCGB4jvAwSUmTWnJBp6XZW9iRJO7b9C
         tDImOXTdht0odDqpDwBR1d+poc74NSKpe9HUNs+p1jjdKzOW5R2llxYvnEtKUMS5vjko
         pFmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323991; x=1690915991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wWk7/BJYcaXybeIHvvjs7M3dY4Qac44XwWn9PyfHMC8=;
        b=iKw5TdKrex8tDjUV4sLwuBMWOmSa13W3nLs/RS91QAp+5cLvUb3qWIXhd59TiSn6o7
         2RCbqXV7edPSG57ZLOVrTCsP7Q2yu9PfAGbv3HzrdCs4WK9Okp7vCLdOxFEkrD2sffEB
         f6VeFqhwXINYaGZ7/X92xupBZjflfNlAnW4lkMUsIyVG6u3qu/kOsOoc0/iPpnM+w2ok
         2xQcCLm5x+Y/xxhWzOPERq4jjkuKU0Ug3I9XlyZ1SS7No1oD7QWACTq5wLKvkhmaHfHS
         7dajq2a7wJAAREy7+K5rUwv7d5jbmuD5fOCKMdYWvzSjVBgaVx6Tp/OOHtK0hY5XqpTQ
         Fyag==
X-Gm-Message-State: ABy/qLa2DY9wbbB20AI4GpZosrZ7tPIC+4CNDrmJZh+UyFYeU9YppcWD
        Zx4tfF4ikOeIGblw7B1TiheoQQ==
X-Google-Smtp-Source: APBJJlE3EupY6tOBNdr8bityw3YRIMLaAgymuASiOLDXiJ14OvqInNw9TQzLorYEBxqUwN2UbY3cFw==
X-Received: by 2002:a17:907:90d5:b0:992:33ba:2eb4 with SMTP id gk21-20020a17090790d500b0099233ba2eb4mr4251931ejb.71.1688323990952;
        Sun, 02 Jul 2023 11:53:10 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id a16-20020a170906369000b009887c9b2812sm11103671ejc.8.2023.07.02.11.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:53:10 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: hisilicon: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:53:08 +0200
Message-Id: <20230702185308.44544-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index b7e2cbf466b3..f29a3e471288 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -1032,17 +1032,17 @@ mali: gpu@f4080000 {
 			compatible = "hisilicon,hi6220-mali", "arm,mali-450";
 			reg = <0x0 0xf4080000 0x0 0x00040000>;
 			interrupt-parent = <&gic>;
-			interrupts =	<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>;
 
 			interrupt-names = "gp",
 					  "gpmmu",
-- 
2.34.1

