Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4242753B30
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 14:41:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235793AbjGNMlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 08:41:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235749AbjGNMk7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 08:40:59 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1617E30F2
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 05:40:56 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4fbb281eec6so3087464e87.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 05:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689338454; x=1691930454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qd2kbPemtOmMUvL2Ytl/fT0YjqDEgCaNRmzvJcpA5s=;
        b=kYo92h5+zpn9p1r7D4e6bEg7vywN/3+kmB45tvxhVbIgPVKnpeb9FnjDBi5i8QV2C3
         Q2OUfI/p0M7McSymck2OGlnz3u5sobqect6jHs9e59eu4MFK65CtpYG4DG6Oae/gFO4c
         iFv6WZwnP3xLPBJ7AGR5epw7l58pFD02zIcBoxwga3wL4UK1Dxv0xjFw4UjlNY6yvCFI
         q+PwolxMzcxZAjHA56fyoJKBAGXTEbnUIp95ZYJczvS2Hv3b1s+iAn3XYizdDYu/Xh1r
         kCv6/pTcx9L49SC88LEFrFA0SUBNJtkSu8KE9vOqSt8kQafKuFcv4DjltujuNAL+w8XG
         rR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689338454; x=1691930454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qd2kbPemtOmMUvL2Ytl/fT0YjqDEgCaNRmzvJcpA5s=;
        b=K45+7Q81lxjJsghagiicgXWifRgINP4bAbic6xN5hem5Pkgjd3L/6jL76mFsEQ++yL
         IFGJjZFX/dhRl+qrKqEh8KT1VRhyFCFTmwBLHe22sOX0Ybf+f+pxelNjHEAubL6bUaSQ
         fLL0fjhRolatuA18A9V1RgjAngC6/Lg2MNrBfK/fS1vSWUfMS1nZxA1oEVwq4vnB1lr2
         zIahpbQL7E2Y6fptdCJyy8xElSKKVkyf96cYd+T1f+RgYxIp0U0WOR9zL9WEiS8/3ueS
         nHD8J5B9YofXmrqBI/ybHuOo6UnLDRmp0aVu8sT6KedJLVhIFZK1TOsenIuaOIFNOKVi
         xPbQ==
X-Gm-Message-State: ABy/qLbmHeT3QZWTrsnGJz4hd+jCBdghLxrNWAPSLeBu+RQ3nrEsHcY3
        31iwZVTFZv770Va30x4n29EjFTCOiJ2lbzRIoUtwcw==
X-Google-Smtp-Source: APBJJlFzbETkyMQbZ/JAQTb8D7erOe1m0gaM+pOcYLaCY82AMzxgQTLdZm2zII+1PqEkDJe2wsS32Q==
X-Received: by 2002:a05:6512:3b87:b0:4f8:6625:f2ca with SMTP id g7-20020a0565123b8700b004f86625f2camr4104150lfv.61.1689338454141;
        Fri, 14 Jul 2023 05:40:54 -0700 (PDT)
Received: from [192.168.1.101] (abxj146.neoplus.adsl.tpnet.pl. [83.9.3.146])
        by smtp.gmail.com with ESMTPSA id b6-20020ac25e86000000b004fb2244563fsm1482588lfq.289.2023.07.14.05.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 05:40:53 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 14 Jul 2023 14:40:47 +0200
Subject: [PATCH 2/3] dt-bindings: pinctrl: qcom: lpass-lpi: Remove
 qcom,adsp-bypass-mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230714-topic-lpass_lpi_cleanup-v1-2-dc18b5bd14f7@linaro.org>
References: <20230714-topic-lpass_lpi_cleanup-v1-0-dc18b5bd14f7@linaro.org>
In-Reply-To: <20230714-topic-lpass_lpi_cleanup-v1-0-dc18b5bd14f7@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689338449; l=889;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=qO1V2W04ruepEYg9ZRLy0uCaaYkrQldmUoai48pDs/w=;
 b=Sx4vvkjthWXPEI24HWcEtCM3mxgnbTtkqIBn9mGkGZvuyNio9vXELwHmSHpwxgHD596A9PMeA
 SU1053PPWwCAq7zG9CeDEiAgNgLcVNIj0+W778Z1rX/aKp7rVZtqIN5
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property was introduced as a bad hack. Now that it's useless, get
rid of it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml   | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
index fa51fa9536f7..00c5a00e35fc 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
@@ -17,11 +17,6 @@ properties:
   compatible:
     const: qcom,sc7280-lpass-lpi-pinctrl
 
-  qcom,adsp-bypass-mode:
-    description:
-      Tells ADSP is in bypass mode.
-    type: boolean
-
   reg:
     maxItems: 2
 

-- 
2.41.0

