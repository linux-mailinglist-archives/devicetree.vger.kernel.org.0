Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEDB353DD18
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 18:37:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243898AbiFEQh2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 12:37:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351283AbiFEQhY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 12:37:24 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ABA811C12
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 09:37:22 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x5so10833510edi.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 09:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tDldJvUWq/t8HkLjmMBt3wQxs1mV2YA2MEy0H6KrEa4=;
        b=ysq/Iri4liff7CJIoTo1y5wFmbEIb9R6jfMyb+LG3b6Fszgn7m8JxMb3+NMPgirSiP
         gFrUUJCxpoKLcL/rXgLz4QqqYFudxqInIfWAyKzMKAR9L93y51KO5SLSqMO/0NXDtF8h
         8CAhDlJP4Q4fI4WfVWNVlAvgzBUvS1IGDY17snDvNgaHUnph2wgNvz3Q9Up1dhLwK5Gs
         7ZOfJmt554aJEQ5pu6o7SBDh6I4A/cAUVyvA81rnP9/ByYRqWyvsmyOUc0RbajLKVkaK
         /unmqzh5xiJjWMyVNaxPOH7BIeqlFkr8N0ucKuyT3z6baI3w6aeZGOlfqBX/OiruFj4c
         d0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tDldJvUWq/t8HkLjmMBt3wQxs1mV2YA2MEy0H6KrEa4=;
        b=eCETGtvcf5v4IRuXDFT3AQ0SBAfMraQUYbmwcqOaD8FTO+ZVIWqehx2VYfeoCkuuM7
         zM+jpMkE9iqygl+24IrG2SfVtWryQNlLB4cM2q17P/yP1fg/KhKqdrQ+TlLq16dLfOCY
         EMroyRzpOAHMu5ZKEa1kNgZdVh8qEmwNxQ2z9E2n7PU/oHiTIgkBkTsjJTprPDoQHVEm
         0gk68pNvHmk8mHesvNshk5erTautAPTuFmoUyVqEMmLayBNjDjRxcSf+wVnt+HLIOayX
         PmnH/ih8zkUG5EpGWqRwvCuGAsFChPi+1FlM5yoI+CW0b4pBz4+drEO/+ixu2eO4USwm
         1B3A==
X-Gm-Message-State: AOAM530o1kNbbw7pe4suA7IaJ1WhcanllELQZYAw/x5U7zCEnlyJxkqg
        pjMV4CvmdEAW9u7T1I2BCF5X9g==
X-Google-Smtp-Source: ABdhPJzd89enCk6VoI47naeAR6OkRQL5XmJ0KABR2EGaW+DwnKnSpXmAIFglSzBNiUEw2ulcYYPRng==
X-Received: by 2002:a05:6402:2553:b0:42a:ef31:4444 with SMTP id l19-20020a056402255300b0042aef314444mr21971360edb.46.1654447040879;
        Sun, 05 Jun 2022 09:37:20 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w3-20020a1709064a0300b006ff0b457cdasm5346770eju.53.2022.06.05.09.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 09:37:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/4] dt-bindings: mmc: samsung,exynos-dw-mshc: document Exynos5420 SMU
Date:   Sun,  5 Jun 2022 18:37:10 +0200
Message-Id: <20220605163710.144210-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220605163710.144210-1-krzysztof.kozlowski@linaro.org>
References: <20220605163710.144210-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for Samsung Exynos5420 SoC Synopsys Designware
MSHC with SMU, already used in DTS and driver.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index 80c557e938a2..fdaa18481aa0 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -19,6 +19,7 @@ properties:
       - samsung,exynos4412-dw-mshc
       - samsung,exynos5250-dw-mshc
       - samsung,exynos5420-dw-mshc
+      - samsung,exynos5420-dw-mshc-smu
       - samsung,exynos7-dw-mshc
       - samsung,exynos7-dw-mshc-smu
       - axis,artpec8-dw-mshc
-- 
2.34.1

