Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E39457F17B
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238685AbiGWUpf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238585AbiGWUpe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E0965E0
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:34 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id t2-20020a17090a4e4200b001f21572f3a4so6958513pjl.0
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=By1PmGJhnJpqlUnI/OhTGBYhiWbD2tJfoz3WanLvr0M=;
        b=EjxuH6gL/ZjSugCxSKxC/73F7xnjyzGVaEiWNjv4WM4X/Z+ia1QpzIRryHowrCwPuh
         MtkFHmgTDZD1wbEyrxhic4M/aUCguF9yP/HbII0o1gKH6WATn3OeVZeWdewuOlDm6YVs
         QtWJye0/9dwrql8KzdYi4NOg4pdKimJzIxMWs+CcuWuVhHP/6S3roUhiKzfM0vYbSdNf
         qnaDChYZjQMNm2xIOeLHvI1nZ6mHq/sKRGJYA8WB4QlixwS3nYdB1fOqBP52LvdnE0Fg
         ew0kUuaGL/W3a22wgrA1oLA/tExKuQ4aEITf1ZrngGcnPbLKpXlPHnq9RQ3vifAd0c16
         u1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=By1PmGJhnJpqlUnI/OhTGBYhiWbD2tJfoz3WanLvr0M=;
        b=B4kxB5UF148YZgY9r8oIUCZpD4p/bGR9xY/57qKATXHFxW6R6RdZnWCpgGtE2fZG7m
         w16YQ7DLxCSdNLYHhypstJuwnabWgoZ+80rBgcyiMJtL1Yk8rCY2JaW6bpU/Xx16SbMd
         Y6kGQ3XlRpGIzOt/f2vMM56K7DikxBy72cQQYLpBdnyM6aqu+L0qR+J76F+XGeNdDnqK
         33eXqJz9iFcoM/FzJQOXmzvTuZsjjn9piwF1AURTSqys/9nKp4I3lKqTaM3ZWry3eKVk
         sb3zqnsDEkHnMflLYZWebGtDCz5E1HDmXddsMXlcJbcr8hXi0NgZdzhJF9+MupvvO9fE
         tdsg==
X-Gm-Message-State: AJIora+d+F/1C6rytbDZ9WJiOJDure7FtVQ1HbJgDMXvtJGaj0G3inlJ
        DcbskuN68XgAou4mKTgDNMRQnw==
X-Google-Smtp-Source: AGRyM1vcRfDUEu8EwOOKAsqhBJnofOirUdybwFoJ+u24pZOb347uVRhd+B2MtzSlji4Nl5jVdJI1CA==
X-Received: by 2002:a17:902:e746:b0:16c:4eb6:915d with SMTP id p6-20020a170902e74600b0016c4eb6915dmr5580869plf.106.1658609133652;
        Sat, 23 Jul 2022 13:45:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:33 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 19/22] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Sun, 24 Jul 2022 02:13:32 +0530
Message-Id: <20220723204335.750095-20-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
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

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

Edge Compute Module 0 Carrier board is an industrial form factor
evaluation board from Edgeble AI.

Edge Compute Module 0 needs to mount on top of this evaluation board
for creating complete Edge Compute Module 0 Carrier board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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

