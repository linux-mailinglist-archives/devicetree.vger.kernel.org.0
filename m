Return-Path: <devicetree+bounces-558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D207A1F12
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46D1E1C20D73
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22B63107AF;
	Fri, 15 Sep 2023 12:45:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE27107A1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:45:23 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9EA196
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:21 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-500a8b2b73eso3411610e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694781920; x=1695386720; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XWXo5chhD5Q8zfXo4/pVSr8fA6rgWTQ7OZCsmmyvZ+U=;
        b=iHSSIRsoS/05tM+Xw7F+5LkCbyKRMHN94Wc+ZtHDsO+TRbWhSPkeVmswNNZUkYsc2S
         5cs4ZXrWCeeZgnmiVHoCIU8fyaLkyn6CW/oHhmmeEeopkEpClJfnb9fciaAedSCK8Th/
         IldwFkqvM01z4LdmVJ16EwSVk+1fXKE2w1F92tTovJ+cmGtxBw4Hpo+7NxyRDAKAtpZi
         s1hC6GsBfxQEKeBPzoGAm+jhSbepnKTNxBhI2iC9x1WqADlKspNLKFyuGqEABaz7ZvNE
         QOGxpkq1jIwXFcenxA8j32Y8C7W2mxFnYOQMhsbxSwFVB1utqM+wIzep6BLE838WQ8l2
         5bOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781920; x=1695386720;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWXo5chhD5Q8zfXo4/pVSr8fA6rgWTQ7OZCsmmyvZ+U=;
        b=OdXB0rZimkWNF8Yo1e3zC8Fnxvr8jKBDddMgCH64xAKv0ESNZ/igSAeUYkCQxsO9w7
         +3OUAzapX9p1RXbo0sryV6FoXAzeD/RDtI3ouIFugQ3kNQYAGWhg9YNOKb8pfyXuRlFd
         NArw06FnVSgh5ob+udHW8vfj3dKYTBW/UII4EWm1zmjua0WyRYrO04ub29Cr6GVaHx4O
         CE10Z+r6jTEssrTJyC2x2ht96X/D4jhoV1pU7xkQ/bc6dz5sc/YOf6+5USHW3tc/XvtB
         /Q9qoetm0wtn9sVHY2owvwdlHnOZ24h8NoWiQPCvDKz8KojtJuiH+omn6ycOxz0PH0fD
         gwjA==
X-Gm-Message-State: AOJu0Yx8HzgJViEgQ34DSjgvT1vX5Em1z4kUMrNtTic/OBA2/MCRNGP2
	lXOOIcnFn3G0dWBmgDbllmUMkA==
X-Google-Smtp-Source: AGHT+IGdDMpoIKg0YKx6oLLJBHuXrxtHb94NpjAH2/YLPOHxwc8J56huhdNfmaLlyugR7ZHihneDZQ==
X-Received: by 2002:ac2:4d8b:0:b0:500:8022:3dc7 with SMTP id g11-20020ac24d8b000000b0050080223dc7mr1384525lfe.10.1694781920066;
        Fri, 15 Sep 2023 05:45:20 -0700 (PDT)
Received: from [10.167.154.1] ([2a00:f41:cbe:bc7d:62a6:5d09:5ba7:be5b])
        by smtp.gmail.com with ESMTPSA id f19-20020ac25333000000b004fe37199b87sm624752lfh.156.2023.09.15.05.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 05:45:19 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 15 Sep 2023 14:45:15 +0200
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Mitsumi Electric
 Co., Ltd.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230621-topic-mm8013-v4-1-975aecd173ed@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694781917; l=1125;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=A4edAPC9JkBqokj8iLNvPGCrxmBfeXMUhLTyoYd19k8=;
 b=SPPfJxzzjjn/0ariy8yePAF81eYjb0mRfNcN+r5HqRz3TC/meu7CZoD605+xRzr3LPtoGDs5A
 7y3ap6quMxDA4a2vRNzfmz+1wb09t/gp9Cs0QH4IlwHqjRzAzhJFnjp
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Mitsumi was [1] a Japanese company making various electronics devices
and components. They've merged into a new entity, MinebeaMitsumi in 2017.

Their current main page is available at [2]

[1] https://en.wikipedia.org/wiki/Mitsumi_Electric
[2] https://product.minebeamitsumi.com/en/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..565b13fb429d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -871,6 +871,8 @@ patternProperties:
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
     description: Mitsubishi Electric Corporation
+  "^mitsumi,.*":
+    description: Mitsumi Electric Co., Ltd.
   "^mixel,.*":
     description: Mixel, Inc.
   "^miyoo,.*":

-- 
2.42.0


