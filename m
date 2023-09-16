Return-Path: <devicetree+bounces-775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC4F7A30AE
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 15:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E269E281E4E
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 13:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FA913FE2;
	Sat, 16 Sep 2023 13:41:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93399134C7
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:41:55 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5B3719F
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 06:41:52 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40413ccdd4cso17112185e9.0
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 06:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1694871711; x=1695476511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dq5MVWHSLDa3ue2z16rOjOH4TMxsojWJwYBj2T0FxCo=;
        b=QqAl+beqTosvZVcMPPmHACOVO1wqf0WgkFbKp6YylEB+2UNoUmGOZyTlhd1geG0Jmx
         g4cistb/dXZdmYFPFj0dEVv2eiogWHJEsuJALO5YCcug9N5f3wQGKgHLaHqAkPLum8D8
         b6J2+bY2DHAA3iZhrehIrlOVQAT+Ij3lkt22ZXqGhYihPOdMz9JwQzFBCaob0LcSUrvj
         J5fXwL/imBJc64vYuO7A9FM7jgZgU3OPJvKCMM8ABrCRS/OztFnIs++jd150xsaX06lh
         ax04HRPxPAOIrehIduOri9kRrz8oc1CV/YEfKn+FljR9So0nldzinLJmkqsxlz7Cd83P
         J8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694871711; x=1695476511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dq5MVWHSLDa3ue2z16rOjOH4TMxsojWJwYBj2T0FxCo=;
        b=sTqOF7jY1+QGOLjkIC05Glw79aFPLhEtDS0YWo/EMYwH+wahN2RnT+AVFFPQC2nYtt
         XZKI/dsN4lmBjQoM+aKEmu1bMF1hyH2a+VpS5uDNnI1KSHbU95H0OmexXD/AZJ8SWUPx
         +J4DnuFa+HRFp53Vyx4+vo1Yf6ZKFdGaFT8BNRIL1cEhtS20UHD+H/eE9fovpq8Fe6Oa
         ePtpxBq5WFUy/f9RwrsEOeYz606yj5Bw6GUM/5tdM14UXjIt9egrVK1nG+F6zzSbaw5w
         5jG2sVCsPw1ElI8sPTGwJ/c7VUkBixxst/C9SOdaEv39iK5bcS1+u2zfm1ohguS/hqW6
         Ps9Q==
X-Gm-Message-State: AOJu0YwRG1pGcHOXHAH/uTriYYWfXkXnl4CU6uNVzWyfdYvsGFsvbCa7
	oYfY06LvBX1vzp58Ro2ZnTZbig==
X-Google-Smtp-Source: AGHT+IFl7ojvB+vli8z8CIemz0JnDFCyKUAaw6oHAfDopUyuChUSPIE5Zs0Zep4Z2vR1CrcPWYSgHQ==
X-Received: by 2002:a5d:65cc:0:b0:314:3e96:bd7e with SMTP id e12-20020a5d65cc000000b003143e96bd7emr6029919wrw.4.1694871710815;
        Sat, 16 Sep 2023 06:41:50 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8070:d84:9160:acd3:26fc:724e:a2dd])
        by smtp.gmail.com with ESMTPSA id f13-20020a5d568d000000b0031fd849e797sm7144278wrv.105.2023.09.16.06.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 06:41:50 -0700 (PDT)
From: Lukas Walter <lukas.walter@aceart.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Lukas Walter <lukas.walter@aceart.de>
Subject: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5 (2016)
Date: Sat, 16 Sep 2023 15:41:46 +0200
Message-ID: <20230916134147.163764-1-lukas.walter@aceart.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a compatible for Huawei Honor 5X / GR5 (2016).

Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index adbfaea32343..eabd7f6af07f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -189,6 +189,7 @@ properties:
 
       - items:
           - enum:
+              - huawei,kiwi
               - samsung,a7
               - sony,kanuti-tulip
               - square,apq8039-t2
-- 
2.42.0


