Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 970EF5B455E
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 11:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiIJJJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 05:09:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiIJJJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 05:09:02 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50844457B
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:09:01 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id w8so6666611lft.12
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ZuuwgMgWZdLoQrFrciWoob85mt2oidbKv+Fs5nLorLU=;
        b=D7lvpBa0OM2v483NJSAEmhXZpFZw85H62yQlnE1xUaS/R5kScSmkTe0rYvjcqqc80z
         goHwh8vzRFL9X4sbCE2sWNtNgszbOtNXi+1FGPWGk2nH8n694oZ2W36pe2kYW6O/bhuB
         KtykgK6iheKISgYAQXEe1k5MkjAoUEZGoe9fmFXE8DGLaQKA2eLcs4tjyb204ZyWsI3U
         xRRCvJWu28+jD8mz5pZPpERVTK9hnxQik7dlY+HLZVzvO+xouGjae2KaEPwhSXC0ohvD
         0FmRgWzZ40MWwxQCprWXb4RKOQypJbjTpjD3kQamfMHwzca3epphmRkDMQLMr4QeAo5k
         7a9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ZuuwgMgWZdLoQrFrciWoob85mt2oidbKv+Fs5nLorLU=;
        b=Z292Ykh7j2Bc1Dk1uzM0xQobb7Xqr54rc1WwsmskHu3wz7oSTBlk36b4hpXXDwnN3G
         Eg/bzTN4z7CT0oKthGnjLsFBwPeNjtswiHU+0KOyeQHFerOm2KB7UUEuUQSzu1Ko6NkE
         GHQZOAu7BeedW3J6WFDJmvJ5CmE0VRIZC2ckIAh+koL8pYipCJ0e4BvTgDU9eHVWVX9T
         ue6ctafzc1J2DzxBcJ4O3vV5cnhaPqb0mBVQe7gw3HYG35cVzaC+d9AbWmYbwPRzpxVO
         zZ08co7DoYpwvhpCqw6Y6cmgxg8dgJWLggJVqHby7w2NY7H5bLitL4sEC88/2wCu59FW
         8uJQ==
X-Gm-Message-State: ACgBeo3T+V8aRrcG+Xdob0TXk+Kdmz2g4qO4IersAbmipPycUmv9XR7y
        +/0kikN08K7ivrrsYTVrYdTjyQ==
X-Google-Smtp-Source: AA6agR57Mnkr7zHXYRcCJwAmGEe1GabSx2cHHL3x4HqQ+6NQFNGed0q/+0WhZQTzoRJKylo4QscqeA==
X-Received: by 2002:a05:6512:239c:b0:497:938e:2c99 with SMTP id c28-20020a056512239c00b00497938e2c99mr5503975lfv.416.1662800940013;
        Sat, 10 Sep 2022 02:09:00 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k7-20020ac257c7000000b0048b23c609c9sm197338lfo.102.2022.09.10.02.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 02:08:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: qcom,q6afe: remove binding
Date:   Sat, 10 Sep 2022 11:08:56 +0200
Message-Id: <20220910090856.49271-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

qcom,q6afe is already documented in soc/qcom/qcom,apr.yaml.  The
version-based compatibles ("qcom,q6afe-v<MAJOR-NUMBER>.<MINOR-NUMBER>")
are not used (neither in upstream nor in downstream DTS).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/qcom,q6afe.txt  | 20 -------------------
 1 file changed, 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/qcom,q6afe.txt

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt b/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
deleted file mode 100644
index bc6b5f1fe4f1..000000000000
--- a/Documentation/devicetree/bindings/sound/qcom,q6afe.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Qualcomm Audio Front End (Q6AFE) binding
-
-AFE is one of the APR audio service on Q6DSP
-Please refer to qcom,apr.txt for details of the common apr service bindings
-used by all apr services. Must contain the following properties.
-
-- compatible:
-	Usage: required
-	Value type: <stringlist>
-	Definition: must be "qcom,q6afe-v<MAJOR-NUMBER>.<MINOR-NUMBER>"
-		  Or "qcom,q6afe" where the version number can be queried
-		  from DSP.
-		  example "qcom,q6afe"
-
-= EXAMPLE
-
-apr-service@4 {
-	compatible = "qcom,q6afe";
-	reg = <APR_SVC_AFE>;
-};
-- 
2.34.1

