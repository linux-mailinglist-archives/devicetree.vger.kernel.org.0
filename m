Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ECD76D45A4
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 15:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232390AbjDCNZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 09:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232053AbjDCNZV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 09:25:21 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 831C221AB8
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 06:25:10 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id cn12so117332987edb.4
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 06:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680528309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cFC2doK7pP+oZeom2O+jOvVNNVc+JGEYRAe06U7TEU=;
        b=tzRfk8NOdb/h927gg/TWagqrk60Ev0iFDYfLVXJiwNd5qxCR4SaQ12ZujIf+zwJPb5
         veojcYiD+25NuWCpRkUWd+Xk5H0ZJzqrPqYGlkNI8Wfj7rGpj8OOfclitrkW26YSgM7e
         gUqdtm4+pOs2MZ4vDSvBBt7Vc+23eB6tEd9u3XxkK4a50d470J1R/D0hgFmSUNmHQ1dX
         Hp35beC+zAdmSVeHdaKkKFHDknXrxGxGIIBm8Ud3AcM/Z5XOHLB0mxVWiyrONl5McQq3
         2HLsFHd/vlD+txHkqAuUppb5au7uD1atcUsR5VXz3SHg8S0Bq7F3/WFOS8V1cMage530
         g+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680528309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1cFC2doK7pP+oZeom2O+jOvVNNVc+JGEYRAe06U7TEU=;
        b=Wrt/eWxAAQvml2CTB2PrM7BG8YlbmFkJS/6D+VyM84XD49xmHt/Ei/98Dv97Ue3p6F
         nygBhmmydEjkufOgtiKFPEorjw13pUOoan6YuPCEm5m+8Ectl+8RsJY3UekMKMsqUqKM
         E0Bbqd4IqYHyP+KtiPAR1S+c1zJ4yrxLej+dTvPyVefuYB41/f/5E/pmCtvxmQvnbLbM
         JmEBChdK5+QuErVhljQTW7/afexbRkLJdkFxup5pCh68CuRM8k5Zi8jNG9VpmxpWCpwr
         hGsnhD06RuoW7a2+sr0lCNHyMI0N3Xsew3XECbpezXhNL4KPyUSdA44UsIbNE2c/mFUS
         rfTg==
X-Gm-Message-State: AAQBX9esjK1QznTSIDr+a6opBmW5UKegyYU17hEzWUmmiTo0/bkxqeZJ
        aYuEsIUD4TRjJBhg/wflhqcVFw==
X-Google-Smtp-Source: AKy350YbAnSJzJAryYy5Z4w+TUXHLgy/iWJlundDtd2T8cKcldJbO5NJI5MUclajMl0qDLW39vc2ZA==
X-Received: by 2002:a17:907:75f2:b0:88a:1ea9:a5ea with SMTP id jz18-20020a17090775f200b0088a1ea9a5eamr32427334ejc.65.1680528308765;
        Mon, 03 Apr 2023 06:25:08 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id p18-20020a170906229200b00930ba362216sm4658489eja.176.2023.04.03.06.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 06:25:08 -0700 (PDT)
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
Subject: [PATCH v2 2/7] dt-bindings: soundwire: qcom: add 16-bit sample interval
Date:   Mon,  3 Apr 2023 15:24:58 +0200
Message-Id: <20230403132503.62090-3-krzysztof.kozlowski@linaro.org>
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

The port sample interval was always 16-bit, split into low and high
bytes.  This split was unnecessary, although harmless for older devices
because all of them used only lower byte (so values < 0xff).  With
support for Soundwire controller on Qualcomm SM8550 and its devices,
both bytes will be used, thus add a new 'qcom,ports-sinterval' property
to allow 16-bit sample intervals.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soundwire/qcom,soundwire.yaml    | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index c283c594fb5c..883b8be9be1b 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -86,7 +86,7 @@ properties:
   qcom,ports-sinterval-low:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description:
-      Sample interval low of each data port.
+      Sample interval (only lowest byte) of each data port.
       Out ports followed by In ports. Used for Sample Interval calculation.
       Value of 0xff indicates that this option is not implemented
       or applicable for the respective data port.
@@ -94,6 +94,19 @@ properties:
     minItems: 3
     maxItems: 16
 
+  qcom,ports-sinterval:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Sample interval of each data port.
+      Out ports followed by In ports. Used for Sample Interval calculation.
+      Value of 0xffff indicates that this option is not implemented
+      or applicable for the respective data port.
+      More info in MIPI Alliance SoundWire 1.0 Specifications.
+    minItems: 3
+    maxItems: 16
+    items:
+      maximum: 0xffff
+
   qcom,ports-offset1:
     $ref: /schemas/types.yaml#/definitions/uint8-array
     description:
@@ -219,10 +232,15 @@ required:
   - '#size-cells'
   - qcom,dout-ports
   - qcom,din-ports
-  - qcom,ports-sinterval-low
   - qcom,ports-offset1
   - qcom,ports-offset2
 
+oneOf:
+  - required:
+      - qcom,ports-sinterval-low
+  - required:
+      - qcom,ports-sinterval
+
 additionalProperties: false
 
 examples:
-- 
2.34.1

