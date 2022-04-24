Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FAAA50D299
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 17:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232707AbiDXPGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 11:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229987AbiDXPGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 11:06:39 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 618561632E3
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 08:03:38 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id p4so107398edx.0
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 08:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oZgdjt03EFmKkCkALdaRUu9j5orxJYcBeTCfsLBxk8A=;
        b=e79ORiAutXKpfRKfDI4jXkdPYCMgpBeTvyplaO+1daTM2LEQLNjQDBuki3dPzftEbT
         GeqbES3KlYcCt9jbS8fdgYO84BMtLoYAFxws1eeKquJru9TKMDP7yrYT9BaLthSRO+Aj
         P/JOyv/te+KN67fq/EL8gGk11S21wp5KVo/RgFA7vLNXQcUwMZawImHOtms4IqKdPIRC
         YSYII2ER/jGF0nsTT7f9ba3JDw7PBtP9JfoeOSLC/h/aVBLn1j8e/ntS3A2NKc84EfXx
         VXWJVqVKKBEb6yeaRcj4ws7cKTsq3dXdOoKXkFfqoYbnzN06V/L4a/UOGfF1WBukjaDr
         S0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oZgdjt03EFmKkCkALdaRUu9j5orxJYcBeTCfsLBxk8A=;
        b=hwoKRt+9e/5ZV+1cIsN0ik2L9zAog4PFjxM7voTPAWPXGPa5XI0c8RpUa/jiRKS1oW
         7dTvScEJFRA9og1hE+K5Mc59XYc1H17EYMGpmPfyxLRoHvj+Qu0YrIuAu+R6PlmUsyjD
         hcW0Ht59EEl8Jxngni0IM49/TamwDSkURHlGUb8SLfzvk6yJ88MBr1C2p7C3Zxde7HIJ
         I0dMeDOk9uCM0SinFHsQudhMnPLwhDNwawzP2BW5b2FdeWiJTOhpi7QQrjq3i+jFxqf8
         QaDQ3kgOx08GXyT0udTM8f1nIsJoj9y+xD7zv9tq68lFoYBN81Ky2oK5LVKrrOJRN9ez
         NGRw==
X-Gm-Message-State: AOAM533sT/uRzL/8V0iybNF+amLFGWCfZ39iv0WJmJDrFR1mD+T4f0e2
        uxjSmS0uuBmK6gDyWUW/CH8GpyEAeKuVuQ==
X-Google-Smtp-Source: ABdhPJytUEtWPCyxY1vXwS1p2kyE6foHlshe66Lm72wo7JRHSm6EBgDpEJrg4kT5X1AqveMjrWjE1Q==
X-Received: by 2002:a05:6402:370c:b0:425:a9c4:88c4 with SMTP id ek12-20020a056402370c00b00425a9c488c4mr14454907edb.190.1650812616952;
        Sun, 24 Apr 2022 08:03:36 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y23-20020a170906071700b006e8a19cefa6sm2655165ejb.106.2022.04.24.08.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 08:03:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: timer: cdns,ttc: drop unneeded minItems
Date:   Sun, 24 Apr 2022 17:03:31 +0200
Message-Id: <20220424150333.75172-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
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

There is no need to add minItems when it is equal to maxItems.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/timer/cdns,ttc.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/cdns,ttc.yaml b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
index c3386076a98c..7d821fd480f6 100644
--- a/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
+++ b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
@@ -17,7 +17,6 @@ properties:
     maxItems: 1
 
   interrupts:
-    minItems: 3
     maxItems: 3
     description: |
       A list of 3 interrupts; one per timer channel.
-- 
2.32.0

