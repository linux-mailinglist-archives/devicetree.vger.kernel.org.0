Return-Path: <devicetree+bounces-559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FBD7A1F16
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43C7D1C20D1D
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D59107B3;
	Fri, 15 Sep 2023 12:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23210107A1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:45:26 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ADDB1AA
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:23 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ba1e9b1fa9so34040651fa.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694781921; x=1695386721; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQKsjBFvt2/0L/1F7kjkJsmdL2N5EGcnErgcVOrwWbM=;
        b=SWLpz0NEfdsCLZKHQGhBETJNn8s6/HVA2gwabwLRnnGI5BthHRMTcRYIfXytemfFSD
         f45EIu1IClP5oKV2BbVJBUxmP43yFYM5Ku204ZoZH5Q1mDzNbYjTL0l7CSea0U5axxar
         2+am1ZbkAZB7G4muxYmxqbWgfAhJ13QuK21Vq48EIdC5GelExGqqPspCJsod2DpSBexL
         xHK5/xnZCNf+Y8yAybnKPXEKrT7WnwiH6La1CEDflke/swMPvzi6A8WPC64iWDYY7bwv
         YCRm1OhVKf1FkyIRGPCPJeNYNfIaWi/BoHAWXaAtmed41oqZ2kZsaexCWxOVvZD0cU4E
         Xuzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781921; x=1695386721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQKsjBFvt2/0L/1F7kjkJsmdL2N5EGcnErgcVOrwWbM=;
        b=BtRDq6g/aHME/yuh4hkAhcyZxsWaRZZE1S6rV2CAuDq667LovVnhhU1ZTovWbvUIFZ
         nCX9bJgnIXiDolozd3+mnY4qBrmRTryRuRJ4xeOhqd+uwD6HDvX8zsZaoEQoRgpJwhmX
         QtsbYYK/1fN6cfTjDg+STNWnMx1STkML4aTuN8wKYrO5KnX4Dg/DY+YDJqnuMvfmRS6+
         DP1WrFAq7ex+XPPm7VjpXvRpWFa0TNZX4fboAFxIdXKthjUV/1D4VYGvpJWUAbhIItbX
         rEWzqWKpB5hutUBqVPI4EZyRADg4VaJLz4zKAQMCCNcZ9DM/+Lz0Mabpt3JieCNFs6D8
         Usdw==
X-Gm-Message-State: AOJu0YwYa81FdBVCVr9+qWkjs692ZIZbAq5gT2pZW7kU4f3wFEtLz7C6
	zgXmVr1egyxut/bmbS3QMFX4SQ==
X-Google-Smtp-Source: AGHT+IEQc4h1ngKE2+VA6YGviDJVkrNplYwGZNRKiahgxgti51+UhFggRbJP8P7qeLRwC3QRRySPjA==
X-Received: by 2002:a19:6714:0:b0:4fd:faf0:6591 with SMTP id b20-20020a196714000000b004fdfaf06591mr1278486lfc.10.1694781921357;
        Fri, 15 Sep 2023 05:45:21 -0700 (PDT)
Received: from [10.167.154.1] ([2a00:f41:cbe:bc7d:62a6:5d09:5ba7:be5b])
        by smtp.gmail.com with ESMTPSA id f19-20020ac25333000000b004fe37199b87sm624752lfh.156.2023.09.15.05.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 05:45:21 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 15 Sep 2023 14:45:16 +0200
Subject: [PATCH v4 2/3] dt-bindings: power: supply: Document Mitsumi MM8013
 fuel gauge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230621-topic-mm8013-v4-2-975aecd173ed@linaro.org>
References: <20230621-topic-mm8013-v4-0-975aecd173ed@linaro.org>
In-Reply-To: <20230621-topic-mm8013-v4-0-975aecd173ed@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694781917; l=1502;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=+uF0adwPQhjp9KC+P9UNR+pGm2F9OFhDZ4dy2nzuHuQ=;
 b=U5pry/nVMjoyOMh1xT2s8aR7A29Z8jFXV0S9o4qwUXQLL9gZW3+Ak2PhyqkWAUp0nNrxlytTv
 FGPps522HLrClcXhb2NAq+JYAZyH6NCq/za/WFoQxqrpWJBooJ1RxlY
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Mitsumi MM8013 is an I2C fuel gauge for Li-Ion cells. The partial
datasheet is available at [1]. Add bindings for this chip.

[1] https://www.mitsumi.co.jp/latest-M/Catalog/pdf/battery_mm_8013_e.pdf

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/power/supply/mitsumi,mm8013.yaml      | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml b/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml
new file mode 100644
index 000000000000..6865640cbdfa
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/mitsumi,mm8013.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/mitsumi,mm8013.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mitsumi MM8013 fuel gauge
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+allOf:
+  - $ref: power-supply.yaml#
+
+properties:
+  compatible:
+    const: mitsumi,mm8013
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      fuel-gauge@55 {
+        compatible = "mitsumi,mm8013";
+        reg = <0x55>;
+      };
+    };

-- 
2.42.0


