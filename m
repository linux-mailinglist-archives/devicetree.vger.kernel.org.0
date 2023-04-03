Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D34716D45A2
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 15:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232008AbjDCNZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 09:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232554AbjDCNZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 09:25:20 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 488EC20329
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 06:25:09 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id b20so117323652edd.1
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 06:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680528307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Xj4CTRinflcxOVayiTMz9WtxgGqTvIRz0yGnEcLNC0=;
        b=Tiga6SZac5A0+DwPw/KvVilfsYhOAAcMOPt56brfrQiwIo+tTkYqcantPych6Q8ab4
         DRxtExBGgV07rCXVGbA053nbq87kiUapgw4074QebtoevYLnGRJx1lMtoK7fzd2JmhKi
         X+iatoBosPFI1i+DmmyQBvrlB5BPE38SGaZAWjJ6G+uWAR1VTzBglrWfGk1fdsGi8geN
         RK1Lr/5wTut7Rd6+vlrJlH+8zNpkDRT0rdh85Xyuk+qBQ7XvC95gZjUtclkGght18wC6
         +FD0KMy6r1BM8FMNNuXTcOFxjNM1Cvw3AiqUY0c2v8Z8h4LbWnrIpe/i+B/gQKYhIx+T
         V3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680528307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Xj4CTRinflcxOVayiTMz9WtxgGqTvIRz0yGnEcLNC0=;
        b=6TszA81MMkGZO3fSHazNdUpijOQ+ULuGeLZB4bO7Rg8iFU7PAml1O1GqDue2SxvG63
         vMvJMsAuZbBkVEFAoRFKdMSQFu36E08yoDPyQBMwPiBIEgTqZewGGDsqjlfOwSm2KpVC
         HgPfnMD1PF9dixSbOaOcib+p5at3d3KZmYl4muVlY9eaXnDDmquq7SgN2B8za0RD+Rio
         RdAUcQgqf0vGqK9s3QLS/t9JAxJqJ/xHQ8qdeS5JoLmHF6wbVlaFFFAwbI7MW5MCDolh
         qbPAFg028OyjRXtmxlsBmzKKHurGQKRc5xUdVOg1alDx2ZjUMA4u1vP/pazgHShQXdK1
         zgcw==
X-Gm-Message-State: AAQBX9fWxpmT/nlRf0gqbuJ2VOgPbXgsGD1OQ89ThS2lbvJvJuZl1+nK
        S0TvdN12oFD0QvfdrjB2UoU2qA==
X-Google-Smtp-Source: AKy350aCyayjO5DJHRY/k+rW+4Gb6yqQoFcG0vmK4uQdZNTIc8xwhJvY27roHiPoh0relKkHpqrauA==
X-Received: by 2002:a17:906:3118:b0:930:d319:d947 with SMTP id 24-20020a170906311800b00930d319d947mr34635741ejx.74.1680528307706;
        Mon, 03 Apr 2023 06:25:07 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id p18-20020a170906229200b00930ba362216sm4658489eja.176.2023.04.03.06.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 06:25:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Sanyog Kale <sanyog.r.kale@intel.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Patrick Lai <quic_plai@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/7] dt-bindings: soundwire: qcom: add Qualcomm Soundwire v2.0.0
Date:   Mon,  3 Apr 2023 15:24:57 +0200
Message-Id: <20230403132503.62090-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230403132503.62090-1-krzysztof.kozlowski@linaro.org>
References: <20230403132503.62090-1-krzysztof.kozlowski@linaro.org>
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

Add compatible for Qualcomm Soundwire v2.0.0 controller, which comes
with several differences against v1.7.0 in register layout and more
ports (thus increase maxItems of each port-related property to 16).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Increase maxItems to 16 for port-related properties.
---
 .../bindings/soundwire/qcom,soundwire.yaml    | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 3efdc192ab01..c283c594fb5c 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -21,6 +21,7 @@ properties:
       - qcom,soundwire-v1.5.1
       - qcom,soundwire-v1.6.0
       - qcom,soundwire-v1.7.0
+      - qcom,soundwire-v2.0.0
 
   reg:
     maxItems: 1
@@ -80,7 +81,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
 
   qcom,ports-sinterval-low:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -91,7 +92,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
 
   qcom,ports-offset1:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -102,7 +103,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
 
   qcom,ports-offset2:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -113,7 +114,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
 
   qcom,ports-lane-control:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -124,7 +125,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
 
   qcom,ports-block-pack-mode:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -137,7 +138,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
     items:
       oneOf:
         - minimum: 0
@@ -154,7 +155,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
     items:
       oneOf:
         - minimum: 0
@@ -171,7 +172,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
     items:
       oneOf:
         - minimum: 0
@@ -187,7 +188,7 @@ properties:
       or applicable for the respective data port.
       More info in MIPI Alliance SoundWire 1.0 Specifications.
     minItems: 3
-    maxItems: 8
+    maxItems: 16
     items:
       oneOf:
         - minimum: 0
-- 
2.34.1

