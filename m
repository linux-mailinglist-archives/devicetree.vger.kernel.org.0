Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7F26E8AA2
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 08:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233890AbjDTGu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 02:50:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231730AbjDTGu5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 02:50:57 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60BE826AB
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:50:55 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id u3so3905505ejj.12
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681973454; x=1684565454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BZBSMQktnT3sOUJ8njJfewAafajqx7+l0kvMw5MkbYc=;
        b=RMcG5R9F0ItlJ2Yrczy/iqBbaS7ytas5ZRJiSKNtI4UK6iwyRLAn0or2Q0pP6C2CNl
         ln3RBOH7cZEvk7Pw6R28HEyxmkCbiozpSGCm9onw3qNuKpcsHPe+0OA1cCCaqIqnxsSJ
         d3YXZMS1gIHJX+FZP50Y7AjaEgYa2FOix869bNkLGaQJPuCNomaoIl9Rj95El9kEH9Iv
         7TCqNlEmrkSRXfhY3Q0Vf1yGfn7blmeG/oFfpRDQ03o5A3XRvFWqBP/LM94Q4znn8TQi
         kGU6vd43n8wdFdavuEASTVuLLDJsQWcyu2Iv2hwa3kD/hMyXoyHr1RwfMAnjacMzdjbw
         OpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681973454; x=1684565454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZBSMQktnT3sOUJ8njJfewAafajqx7+l0kvMw5MkbYc=;
        b=IWRXJRLq6xPIFYfm2T9UaaGMkZkpjUBj7sYK+8QufjyZfjEysaY6vltKpbsOOqBl3J
         uabufuA2+0SKX1vI2yH1B+O+/7p3YZxLVNiw3rAKcdEvfiJTsA4pApe2p9NzlprzodYh
         i+fc6/kp/iV2V4uJLvsnbO8dRDZWqoC9GGlLc/IZjN8thErfhiLPxdxETq88V5k+U39Q
         3dSKSEnWq3YOs0BCNpqvNMsSFWKX/3A7QJOR2m/hdwZfH19v3Yc7nBQSP8eJpBCZYBCE
         qJBV6q/JASm+BvCDXFb2sELrvlEuo07ro7XA7DIbPGw/EN/3akfG9/06p3W9d7IuKs+d
         5EbA==
X-Gm-Message-State: AAQBX9ckCpSkA0Q4VUVoBQgBVvs91YzLu868n8JdSuCGBt3qD+GVjL0f
        jca8ioJL0w2Fux6PNEq87cakig==
X-Google-Smtp-Source: AKy350aUCP1fGimAyu+iszpo1b0WXJNidAqhDBXkSrvxhoJ10XZCYH/yQsD7vyt04SPPV+9V+qCh/A==
X-Received: by 2002:a17:906:57c9:b0:93d:ae74:fa9e with SMTP id u9-20020a17090657c900b0093dae74fa9emr498351ejr.7.1681973453837;
        Wed, 19 Apr 2023 23:50:53 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id lh21-20020a170906f8d500b0094eeab34ad5sm360048ejb.124.2023.04.19.23.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 23:50:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: ci-hdrc-usb2: allow multiple PHYs
Date:   Thu, 20 Apr 2023 08:50:51 +0200
Message-Id: <20230420065051.22994-1-krzysztof.kozlowski@linaro.org>
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

Qualcomm MSM8974 comes with USB HS phy in two variants, although final
DTS chooses only one.  Allow such combination in the ChipIdea USB2
bindings and also disallow any other properties in the ulpi node.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

DTS will be fixed separately.
---
 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index e5e4dbc5a7a0..b26d26c2b023 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -322,8 +322,9 @@ properties:
 
   ulpi:
     type: object
-    properties:
-      phy:
+    additionalProperties: false
+    patternProperties:
+      "^phy(-[0-9])?$":
         description: The phy child node for Qcom chips.
         type: object
         $ref: /schemas/phy/qcom,usb-hs-phy.yaml
-- 
2.34.1

