Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E107745BD
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:45:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233556AbjHHSpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233411AbjHHSpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:45:01 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB0EB11CD0
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:42:46 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bfcf4c814so859742866b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691512965; x=1692117765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2UuNhIPZQtVYzGmtMAw0xH3Mxdy93w7NQpbLuvaKjSg=;
        b=ouzNgGdEGz67z2jviHQmzclngOYrrmlk8O9iaUUBG8sjcfYTxfl5M/EdsxHvG9L9Iz
         BwqZqXgT9It5Zt7/O7rRHcr+q1LoC8L7SbSjlR2pExi4eIY6hUM//veGzrQdriGl5BlR
         6p7Ik4w+bXRZtETpPdrcIHa+nb2rxiAAz5pBcfq06UDYUgQ4DVGHt/pqSnTxYSZZIH0u
         c+yVYsCU5XTLRoWRra7LvuQba71MdTEJUqI3qvO+g/oDvlw9u6f4ejO0RjyaX2jmq/Ud
         05sWKsEQGy3VJUQqq5tZG4Wiv7q2SsTBWlCgSB60F8g/2eQQ4qC0ADImoQ6YqEI8NQLV
         FgVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691512965; x=1692117765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UuNhIPZQtVYzGmtMAw0xH3Mxdy93w7NQpbLuvaKjSg=;
        b=kg7rY/8pO/OPAThxTvNsUnojM2RFP6JqaKM7SyDpRDcB/26clwoBuCIyzwEFZXb9CP
         +5v5w4/5mTloJ2E9gLIQwe5ec9tOo6soFx64385mPru7ea6gzmE0klij3u7QBqOwI2Na
         TKol4OPJ+b16V7qStKjiONGs8IJcohU8gmYKrQSxr+v6WfRi0lcv2l5DEO1CMDzSrWFD
         uqLzyP8WmrOXrFz8tyJoI68/CHr+62ZZzszDtVoyxQIVt1CnxT/M4jDRPy5ft0nW9hkp
         TC8iFzx7r68/kUnyh+ijM+9Vs6RFsaQYTQ20jLjpXa5lKmeXdVUqKTaGV/93AXVun/uF
         jXmQ==
X-Gm-Message-State: AOJu0Yz5avGJYL27CX7nHMv7BAZacUN53CfZ1VpYtX/x4tW1160vf0HX
        +KxEgINAQCv/oa7Om8ot3zQG1y6cMYs1UBTFlnE=
X-Google-Smtp-Source: AGHT+IHe6NP3MzfgZSWbkR7jxRMoFmcA9NIiePawh4EYEM7Q9mrKbCLB6JP4QQacs26mWD9MoLIIVw==
X-Received: by 2002:ac2:4ece:0:b0:4f8:5604:4b50 with SMTP id p14-20020ac24ece000000b004f856044b50mr7020474lfr.64.1691487899167;
        Tue, 08 Aug 2023 02:44:59 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id i6-20020a056512006600b004fdba93b92asm1818884lfo.252.2023.08.08.02.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 02:44:58 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 08 Aug 2023 11:44:46 +0200
Subject: [PATCH v2 6/6] dt-bindings: arm-smmu: Fix MSM8998 clocks
 description
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-8998_mmssclk-v2-6-34273e275c51@linaro.org>
References: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Imran Khan <kimran@codeaurora.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Joonwoo Park <joonwoop@codeaurora.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691487885; l=2406;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=GiTo3aHVWSJqXeRVvBwFrjMpXiRsIg5liCVx9M1P4EU=;
 b=Nxs8hOuPBNmdHqXrObFj394Ryc0kynWXqn1i40tZ53Cb01Hzw6WwtFi+3X0Jcw4BcgOd603j0
 ZWoh4q6XnKVBZvu54Q3HrIhvJNMsEM/z8rSRfzNPESDS1/k+Iq2OYtg
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MSM8998 was abusingly referencing one of the internal bus clocks, that
were recently dropped from Linux (because the original implementation
did not make much sense), circumventing the interconnect framework.

Fix it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/iommu/arm,smmu.yaml        | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 3a31a979709b..cf29ab10501c 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -270,6 +270,47 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-smmu-v2
+    then:
+      anyOf:
+        - properties:
+            clock-names:
+              items:
+                - const: bus
+            clocks:
+              items:
+                - description: bus clock required for downstream bus access and for
+                    the smmu ptw
+        - properties:
+            clock-names:
+              items:
+                - const: iface
+                - const: mem
+                - const: mem_iface
+            clocks:
+              items:
+                - description: interface clock required to access smmu's registers
+                    through the TCU's programming interface.
+                - description: bus clock required for memory access
+                - description: bus clock required for GPU memory access
+        - properties:
+            clock-names:
+              items:
+                - const: iface-mm
+                - const: iface-smmu
+                - const: bus-smmu
+            clocks:
+              items:
+                - description: interface clock required to access mnoc's registers
+                    through the TCU's programming interface.
+                - description: interface clock required to access smmu's registers
+                    through the TCU's programming interface.
+                - description: bus clock required for the smmu ptw
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
               - qcom,sdm630-smmu-v2
               - qcom,sm6375-smmu-v2
     then:

-- 
2.41.0

