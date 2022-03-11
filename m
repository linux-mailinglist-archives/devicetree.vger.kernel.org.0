Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A3B94D6AFA
	for <lists+devicetree@lfdr.de>; Sat, 12 Mar 2022 00:55:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbiCKXyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 18:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiCKXyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 18:54:46 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0763F2177F8
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:39 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id w27so17754048lfa.5
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=akqEA3XVlJP6CsHUmH2x+Vl2VjXEwsRfhBeplq7I5js=;
        b=iIoytf8nnej/9EF86kicMlpC0er7+/EfmV6VTPgypAzgfdhlDNa0262L/qfT1XIaKc
         CC4oZ+BrMtEsG9jq8nDvYKx7O4JfGygqOQ4U3DyyK4ZWyPkSd1GaPgcvns7RO6ghbC3P
         L/o2N4kt6kdYNfVJqrbMjzKaaAAWbt2e4u9KoA8gB1RjF+cou0Xkpil2acNZFvPmIann
         nbdVho7g9IerKpa8IYBFHql5bDbJwF2tsKKntC6CsYGjZbw07aJRFy21YsBIhm/C0JBm
         +/MQx6WjfZOoizhTLu2reGHjpPYcgEWiZPnnKFVjBvjJn/tZqyCtX6Udzerx96JG16V2
         vZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=akqEA3XVlJP6CsHUmH2x+Vl2VjXEwsRfhBeplq7I5js=;
        b=4NwxcWuwT2OYYNfUVUYnaACIQllmFOEqJ+FLw50mU6OtwwKs1k1HVzaUUZlUuMF5gJ
         5aZNgLdmZ/ASoYvDex8JETqiz30XWY3u1O0uR20tZAHwRwPqXE9SO6HFBv8Cpt9eRIzB
         vHfBB3uLCQ+dW1zTyLjiedMfUrl0J6gqg9svFMx/FPxaHruSYq4sQ4cBZ9brfl9C6WAn
         61nyi7274Cc+KQDipGzDMRV9PtQ124OCwuRYoSNDGnfNd7ZF2C5u0Xnzp3G7Fsx6F7Dp
         +xbH/GCoDevtDAKERQWZH2M9vD7UObTDu+OQ3uBRhM9knP8xsJVFKBnQ31iP0flDcar0
         aZ/g==
X-Gm-Message-State: AOAM530DibiuFB+/9kLVkI1BRFmCO0heSW91RdqkzjOJidFhTGtvMQKQ
        7wi1lotGT5J5CA0wxa+GoIX6qA==
X-Google-Smtp-Source: ABdhPJwKHzo0rcHzciMnNdCUz38zMpoqnBg06OKVULk6PAZBBi+2dKHGOmEH1KBnPwCUlqBNlVm2fw==
X-Received: by 2002:a05:6512:965:b0:447:8cd0:48b9 with SMTP id v5-20020a056512096500b004478cd048b9mr7242634lft.672.1647042817399;
        Fri, 11 Mar 2022 15:53:37 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 8-20020a2e1548000000b002463639d0f2sm1967691ljv.68.2022.03.11.15.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Mar 2022 15:53:37 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: gnss: Modify u-blox to use common bindings
Date:   Sat, 12 Mar 2022 00:51:17 +0100
Message-Id: <20220311235119.523374-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220311235119.523374-1-linus.walleij@linaro.org>
References: <20220311235119.523374-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This modifies the existing U-Blox GNSS bindings to reference
the common GNSS YAML bindings.

Fixed an unrelated whitespace error while at it.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/gnss/u-blox,neo-6m.yaml        | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 396101a223e7..5dffe722777f 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -6,6 +6,9 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: U-blox GNSS Receiver Device Tree Bindings
 
+allOf:
+  - $ref: gnss-common.yaml#
+
 maintainers:
   - Johan Hovold <johan@kernel.org>
 
@@ -29,16 +32,13 @@ properties:
     description: >
       Main voltage regulator
 
-  timepulse-gpios:
-    maxItems: 1
-    description: >
-      Time pulse GPIO
+  timepulse-gpios: true
 
   u-blox,extint-gpios:
     maxItems: 1
     description: >
       GPIO connected to the "external interrupt" input pin
-  
+
   v-bckp-supply:
     description: >
       Backup voltage regulator
-- 
2.35.1

