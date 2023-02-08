Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B459D68EC8C
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 11:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230420AbjBHKQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 05:16:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbjBHKQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 05:16:00 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5136642DFA
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 02:15:58 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso1038233wms.5
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 02:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49xfQXijB76l60qaT7Z6y5pL81SUu0qI+8WlIubqbjg=;
        b=gA3+N5HCQCDSfTWCK2lAx7KSNX5Hgzhutg1Rt0iIsmzBXjmyOwn5ijz0CFXd6Dbhsk
         skuHIVhtJGMwbMbJUdnOXu2NxvJd/+yvOsCXIaKvRGyxVnn6Xs2NtiwKrVvuEwJM0kCS
         5Txpn44mlT2mdIgjoeVS2iD21KzP8Pqb+/9dEgyg9NCsvkd+LdUZgblIPZ/GeF0X9mXt
         7Fqf/Fswa21N+/CSvMtXNleg3DXzEkYVHzI0ecwz0Kx20UAHQZzjU136DQMu52SwLv6q
         LQbF9BN7SVS1E0m47zABYoNrlbHlRWRVZirrXA5ewXHXYzMtLlSZPh9ZIeq8ADMsGQLi
         o8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49xfQXijB76l60qaT7Z6y5pL81SUu0qI+8WlIubqbjg=;
        b=RIkO2OjLkLuMmmPKl6mmlegOcSSP0+ixinwTc1+/l3w6eKp3KNhinuo2KYhphwIbAd
         965nWqC4H5mdeJIAQ2+nVr/gz13tLZjfs2cwb7PdQld7G6KI7ACnGD4Ra+9MoVaaox22
         qOWwhQfr6JKhzdcdf3VWwNu2MFzrAM7ZGpdPrgvnVfRVMoQz3DPQVOT7X13XI4Fj6c8R
         nvbF0rYk1XADsz2x8lGQDUIJ+CzYFfgYLBkQoVhiWOP5kyWjfvLjjN94t6sM8NgA2By4
         4ciyyUP/OXENfRiBgr2ngJLs/CUJ1ZB6OVTWpMAW5OyfuCt3zNEL8B9VevCfqCie0pjg
         HmLA==
X-Gm-Message-State: AO0yUKWoaMouFztZXN0aB7NANxnlvcJ7MRT2hslrZFmoapsoupc7gtif
        SAwlDea9k+eT2ruYk4i6eXqurQ==
X-Google-Smtp-Source: AK7set8+a67vFQhEsNOGq72ebMc7Hy74DAStJ4dxQG5w7ZrdDobR6OOZ8N1+Q5kFi4stZWp5ErdDkQ==
X-Received: by 2002:a05:600c:1604:b0:3d2:3be4:2d9a with SMTP id m4-20020a05600c160400b003d23be42d9amr6073107wmn.20.1675851357957;
        Wed, 08 Feb 2023 02:15:57 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c198e00b003dc4ecfc4d7sm1496328wmq.29.2023.02.08.02.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 02:15:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 5/7] dt-bindings: soc: qcom,apr: correct qcom,intents type
Date:   Wed,  8 Feb 2023 11:15:43 +0100
Message-Id: <20230208101545.45711-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208101545.45711-1-krzysztof.kozlowski@linaro.org>
References: <20230208101545.45711-1-krzysztof.kozlowski@linaro.org>
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

The qcom,intents property is a list of pairs, thus it should be defined
as uint32-matrix.

Fixes: b2d7616e13c4 ("dt-bindings: soc: qcom: apr: add missing properties")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index 6026c21736d8..4502458b0669 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -62,7 +62,14 @@ properties:
     maxItems: 1
 
   qcom,intents:
-    $ref: /schemas/types.yaml#/definitions/uint32-array
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 1
+    maxItems: 32
+    items:
+      items:
+        - description: size of each intent to preallocate
+        - description: amount of intents to preallocate
+          minimum: 1
     description:
       List of (size, amount) pairs describing what intents should be
       preallocated for this virtual channel. This can be used to tweak the
-- 
2.34.1

