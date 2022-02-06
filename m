Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5637D4AAFAE
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 14:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241658AbiBFN6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 08:58:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241387AbiBFN62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 08:58:28 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02BF9C0401E0
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 05:58:25 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 575D44030F
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 13:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644155899;
        bh=lowbJ9HbAqgBRMehsHM/qhZ+cS05q8+wNRQlqfDefTM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=QzuUqcXvAqovUwxK3ArDV/ylG8vKI2OUpZo6Mx4IjolMhoLB7VKSAxJjBuAxdvVDq
         f1qFXncLcRwIEpKXNB/wVC05BGVSRs2eWHIcWx+lQY+Cw6ymtE4izdZkODbfp8yEJc
         pXJ3iOAJg2G8Ya67ns9bcdzFqBCsVd8zCkQ6s8c4fqTDgalAH7U+SneeyDO2oDFr7k
         RWKh0Rl3PEV329QFmZxg6tO+ptBr/k41K++a0vdN6oa3cuZYO9xD6JUHjbneXhgc09
         wKLgN1ZH1kP9XQPucoFLhrARdMmcgjaNQsABrrgCIiCF3y4a6MjWrftd+54r/3ia3f
         1jEmSHkdHkmCg==
Received: by mail-wm1-f72.google.com with SMTP id f7-20020a1cc907000000b0034b63f314ccso4234258wmb.6
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 05:58:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lowbJ9HbAqgBRMehsHM/qhZ+cS05q8+wNRQlqfDefTM=;
        b=jxftHWVEIVWxd3dAJZZzzARIzckMuciuypQd/p58te2zN6N4MyKDfYir9SB57LVDXv
         ZbHZDvWY5EOryHpY/Na12TlN9YdjpOthFi7o37ZXPBcoIUJETfatUDCOV8iGlA7B3rCm
         VmLNYFcuW4+H6d6ScwV8tJkj5RW+vXwtT5neC/vhzNjyAivon2eZQrhzJXsebp4plqX1
         HGRwhR9F2Z5FYMgDpPmbbMEaAs73Bg/qquMYQ+YNzbAqg/nhlLqhJvWOs9VZoVBAVzCv
         QVJSGSXst+HkvBhwFz8cU6RiUtwXcXh6YphyisKWpgFJ1kM8oWFVm50Ow0CdUPlr70tM
         A91A==
X-Gm-Message-State: AOAM5335UrP3lLV01KVIg7RoQjopYJn1SXVkvqyOFpA24RswrhjTQMC1
        DYQ+91jtqF3Gg/YaRaAxQ+BLn55h0ipuezR/aSXYjfdboluqPJ/4xILKp5F7drqVuf/3lR1ycD4
        YZ6P3r2RlJfxp+WDGG6NsMj7fApTw4xqyjIUKbPU=
X-Received: by 2002:a05:600c:218:: with SMTP id 24mr7316486wmi.95.1644155897619;
        Sun, 06 Feb 2022 05:58:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzFbHkfXy9mwKBU3YQJK1xswUXUcJeL2qs8UreyNLnbIswkcL4WL2NExoBBoPLmzdhlDF7SCw==
X-Received: by 2002:a05:600c:218:: with SMTP id 24mr7316471wmi.95.1644155897470;
        Sun, 06 Feb 2022 05:58:17 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e9sm8296888wrg.60.2022.02.06.05.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 05:58:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/8] dt-bindings: memory: lpddr3: deprecate manufacturer ID
Date:   Sun,  6 Feb 2022 14:58:04 +0100
Message-Id: <20220206135807.211767-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
References: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The memory manufacturer should be described in vendor part of
compatible, so there is no need to duplicate it in a separate property.
Similarly is done in LPDDR2 bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index d6787b5190ee..3bcba15098ea 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -40,7 +40,9 @@ properties:
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
-      Manufacturer ID value read from Mode Register 5.
+      Manufacturer ID value read from Mode Register 5.  The property is
+      deprecated, manufacturer should be derived from the compatible.
+    deprecated: true
 
   revision-id:
     $ref: /schemas/types.yaml#/definitions/uint32-array
-- 
2.32.0

