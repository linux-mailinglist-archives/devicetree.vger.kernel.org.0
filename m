Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 440334EEE00
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 15:23:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245631AbiDANZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 09:25:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234577AbiDANZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 09:25:05 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E1AE26EC91
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 06:23:16 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 8-20020a1c0208000000b0038ccb70e239so196460wmc.3
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 06:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ySJwETHpWDKKyAZvqLfjxNf0H3moszvQ74LGpXqQJbk=;
        b=r09Df/g+9gVYcS3kXrgZjc05u2PZaF4ges6JZgG84LcXzjUr4d3bN6wjWWt0fn2OwO
         tQUMqm1Bce5DoveGGEmjVPQd5n7CApCaYktyEc31v4DP8ygJUn2ZI0YGRktjS5B8Kfuv
         o9CYlyvAo4/iEucHtkKUyVLJ3L5sospesGGkK+pmDCzcX63MUhZLkWzohVOnHXiBgTuP
         hPnXk+0L9S+Nfdd7WEY6lkxGo9tuJmZt6+dgGmZFmAb/O1+4GqKJ5bCmQyVpoDiueyOV
         U9drGkl9gG4pfbCG5W7kKf32/ofdg5icO0CRKVo88xdoO7iHR6fICFQdAws/SudPMzUw
         HIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ySJwETHpWDKKyAZvqLfjxNf0H3moszvQ74LGpXqQJbk=;
        b=vGt70Ra5IHlge2M4unx7/MVlPvZp9L2F7sFu4lYug5C+UV5h9yUUUqHOi+UuTVU2jp
         yzWMEbJTHCu/KuzdjusNbrCEZvdLT8Wis0sQeBPqbAw8MqYCErvVqglzm89t+7iF0Atj
         n8Z0x6qW0C15FbuV2EEGPajAsAFSJ3Oz0u0Tq+gEVUE1C13dlon1WabJigmRayui0PFY
         8Ar29dzmqdz7tWVOyhcLcLWspMMGnyh6NZp9TKV5YoIAOZW5ULNZKnmsCciv7UKS1iOd
         facNE7ie7PssRsodkkeW/Ib9pgC7eqs4hOCK+E4VuSAkCmYuL3KmN8rRDEoRvTBfZpzW
         eTeg==
X-Gm-Message-State: AOAM533iliPi/5VYp+cCThyszu7Gw6/BP0UMmx3cDfLBlb8lFTEP8juW
        xnI8jAK5YMvzPmMLlyNbP2utFnk8EAKzaMJ/
X-Google-Smtp-Source: ABdhPJyIM1k3E8ZpfQjB6FEVfcoHZ2cmWg6O46jdnlTi5pIXjttYPtO0MkxYD567xlI0ikYZWVHGvw==
X-Received: by 2002:a05:600c:1d8e:b0:389:d079:cc0 with SMTP id p14-20020a05600c1d8e00b00389d0790cc0mr8838746wms.98.1648819394893;
        Fri, 01 Apr 2022 06:23:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id q14-20020a1cf30e000000b0038986a18ec8sm1876503wmq.46.2022.04.01.06.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 06:23:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] regulator: dt-bindings: richtek,rt4801: minor comments adjustments
Date:   Fri,  1 Apr 2022 15:23:06 +0200
Message-Id: <20220401132306.854991-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

Correct grammar in 'enable-gpios' description and remove useless comment
about regulator nodes, because these are obvious from patternProperties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/regulator/richtek,rt4801-regulator.yaml         | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/richtek,rt4801-regulator.yaml b/Documentation/devicetree/bindings/regulator/richtek,rt4801-regulator.yaml
index 235e593b3b2c..9c4abc7ae6e2 100644
--- a/Documentation/devicetree/bindings/regulator/richtek,rt4801-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/richtek,rt4801-regulator.yaml
@@ -17,9 +17,6 @@ description: |
   Datasheet is available at
   https://www.richtek.com/assets/product_file/RT4801H/DS4801H-00.pdf
 
-#The valid names for RT4801 regulator nodes are:
-#DSVP, DSVN
-
 properties:
   compatible:
     enum:
@@ -34,7 +31,7 @@ properties:
       Number of GPIO in the array list could be 1 or 2.
       If only one gpio is specified, only one gpio used to control ENP/ENM.
       Else both are spefied, DSVP/DSVN could be controlled individually.
-      Othersie, this property not specified. treat both as always-on regulator.
+      If this property not specified, treat both as always-on regulators.
     minItems: 1
     maxItems: 2
 
-- 
2.32.0

