Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1FDD598349
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244707AbiHRMmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244705AbiHRMmr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:47 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25707B284B
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:47 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id p9so342782pfq.13
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=nyMFYBFNwQgfUJo8aIpcsIvMAA1mOd7JoPeq6ALhj+0=;
        b=ttgf1oDl7SLpeNziJyAubkb+VW91M6iEJt7G0MoleIBG3ERc0vlcIre2xzoRg1NEKc
         cDbet6kGM/zKAUuQ0sSO9NqFMxnKGskBpkpHifAKi+6IfgiJcq5cn88zaxJTi/kv8Bbe
         1pOeGZQm4w+KE8b6z0GAAZ0hhZPQpCU3gGAaexh7OmQu+qMduev1GNDnCwM+eg2DeLb7
         2y3ceb9ruvHn5BEGfld/yQ7yVDIAquLFyvnolKn+aBCz4T1J49ztvy3Y2mrKL20wIZMW
         b+jHI3x+xrHwmq084XT9TQugMXZqGMo2KyyMGawq88l1cGp0lwFTO030cUIXZBTyRrxA
         RgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=nyMFYBFNwQgfUJo8aIpcsIvMAA1mOd7JoPeq6ALhj+0=;
        b=U/C6DigAHhv16GQGBfaUmZAyVWXjXapoPfHboG3gwOt84EAY3yK7E5c1+BG6XB1udr
         xXfNVOOaQAKK9pDUZsBtifEhBlMT9T1P9lRkO8Z6PDikTL1OHAQHYaqOXbHsx5ywZsTB
         b+0N7G9QKmpkC32is0vcPa8ahtzTrdo9GuZl8FhLiEFx8KinisFIaWFX7V0eupGkT05k
         YPdSEampDLv9bAa195di5DkxfBHtrL6nsDTF6IRHDN/RKxwLfw0yM4hqbt/dVU4PDAUJ
         j2SQY+c4jwwFwv8o1nN00dMlcxxXJVJ7bnLnIsJMi9Hg5fORtw5/5V7F/zmsvpmzgjOs
         Mk5Q==
X-Gm-Message-State: ACgBeo2CrQ9jXbmMWhWKl1CPRbxPUE54pcUAyWGxpEyuBvo27v48zObY
        mMMuxi1S82pq5+TUnYyfB04z41R+sH/kCTSbjLra9g==
X-Google-Smtp-Source: AA6agR6X7yqIO3TyB80Qts6x29A1FY7WXz5aeCcrXm+ZdTjzeWuDEtzOLYR0GO3/3sYdc95ar1u/+g==
X-Received: by 2002:a05:6a00:810:b0:52e:7dc8:c868 with SMTP id m16-20020a056a00081000b0052e7dc8c868mr2814286pfk.36.1660826566658;
        Thu, 18 Aug 2022 05:42:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:46 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 17/19] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Thu, 18 Aug 2022 18:11:30 +0530
Message-Id: <20220818124132.125304-18-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
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
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..2a4b7f2d018f 100644
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

