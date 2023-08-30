Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18D6278D923
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236013AbjH3Sc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:32:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244247AbjH3Msy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 08:48:54 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD3AB194
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 05:48:50 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bcda0aaf47so9693701fa.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 05:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693399729; x=1694004529; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tWkuNyNpN35mUdPo9osM+UvbCZY9NRuobjLnr6Z6HMI=;
        b=sSFEkiCBX3hFqR6l2ESC6Ze2Xv8sHKa9NYGmcIbpu3NGJZ3TqInyjXBlui8V/Jto0t
         swM9GMHAl+Qp3vLUdO4KXnDKCVScwgeSynZw2I+rpsv4YeXdRaXD/06nXDaQJsx8uo+N
         GkiiOVVcOt8XRtAuElYex6Qx/ZHJql2knZr9wPMQ0sVX+wvVRyr+E+Yxh/+aLM7aGveH
         lPb2cTlIV/q1ZVXBYmcGZ74+M4U+lqqJhh714Nyc0mwLp8XSlez5+70nTiytH1WG8V3T
         yjSGvDBAX/XqzEXIcPDsuemkkbxPhcbGE9v6wh0zTWZKdXi/RUuLfgxli/2z6ZVnZ+Eh
         NBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693399729; x=1694004529;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tWkuNyNpN35mUdPo9osM+UvbCZY9NRuobjLnr6Z6HMI=;
        b=iMkbJnxRakO5y49Kbm9KkSmT7XZAzJhevAgXADpidPW6nFZi63uh9T8fjuhI0hWKEg
         2mZfJ5xHkreJL1k2ZHQr0987f0I7s7VRCu4V7JEi+IPwHgwi/af1S4EVad+aWw972Mcp
         407ACmBaWvQ24pdCjLry/UV1DPieWoH0yaBSKZc1T0oIOfIBkLeEsiiadrTBRUzv14Lt
         jdvMXdMC4MKHJJJyHtzjxYRX6e1rOFW0j9aLYhu6GdpdyftnXd0FWcmfOM/VzNOXJrd6
         O3cnOfJJhVC0BheA/fZI3trKPn+WGK981iYyk067VerhXA9TNpdyXpJGJoqek1BdhRDe
         +nLQ==
X-Gm-Message-State: AOJu0YxovXWzubGeExL0ocSEbe5/L4adF496K/wBlC/ZcgFTMC6HTHj8
        G14Gjn1gBNZmUlA7TRU8GY6hWQ==
X-Google-Smtp-Source: AGHT+IHnTIGMZI8k8PHQCgawzuSVJ+4ZmqO1+OtbsAv1rszk4da6sggiDWDSJgEzOWurdA6UTHV+OA==
X-Received: by 2002:a05:651c:2314:b0:2bb:7e3f:3cc2 with SMTP id bi20-20020a05651c231400b002bb7e3f3cc2mr2083506ljb.2.1693399729224;
        Wed, 30 Aug 2023 05:48:49 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id y23-20020a2e7d17000000b002b94b355527sm2602662ljc.32.2023.08.30.05.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 05:48:48 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 30 Aug 2023 14:48:41 +0200
Subject: [PATCH 2/7] dt-bindings: qcom: geni-se: Allow dma-coherent
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-topic-8550_dmac2-v1-2-49bb25239fb1@linaro.org>
References: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
In-Reply-To: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693399725; l=710;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=CppecVFIy2DoqbEQwzZdR+9tg6tYiwkRdQB1uCJt3Uk=;
 b=1W0O6Wei8zx7qhG0OegNkxw9mq9RE0tWQdW4sZEAZXQkjwthGZWHtFarTl/I/KRpha9uXkOJd
 xqjIz3ppSuoDkXD4iNn9zf0dCmG0yXSaM5kfUze/b8/Ef14pXrObwYT
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8550, the QUP controller is coherent with the CPU.
Allow specifying that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
index 8a4b7ba3aaf6..7b031ef09669 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.yaml
@@ -52,6 +52,8 @@ properties:
   iommus:
     maxItems: 1
 
+  dma-coherent: true
+
 required:
   - compatible
   - reg

-- 
2.42.0

