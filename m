Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9988253876C
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 20:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242852AbiE3Sin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 14:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242209AbiE3Sim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 14:38:42 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D67238D690
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:38:40 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bg25so6873593wmb.4
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gAZcIMVkbwQAZDaJSRG1uLvlbaEmw/pRqP3mytMc9Sk=;
        b=SSgqIfRN0e3iUy0WuvEyWAskLlKpZcfPbBZyeZwWyTWSZlWlnExNurqhWYS8sLxgJs
         7AnGX6iYAE/6GhEXOEm2FfMW6r7e/yEPkJ+PrRGgT9Uj/cHp0YFa3cURpQV5JM8vr9jK
         BYkmPCoItCfRIsVO8xEq3T2KiHK34zxYxAOWzToJ25n563MLV64bq+nTA81GC7P+uShv
         OiLSM7gSyh/46FH92dhVAQW2MwUvMn0PthAI145pTEhIGJsGV0ginynxkdvOSaX0qeL7
         h6It4lXQuM/Tv4KXceslm6JN7BV1I2WEER5Ume6m6qw44SStThVESKEORJHCA4mSG3qy
         lYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gAZcIMVkbwQAZDaJSRG1uLvlbaEmw/pRqP3mytMc9Sk=;
        b=ZxJv8KzL5xeTmR1D/us2YHKERlRKl/GH/LnWkvrHiSYg1rEWpwMEC6KIhMabsYemT6
         KD7hU4DqIXmSL8L33N91hfpH48pE1CTToGNb/yPqkEAlRe9n8YtrywznyxnG1GcTHKFn
         8Om1sJ+XrPsWwZzLZCyk6VaXv13dbfsc0l7VehUYLjcQCuARi1rTii6HQAgW8vXNQdPF
         lnGLVkDPsmf3P4Tzwo6qzdzjEl5/3ztDVYWpC3xQesNrFP3zuo6222uh0FpoLcT+oH/u
         vkSwB36NeUIOL9txpgTB/KvqcUV7mgrh+ieNF9pYUfU4fXZI/iG1iGNenO23EEfb7RBS
         6UQg==
X-Gm-Message-State: AOAM532pH4QWCcrciRuYBSrGV4AhVAn3NSdw4fkuuXdX8DxEayBs77/S
        QqZ9BN6kYp4Ge3aD0CgYCXEQnw==
X-Google-Smtp-Source: ABdhPJynr97IYtN0ZgoGAiRMpzW0FEJgGKAE0GAOj8GidWDJahFEiTIA+vDnJ9z6b1hv/Uv3l1DE/A==
X-Received: by 2002:a05:600c:3799:b0:397:7c8c:bbd4 with SMTP id o25-20020a05600c379900b003977c8cbbd4mr19488928wmr.161.1653935919394;
        Mon, 30 May 2022 11:38:39 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id e9-20020adfe389000000b0020c5253d8fcsm11459088wrm.72.2022.05.30.11.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 11:38:38 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: thermal: mediatek: add binding documentation for MT8365 SoC
Date:   Mon, 30 May 2022 20:38:31 +0200
Message-Id: <20220530183833.863040-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the binding documentation for the thermal support on MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 5c7e7bdd029a..ba4ebffeade4 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -14,6 +14,7 @@ Required properties:
   - "mediatek,mt2712-thermal" : For MT2712 family of SoCs
   - "mediatek,mt7622-thermal" : For MT7622 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
+  - "mediatek,mt8365-thermal" : For MT8365 family of SoCs
   - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller
-- 
2.36.1

