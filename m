Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBBE637F48
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 19:45:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbiKXSpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 13:45:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230004AbiKXSo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 13:44:29 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B5A213410E
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 10:44:01 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id d6so3672312lfs.10
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 10:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qVrcHr8M8g+X+IjIamBy7xJQroBzKdxIzP2voTF9VV0=;
        b=hDXo6BZhUv/y2cwG63DN+/++48ELKOiqMPH8mrPvSvGT6vNs+wDJQAUQ6YV05qiTJ0
         vExfY3dsgfYBpm5CXbOeHgImIsM6RyTF1neUfPi1IliquK2XerIEA2D8Nwy56l1yBM5V
         0/0gG4hREL9dm13097+9vX4fSHDcimf+d2rP7SEP6hCrE0hRLE67f0+PnI79Pl7g3Jr0
         MezRE4HUJZ+xZ0jdV8oQBPS4AsoUC0HHX2ua7AxhX3JJNLmly1+u+n5vhvqtzMnYMXCM
         SzE5vqU3LOlyxm7wOEEEkZptGaqP72vnLuAHME+rnwqqQrtreGrMo2UrGXn/xPVeb0Vb
         Tv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qVrcHr8M8g+X+IjIamBy7xJQroBzKdxIzP2voTF9VV0=;
        b=ADAsNOAGYFaKgCe35SSPuaZGPScdFmWLlgqY4+wgDy0o976FKx6d3Ez92n6u9sJs3V
         b4KaUi/KJ8SWs74VScoLgQXaHZR9W0VGWWQyA5nsU/wNFQcVo2KPbJtWGlQg2Yvo+2wE
         c2zrrtCLWpvn9FuLbPh9/f+6vIw/A+c97DDnJrm9AZ8Kw0JA6xXjyk3M9ILB17pLDB1n
         YsI8MneN1Y5ApPv0cczgqz4iwx23rWbjpg7+dD+JqDJkIDbl+pEI3ixv/ojxb+buZge9
         DAL+riwoF6WG5dxENEboOkSsBkrlvHh6RUHoybHmQGYF1fqKGHn2qnIRDmEBx0DoSsXi
         LY9Q==
X-Gm-Message-State: ANoB5pk5JwQn8rCHHArBuC9O6KaFBbwVvNoKVGq6mkmXom5x/R3+Kg6I
        2C7tspaQM2xp7Jdp0Ql8KCj6Lg==
X-Google-Smtp-Source: AA0mqf4JvI3oYpINOWGsJnFaudDZbsRl7z2AV+MaaauJxlKO80rZ13T5Dgrxk2+SNVpf9mDyJ9JdFQ==
X-Received: by 2002:ac2:5f42:0:b0:4a2:645b:15cd with SMTP id 2-20020ac25f42000000b004a2645b15cdmr6213235lfz.308.1669315441409;
        Thu, 24 Nov 2022 10:44:01 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v7-20020a2ea607000000b0026e0434eb1esm159098ljp.67.2022.11.24.10.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 10:44:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 15/15] dt-bindings: remoteproc: qcom,adsp: correct msm8996-slpi-pil clocks
Date:   Thu, 24 Nov 2022 19:43:33 +0100
Message-Id: <20221124184333.133911-16-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221124184333.133911-1-krzysztof.kozlowski@linaro.org>
References: <20221124184333.133911-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to DTS and Linux driver, the MSM8996 SLPI PIL takes two clocks
- xo and aggre2:

  qcom/msm8996-oneplus3t.dtb: remoteproc@1c00000: clocks: [[20], [3, 64]] is too long
  qcom/msm8996-oneplus3t.dtb: remoteproc@1c00000: clock-names: ['xo', 'aggre2'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v2:
1. New patch.
---
 Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
index 7848d1d658f4..9af2db72b337 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
@@ -54,7 +54,6 @@ allOf:
               - qcom,msm8226-adsp-pil
               - qcom,msm8974-adsp-pil
               - qcom,msm8996-adsp-pil
-              - qcom,msm8996-slpi-pil
               - qcom,msm8998-adsp-pas
               - qcom,sdm845-adsp-pas
               - qcom,sdm845-cdsp-pas
@@ -72,6 +71,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,msm8996-slpi-pil
               - qcom,msm8998-slpi-pas
     then:
       properties:
-- 
2.34.1

