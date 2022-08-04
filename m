Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC447589E38
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 17:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233333AbiHDPJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 11:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbiHDPJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 11:09:52 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CAF2B18C
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 08:09:51 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id e15so21208544lfs.0
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 08:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6Ls3wmwZc27FOQS4WF8l9pDgrn7cd87DuWOgr6YV+4E=;
        b=ry/Jo/Ok9+ZPG+82b0uF1vKq1QNAELdkGNfI7VaEYH0ZsY84RoECLsV8WP67WdFRyw
         7FJNlhQGiady5DovDtRe/sfuxxZjHPX975QQMmgsGbP5GChZ6/Gn11+R/RlNC/CeJxob
         ia3qIvsgLSgPGDjoR6s9sS1AH9cNjOSDO/lcwQEoV4qb0hRJ1T1mnIjOYH+DH8ZReSLf
         35MfUIXVLmklevioSRjGU3GuukTaX50dnOeYT0LhPhVQaIjtx4vU4jVM1Ed6tpVMgoZw
         ufTr6ccTJkc79a6LvE9SZ7WqUAqVyIq7d5qE62/EhMJGzVdjlhlsQWv1YzuKoo7eaOPQ
         sJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6Ls3wmwZc27FOQS4WF8l9pDgrn7cd87DuWOgr6YV+4E=;
        b=o2tZjSwzjel4N4w1U+ZuDpfIMKkz7B2Ly8OmAN2hF0mWRpKef8dy9X0DROCtC99wDw
         MI8HHnzYapAuhI2Q2OCWBCK+dihBi71yp/jNrlQa34yA3jh4PjguHJXWnNLgGoaaX5cV
         kty+j5rcXkoGe0QxkmW2hoHk+2EnO2icn6hbrUHkjw5T6SRibcRYJNGqx9izxs+wQQCF
         eZRA4x/f6XqUokDinqLdrV2ESDg8ky8uelu2jHSm7qega5sZQR6q/Zs0iVP/GCo3txkg
         fLv1BFS9Edl8sb3Lwd/35cgzPzF8ynDX2P1FbGZNBATfmIdKJdqbcQm7RQXkEzl00X61
         CPzg==
X-Gm-Message-State: ACgBeo0HrBocWB3lJ+Kt6axj+fzNbywBWbBEu+kkBtOSJ/vOuGT/5Up8
        5Nccv9IxONT3+++3oh0RyIjzixzy4AWk8GgT1CU=
X-Google-Smtp-Source: AA6agR5X0yl7CVbndZJi7Hs/+Xnnpb6lNmxgp0Wl/kB+ntjRtZ+aQgTxPPqdoYXv4nAKYO2X3G1YBQ==
X-Received: by 2002:a05:6512:ba4:b0:48a:f185:db17 with SMTP id b36-20020a0565120ba400b0048af185db17mr790025lfv.107.1659625789282;
        Thu, 04 Aug 2022 08:09:49 -0700 (PDT)
Received: from krzk-bin.. ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id be39-20020a056512252700b0048b37d29256sm152681lfb.63.2022.08.04.08.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 08:09:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: arm: aspeed: adjust qcom,dc-scm-v1-bmc compatible after rename
Date:   Thu,  4 Aug 2022 17:09:35 +0200
Message-Id: <20220804150935.121890-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Nuvia DC-SCM BMC board compatible was renamed iin commit
7f058112873e ("ARM: dts: aspeed: nuvia: rename vendor nuvia to qcom"),
so adjust the bindings as well.

Fixes: f77024c80147 ("dt-bindings: arm: aspeed: document board compatibles")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Use proper qcom compatible.
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 1895ce9de461..4f0b308e9f0f 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -80,7 +80,7 @@ properties:
               - ibm,tacoma-bmc
               - inventec,transformer-bmc
               - jabil,rbp-bmc
-              - nuvia,dc-scm-bmc
+              - qcom,dc-scm-v1-bmc
               - quanta,s6q-bmc
           - const: aspeed,ast2600
 
-- 
2.34.1

