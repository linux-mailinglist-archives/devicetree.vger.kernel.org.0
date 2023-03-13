Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F41A6B82B3
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 21:27:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbjCMU1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 16:27:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbjCMU1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 16:27:30 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A36708C516
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 13:27:09 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id y15-20020a17090aa40f00b00237ad8ee3a0so12966759pjp.2
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 13:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678739229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+hs+0VFLpmrPJUXyoVfcb979HJWTOyjaF+CHF//mTgk=;
        b=wdQEPcAY6Izd+bNjUVk/FQOewydvg+jc2Z/vTKWAP5NMWCjr3RJMn3RQw0/zj6fT/y
         gBgpxoB4sHc0pWxO0iwviARKoQ3viNuF98sx1Bs0kGwPrIxHBIluZgwTX2XK0eA/lla+
         XJmBZSON4sewif+VzkMvqaDDzlA7zCa0D6j0NLzPiFKXlcRnSXHNPNCy3KZeFyCVv7Ez
         CQt4F8Z2zXWDvYWUkB2/rNFBrfHXK01gkHI+J1Z6IRmbc8Z2OBULJcczw2phCrcHcjIm
         YXJRP7m58i7ouOTv1OmZhL3BuE3/LJDNCXS9o+EoaB518M+W/wux75TZxwJPVQf80sAh
         ZvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678739229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hs+0VFLpmrPJUXyoVfcb979HJWTOyjaF+CHF//mTgk=;
        b=Lqf1+7bv0sqJjESWBqvle5KPT75OnvJx1NUoAJtm1vXmerG/ZodbguTWsLxZ10C1BR
         M3HpKjZWFPzUApi9z58OU0R1u5bHL6i+E2VkRx3bJ/RQytwJ7jtiWYzdDcgB7PyW9fHb
         Qjv4ClcCLFiLhUMb2ItKj+lce9wRcxxqnUVgSNTKHARansVRJTY8huq0bWqLgbS84mW+
         +04xrdBnt/bpS8C2fX19e8N9r0FURvNJkLFlYc0QDhXyDk9ML9QhKjKgPozW+sQOkydB
         lLBVTr40nTag706K+Wl7gDqMULTwlexGBdXPB3jj8di52PAuU02n1lQLYvjvLrHamg5I
         v+Bg==
X-Gm-Message-State: AO0yUKX/Iwjv2iOMHcz0Rg+cd5cM7wGw8kQ/0Ubonl5vDQGjCWKZPHLL
        Q1xl4Qj9L6acB80PwmM08eH2Fw==
X-Google-Smtp-Source: AK7set/DuxNbASPt88XCHkLIzf4qyAFpuR+ZME6CaTzb/ywzgClzkWF6f6Taf+v3EbZ0SNrKCLiY2A==
X-Received: by 2002:a05:6a20:b283:b0:d3:72c6:b018 with SMTP id ei3-20020a056a20b28300b000d372c6b018mr7347841pzb.39.1678739229099;
        Mon, 13 Mar 2023 13:27:09 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c5e:4a3e:15d0:d540:3861:ef0e])
        by smtp.gmail.com with ESMTPSA id b23-20020aa78717000000b00593a1f7c3dbsm157647pfo.10.2023.03.13.13.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 13:27:08 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc:     mani@kernel.org, mathieu.poirier@linaro.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com, bhupesh.sharma@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: remoteproc: qcom: Fix sm6115 pas documentation
Date:   Tue, 14 Mar 2023 01:56:55 +0530
Message-Id: <20230313202655.1719587-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the sm6115 pas yaml documentation to note that 'memory-region'
is a required property.

While at it also mark that memory-region property supports
only one item.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml        | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
index f5d1fa9f45f1..cd5d5d068912 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
@@ -32,7 +32,7 @@ properties:
       - const: xo
 
   memory-region:
-    minItems: 1
+    maxItems: 1
     description: Reference to the reserved-memory for the Hexagon core
 
   smd-edge: false
@@ -43,6 +43,7 @@ properties:
 
 required:
   - compatible
+  - memory-region
   - reg
 
 allOf:
-- 
2.38.1

