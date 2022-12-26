Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE83655FBA
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 05:22:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbiLZEWA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 23:22:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbiLZEV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 23:21:59 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8CC25CA
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 20:21:58 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id p36so14650678lfa.12
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 20:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D0H2M86KsnrMrqhWQgT4FVh2nFEOGi1pIC2LwLbotSE=;
        b=H3ri5Xy1l7YdeSqciy0tAQ7tHQ0MFkRQ7rlbxa3my+GR3xZ1dS3RUMZtl4bFPZTCoR
         L/k3HVBuTKEbw4R09QcCdGSeOx+7f+4D/a5Qz+FeDIvwi2Py6TqOeRdiJnXOxnEaj2Fi
         DZKx2LbVJnyi19Nvry5Eb0P5exSAZjglbUmtj58jbCnFDDcSN+P+Ly3xDpmVLHmpeIxx
         tji+5/MX9wPhQjDqtsg/Fu+02JrKqCCbwZMVjA3rPMxwFzKQ+8/mA76hXTTbsNSRV95z
         HZ+6TFM+dksRhtDikbSQJ8mFfkvgPaqS8iX71GDRtSLbebc9nRJnoongGFzzwvulMzIy
         xlCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D0H2M86KsnrMrqhWQgT4FVh2nFEOGi1pIC2LwLbotSE=;
        b=oMWwS9z8bjavSTq6bFhNVS5eKRpwe9hzQEtPA/PfYE2Kg5FJXqEcapQxrrsnJIctjq
         cdysXyAql5lGeZ7HqMk562f0NSB6YF6yJlHu7+4/0DQ/0EaUcFnkPd7H1uD/Sjwy+XSj
         XpeCBPP+PfbX2tA6XFmn8vJ75HnLrma5AcEIZqhEUyuBqa55M36UhDdFOT7h/rwly90d
         NznWW1f0lIPLoX1HjOFb1ZFe3w+rPTF4aiwOofCfRNEFqrm9DPpXIUvok/XUUAVmxPdb
         dtQHTb2ZPmeV4WRKnwxBMstpw0056lhWb8r70RF1pOTDyTwVqzp8a+zQl4G+R/x6cwuT
         lIZw==
X-Gm-Message-State: AFqh2kpIwbYCKb/RJUKJxzMyyUQo8YXAoUgBRINC3tYTrUXGVMP+YgI8
        e5NHYlofPE4ABpm7NgpZYTFQ8g==
X-Google-Smtp-Source: AMrXdXv9BOoMFF6FTmOqHiRzcEPhpHhjqISaVRCHjxmklxRk2dbCrc41ajfaMLMvIQ/rtcoasS0iyg==
X-Received: by 2002:ac2:5301:0:b0:4b4:dd3d:4310 with SMTP id c1-20020ac25301000000b004b4dd3d4310mr4347142lfh.19.1672028516404;
        Sun, 25 Dec 2022 20:21:56 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id o9-20020ac25e29000000b004b4b5da5f80sm1641129lfg.219.2022.12.25.20.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 20:21:55 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/16] dt-bindings: clock: qcom: gcc-qcs404: add two GDSC entries
Date:   Mon, 26 Dec 2022 06:21:39 +0200
Message-Id: <20221226042154.2666748-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221226042154.2666748-1-dmitry.baryshkov@linaro.org>
References: <20221226042154.2666748-1-dmitry.baryshkov@linaro.org>
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

On QCS404 platform the Global Clock Controller supports two GDSCs: MDSS
(display) and OXILI (GPU). Add corresponding indices.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-qcs404.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-qcs404.h b/include/dt-bindings/clock/qcom,gcc-qcs404.h
index bc3051543347..126a51898571 100644
--- a/include/dt-bindings/clock/qcom,gcc-qcs404.h
+++ b/include/dt-bindings/clock/qcom,gcc-qcs404.h
@@ -177,4 +177,8 @@
 #define GCC_PCIE_0_PIPE_ARES				21
 #define GCC_WDSP_RESTART				22
 
+/* Indexes for GDSCs */
+#define MDSS_GDSC				0
+#define OXILI_GDSC				1
+
 #endif
-- 
2.35.1

