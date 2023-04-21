Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE1F6EB4C8
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233822AbjDUWbz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:31:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233828AbjDUWbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:52 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D097730D4
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:48 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-94eff00bcdaso373036366b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116307; x=1684708307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZkjYt4mw101Fn1FDm2krRVM0ItuEL6OGEkn3fLZXgCE=;
        b=rfeh0H18X+JG11bS/C3nMsf+iCZrRjOckBqyn6Upmoo1n5cIIOhuJABGjaX7+jZy3F
         SVHKjS15YQhH1pA7tkBHvhZILkgiTaViDY4crbK6yuO9Kj/R1Li9dAUKZ/EKXjOi/LK0
         MzYHcD2QMP042hLaGVy1s4/LKcsfiScH8GVzE4dRFpVticMzYUGp/qa5zlxg4Jx9jIs7
         BCk4nhuVI1nhwHPR1vKfwgaIz+Dibv9te9Vg7stmTUjZVZOTJVZQNnSevnVl9eZzUigN
         7iihnYTUuAXC0tVjPQpwxzwU3joqrw+pRD9WmzslETYW3BMG+zgexT7RkQ9dai+WwkJO
         2+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116307; x=1684708307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkjYt4mw101Fn1FDm2krRVM0ItuEL6OGEkn3fLZXgCE=;
        b=TC/gxDRBNO7V6g3VTMN93XLuzc3kjfR/OYMEyqkduWi6qk/84xP9DbVeCcTWZDwUV/
         N3xzlMWLI6YLiyX0tI1K0JTdk3bLYrY8HRK6XSMm2b+7nQ/Wi3tRMe6C8Tj+1O+uY/nB
         OsV0EbXNthzi6adGO8ANHlQmnhHNOCLIy073rrKF/Kp6uAG863l7sleVx49aRqa9aX/1
         9pf3EgwFhpli0BIYt1kjBmFbnAJ3ZXUBXzOcU0Xy6FGWfXZEpck7Drq85ox1YaOdNHS/
         jXuqE9oRSUxP9+AbBWuNCFA+PbG6v5jDzM+xBdHI8uxuzWmcS+B+D9nLvfoRBuw4qZN/
         nQ7A==
X-Gm-Message-State: AAQBX9ffr4Xd0FACeoYGB+gyVbntxwHxobfVU9JcXBuR4mJ5V9qs6qSq
        wMMd0TYOQ8+hJE23RbmtCK+b0g==
X-Google-Smtp-Source: AKy350Z68GLkomNSitCwgRxFlKgEdwjwd4Sxn9PniDZWQAA2CHpywEyTxO4nx7VxYxMbaN5P4DlWng==
X-Received: by 2002:a05:6402:187:b0:508:3ff8:afe7 with SMTP id r7-20020a056402018700b005083ff8afe7mr5826520edv.6.1682116306919;
        Fri, 21 Apr 2023 15:31:46 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id n20-20020aa7d054000000b004fc01b0aa55sm2292882edo.4.2023.04.21.15.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jisheng Zhang <jszhang@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: synaptics: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:45 +0200
Message-Id: <20230421223145.115129-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified and cache-level properties to fix warnings like:

  berlin4ct-stb.dtb: cache: 'cache-level' is a required property
  berlin4ct-stb.dtb: cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/synaptics/berlin4ct.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi b/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
index dc12350b9fc8..53d616c3cfed 100644
--- a/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
+++ b/arch/arm64/boot/dts/synaptics/berlin4ct.dtsi
@@ -64,6 +64,8 @@ cpu3: cpu@3 {
 
 		l2: cache {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 
 		idle-states {
-- 
2.34.1

