Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF1E4AAFB3
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 14:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241194AbiBFN6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 08:58:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241294AbiBFN62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 08:58:28 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 806A9C0401D1
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 05:58:23 -0800 (PST)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5B59340305
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 13:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644155898;
        bh=lR5QuC/RulAMRDxY+ifBfJU5LKjeK10Pu1tPwMpMBhw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Zw49PEwymBu2HPOYEVfS7PPwK6Itm6mspmAL+lqfwOxpWRKrN0ls9CbrI1+He8HVp
         aMLliKGyPgS65DqxRjv1mWttQXAW3vDyEo8ha6d8tqIozJ+XLMZQvx/2qxeNjRypt5
         C2fzJ/2SgCQCG1GgB2wsnW/UaB4GdsawIx7bGxC2lpAWG0zg04SfSPWY9qRi3j2Hqs
         TwKcW9itj4D7L4kUhrGZ4jUBUHzZfNgv4aMJE8IUu7N1cYFEqtiG6GkapLs9/RwWKt
         aDNYnsbH4JtLSZoNK9l/yT/wtfs6P1+nfi2HZKhVrfcQwYZylxl9vEEmba6qWEucDL
         hbJujCjh8gEXQ==
Received: by mail-wr1-f72.google.com with SMTP id c23-20020adfa317000000b001e320864b69so17280wrb.20
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 05:58:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lR5QuC/RulAMRDxY+ifBfJU5LKjeK10Pu1tPwMpMBhw=;
        b=K7LZ05vFp7OEutg6HAvUmHIb93Dt4/YUTi6C8QM3OZ5BTp+3P9SkXmoHNjsWf4Ckzm
         m4nFfORGxqkZJXtvDiEoN90LY94eFIRTQrIs2+9UQRodwCMo0oQI7GIHekLaw/FL1y9t
         WYdd2JgfDZ1/GKHFzCm7kD1ni50FpSciSKLvdjnM8V+uOBxT+n04VGHUUA++QFBlhodT
         Otu1VWLuZq+1p1Zc+WdA9bgAPA5r/xxprwehrLLcNtQEFZibWo5wKSk++XcuJUTJLvjj
         4e2YRvUWEqiG8cHkmbDUAsHCCMuY3Vu8qIJGg4OKJsr4XCBLHgLMofCFvCHANAFi7ZA+
         0A2g==
X-Gm-Message-State: AOAM533hCJnmesY9KjDS98Uz8NNOLRBOug6SNOUJYNA6c6FHjwRdJW1a
        dYQUtTW+fTMkRHeHkGV17Cw0+ognFEDkNzSXtA6lBQ+TcgNV/x5fx9Ms9fIp63vd2XzhfHOEID1
        H9gCORlxAbN6dbYfu9L7ODvp5guCRbnCmzk8Jazs=
X-Received: by 2002:a05:600c:3d0c:: with SMTP id bh12mr10822065wmb.179.1644155896247;
        Sun, 06 Feb 2022 05:58:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwTX+molkn93Ebp+4k6R2HYipWuqcMWZxzQzfvUagW0IQOkjly+1ESbyJzirwTgRGM+iphQMw==
X-Received: by 2002:a05:600c:3d0c:: with SMTP id bh12mr10822054wmb.179.1644155896117;
        Sun, 06 Feb 2022 05:58:16 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e9sm8296888wrg.60.2022.02.06.05.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 05:58:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/8] dt-bindings: memory: lpddr3: adjust IO width to spec
Date:   Sun,  6 Feb 2022 14:58:03 +0100
Message-Id: <20220206135807.211767-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
References: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to JEDEC Standard No. 209-3 (table 3.4.1 "Mode Register
Assignment and Definition in LPDDR3 SDRAM"), the LPDDR3 supports only
16- and 32-bit IO width.  Drop the unsupported others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml           | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index e36f3607e25a..d6787b5190ee 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -34,10 +34,8 @@ properties:
     description: |
       IO bus width in bits of SDRAM chip.
     enum:
-      - 64
       - 32
       - 16
-      - 8
 
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.32.0

