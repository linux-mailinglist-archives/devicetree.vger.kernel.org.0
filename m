Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8231957E70D
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 21:09:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbiGVTJR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 15:09:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiGVTJQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 15:09:16 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F7C09FE1F
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 12:09:15 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u19so9191399lfs.0
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 12:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=agwqNyhPe1FeeyYaMTDHEC3Ht61jYjxP8kET6Q9I/XI=;
        b=p+2pB5PP+KgyPEcCIY1TAcSiDWDHn0nKDspRXpW5tnGMyasTYkH5W0FzLoBMi8z8W3
         q5ZLCIV10fBuUN2h3UfsShR3uasMeNNQ+mp5LzjLxEE6qLzQ+LSaSaj0OBtN5GdADbFA
         mmmzCKVxed2beqy3svpPUCphmDRAcUezEh/cm8n/R43G5l3WUeBIO/4rEnmBhS+hFOmO
         nT2aB85U/6Ceoj/moQNpZoC62NbwN/Zpvy47tvPnsiMLkH4H1X+gBXM6M5NKm2sMoI5w
         HMX60zZsbqYA5oOsKkGGVBU6c1fkReH4E8EJb+AhBoYy3VuuDJTvMnDtgWZVnEFtOK/S
         414g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=agwqNyhPe1FeeyYaMTDHEC3Ht61jYjxP8kET6Q9I/XI=;
        b=8HWL8GRdWGb2K2gWzPoscihmAdirDmpPtnOAz6nZDm+6tF76D1gbucFg1TMbBwUS63
         +/bddGwtXb21tYtPjh5yTEUOJrMoR8eotcOFExd9tHHnK69IdKRtHbH7fwPqT7BINVs9
         dfuy6786EX5ji7tnYrF18K3830pHp0i3qAXZD5TkqB/yLqG0M8dObqFwmbRTJbnG/lNB
         fFA6r54M5PBmdXRjBKJ33JkJbHQ3AwhcXJ1dQJdOFPssYBmp/bSCYrj5VTFR95Nb0hS6
         xkWX4AH6IPvBJgh2cQIDW10kf4YEGADp+XWHCEbYs1ydDf275PkyC5ugg8TAwi/DrM6g
         YVgw==
X-Gm-Message-State: AJIora/cQnu/dg3ouulxPNKx9GR0QZC0JV/ML5sq1DsuoYsWW/4X7F9S
        se4BKuObsG+d8NRfYoLmiEf9dw==
X-Google-Smtp-Source: AGRyM1vrJb5gr0c+TaBQHWdyH6KSvy36h8k9Zss3iTOI5ZP89fCdFS2ZhtGeeudzCrXoW6iEGA6zBg==
X-Received: by 2002:a19:ca5d:0:b0:48a:74a6:2f10 with SMTP id h29-20020a19ca5d000000b0048a74a62f10mr546514lfj.153.1658516953879;
        Fri, 22 Jul 2022 12:09:13 -0700 (PDT)
Received: from krzk-bin.home (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id p14-20020a2ea4ce000000b0025de944cc84sm1050189ljm.93.2022.07.22.12.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 12:09:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] spi: dt-bindings: spi-controller: correct example indentation
Date:   Fri, 22 Jul 2022 21:09:10 +0200
Message-Id: <20220722190910.76865-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Example DTS mixed two with four-space indentation.  Preferred is four
spaces, for readability.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index e105faec937d..655713fba7e2 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -150,9 +150,9 @@ examples:
         };
 
         flash@2 {
-          compatible = "jedec,spi-nor";
-          spi-max-frequency = <50000000>;
-          reg = <2>, <3>;
-          stacked-memories = /bits/ 64 <0x10000000 0x10000000>;
+            compatible = "jedec,spi-nor";
+            spi-max-frequency = <50000000>;
+            reg = <2>, <3>;
+            stacked-memories = /bits/ 64 <0x10000000 0x10000000>;
         };
     };
-- 
2.34.1

