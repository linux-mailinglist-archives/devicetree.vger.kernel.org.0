Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1562C6C9644
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 17:54:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbjCZPye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 11:54:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232394AbjCZPyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 11:54:33 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC304217
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:54:31 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id eg48so26092450edb.13
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679846070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVZux4uHBZzsldCyxcu4IzCwrMdWIWc1fs0M3nQN8os=;
        b=ReXjM5bs2NsnbUxngOH0a71w4JaN87+hXV8D5ZUs+LWCNy4WTySdX8t7bCmGq8aej9
         /t7pdOQPt1oSfdoPFaf/Helhz94vHkcLv+FK7plRYHO3UAWs6o0m415MAW5mVV8BamZc
         65fpQVkKkofD3OPJ+jTgb33py/ioBcwkFcZ3iQhAIb4BeGW+GsD6tog2unXij8eXCAVa
         2qiDZz3aIRw3zM769HTgMk743yYtF14Ej2utSs7IU2s5qmYC1Mr/cjiDRXlSL6uhmm8D
         tZI2VRg2HRAEM6NYccywDpPShJ2NpbOf4Q7nMqdZFIXBDEMCBghp1nt7x1I3sOcnrqii
         SJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679846070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVZux4uHBZzsldCyxcu4IzCwrMdWIWc1fs0M3nQN8os=;
        b=B3Ucuo/QZVqZYRw/hkvsOEmMNe8bNQfHlh378e4m/nVRkqII7YpycEjDBAEOScMKBt
         V5wiGUnUlAke5GrmPrnvkxqDDcrSvbnlFIJkiTNpj8J8U7uQPEyTMwdUe+uqy+SG3OWl
         iTdakbcq+cu+o9RRyyO6JhxidZI6m+bRcvgYY3fElBISr1sxrrzrOvMx1RqraPlxAaM7
         WJyXJpIjtu4piGTsVzpFXso8TGcXl6zHG+fsoaVCipQJ39imu/3MbOEIM+s1bnFNr1Dc
         oJzY81orcAaUDlJg5nvkfof9MTAV4sZJ5+nkKdTqgWytRePQl4CvU5ai+nyM+qq+th9D
         n0mQ==
X-Gm-Message-State: AO0yUKUS6zCTSfOVm2FjP7l6AeqKm84kyaTG83ztTKb3wmSsjpRQ13Hb
        r7ro3qyO3HHgQAFwWopTrYtoUg==
X-Google-Smtp-Source: AK7set9DE6vPbbVIA0Rm5bVMGQJWRb3++BCkPyrB3vGliMxtG1Nvbu9P2n0OAfxhr8S+W5+V2o808Q==
X-Received: by 2002:a05:6402:5d87:b0:4af:740d:fde with SMTP id if7-20020a0564025d8700b004af740d0fdemr13852421edb.20.1679846070169;
        Sun, 26 Mar 2023 08:54:30 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id l6-20020a50d6c6000000b004af62273b66sm13506742edj.18.2023.03.26.08.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 08:54:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Harigovindan P <harigovi@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/6] dt-bindings: display: novatek,nt36672a: correct VDDIO supply
Date:   Sun, 26 Mar 2023 17:54:21 +0200
Message-Id: <20230326155425.91181-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
References: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
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

The nt36672a bindings were added with a mistake on VDDIO supply calling
it in one place vddio and in other vddi0.  Typical name is rather vddio
which is also now used by DTS (sdm845-xiaomi-beryllium-common.dtsi) and
Linux driver.

Fixes: c2abcf30efb8 ("dt-bindings: display: novatek,nt36672a: Fix unevaluated properties warning")
Fixes: 9528a02430df ("dt-bindings: display: panel: Add bindings for Novatek nt36672a")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/novatek,nt36672a.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
index 41ee3157a1cd..ae821f465e1c 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
@@ -34,7 +34,7 @@ properties:
     description: phandle of gpio for reset line - This should be 8mA, gpio
       can be configured using mux, pinctrl, pinctrl-names (active high)
 
-  vddi0-supply:
+  vddio-supply:
     description: phandle of the regulator that provides the supply voltage
       Power IC supply
 
@@ -51,7 +51,7 @@ properties:
 required:
   - compatible
   - reg
-  - vddi0-supply
+  - vddio-supply
   - vddpos-supply
   - vddneg-supply
   - reset-gpios
@@ -70,7 +70,7 @@ examples:
         panel@0 {
             compatible = "tianma,fhd-video", "novatek,nt36672a";
             reg = <0>;
-            vddi0-supply = <&vreg_l14a_1p88>;
+            vddio-supply = <&vreg_l14a_1p88>;
             vddpos-supply = <&lab>;
             vddneg-supply = <&ibb>;
 
-- 
2.34.1

