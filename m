Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE14B5AE7A0
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 14:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233171AbiIFMRo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 08:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233208AbiIFMRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 08:17:23 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE3D87C192
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 05:15:11 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id x10so12076827ljq.4
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 05:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=6UHmjFqZqnkfqTkZXpVtIF2gB+ePd2RxW9GhLYwJ20M=;
        b=C22raz0IOJkbOdosFAVzFv4qOMwXY/MebmIjmU9VnZLg1c3DRqJPzf2ftKSu3iKlVq
         /81y2AJJUxserzvRP3HY68hRFQw2nZZ5+MPZ3+HIpuXxh7AqVxtXv243JAyVIZg35HJK
         1S/Q3h1zZAOMtPaq7I1awkBzGimPcl/u5sufjGO3gFVbSCchGOeC5Mt38JBUnYH15h4s
         Evc3l2TPSdZrVCsbKQKoKPj9BJsGGBEz09PpJullsopORdEAB/0v2T+yWe0/MT0X1a11
         sVpQ8z6DhX+RPbba+3n4ZD6pQqd/NnLeM+uUBrt6cuqMhJArEa78UrehaszjV3g+EoyK
         qtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=6UHmjFqZqnkfqTkZXpVtIF2gB+ePd2RxW9GhLYwJ20M=;
        b=jp+yEZ+yGrNJ9Gw4Bu09VXYOt4bnA4B1heyb12cy+N5/+tCOQ7MSjk7s3BfcCP6ptq
         W/5PiFn6lfHvPQPis/tDo6W73q8wucF9u4Qu7jdnmse3FO2XgCF1uOs24aLwd4BAj3wk
         7iIZxqS/SxlHIBY0oLs2VMaDRKdYuyB03xbW/b43H9TIWmDNZbqtdM61SbonTpBJLVnR
         jRUrVori7HWBjuxMuULtleQoVG9aIotlTeghzvGTvWTnG9zh3X6DDR7pd3eFWsgpVXCR
         ipNOF/fQYPuLbCEuWjOLrspHw995ia2GxlXHF9co8irIsEyd40ukUFGC74ruHRl96JcZ
         0eWw==
X-Gm-Message-State: ACgBeo3MBylCT5IDUWdiAbJg8VKJ2z+McLhFEvD8Ry8CJWUdseJ5AzlF
        dudFvl8qW6F33u4Hl/iZ+NUUHQ==
X-Google-Smtp-Source: AA6agR73Uyz5drAuwDGsn4Pe1UQqm8/rEf1fJfgYCEv9dAukBNbatU8NvbsMMrl+ei2+SY/udulANA==
X-Received: by 2002:a2e:92ce:0:b0:261:e39e:2c1d with SMTP id k14-20020a2e92ce000000b00261e39e2c1dmr15563243ljh.273.1662466440501;
        Tue, 06 Sep 2022 05:14:00 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512114500b00494a0993698sm1708125lfg.11.2022.09.06.05.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 05:14:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: remoteproc: qcom,adsp: enforce smd-edge schema
Date:   Tue,  6 Sep 2022 14:13:58 +0200
Message-Id: <20220906121358.302894-1-krzysztof.kozlowski@linaro.org>
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

The smd-edge child node references respective schema which allows
additional properties, so the ADSP needs to further restrict them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
index 3072af5f9d79..db9e0f0c2bea 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
@@ -152,6 +152,7 @@ properties:
     description:
       Qualcomm Shared Memory subnode which represents communication edge,
       channels and devices related to the ADSP.
+    unevaluatedProperties: false
 
   glink-edge:
     $ref: /schemas/remoteproc/qcom,glink-edge.yaml#
-- 
2.34.1

