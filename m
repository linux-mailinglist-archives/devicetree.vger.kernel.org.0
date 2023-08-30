Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D0F178D9E0
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234463AbjH3SeI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244243AbjH3Msw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 08:48:52 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDDCF132
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 05:48:49 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bccda76fb1so84714351fa.2
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 05:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693399728; x=1694004528; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=46NZOkI5BuMzdTRi8W6TrVh0RTD9MbZglmlN/4mby7Y=;
        b=abPP9HHShBhjNK8sUzkOYUsYHjsCT13M1zKvqUKetcyuNTBcrcvLUtPJuF14EL27fm
         83ABM4OW4dD2m17w1EZCIev4xpFVC7Val9zHTpfaoQjLnK6jUGzbwlVaUMojs8C0XpMY
         ISOOvDkFvFTjEG54p9iCEBMTpzNDGD/CSJ+Oxlg0qj+shLMoCKn/6RH9AQ0v0hWXelp4
         /BiraqAWUZzNs6LobKcVDGdDgTaHiIUSKXf91dXrrWnn/M+lHX5RZoIhr9+x+Bevn9xx
         UAu4IA0yI95Q34icDPYfZuYVhiaptTz52yx06IUsH3M7m9AkWHqvN/UOCgR1igzrHWMS
         aHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693399728; x=1694004528;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=46NZOkI5BuMzdTRi8W6TrVh0RTD9MbZglmlN/4mby7Y=;
        b=RWPs46eg7LkJpAeD0plSMtz1VMczsTUa3iM183P1a5bvj9OnaaR9tR9avdlIavzOBk
         rW9PiY+j8fVfnglFQkVcpkSMEVVESwUUIrXCAXE7dsOk+04RGw/M+3hzqRQcIpLwBZio
         SwJpF2U6ZZDr6Q0s+Je9Ia5zCs+qXEc99BXIk5arK0+cHJC5XlilCRhueTdK7C8K3xLZ
         5pCqCoQcYTq635G10Hcg7DH0WqSYfFDQlr6xJZgJm6O3EzG0rRw8HbM2hXNUmKBNXC7e
         BTJcUUsUYAkdtUzseY+YXFM1fJUHd0iJzWhfn9IpDMKjwpv8kof5MZc6kk7+wJmeNxYq
         SkAA==
X-Gm-Message-State: AOJu0Ywy7By04ZRJoYB6YsF5RJapbMfa0L6o+Kra2QKtHhXOpMLY2ubf
        nVV3x6rQSI+c5P6WzR6ggbT7JQ==
X-Google-Smtp-Source: AGHT+IGeZgRvhsin/FQ80IOmYROmiVye+4fyrQAm709GoFrpp7RnOsXC22ixiUzE9LzBSbgKztM9kg==
X-Received: by 2002:a2e:90cc:0:b0:2bc:c557:84a0 with SMTP id o12-20020a2e90cc000000b002bcc55784a0mr1932296ljg.30.1693399728015;
        Wed, 30 Aug 2023 05:48:48 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id y23-20020a2e7d17000000b002b94b355527sm2602662ljc.32.2023.08.30.05.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 05:48:47 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 30 Aug 2023 14:48:40 +0200
Subject: [PATCH 1/7] dt-bindings: dmaengine: qcom: gpi: Allow dma-coherent
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-topic-8550_dmac2-v1-1-49bb25239fb1@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693399725; l=679;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=rBp7umC00prE1h9KeC6phot+nBob9JGazDIEIaR2e/s=;
 b=nfSFempdzypvUleIIJYKjSfu9Aj1ZsC97rjUbOUeNK4sS4tQmgjtR5iimkq2+dV68/4Jlqp0U
 q2vRVQ0F9lpAgcHMzTQe8AYxoctpsSaUYK6oiq3g4xWlBROUfQC38AW
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

On SM8550, the GPI DMA controller is coherent with the CPU.
Allow specifying that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index f61145c91b6d..88d0de3d1b46 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -69,6 +69,8 @@ properties:
   dma-channel-mask:
     maxItems: 1
 
+  dma-coherent: true
+
 required:
   - compatible
   - reg

-- 
2.42.0

