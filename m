Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4172A674DE0
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 08:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbjATHR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 02:17:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbjATHR1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 02:17:27 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31B4B4347C
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:17:26 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id z5so3998427wrt.6
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=idNIBghHym44as0+eptn5EKE/JWDDFwVTlmqNwrHy9Y=;
        b=xVxmwr+c0L1Wxoh8VZykpas3sngD/5BZ48j9eDFeUPjqlNGQ63tlN3+ORMaF7Mi4Sw
         sWtxmhew3zIRNY8/UXyEQAY3+2NfjUVLbYHNsM5WqTPTpVcep4uxQoVQ+1utzbFAwvX7
         3XlUNCTrUzPFsXeUhPy+2nJI0DZ6Fn9uYHZ9Zc242dI8gppC2vngiEiDqtJFIxkW4mIJ
         V5a1OWNzmDJyefiWg9rD5Sxat4bFpw0g+jALJKSAxq7RAu7Ojf70cw988XSyDZV66E6m
         2KWD6pB5uiU8D/kig0Cy7WVGfAQezNfF0mhW6voWTOj2ivow9HrSBaLpSwAf+ucm/Qmf
         fKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=idNIBghHym44as0+eptn5EKE/JWDDFwVTlmqNwrHy9Y=;
        b=tIEZq1kDOqZ1ituIcJSuheBqRFyEu58iuz6ReEmd9Rccb41wVt2pbcEO0NV9zHLXR7
         ssFohjXFcrMRrsjqELu/iRJCLyRE2JjfKPfOWPpkKjIJ7hCu2zViyARSwPbS4ySWfjN+
         iUvNtHIQsyvIWMVb1z4d10AE7NZPgkf8iGPpDe//hmNvBb2NulXlha2Z7QEEpGFEFFYC
         qJJ5wLtD0weosF0XJlBzNVOOkNHLAfpOk2eePDXQi7TzGpBZJse2MCusEZ2qbborYAex
         GJM/zhn5dJejBg+ghPwZqh2sAaSJlIuSEchvZGUsz1EWZWexSmEGuM74eeSsn8Q97LoO
         JO2w==
X-Gm-Message-State: AFqh2kruA8oQ1xownvNjf673bmEcdIUgEn1CQJ7BgDoOTC/WStPwFUNw
        YxgQ9yogP4idHKyG8sxoUtwbKw==
X-Google-Smtp-Source: AMrXdXuDwrgegfxwHF2UwnqSGmdntXkZSqLbKbUzKWz8IGmuyIO3Gx4M7XZcrF4ng2Aqoj6JQ8Dv0w==
X-Received: by 2002:a5d:5450:0:b0:2be:4c99:1751 with SMTP id w16-20020a5d5450000000b002be4c991751mr3445327wrv.69.1674199044736;
        Thu, 19 Jan 2023 23:17:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y18-20020a5d6152000000b002425be3c9e2sm34642789wrt.60.2023.01.19.23.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 23:17:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] dt-bindings: power: fsl,imx-gpc: document interrupt-controller
Date:   Fri, 20 Jan 2023 08:17:17 +0100
Message-Id: <20230120071717.138188-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120071717.138188-1-krzysztof.kozlowski@linaro.org>
References: <20230120071717.138188-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fsl,imx6q-gpc is used as interrupt controller (routing back to GIC):

  imx6sl-evk.dtb: gpc@20dc000: '#interrupt-cells', 'interrupt-controller' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
index a5ea45b8c04e..c21a66422d4f 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
@@ -40,6 +40,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  interrupt-controller: true
+  '#interrupt-cells':
+    const: 3
+
   clocks:
     maxItems: 1
 
-- 
2.34.1

