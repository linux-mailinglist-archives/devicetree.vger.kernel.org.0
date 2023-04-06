Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E94B96D9B1D
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 16:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239491AbjDFOur (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 10:50:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239488AbjDFOu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 10:50:27 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB4B93E0
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 07:49:27 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id y7so8519102ljp.2
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 07:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680792565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ft7kjU4G4EGx0zy/5R74WdAFRhnHqVLzykdVApX9NyA=;
        b=RskBn9ONNJF4qCqAS3MW+DCx+fLnQQcNx+N9R/0XPAClVia+FrpJrCIT9tfQoa9sMr
         5cnvhZDF5YA+jshlEg7+QbwB35v0cWSibrhHtIuRKnWdqheX0OBtUjQ9YxqsdTwsw7o/
         sG25S+jQCPGZVck6aLs0HjT5JLy0sahR6Ol3+OBisAcFqz4Q9LaDvfZT2NVETN6RrxW1
         vRD0swxKf8/enTSi/wEMz8AhLKgQwabiqwF97e8CEcWXTlk3Dyt28IQOVE7jHL6Q04Pa
         CCFfT4LhfjCz38ThaKWzqv9EmAmFzLgT9UB3zwd744Mw/HuW5BhEIcyMQtFq6UetIvQa
         W5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680792565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ft7kjU4G4EGx0zy/5R74WdAFRhnHqVLzykdVApX9NyA=;
        b=LlpuWDWyYaUNLdcm2gI9I18CWnkT8+Kx1k1UXOnXeIQb+F1raV/oGw+ZpopRQHUyEy
         d0H859hdM/1BkLzc1oz2/+TiiJhpH0wGb/lp9XSH28btjSpj2p29SC4LzGCEyg8yFXbe
         mZ+Egk0AMT0pg8EGVKIU3m25EynLkRWNWQ5DIB80OK0BK3az8vA/V/Wp3NnmKF1k10mQ
         6PkSB/By5UjyZIuczlkUMfXP3CcsBr7/HFhiTIGLGQ/ZvGyXXcs+4JBLFMxInoDzS8HD
         i/5ZsXh3JArevf2Ee/b7LMcTqUmw2HEnu776cCZXqFO4MIzhl9ZIlo8IZLJWoZbuYD9Z
         8q9A==
X-Gm-Message-State: AAQBX9e+uLf2hvEIBuCPDkiS3JLVhxcuecSu0IzYdPKjxJXeb6PnGmfo
        wpuhWM+7hUvVEhZqLBjhZFp5Ow==
X-Google-Smtp-Source: AKy350YRod0Z5QxGSbYmy/5L9qZpEYzwKFawSIvoJu8J7R32kMaf+ooeh0E6H+92wMLxVsYBGrOX+A==
X-Received: by 2002:a2e:9d0c:0:b0:29b:4f87:c7cf with SMTP id t12-20020a2e9d0c000000b0029b4f87c7cfmr2613194lji.26.1680792565326;
        Thu, 06 Apr 2023 07:49:25 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id w24-20020a2e9598000000b002945b851ea5sm313864ljh.21.2023.04.06.07.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 07:49:25 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 06 Apr 2023 16:49:17 +0200
Subject: [PATCH v2 1/2] dt-bindings: soc: qcom: Add RPM Master stats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230405-topic-master_stats-v2-1-51c304ecb610@linaro.org>
References: <20230405-topic-master_stats-v2-0-51c304ecb610@linaro.org>
In-Reply-To: <20230405-topic-master_stats-v2-0-51c304ecb610@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680792561; l=2154;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ElCnIUYxGJbzmv8fonT+78Z6yzpbG7zdv2M4WxEElMk=;
 b=24L55Di9UeNO/+RsP3P/EAnmdsa804gJ3zohqj+el3eHnfHY1sgKMx3oVpb1M7H8rw+QQEkpjKiW
 vxoFSrOzCaQ4BDgQ2V2CP3vzoXyhs/T9W0EL7H7SiXKpttnzrM3S
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RPM MSG RAM contains per-RPM-master (e.g. APPS, ADSP etc.) sleep
statistics. They let one assess which core is actively preventing the
system from entering a true low-power mode.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/soc/qcom/rpm-master-stats.yaml        | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml b/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml
new file mode 100644
index 000000000000..d2d6a2a39fef
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/qcom/rpm-master-stats.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. (QTI) RPM Master Stats
+
+maintainers:
+  - Konrad Dybcio <konrad.dybcio@linaro.org>
+
+description:
+  Per-RPM-Master (e.g. APSS, ADSP, etc.) sleep statistics.
+
+properties:
+  compatible:
+    const: qcom,rpm-master-stats
+
+  qcom,rpm-msg-ram:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandle to an RPM MSG RAM slice containing the master stats
+    minItems: 1
+    maxItems: 5
+
+  qcom,master-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: RPM Master name
+    minItems: 1
+    maxItems: 5
+
+required:
+  - compatible
+  - qcom,rpm-msg-ram
+  - qcom,master-names
+
+additionalProperties: false
+
+examples:
+  - |
+    stats {
+      compatible = "qcom,rpm-master-stats";
+      qcom,rpm-msg-ram = <&apss_master_stats>,
+                         <&mpss_master_stats>,
+                         <&adsp_master_stats>,
+                         <&cdsp_master_stats>,
+                         <&tz_master_stats>;
+      qcom,master-names = "APSS",
+                          "MPSS",
+                          "ADSP",
+                          "CDSP",
+                          "TZ";
+    };
+...

-- 
2.40.0

