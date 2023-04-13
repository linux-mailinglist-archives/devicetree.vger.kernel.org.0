Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3785E6E0B15
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 12:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjDMKKF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 06:10:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230265AbjDMKKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 06:10:01 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 331979754
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 03:09:50 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id a29so15588244ljq.0
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 03:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681380588; x=1683972588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEAnat5PSJjsxQAWB7/SpZ+xwfK/Fj2JlbHtk3HNvoA=;
        b=ltTzPvxhvo3ZlgIQh10MfEpSaxyzcEAkSMAeImGiz864Hk+fEhbQ0LBYTl2tPSAMzv
         ab1LF0jIAHCyWSFQHQAPE5RsNQrBf7QUL10601PtdgwXHZgXZX6SmagLER5KjFeycGbU
         Tn1zqwIgboWmT5uTM98zj+zv1iLv4EQv3BV3StMfIXzzjTyE/rb3qRcf8zYfu6JtIPSk
         zSZ7/Jy0lHHCEV12vsYu00BDiERMME3VWk+g53uOSCfATYHP4XEKxgzEMZqCPinFLuSr
         QkXOAnq24uM2s1mGb3lQYwPpkeH1uS6wRGzzQeqmXaHWp9Czo7eQ2hzQ8vxjX6l4hEmf
         Rnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681380588; x=1683972588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DEAnat5PSJjsxQAWB7/SpZ+xwfK/Fj2JlbHtk3HNvoA=;
        b=YtSVU1mX6Cwwr6rSxaZeH62tWZX/jsreDck2LUhhpYd841ZDl1LBYKp0+UNX+TXPC3
         P6nRWRtvEFYzeqXs1TpKwQ0ONl8jSBMopgbnQkDTIz+KqGEcd1it9U2nYsRiQtQgbNGy
         Hz35010POhXtR34BuyCMt6Y5ms8BHFz6wEC2szlhR0URvJhcQ4wgGaBzzv9jamJ+jMmv
         gjNoEr3AlkWsqbBb4U5LDl1owFguyP+Porg3qvvU4LMEv1HscOt8y6j1a/WnJB/1vPGu
         kr7f/F3eC7WDUyoNk1arg9y6bPY20dc60i0B25NrhssbJv3by7jcUtNxCFIyuODIAvpd
         H6bA==
X-Gm-Message-State: AAQBX9fYOiFdVFzX4i11B8CowYloXV0xh7dwFRqtr5cXOJgBYK+EYGyn
        l9U0X1VF+BHxP/gNcpXmgKAFNCZ97dBZB7maiDQ=
X-Google-Smtp-Source: AKy350asL51EeQDLbOK2ZbUFavRJIn/bPYE8P0PHMi+LSEUZ/Jv99YCh3KyhcP4BfchERSh094e26A==
X-Received: by 2002:a2e:9e19:0:b0:29b:d471:c80f with SMTP id e25-20020a2e9e19000000b0029bd471c80fmr907501ljk.36.1681380588424;
        Thu, 13 Apr 2023 03:09:48 -0700 (PDT)
Received: from [192.168.1.101] (abyl123.neoplus.adsl.tpnet.pl. [83.9.31.123])
        by smtp.gmail.com with ESMTPSA id t20-20020a2e9d14000000b002a2e931fc48sm200482lji.140.2023.04.13.03.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 03:09:48 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 13 Apr 2023 12:09:35 +0200
Subject: [PATCH v2 1/5] dt-bindings: display: panel: nt36523: Allow 'port'
 instead of 'ports'
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230412-topic-lenovopanel-v2-1-055c3649788e@linaro.org>
References: <20230412-topic-lenovopanel-v2-0-055c3649788e@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v2-0-055c3649788e@linaro.org>
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681380585; l=1187;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=FMgShhUTMaYzSy2Me7Gv1xSXp92sIQsWFZ0aqhhoJn8=;
 b=9J88Z5LuF95gqkV+HSGcOJ5UC/2WCV8vVvuzNlssYzVIvrv/8ehvUa53oIMtzftb/pqyOx/rHMmu
 dOWMlYA7DWmYNYzxksbhUTQJ36XooRkA8E19xmPb9BFG36Q4wp1V
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using 'port' instead of 'ports' for single-DSI usecases allows for saving
a couple of DTS LoC, including a level of indentation. Allow that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/display/panel/novatek,nt36523.yaml           | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
index 0039561ef04c..38f4f986aef1 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
@@ -33,15 +33,26 @@ properties:
     description: regulator that supplies the I/O voltage
 
   reg: true
-  ports: true
   backlight: true
 
+oneOf:
+  - allOf:
+      - properties:
+          ports: true
+      - required:
+          - ports
+
+  - allOf:
+      - properties:
+          port: true
+      - required:
+          - port
+
 required:
   - compatible
   - reg
   - vddio-supply
   - reset-gpios
-  - ports
 
 unevaluatedProperties: false
 

-- 
2.40.0

