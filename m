Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50FC7702A89
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 12:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241015AbjEOKdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 06:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241024AbjEOKdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 06:33:44 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3C710E6
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 03:33:42 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so110068125a12.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 03:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684146821; x=1686738821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J1Io9xJbU4JX39VK14nXRnzKFl0uDZxNNtw5+nQANrY=;
        b=ope3CTSsmM5+nVGa6nDQ23eDeo6m42GlWQq+HNb7BKilPdW4bR3mXUiy091oi8TPC1
         YDgjX/ggvnKelkEWVBwh4rW9K/Hi0TNylwpuoJuksl1pgoRTmrKacrdvDQWlOUDdEs1D
         ld7YGKdDoAE9qimRne5zWKkxo4V1rqx7cUus7iPdEkNUPTw+4wnCayYYIhN9ZpLkGIUg
         YrVLX89UGrv0rqMFwW8pqnXtYWjFvw2MQxxOUcbgufaHs5uWIHJbFA1+PSVD60ogtvrC
         v7+23INVZGFKvD+lSaTb/n4dqSengc8Hsh2F50J3E1r44oa11XHil+JEc8lm4XNtp1yZ
         BLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684146821; x=1686738821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J1Io9xJbU4JX39VK14nXRnzKFl0uDZxNNtw5+nQANrY=;
        b=SH9D//KmDfG/ke5Q27rnMVZiH37QekB4g/LJqzlQh2PqnJnQn1wdn/uMSan9sX2aeV
         8Vom8S4wy1P57KelWDWSvRmzlzs4a5TJK4jE4WIK8dt0EIe0uGBopmbd+W4DEp5d1UVt
         kvr7vFfORHrIFUv93B/GpOEDtVlHLv4zVpJFX9hokHoMxeufPAuZpRr5BG5z2yLbG67D
         vwjqLF0pWQQrpDL1y4tpya0n4vpFlxDKzuOWgZiCih4X13PPOe9fRGJpJ8viUK6T2cIZ
         pp64nth3Knip8FGNIbcbWMoa4B+ZTJyerQBf6n7ZimRyBnn7T/LdZNTxMDmwae+UnuL9
         K0Aw==
X-Gm-Message-State: AC+VfDw9BA4rmNDqxoR6Ym3kIW/Ir0IngrK7RLxytluD9I/1DOz9zhIl
        A881D9nju9wXcR+GHpTuY111zg==
X-Google-Smtp-Source: ACHHUZ79XKwcCPu/JTFUpdIw2AzsRhVp+XYMqqRIaOwDce/uXxAthld1TOf1T6g3strjFczZX+lKUw==
X-Received: by 2002:a17:906:da8c:b0:94a:653b:ba41 with SMTP id xh12-20020a170906da8c00b0094a653bba41mr16678956ejb.15.1684146821031;
        Mon, 15 May 2023 03:33:41 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id ci18-20020a170907267200b00959c6cb82basm9276788ejc.105.2023.05.15.03.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 03:33:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Richard Leitner <richard.leitner@linux.dev>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marek Vasut <marex@denx.de>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        mike.looijmans@topic.nl
Subject: [PATCH] dt-bindings: usb: usb251xb: correct swap-dx-lanes type to uint32
Date:   Mon, 15 May 2023 12:33:37 +0200
Message-Id: <20230515103337.130607-1-krzysztof.kozlowski@linaro.org>
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

The "swap-dx-lanes" was never described as uint8 in original TXT
bindings and Linuxx driver expects uint32.  Fix the type to match Linux
driver expectation and original binding.

Fixes: fff61d4ccf3d ("dt-bindings: usb: usb251xb: Convert to YAML schema")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: mike.looijmans@topic.nl
---
 Documentation/devicetree/bindings/usb/usb251xb.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/usb251xb.yaml b/Documentation/devicetree/bindings/usb/usb251xb.yaml
index 4d1530816817..ac5b99710332 100644
--- a/Documentation/devicetree/bindings/usb/usb251xb.yaml
+++ b/Documentation/devicetree/bindings/usb/usb251xb.yaml
@@ -231,7 +231,7 @@ properties:
       power-on sequence to a port until the port has adequate power.
 
   swap-dx-lanes:
-    $ref: /schemas/types.yaml#/definitions/uint8-array
+    $ref: /schemas/types.yaml#/definitions/uint32-array
     description: |
       Specifies the ports which will swap the differential-pair (D+/D-),
       default is not-swapped.
-- 
2.34.1

