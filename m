Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 952184C995A
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 00:30:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237634AbiCAXb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 18:31:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232607AbiCAXb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 18:31:26 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F3525DE64
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 15:30:45 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id b9so29554743lfv.7
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 15:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UQNq0c2dJJYa7b6ah0fC7gdt+Ffzi4Qm4L0w9uhVvV4=;
        b=sdTEU6BkjPd37R6aZf9jdnWFxduBmKrfWssUTL6Rl7/rkptl3mEEA0989wFlo7894q
         xkM/+RgKC4jyfQDNiulqxjk/jNG9x30mLbvPs0ZXHZS1uS+20+7ltV8pvvsQYuhujoWO
         lcfhkDsEgmEBLn91L9Iya6OiebKQjqm5vFu7hGWrd5GJEB/p9QDHRn7Zw5XYU6cz13IZ
         lesMltaTRM1l4Gy5HOEsj2AzdA3z9p0iRQfxRTLdBL3MBMghFAaTXXtSoqntITh2gUjQ
         /1U9G8B/ek4bRKPBFVAzqs80qrNPBzoaOK5bpVzK318Xxa3NsA5e9JIUi3T/SS6gawSS
         UhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UQNq0c2dJJYa7b6ah0fC7gdt+Ffzi4Qm4L0w9uhVvV4=;
        b=UVGmjD1IGyclBdEzGDfXPMxX6Am5GqCh+wMFWCFr+YhFttxuhOyZZLD2MoV8dUQ7wq
         wvi9hBXPeoLGSgxe69+4U+T12UbOQTLJ0+btXMmH8HYqez0n/NiZ1Pcgj6nuB1ipe/ex
         qv3JDWFPbPemcQC19IVXvvvoZXtJKYKZpiEVdxVqF7Ogu7pEA0JWey+xPeF1wSHqIZKk
         kvFkbTD5IN29U7JsBVrzFVuAI3g1+5z1utHYJjpH6r5qHkzaPEhazAx+NgkFeVzVDDpd
         8Mr/CuJVzYcNdTb2NBCBuagHroPHVMEz6oUvzsSLLhnDgIYIWP7b8mj3dUv6WGKD259+
         Ooiw==
X-Gm-Message-State: AOAM533CHt/kF5uov5TNOTliezZnxAkyDBm2GBfTUR4O76P1ntuUSFb2
        fo1YmXWmd/ogl3tUrXw3k+yDUw==
X-Google-Smtp-Source: ABdhPJx+nrWmjTTMludgJc2WsT0DEfSDum0jxuW/aGmAvRr5e8ATFvDQNkaJn8zjS5SK37bivfXUEQ==
X-Received: by 2002:ac2:4475:0:b0:443:5a36:26b5 with SMTP id y21-20020ac24475000000b004435a3626b5mr17600380lfl.424.1646177438686;
        Tue, 01 Mar 2022 15:30:38 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c19-20020a056512325300b004433050ccb4sm1718833lfr.192.2022.03.01.15.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 15:30:38 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH] dt-bindings: display/msm: add missing brace in dpu-qcm2290.yaml
Date:   Wed,  2 Mar 2022 02:30:37 +0300
Message-Id: <20220301233037.2257996-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Add missing brace in dpu-qcm2290.yaml. While we are at it, also fix
indentation for another brace, so it matches the corresponding line.

Reported-by: Rob Herring <robh@kernel.org>
Cc: Loic Poulain <loic.poulain@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
index 8766b13f0c46..b1b4652077db 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
@@ -209,6 +209,7 @@ examples:
                                         remote-endpoint = <&dsi0_in>;
                                 };
                         };
-                 };
+                };
          };
+    };
 ...
-- 
2.34.1

