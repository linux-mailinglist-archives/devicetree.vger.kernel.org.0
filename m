Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 413786AA42A
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 23:22:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233746AbjCCWWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 17:22:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233753AbjCCWVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 17:21:51 -0500
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD416A419
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 14:13:58 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id x6so3824733ljq.1
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 14:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677881277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kByKMAiyThWhQddTcnHkd5we2tSElWbVAhY9mxsVtno=;
        b=AUkFbQP8BSPAcCHtoLjeluS9K8H4FWgCNbltXNExN2lIT5712g1fIGS//2vq2SHwt/
         ZQB7awLq0Tq9p73lO7ruj6MyDAQojXiOYOMCqLcQy8IEs2/NUQmwMQs6TAuwPTIIsUj1
         zybrY1gT2EtvEaAfao8caPf7Yr2uYKy9u/HT/hVVVz2pvZYxrWynHw4Dk9UdgR0GTDi2
         rTs3XIyiwEv7UABI5CA9wCfAURk1R2U+BYGlvXHTDY2lv/4padT8ZKoNst0T6gHjI9DI
         FCFVbuiP5zgQeotTnvxARcFQGtGDcdDgDdYUAkZfNIHbbeZGzU6sm0EEZQlfERyVZ888
         aOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677881277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kByKMAiyThWhQddTcnHkd5we2tSElWbVAhY9mxsVtno=;
        b=NiRMfMF4GBLytWfruGRYpd3AfimnfrygeO2NMJQ4dQyeVFlJ6mwGTr2cZOfqDRRWip
         XdDPipIFTBpb73gw02DCuWqyiZEC2hQT1MdWUvCIohBrzG+XVbvbYHEY9lbLR1atIu7e
         PimS0ggUNYRvmYw5L1mrXYD1Tip+h1HMA8978kXgarvW4qdSpDtWdQyGkD8punpaEgjm
         3gO7EswijAn8S+gd2umaj0t73zul0h9pGUfd7wn145gDDFJLooEMh1Qy4s+KfH+m43j4
         74YpJGtQzA1exm1coAX76L3pDiTWONy9qMoMEF6ZzrQiAC3WzjsFcRQaqWkAbKDvhtW+
         Bscg==
X-Gm-Message-State: AO0yUKVgyMZ7CiykzUOWKicRK4Kv9BnxTXxROpmZm8pCC/sXJJKQ22j4
        ph0x+Z0Ny7BRQ/qn9CTs3g7DeDegrSPZO10C/jc=
X-Google-Smtp-Source: AK7set/GCprVfnv+hPF1Rzfmz6l0SL8mWmBDIe6hyGF2LRIdlIONxmT5k8eDdZCZA4AF4K+IijZHHA==
X-Received: by 2002:a19:ae13:0:b0:4e1:13fa:bf07 with SMTP id f19-20020a19ae13000000b004e113fabf07mr985985lfc.43.1677880692932;
        Fri, 03 Mar 2023 13:58:12 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id e27-20020ac2547b000000b004cafa01ebbfsm552670lfn.101.2023.03.03.13.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 13:58:12 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 03 Mar 2023 22:58:01 +0100
Subject: [PATCH 01/15] dt-bindings: thermal: qcom-tsens: Add compatible for
 SM6375
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230303-topic-sm6375_features0_dts-v1-1-8c8d94fba6f0@linaro.org>
References: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
In-Reply-To: <20230303-topic-sm6375_features0_dts-v1-0-8c8d94fba6f0@linaro.org>
To:     Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677880689; l=880;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Xo5r61pKkn5u58scrvwnGxQSvCjXA8+p8ZYAEW/PB+Q=;
 b=7vSyzRro3M1PoiwzyP06k27hDzGfo3oDBQ8Z57zbfmtIIprHmAUCZ2Zdngs2nh9i9s8lrND9j7ZB
 IZhHCq+RAQmdNO0kARatFng3E2coXlwNbizIM1M6h2sKwXxeobOr
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SM6375 platform has two instances of the tsens v2.8.0 block,
add a compatible for these instances.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 926e9c51c93c..d73b72dafcbc 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -56,6 +56,7 @@ properties:
               - qcom,sdm845-tsens
               - qcom,sm6115-tsens
               - qcom,sm6350-tsens
+              - qcom,sm6375-tsens
               - qcom,sm8150-tsens
               - qcom,sm8250-tsens
               - qcom,sm8350-tsens

-- 
2.39.2

