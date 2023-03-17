Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7626BE306
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 09:22:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbjCQIWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 04:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbjCQIWP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 04:22:15 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E36B0DC0A6
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:21:44 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id x3so17203924edb.10
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679041302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ttgr06Px/QEUxP0oNoIFTGB9mYSSeRv48aMtVkoD6UQ=;
        b=JeiNuyIoP+dpZMvhNpzBeFhkEA0+Z6EAwmxKMjoUTZKi4GodVFvRz8oGGWiaNPS9Bz
         HeJ352TsFytsuVoSmb6/0ExhsUgPg5KA3JLb2HHN9QicvxrXF1Jmm3pI812ykcyIaqGq
         dV6xN7QbyFPMvlJtq4QBQCV5ztDsT78IKGyM8gDB8YM9YA9NZ2lu+sDlR1ACtPhq06Mb
         Aylrqt4gyM7FuHaehEwJIBJiAY28ZZBUJt+1ta64EcN0ADMPeCj9fN+tDLm0UrNiY5Rr
         BDQx4h1UAuwM4Pq7HGp5tRbH2WYP14MUAKCr5Hq7xriZswI3W1e0bTJz8w13owjPl/So
         M2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679041302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ttgr06Px/QEUxP0oNoIFTGB9mYSSeRv48aMtVkoD6UQ=;
        b=l0f2MMD0WRANOdxCQR4HEJ1UXdWEPyynA4TUO6Ax4lYuGyU7H2zZcw/Bwhw1408wKK
         1SmwfR2iodg2ZGKuCvrVAgi7eYZsU9ln25Z5oa5CTAjY5XyaeHd5iYeABMvMaxKVsv9J
         uc3ktVDWqsX/9ls24oFTfSiR7MlTVs7X/ka4zm30iClx7YEgxkWF6FllSv+89MKgGNE4
         6XxBxiErgp1899utVrk/2CqBewvF1WcABucfuSGkney25XsFcufALzMEeSYkDU4trPkM
         8b1ru4KtFvfqtVFE/YwP2KSnh3iiJCsd6Mx1epX8iosiwZEK4aGCLs42rD/e9lOasBlQ
         VF2A==
X-Gm-Message-State: AO0yUKUCMJIooEx/mi8VMnhtlHbOjZQpu4juc5GmXG8ROJ03neNop6KW
        bWLmksxlUtknffvX2yRIKmvxXw==
X-Google-Smtp-Source: AK7set8h1D4JPdlcDv4x/a3XajXnmoWknZq2UQGEUaV9yQdTNCy0+V1oVHB44c04RBWBDgnfuDbOKw==
X-Received: by 2002:a17:907:6d09:b0:931:de76:c2e8 with SMTP id sa9-20020a1709076d0900b00931de76c2e8mr2016427ejc.9.1679041302511;
        Fri, 17 Mar 2023 01:21:42 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id e5-20020a170906314500b009236ae669ecsm673882eje.191.2023.03.17.01.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 01:21:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Subject: [PATCH] ASoC: dt-bindings: renesas: rsnd: correct comments syntax
Date:   Fri, 17 Mar 2023 09:21:37 +0100
Message-Id: <20230317082137.12629-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

yamllint expect space after '#' comment mark:

  renesas,rsnd.yaml:282:4: [error] missing starting space in comment (comments)

Fixes: 7f8b5b24bbb4 ("ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car Gen4 support")
Reported-by: Rafał Miłecki <zajec5@gmail.com>
Link: https://lore.kernel.org/all/b2810924-169d-0bad-8f20-6ec2e683d170@gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 676dfe7a7f17..68a93b290433 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -279,9 +279,9 @@ required:
 allOf:
   - $ref: dai-common.yaml#
 
-  #--------------------
+  # --------------------
   # reg/reg-names
-  #--------------------
+  # --------------------
   # for Gen1
   - if:
       properties:
@@ -336,9 +336,9 @@ allOf:
               - ssi
               - sdmc
 
-  #--------------------
+  # --------------------
   # clock-names
-  #--------------------
+  # --------------------
   - if:
       properties:
         compatible:
-- 
2.34.1

