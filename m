Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8395175A889
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 10:01:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230377AbjGTIB5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 04:01:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231156AbjGTIBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 04:01:51 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 653052700
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 01:01:45 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992f15c36fcso88785666b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 01:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689840104; x=1692432104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=IIUE+hnfxKhd5Xc+lQhEKIp0eQTdPb5Wl+/AOSnuUXo=;
        b=GxUYlzM2c7AhNEZyV0vL1kTJdS33rbHJD1Xw/3KlVPtaBaESlfKpugCxebNbbhnu12
         E0GyQTLt5Gk60chZS0pjBtluffzutXKmt9TT5i7iyh5BUc1s39LFiSNvzE63rUOLrS14
         OADY2cWp2ll0XHA92zhOli9xq5hePJ/LzIdQBtl2x1iXQg8u7ziEaImW4/IVBLVNS4L2
         iVdlKy8Ezij+D1I3MeIO79ABE82qRsHvYQxxKM7tUuE6KFWTPNqsDEZoZaO9KA//lsIB
         lxsvLnfWX7CI2Df643/kVuB4jB2NP6PpIvcOkcwx8KDlJALs96xHeXm7nbG7NNS7p135
         WaLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689840104; x=1692432104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IIUE+hnfxKhd5Xc+lQhEKIp0eQTdPb5Wl+/AOSnuUXo=;
        b=MWPgEBjxiO1UGDnIAx5lUOPCH6zgmYz6dMSqoMb/AHVTpBgKtc0/HldMUMoVj7yFIv
         9gk7kV3XYLVhghVmiYFa7O/LUlxBXOF0CelX74sGocBgnDBFccI9Xo9OIel1Ig/THiJX
         z0gC2CNyYsyua26RbS2aSc4K4i/H1H8/S0S4cQ82OdEMSsimnypC/NJUelR1R9ylVJL+
         XwcrcRVXiWSKAEBIN8tDqSu/Jl51GKMbzst4kiktIFKFPa/bLzGR6ruD2DhwiEdkPG06
         A60jRQzbAB1DPGLlGAZ6BORw0bGbil3gvrP+k3psTVtnCATZBjdkBsJWdanbspuVcozH
         F6Ag==
X-Gm-Message-State: ABy/qLYigg9GTiu/j8PfVdOjLG52fcv2F4wfxvwn/O/z+dmKJxGrWn6f
        ygbcesaED5zufuyvtuVzW7hdHw==
X-Google-Smtp-Source: APBJJlEu8r73weOsR4SUAjeo2pV2aTYyxPqRR1E115PYOAv7Zxbzrn5QJdVKmkGcldKBrxgqDgK4MA==
X-Received: by 2002:a17:906:64ce:b0:993:f996:52d2 with SMTP id p14-20020a17090664ce00b00993f99652d2mr4872423ejn.20.1689840103791;
        Thu, 20 Jul 2023 01:01:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z5-20020a1709063ac500b009882e53a42csm309015ejd.81.2023.07.20.01.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 01:01:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: extcon: maxim,max77843: restrict connector properties
Date:   Thu, 20 Jul 2023 10:01:40 +0200
Message-Id: <20230720080141.56329-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not allow any other properties in connector child, except what
usb-connector.yaml evaluates.

Fixes: 9729cad0278b ("dt-bindings: extcon: maxim,max77843: Add MAX77843 bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/extcon/maxim,max77843.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
index 128960545640..55800fb0221d 100644
--- a/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
+++ b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
@@ -23,6 +23,7 @@ properties:
 
   connector:
     $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1

