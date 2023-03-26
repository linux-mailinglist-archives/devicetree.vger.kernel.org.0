Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C847C6C97C9
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 22:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbjCZUmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 16:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbjCZUmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 16:42:31 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42CBD5FD8
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:42:30 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id r11so27950960edd.5
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BilgW9JQ3PYiXbdZSdcUykIAS0KaiQsLO0keVQERKnA=;
        b=OSlvhaVxy64XN8aMVHBS4Zg5o8E2zsGaanoaFHcnY+22smUGuOb+qu9CIfIpOQiIvC
         lNBik1Of2Au9EjTgXUjruoCHMLWm9BDc3Ohz/1igEkeTZqkPreOd4ph/I5K0291Gm2Q4
         thC5c1jC9v0FyxwO7onEbq61QkfZ5LYAm2MuGD1UjLKs+j9pFeV1+42UNBuKWZM9Yocc
         ufSfXOFZaHkzB3cLSO1NilDS7V4db0Vj3amdC17Zd58X+19p7IVqokcM8WBmtO65lfMa
         ar9I4wZs9vtoVdDX50WLnPMLWAN9UsdELvet8GuvzWU5/bb7JWmBQfdlTyUdaxCkmG9G
         Bqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BilgW9JQ3PYiXbdZSdcUykIAS0KaiQsLO0keVQERKnA=;
        b=JABMVoN+3s3pKoZK/FqBsitMJFyXTO086NmzeadV/HBphb9ZVGVOC8s5DPtcHpifKU
         2Ie+101+P6vk/xNdvT/F2k0xtpWefblbu+fWAbP0QFZ6U9zqxs2Yr6Y8QGcNehqT6xNO
         oxf7cArgPr0Mf61RfI4qzI4DCyNoz8cyfAmXol+l2+x2t6vjT7T2eTIauF9yPZ13CFK1
         XTDlMlpnCCRNKFrQMOgWetbFs/lgc6tHhnWc5hYlF1E4Vhw6lRdSAC7C5FrA3Mvh4ftX
         iqcDiEfxF17iNo82AsIJly7ykQhChBZ2KGiNB1Xs5FyU84PyU5nTUiC9yLwAFJ7PBR48
         HU0w==
X-Gm-Message-State: AAQBX9c5PouOH3rPrJPLV4fsUz7WGoK/iHRxGkyAzXfcWNo13xPxC0rw
        NuZPwdp2OTj8hUCrmEjViHQgNA==
X-Google-Smtp-Source: AKy350bcLGk7TwdA88dxQv6mjnmK+k1+T6Ec5tJyYumt66UXAMs/BDq2jxMsFPU6KafLltTLnWCiEw==
X-Received: by 2002:a17:906:71c4:b0:8b1:7857:2331 with SMTP id i4-20020a17090671c400b008b178572331mr10035871ejk.65.1679863348880;
        Sun, 26 Mar 2023 13:42:28 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b009255b14e91dsm13286144ejc.46.2023.03.26.13.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:42:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] dt-bindings: display: feiyang,fy07024di26a30d: document port
Date:   Sun, 26 Mar 2023 22:42:22 +0200
Message-Id: <20230326204224.80181-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Panels are supposed to have one port (defined in panel-common.yaml
binding):

  rk3399-rockpro64.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/panel/feiyang,fy07024di26a30d.yaml   | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
index 1cf84c8dd85e..92df69e80a82 100644
--- a/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
@@ -26,6 +26,7 @@ properties:
   dvdd-supply:
     description: 3v3 digital regulator
 
+  port: true
   reset-gpios: true
 
   backlight: true
@@ -35,6 +36,7 @@ required:
   - reg
   - avdd-supply
   - dvdd-supply
+  - port
 
 additionalProperties: false
 
@@ -53,5 +55,11 @@ examples:
             dvdd-supply = <&reg_dldo2>;
             reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD24 */
             backlight = <&backlight>;
+
+            port {
+                mipi_in_panel: endpoint {
+                    remote-endpoint = <&mipi_out_panel>;
+                };
+            };
         };
     };
-- 
2.34.1

