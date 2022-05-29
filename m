Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B39C05370B9
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 13:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbiE2LP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 07:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbiE2LPZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 07:15:25 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D56D986C5
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:15:23 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id f9so16184542ejc.0
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4T5vhUM1NViXGJsshqdrzfvWLGGvkPzScftKsb22jA8=;
        b=o4eSsznPrj3zLmr0uxcuKLBvgR5kIYT8PSVa4RjgjLmTJ8z+q0PRN7R8gBuDU0L40l
         z0fCqy4ouKnOxJvagNegLwIJOotTliDu4qiD6rIV1j7Raz4Rzr5Gqo8ULr/gPNcPbe5L
         YAFXTdTrnLg+lpf4b04sqp5rCofE6s4m8KlxKUEfNtyfdDFPbDkCmfqAX+qX2f+ckyWL
         dzk04xZZg52arW9ePdUPnLO5Fhdu7mPv+6/W9/NBhWzz8NK/+Ge+fmjwclPbyahDlmxR
         8oG+N4mml02CMDs4/029fPzHRmAOlLued3TV1QBmx6yCjhFVzGTbN8mHLnevhcp8Mcco
         xlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4T5vhUM1NViXGJsshqdrzfvWLGGvkPzScftKsb22jA8=;
        b=kJwyGGNk19hxg7UzMeBWyiaA6zih5R9zzKckXO7QOWoc8pjyVD+bQAivEBVDPrcHlD
         dSQbbmE9VHIqRtzNvJ0OZyDB3FBFtVcAPOp05G3Eej0y56RZPoEgPAddLc9cs+SLfa5a
         n2rlWZ3MPk0zXxW/Q1VnO0+zVuPAwL74GKe3ctWIcPzyM4ad0dkkD+yS/vlKnjxovKi1
         +vOQ7SeQC0I2d1nLWVhave5nr43QPBu1gEFXGAoNUxTtCte2MpZ/RuWIbpNGA+oaw3Re
         MafcCSkDTED5/l5ULp2uECLiK7EwYMqs6jSySxuKQ4nz8Vtm8uzIhCH1DwDXV+fsnCzA
         9ASw==
X-Gm-Message-State: AOAM5309h7qRi47ed62EcLG3qWe0n7twm3Iw1xZVPgEelsiKKihtq0Bk
        d8e2Y6KUt/EupovWqjBMOw9dwg==
X-Google-Smtp-Source: ABdhPJzPwStx3ud/wM0wjW8ONC5Eg96YZVdJXNzlrLLfz7rL8uFBwK2nwKShMM5gVTY6pPPGRyAJ2Q==
X-Received: by 2002:a17:907:3d01:b0:6e0:c63b:1992 with SMTP id gm1-20020a1709073d0100b006e0c63b1992mr46296729ejc.422.1653822922321;
        Sun, 29 May 2022 04:15:22 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o14-20020a170906774e00b006fec6e1d856sm3084848ejn.82.2022.05.29.04.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 04:15:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: vendor-prefixes: document deprecated Atheros
Date:   Sun, 29 May 2022 13:15:15 +0200
Message-Id: <20220529111515.182810-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Two old boards use "atheros" prefix instead of already documented "qca".
Document it as deprecated to fix warnings like:

  at91-gatwick.dtb: atheros@0: 'atheros,board-id' does not match any of the regexes

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 169f11ce4cc5..61a2cdc83058 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -145,6 +145,9 @@ patternProperties:
     description: ASRock Inc.
   "^asus,.*":
     description: AsusTek Computer Inc.
+  "^atheros,.*":
+    description: Qualcomm Atheros, Inc. (deprecated, use qca)
+    deprecated: true
   "^atlas,.*":
     description: Atlas Scientific LLC
   "^atmel,.*":
-- 
2.34.1

