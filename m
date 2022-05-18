Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCC5A52B96C
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 14:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236298AbiERML0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 08:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236299AbiERMLO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 08:11:14 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D7FD3631B
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:11:12 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id d15so3260603lfk.5
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 05:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GOInhyfsC6sIN9hcrOqb0a8P6F2/CkmUss06/noERuY=;
        b=VYGK5u933RHPx2BUiRp5mb8jNDwYoLYcpUzXhCeyVKo/M6CuqScEHqmPqyc/eezfjW
         TB834tscuxm31x9kne9NCDwk2wDkdO18r4lTQyeAPZmZCyQN4qi+Gv38mtoXW4FhHwK2
         CEIgfptS+cmieKbTJ5VCP4AEc4/5H4gmYW8pVtbYBe8XLtu88oivDeztiSnIrFCxsz8k
         hW1rtqDgeqMejwxL9qk/ZvW4BwheSVcUYZkTtVpmzfb4ZW04p+bDa8PHlKDwYlVUlEzJ
         ZAp7FIOXPpzp3aI4mmf9Xzmra1gUsCtnaS410eFGp+aJD9nqYGs4YfOf4a4uXNUZgMPy
         Af/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GOInhyfsC6sIN9hcrOqb0a8P6F2/CkmUss06/noERuY=;
        b=G7reloyySGd7bp/FSUX8u5FQaTMt4v76+WFRA5uGwcg/69lix19e2AYaaESf4Gcwai
         w0nJdNBuCGaAOFi6z8UV6OY4bG5P7AokOPPsYFpPN70zOZbzLxLR0VEy9svZ1YTbea9H
         QZ47HHNJQP4NUSEEFU86vXT37QmyJv8eXFnJ/Rl5y2MtG4sYsrZs7tlC4G7t5ywekuWW
         bPk+7h2hiaRFhVZMUaOlUq4zkFudholJQ3yZVkDyV91I+T67+RTAv/AcEnbf5wkSARkH
         qmUqFfuNJKatoh0i74fxd4IrxDlXXo1C/MCswht7x92akkLy43pZ3/LtvQYGLQVk94kS
         +bwQ==
X-Gm-Message-State: AOAM532/yTQzgJWpH6Gg67ui4BH8smLolFICURplvUPjUkFuNbhGd5Lg
        CT64m5xIFebx2KfzKJpCe0xp0g==
X-Google-Smtp-Source: ABdhPJz7ho5AdODaorhSqg28iJSR4CC+51r6pEFeF484oI+RRK9d40Qsv0St1llA/16sYwcIuAu5dg==
X-Received: by 2002:a05:6512:2350:b0:472:6182:955c with SMTP id p16-20020a056512235000b004726182955cmr20028215lfu.214.1652875870411;
        Wed, 18 May 2022 05:11:10 -0700 (PDT)
Received: from localhost.localdomain (mobile-access-b04822-211.dhcp.inet.fi. [176.72.34.211])
        by smtp.gmail.com with ESMTPSA id o8-20020a2ebd88000000b0024f3d1daeccsm194460ljq.84.2022.05.18.05.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 05:11:10 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Todor Tomov <todor.too@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] media: dt-bindings: media: sm8250-camss: Add power-domain-names property
Date:   Wed, 18 May 2022 15:11:03 +0300
Message-Id: <20220518121104.951621-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220518121104.951621-1-vladimir.zapolskiy@linaro.org>
References: <20220518121104.951621-1-vladimir.zapolskiy@linaro.org>
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

QCOM SM8250 camera subsystem depends on three power domains, at the moment
all of them are not differentiated one from another, however the power
domains compose a hierarchical structure with vfe0 and vfe1 as subdomains
of titan_top, also managing vfe0 and vfe1 separately allows to get more
fine-grained power control in runtime.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,sm8250-camss.yaml       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
index 07a2af12f37d..1ef7ea985ce2 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
@@ -103,6 +103,12 @@ properties:
       - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
       - description: Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
 
+  power-domain-names:
+    items:
+      - const: vfe0
+      - const: vfe1
+      - const: titan_top
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -361,6 +367,7 @@ examples:
             power-domains = <&camcc IFE_0_GDSC>,
                             <&camcc IFE_1_GDSC>,
                             <&camcc TITAN_TOP_GDSC>;
+            power-domain-names = "vfe0", "vfe1", "titan_top";
 
             clocks = <&gcc GCC_CAMERA_AHB_CLK>,
                      <&gcc GCC_CAMERA_HF_AXI_CLK>,
-- 
2.33.0

