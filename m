Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55C1166422F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:47:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbjAJNr2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:47:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238093AbjAJNr0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:47:26 -0500
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3079A1B9D0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:26 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id x4so4710683pfj.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ow84DXZInzqrwBE07cuouWfpF6O2i+QaiVux+qxgTKo=;
        b=6YvzQGC/8tkTNKTgLXQZ27uyeIgl/80BZ4TwVwiI/e8JuXwPAyAMmL7KnfGd14ArX0
         Sp8L7w/OSA71RBcnG8lxrF6uCwbjUa13B/WB6wJsPHeSXEn4w4OSq9DIbDdjRmHhz771
         BPIkTDQ3pni2vXDUwz1OVqOM650ICzurIs2f8Yo8PtZSUi517voL+R+PzzKG4uD/pPPk
         S7jYaFnu2eFR/a4yIuTNi4vYIt6lJh72U2hevqPurzuiZwR2ucg6r8tldQtibyxtASOl
         u7+PAUVQa1GA+dH0qAkIg+Bhx3vBcXx3qf6dDZFMSIGxCI406Tehk3H7avi0m/5uTkuY
         Awgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ow84DXZInzqrwBE07cuouWfpF6O2i+QaiVux+qxgTKo=;
        b=UGP0V+CwndETPAU0C2K2fV9+8HsXqcIgg2uGFtS10uloQqg3sHUhIcXRz88W0lbKT/
         M6vw0qShG4/7NBEHNdywIAlCRUmuih9dfVB9ceeO1hNiKPbPs8b22cvAoidlgC5/bedL
         heR501mR9GLTbeVHsVHYSAK1hErryA14UnU/jzKodHOtDcX83crwWKLIhereAQv/EC82
         UXd8CfMQXwwnrF7FRG7utL0dNH7x/wXsqTNxtedl1IrWCt0Uy8yqgsQH5pSxYnbVmwOo
         Si0C3A5WDvPlBK73i2hTyan3K47htkmQ0Gzs7jIYwDzpAq8gPao2UQkhLBWyPklMahhH
         XLgg==
X-Gm-Message-State: AFqh2krqNGecCbpFyeAV8wS5G9YEKjv3hekg45JoU38kVkh5284pLZGP
        niERISeyY4o/3tNX4/s2fTES2KMvkjlVWy3vHlYn2g==
X-Google-Smtp-Source: AMrXdXt4YFUgyrx7X3NMsEACWsWINIH9oWoiF8fjjf3zt7O9M1gtUg2WiqvWO/r7KLVpydNeICXBoA==
X-Received: by 2002:a62:ee19:0:b0:583:312a:b344 with SMTP id e25-20020a62ee19000000b00583312ab344mr15983095pfi.31.1673358445593;
        Tue, 10 Jan 2023 05:47:25 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:25 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6
Date:   Tue, 10 Jan 2023 19:16:56 +0530
Message-Id: <20230110134658.820691-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
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

Neural Compute Module 6(Neu6) is a 96boards SoM-CB compute module
based on Rockchip RK3588 from Edgeble AI.

Edgeble Neural Compute Module 6(Neu6) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu6 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 6(Neu6) IO platform.

This patch add dt-bindings for Edgeble Neu6 Model A SoM based IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5066059ff676..70ed0ab1b190 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -96,6 +96,12 @@ properties:
           - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
           - const: rockchip,rv1126
 
+      - description: Edgeble Neural Compute Module 6(Neu6) Model A SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-6a-io  # Edgeble Neural Compute Module 6A IO Board
+          - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
+          - const: rockchip,rk3588
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

