Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8261A5AA850
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 08:51:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235351AbiIBGvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 02:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235106AbiIBGvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 02:51:11 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD0D5FACA
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 23:51:10 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id p18so988071plr.8
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 23:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=yyAKPmKQH9lfnrQSZBKeBIRjtCOa6/ER8apL8e3NRik=;
        b=gjWXs/10I4ip0NuCWY+Vni3aQaHsczbOgeFT4xhzGuqtOG6nmHhkbU/ChDn0iV1VSf
         Fx7fxehan4GEp8ju335mUC4HBexhcuCPz2qpLMSQK4Uz6OCbaoKwUDePH7GRElA4FZwY
         xfOcIGhGE+f3Sa7bM85eVxMM/n5DLTduQlq6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=yyAKPmKQH9lfnrQSZBKeBIRjtCOa6/ER8apL8e3NRik=;
        b=WSJOETN0uah4aJzyqigVyJ+KNUAZpFH0d1H4CR8OEAiC+0g6+joAkdExzLrRcEYVhn
         f8tvpuawqotQAL57v+jXeOqcOuvZJz1YDUdmXS5ON2u5txs/Ns2Dj4+xjDiVoiGhzg1f
         xoxwWhAMLeOZiCoqoiCAKA9kcAVHjg1XsYFaToqNb4jyVBdPcmOuJ5hnCAS3ITo9fao/
         TQ/Z6KzWRnedd/QQ9JzzXyXij57/rqx0D8HVhWPux+03jstezEWY+AZELwCoWd5A2zJR
         m5D+ZExPlyOTMbBb58WQz9h/5QBWdMh1B62rWIBHlcajGHZpqMTk7Fbit56hQrddKi3+
         I5Hw==
X-Gm-Message-State: ACgBeo3nBNJXeRS2SbSM1EP7Uhaa+BkleXnKPRHf6sGsQGHgz5dQ3992
        Yd/7tS2w5ySJoHntD5z7TRJcXA==
X-Google-Smtp-Source: AA6agR7lTDAk+MfB1Y50OQiJ3g+0Tq9+7rnV4wJTE83ko29RQiX9rl0mdMSG0mK6HMrwNw62fla4MQ==
X-Received: by 2002:a17:90a:9b04:b0:1fb:fcb:1de1 with SMTP id f4-20020a17090a9b0400b001fb0fcb1de1mr3232560pjp.235.1662101470074;
        Thu, 01 Sep 2022 23:51:10 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:e40:9bbb:af2b:bca3])
        by smtp.gmail.com with ESMTPSA id e17-20020a17090301d100b00172a2a41064sm769815plh.298.2022.09.01.23.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 23:51:08 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date:   Fri,  2 Sep 2022 12:20:55 +0530
Message-Id: <20220902065057.97425-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Document the dt-bindings for Radxa ROCK 4C+ SBC.

Key differences of 4C+ compared to previous ROCK Pi 4.
- Rockchip RK3399-T SoC
- DP from 4C replaced with micro HDMI 2K@60fps
- 4-lane MIPI DSI with 1920*1080
- RK817 Audio codec

Also, an official naming convention from Radxa mention to remove
Pi from board name, so this 4C+ is named as Radxa ROCK 4C+ not
Radxa ROCK Pi 4C+.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- none
Changes for v3:
- updated commit message
Changes for v2:
- fix line wrapping
- collect Krzysztof Ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..ec3525fb1e60 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -537,6 +537,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK 4C+
+        items:
+          - const: radxa,rock-4c-plus
+          - const: rockchip,rk3399
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
-- 
2.25.1

