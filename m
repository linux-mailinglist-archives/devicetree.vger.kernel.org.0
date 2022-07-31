Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BFE3586027
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiGaRrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGaRrn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:43 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D846B4A9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:43 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id i71so2279887pge.9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=U2DiOWMYZFeHnRa08EHHJ0cCs+siq8/3MXdBn4KTO2Y=;
        b=hHVYfk2kF1c2Cvc/IY+diqQ+nLtoCgz/8WF10wB1Zw8lSoUls341h6uRxHJ7DH0DzH
         Dk7/duCxbhRGU7oI53iXp1UNST4Ov+EtJDnXk0R4YObPRkPf6JS5nvIQ7hhNMM1fF2MW
         D+NCztsFTjVBYOhU7OiO8BTu9chHFbOdRU9g9uYDcJ6ls92A50ndvyTbwUgA9nB8Ev6v
         /zTAUs4BdGjCTr7LUC5ihiAqJrptFvsVeto69Q367TR4LPVmggKyeOB2JDjDpJj0ORd2
         hb9HPiI/jB1Go2535Gr5DQe5KlVfd2uJVA39HeVrYGCoqSaQS34cYeUIpGycBzNry3Y6
         ckkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=U2DiOWMYZFeHnRa08EHHJ0cCs+siq8/3MXdBn4KTO2Y=;
        b=AoSuUf7mqPa2BP4HrTFaN7un39CTSEdmudHCfESBW4VOryhafGvB3wH1G+EKUvwbpG
         VoAR2DjpiIfFiiJ92Wc8u97xpoDdqLTl43tQoDp+sRbty4KB8Uxw0hyGRBmDTsZTv8Kt
         dgwuXkZkf87d8gHlXC1V2j1rwVr31/SCwrEsPr2NMseyhvAeCzk6PSNyXpB+jGqsxlI9
         XApOr9DPx+vLrugJO+m5Kaac9aBCsdieiQotcsxuGRSt+Ca4MuW3x6AZdIGecqvq66a1
         IImq+lSCXWtLaXabt5nT4XFVLsjlhSvYDT4F1d8PD2pR4/8S+cIXP31frdoW552L0NnV
         GGyg==
X-Gm-Message-State: AJIora/gRz0H/EaZBYu/uv47lh/xHnrESVyWVEcc2CSXpQ2isy1jhd71
        AbQEuCVCDEG0ZaNdnC5ZkemcKg==
X-Google-Smtp-Source: AGRyM1uaJfmronFGB+ZUvm13gkXPbJ/0qUk6hV1sqPdsvxye1qkF37x1j5WqbI7BatUbuqsdCPR0ww==
X-Received: by 2002:a63:d646:0:b0:41a:6c24:d829 with SMTP id d6-20020a63d646000000b0041a6c24d829mr10483905pgj.470.1659289662680;
        Sun, 31 Jul 2022 10:47:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:42 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/20] dt-bindings: power: rockchip: Document RV1126 power-controller
Date:   Sun, 31 Jul 2022 23:17:07 +0530
Message-Id: <20220731174726.72631-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for RV1126 power-controller.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ack

 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..602f08a76f2c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1

