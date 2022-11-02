Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78C146162F3
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:46:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiKBMqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:46:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbiKBMqm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:46:42 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D926CDEDE
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:46:40 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id q9so1214474pfg.5
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2JvjMqQ1T7iB6M7WJyLMMcTpJZI3Dgx1XMVy2FW2+s=;
        b=LHYEkP6/KqAkLzdExh8Dm18iD0YkeqKkY4hGgvg+S1N012xERhw+XQfymKgEInmdWH
         77RtuWRZwHTgOoJuyNYli0PWio1paHvmc1mnzAqxxtKnkCLP/hwMR3BF1N+8jIfaTxU/
         +0+RuGYpOkJuNpIFKWP7dpwXdaMJy+I7KDHcQPW0IQZKb4motDfFD7ZjzBKLeIvqgx8v
         GKktzF+yRCnjX1gNIwWYE95Juzjt/HxDMosQQ788vXGX5yWppex77DHw72DlqG0IU4cM
         jABHsaHdXQ/7Pz2pl8P8TKSBwlWYoYdRQBfMwHqcOOUQrp1uBzzbJZPLgFBPY8Q5vtyL
         F1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2JvjMqQ1T7iB6M7WJyLMMcTpJZI3Dgx1XMVy2FW2+s=;
        b=LwuwP5GqE5W2qvAVhRNgymm+Z0io52TOzp221rwfo/WNGZM6bIVpanWHP4Ni8qcRxF
         XWHolTiNgpPYWSp6WOObk3Rn5b+MycmtecghHT6eIUps/DZl/k61snHi1ixyItGtF72b
         1ifAFa3Z9oWPjlhdTFohh2nkjo4KAgrInP6BaXiLKtantPgVBVwYPuMyPGMcZXe1PBtV
         bCpOupywHh/V5D+cy9Ceus8EE38y4Zs1xDR2bmB3tfTKxRyuohIVWHOC8aaCID98xHWC
         18Bw6xgFJMO0AxozOA+Bo3MT0n3OeQ0WOlVNteO/ai1JLCOJrhA61oopxAtQO5CbxbWA
         /cOA==
X-Gm-Message-State: ACrzQf3cqfEZgFiQqZHNTkUb+LiOJyHNWiD1a6HBXNXyhD27WRaHXuxv
        rUKC0pV4qnVuHWrUQ+N0jQLerw==
X-Google-Smtp-Source: AMsMyM6RKg2jakUjZMbwj8Con6lsmVohWwDGkRZ1xaeaOOok0VVkEksIWCWbK/iKCVC783Mdux02eg==
X-Received: by 2002:a63:e348:0:b0:46f:25cc:d554 with SMTP id o8-20020a63e348000000b0046f25ccd554mr22075489pgj.598.1667393200420;
        Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 4/6] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date:   Wed,  2 Nov 2022 18:16:05 +0530
Message-Id: <20221102124607.297083-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
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

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- updated SOM and Carrier name

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

