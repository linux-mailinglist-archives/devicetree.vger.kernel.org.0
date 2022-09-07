Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 447875B099E
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230360AbiIGQFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230126AbiIGQE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:57 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FC65BCCEF
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:03:15 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id e68so2043400pfe.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=10hU+FWY9QXTirOrTAxAp9Ez2CZEN3B5Cws47AST3uc=;
        b=6nTTO0NAgS3AYyhSQeVhc+C2LFonJ/jC8bw6cjF0GF0fWpvvGT/d5SnnMJjiH/6Fjt
         MNfL7hSILb9qJBjRohyD3i1Zwkeank/BMsF0yekO8iWOttKDwJNSyLkBmYPJw4rK/Rmv
         Yk7o2mytSulyjf0vFEAuZfTrdRwV2utXWTivblbwUBkP1ERjke+Ck+xpDpuba19V4Cx5
         RAtJccG/vo+jf+qW44/wLxaizDHk67pYryhUFJgBZaoNfdOmteOyx/eUebEOpl2XSzp9
         lR1Nfz0dcNpz83euNfDtARWMq1W2vLn7UiqadMhGbAbeur7e2RHgGmN9ADw6CQN1nkzf
         SG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=10hU+FWY9QXTirOrTAxAp9Ez2CZEN3B5Cws47AST3uc=;
        b=5zvwmT0h713x9mCZTshGxYW4iLf6uolqgWwfHYKxJ++lk2jvpwi0BNJ647J0CAwD0U
         oL+VhImplNfsUkHV2KRnDO8W+u/KoTkSu7MhZ1nv2oFg6zJZn0jTtfyQHfQYjXsSKqZV
         B1CDdcuANvxuM9+dnTiU6aRqdoBpBeQCm9AoFwDQPWnlkM4of4ZDuHUeaxLtGeM4Gx4M
         kf4YQsQzL7B2mXjyaH3O0K5/XDg8v+cmiaJJwbX/fva/N12UwJe/fKHGo19rM0sk0Z8P
         gwzsV3V4SqZSGG2OplPI2Octcj+edDx6yOeGPbnf6BUsumWBMbbYCJr/JcHksuE+smZ5
         G8lg==
X-Gm-Message-State: ACgBeo05uiHpnxfFyHWOSV1pJ0+fBHIted9yuNmYyWfV7x2nYXeyeIAB
        XcuV8O021vOJDedqyB5+/zBhcA==
X-Google-Smtp-Source: AA6agR7U8Uc785YI9VUpIkKhPK4q0qv7j//86WL4+Neys/bEgjsw+KPgg61Ac60JO88a4ldDCofcxA==
X-Received: by 2002:a62:1b12:0:b0:536:715c:4d96 with SMTP id b18-20020a621b12000000b00536715c4d96mr4499354pfb.77.1662566594540;
        Wed, 07 Sep 2022 09:03:14 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:14 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 11/13] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Wed,  7 Sep 2022 21:32:05 +0530
Message-Id: <20220907160207.3845791-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

Edge Compute Module 0 Carrier board is an industrial form factor
evaluation board from Edgeble AI.

Edge Compute Module 0 needs to mount on top of this evaluation board
for creating complete Edge Compute Module 0 Carrier board.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next 
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5c1b9f0e4cc1..7f1abbef8408 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -65,6 +65,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble AI Edge Compute Module 0 SoM based boards
+        items:
+          - const: edgeble,edge-compute-module-0-carrier  # Edgeble AI Edge Compute Module 0 Carrier
+          - const: edgeble,edge-compute-module-0          # Edgeble AI Edge Compute Module 0 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

