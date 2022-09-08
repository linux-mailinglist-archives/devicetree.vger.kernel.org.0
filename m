Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B663C5B1FF4
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:01:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232094AbiIHOA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:00:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232079AbiIHOAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:00:12 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB8228700
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 06:59:49 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id e68so4971497pfe.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 06:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=cIhwq9d+6IdkdkRPhm5Ejku1HcIM6xDP//qBlu2q1dw=;
        b=KTsM3FdTt4Bh5gOaNVHbTZraOuO2avcs04XDpHy3mL4ld2cj0mvlu74c1DCn8nbE2R
         6vxrIO4BQm8JPZ0Wv5Gvz+0KJCYGCjhLNfDPrxfuxwkR1weT27mRLPOPaB3JwKb1c8W3
         oJH7UsT5ePU8+AFNTDkFXt2sO4hk2N+GT2TQAgrhHYEknjXPBWyLJtJCfmYRDB5KtZzU
         y6i4OhhkCR3YBz8oCkgEC/4k7yv+EnUCUEOrEYh1YXkmak0wwLPDKRW0U++ciuY5zmUI
         IJZ2LNIjIkRyAfKo7dFn4DmhTstcgSiP0rN9X3KSDY+SzhCkAyVJenM3sQIzLEQOwj/H
         9kzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=cIhwq9d+6IdkdkRPhm5Ejku1HcIM6xDP//qBlu2q1dw=;
        b=BRqIZFk73ZWJpiPKO/tmXSNlYzj+Edg6kwiOBnf03m6FMw0H15K5ENNaIaFNpVezlV
         d02aAioh7SAf2TzgR01X/8QGnIWVHsCQfc5B43rPlrHpavzZmckiL0NmXmaFZuZPdEiG
         qB3IHXCdZ3NJ1ffl1xEoYemZiVynagXWnuI7XZG79LfoFS9gX4hFNK8ohA+Bn1H3Gx+p
         3ruvLH29IqaVYnQkQSg6rXHfz06CuuyZ0knGTrXMDHYEpN1ZE3wp914igC6dcV6DdiZG
         8Js/bMqkwkUfKgUoPMilyQPTTbiLwFMl+zAZUp184676G23aJHPlcyK+7zzjSYY5nTnw
         /fFA==
X-Gm-Message-State: ACgBeo13Qv6i1l4P1cYe4fFJpVtKqn7sWZyY4qUuc4l9EBP1rT4y5ZtD
        cXSZn2pDN/UuARwku/uUP/+LJg==
X-Google-Smtp-Source: AA6agR6Omg7XP4zdIObdpM+NPvVlfWkYtG3wGQ8Sq5vlSGHbASLAhT8ptobkkcs3yImXB0t+fhVZNQ==
X-Received: by 2002:a63:d10b:0:b0:41d:bd7d:7759 with SMTP id k11-20020a63d10b000000b0041dbd7d7759mr7991813pgg.196.1662645588706;
        Thu, 08 Sep 2022 06:59:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f525:b238:30b0:311e])
        by smtp.gmail.com with ESMTPSA id n7-20020a170902d2c700b001709e3c755fsm7073200plc.230.2022.09.08.06.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 06:59:48 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Date:   Thu,  8 Sep 2022 19:29:37 +0530
Message-Id: <20220908135940.299324-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
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

Chongzhou is a professional is a manufacturer of LCD panels
from Shenzhen.

Add vendor prefix for it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ack
- rebased on drm-misc-next

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7a326168d1d2..8fdc9f0d5d60 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -240,6 +240,8 @@ patternProperties:
     description: ChipOne
   "^chipspark,.*":
     description: ChipSPARK
+  "^chongzhou,.*":
+    description: Shenzhen Chongzhou Electronic Technology Co., Ltd
   "^chrontel,.*":
     description: Chrontel, Inc.
   "^chrp,.*":
-- 
2.25.1

