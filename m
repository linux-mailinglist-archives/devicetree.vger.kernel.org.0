Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C28E6B6887
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbjCLRDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230448AbjCLRCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:02:53 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7FF73A866
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:02:40 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id s22so12841089lfi.9
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678640558;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bMzb4+f+2BylShTzIH+kD9h/2l/yJ2pk3VVMD+904ak=;
        b=JwTphdUYIB1UESTBEDsIhKaH+4xibTpdoR2BRd3epHtSXJHzWOSqxJqBeOjT8A8en5
         rrDO5V4TGpexymTznjlJWYAEktUNgWC+etNgiK5vVmJZzEUfnqu6//v4MhFlOCg6PWjh
         wABSWLil7CFAnV8ZwJcXf7vU+Lz8ygMHSweR6Eo4I7GM8DH3Py7/smjbLcNa+bkeAl7G
         iUwusSBqqGY3JCyC8/LiK0hdW1yEs9mjJH3aPS7HgKODrcRrO2OaoDyC5mcOghmFa9BS
         Z7IWCWbVJKhzZo+mQw24IqZvikPteKJiT1zo5CJs9KEAqLewjmidSbUFra8IsvfpeW6B
         TbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678640558;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bMzb4+f+2BylShTzIH+kD9h/2l/yJ2pk3VVMD+904ak=;
        b=DrqG7USY9MKmBLomskTSftUycFsGBikymaxNGJLocANDN8EAXPp6Om0KxHrs+HNa7L
         1khkF2nX3scDhuuJz0ok8HL2tX4VeTYZvTi7p5QKnOitMZbJYlFiYuKkIPkqPCVg2YzZ
         /uo7f3z8Pf8Ss15V3p8DXks6WOQSe8jjTzSlxvAczAiWnBFtlNAq5OFsxDusyxxIflBm
         z+upsvyYXCQwbwJMEtNrIXYOQGZU5jDf6QaI1eKjMu1iImH7DJdFNTIjEpuhWPU0HRBb
         arizKO91rPoodv3Tp82Xu8+/quNbzqLsAngH8a9Q40aZfcWZjzsPLtpbPG588vOuHln9
         PgEg==
X-Gm-Message-State: AO0yUKU36DcPaB3jTtXkaWg4I4xjA4wp7qoaLZT9bnZ8GndNiaUMMII4
        iBDpcc22LLb3gjV/Aui6zXCPH0mnYypXLa6Y
X-Google-Smtp-Source: AK7set/59hP/AF6LPvDhMqbbmeurIgWoWvEiPrEOYfm35suTU3spECNBrYEJHdV6dvpdw82Tzjkiew==
X-Received: by 2002:ac2:508e:0:b0:4db:3e32:b92a with SMTP id f14-20020ac2508e000000b004db3e32b92amr9246804lfm.69.1678640558688;
        Sun, 12 Mar 2023 10:02:38 -0700 (PDT)
Received: from 0001-dt-bindings-exynos-dw-mshc-common-add-exynos78xx-var.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id x9-20020a19f609000000b004cafa01ebbfsm703482lfe.101.2023.03.12.10.02.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:02:38 -0700 (PDT)
Message-Id: <1678640497.9030156-1-sleirsgoevy@gmail.com>
In-Reply-To: <1678640497.9030156-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 19:59:29 +0300
Subject: [PATCH v4 1/3] dt-bindings: exynos-dw-mshc-common: add exynos78xx
 variants
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.

Add two new compatible strings, "samsung,exynos78xx-dw-mshc" and
"samsung,exynos78xx-dw-mshc-smu" respectively, to denote exynos78xx
boards that need this quirk. But it's very possible that all
"samsung,exynos7-dw-mshc" boards are actually affected.
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index fdaa18481..a72a67792 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -22,6 +22,8 @@ properties:
       - samsung,exynos5420-dw-mshc-smu
       - samsung,exynos7-dw-mshc
       - samsung,exynos7-dw-mshc-smu
+      - samsung,exynos78xx-dw-mshc
+      - samsung,exynos78xx-dw-mshc-smu
       - axis,artpec8-dw-mshc
 
   reg:
-- 
2.38.3


