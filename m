Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3AC571011C
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 00:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbjEXWqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 18:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237173AbjEXWqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 18:46:37 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E900B90
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:46:36 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-55555562288so203520eaf.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684968396; x=1687560396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nFpZ9P9LuD5BjlUmv1Z1M0ZAxdFeNY4Gg06S1pBdIO8=;
        b=LhuxaFh3JqPv9uUuq/9BHcRkei/IpW6di+dOLbwHdPt0V7o1272ZSVHu84eStMnbBZ
         l34dfJxSf/44sEsI3udL1eWx+vg9GYzwKk7GDB+m81eS888PDexButBu3VS05Sy5nhqn
         E0leRJqxRZtWzvhl0gBX+7vsafZ7gcZqxThZ6PeN80t1lj4B7KBvzLEKnbr9pk0otLwf
         WboWOJoa0iqDRmqPGXDse2pObWVKi81SO1TUXQ8H4v42IyQztTt8ccb9WlYOIW7i4QKf
         oZqORh16zuW6Q5Dzg5eUibeaamx53gukAQB62/C2kbaak+WmFopnVhw6Um/bFCuZly5+
         GYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684968396; x=1687560396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nFpZ9P9LuD5BjlUmv1Z1M0ZAxdFeNY4Gg06S1pBdIO8=;
        b=WVEdKxbgX8tKvPt7ewZ/pFzR7KDwJ1gkrVysbTKAA0w6lNtAvtG02anCQ3oeTbEtnc
         EaECwqS8u6jHgBdvzPviO/nKCepil9NbfgotIsXhHKGnj5GxIkE8+UoHMHpG7EUatzEn
         8MAITu7EElzQCWt8C6FKZRXS9annp23cjCTEBAwkSlUVlNHXwMcaRjMFt3rpgAZulRTU
         IWULAMZ/SPfyejZJApLxVyx4MSLSsIJHWhcz3Ou/2aDa/eWrXGA/B3xedEnR/UrrhLp9
         kdYQ2SocGncLUE/VFcYW+Pv6P8jlC2ViAKI2LQ3pKUJI9Q7xxYmvZBIk/IbOWEpVmG36
         sNhg==
X-Gm-Message-State: AC+VfDyN9f12sJICbsBdF4DRpl/gbw7q33zVPaW/XRiSUv66JijxW3fi
        Mmz6YRNPNd462u/ArL7C3aY=
X-Google-Smtp-Source: ACHHUZ6SZp4hY5RfsA61ZFB0NtirVLZ5XhE9rwRVrskIrVWQd8BFFYOCRJ8s4ybSA7WO+KjT4i4ZIg==
X-Received: by 2002:a05:6820:16a3:b0:54f:d702:a405 with SMTP id bc35-20020a05682016a300b0054fd702a405mr7664254oob.1.1684968396205;
        Wed, 24 May 2023 15:46:36 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:4331:751b:6032:b5d])
        by smtp.gmail.com with ESMTPSA id o201-20020a4a2cd2000000b005526983ebdcsm3549461ooo.4.2023.05.24.15.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 15:46:35 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx35: Remove invalid wdog property
Date:   Wed, 24 May 2023 19:46:24 -0300
Message-Id: <20230524224625.431182-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The 'clock-names' property is not a valid property for wdog.

Remove it to fix the following DT check warning:

watchdog@53fdc000: Unevaluated properties are not allowed ('clock-names' was unexpected)
From schema: Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx35.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx35.dtsi b/arch/arm/boot/dts/imx35.dtsi
index d650f54c3fc6..2d20e5541acc 100644
--- a/arch/arm/boot/dts/imx35.dtsi
+++ b/arch/arm/boot/dts/imx35.dtsi
@@ -298,7 +298,6 @@ wdog: watchdog@53fdc000 {
 				compatible = "fsl,imx35-wdt", "fsl,imx21-wdt";
 				reg = <0x53fdc000 0x4000>;
 				clocks = <&clks 74>;
-				clock-names = "";
 				interrupts = <55>;
 			};
 
-- 
2.34.1

