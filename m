Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFD2E568E8C
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 18:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232679AbiGFQDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 12:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiGFQDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 12:03:03 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB5A23146
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 09:03:02 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id a11so19024465ljb.5
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 09:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZaoaKwsL8ku1Uz6lXHCkOu4mh1FNdfVzKE+uBlMrabs=;
        b=EQDIuAW2mPjWc3UukucAmnpe503YdQiYmVy7KYJl2PRpYcGW7hjafd3FnyGdCPQq2x
         L9lEqV57/RrBgD0TjF9LOilwljWgA1RRIltXLGk21nilEA0gn62nImKNbHqp/rBtRZQa
         EoFYhn8/7gUd2e5FGV1VpwMFFjtQsAalpD6E6aOwur/bOt8kSD10XwaH6CYX18CD9ZIy
         FH56lk+Rk5BM1uF1h4wCSxpaG/R+dexGYhDg5DOlIqVL7A5pT/wy6b3fTzkskksShdTg
         Jib7bAvsJh/KB+HsV9pBJuyy6MFRjwg4d1JB2KzUoyt5wsDbmBED/N49xM+XOG15RRHO
         CqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZaoaKwsL8ku1Uz6lXHCkOu4mh1FNdfVzKE+uBlMrabs=;
        b=yANzPKX8yVdrS2eTEHU/bcscb9iBSI69YMvDeftkfKBF5YYbBxNpsLlne1jnmy1sMF
         kKXZV2goVRk1MweSq6/Rlg/vehLryxZHTjkVV1y3wV2voMpTj0ItDKjKb7DS7AGVXzpq
         APWt2UiOjozPUtJX6Hlfoi6pWMLRZ3ZPg11mAyNtbGyUeWQIb8jYsWMCNyfVX/TdINPQ
         9oMfrfnkYj55dx1IxzS72jem8zexSRzoYlDJgHDxWFheTFLETolXJu/u8uvpkfBXBIO/
         OcavxAjalq/qSSR2zInDVemf0CTertaQcRiZ2EbeuRNYwi0vuyjCuw9QyM+KEvPXe2In
         PQ0w==
X-Gm-Message-State: AJIora/ACEt0vQjf6qdRZduvGsFBA/mwan3H5Bdt6Vs6f8ShP5mWTESd
        RMyLdcALP7Fo0UuqcziYXsDGVQ==
X-Google-Smtp-Source: AGRyM1usYe0DgQM+cWbFc0I1Rn5wU2VfkJUj/XUxR6drj0t4QMNREew/jx3fpm7jmqgvm8metzBd7g==
X-Received: by 2002:a05:651c:4cf:b0:25a:9cbe:bf4b with SMTP id e15-20020a05651c04cf00b0025a9cbebf4bmr24713793lji.379.1657123380501;
        Wed, 06 Jul 2022 09:03:00 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id w10-20020a2e9bca000000b0025a65ed7aa4sm6291292ljj.51.2022.07.06.09.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 09:02:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: soc: samsung: exynos-pmu: cleanup assigned clocks
Date:   Wed,  6 Jul 2022 18:02:55 +0200
Message-Id: <20220706160257.27579-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

"assigned-clocks" are not needed in the device schema as they come from
core schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Re-phrase commit msg.
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index c30a6437030d..a5d489acfdca 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -49,9 +49,6 @@ properties:
   reg:
     maxItems: 1
 
-  assigned-clock-parents: true
-  assigned-clocks: true
-
   '#clock-cells':
     const: 1
 
-- 
2.34.1

