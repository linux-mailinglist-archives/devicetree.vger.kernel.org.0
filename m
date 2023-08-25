Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0372788E53
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 20:15:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231868AbjHYSOg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 14:14:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232185AbjHYSOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 14:14:05 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E07DC2720
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 11:13:31 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50098cc8967so1931832e87.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 11:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692987199; x=1693591999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/TeMnYPJ3KxrFwSpu3efDqnuLqJ80q872/kIEbrU7wo=;
        b=PSe8HD4sEuKxiWpHBktTQGkVtwyLfkec3S9zBkC3Ev8gHdNnb7dQpy+RgROSpiUu1h
         qMB7Y96Wr9ekOPP8CEpRZ3pkNxUo7hQPC2Vh+/LVvK/QA+Bn/cDDqDoY2B4Bb5FMLc2A
         Z0sv/V7K+1XU9GNCCxGY7mncJwm8mGI3wdP8XELkJjq8kNUf9Tta86goc//Xz8cgtoNf
         3FXRO/YYKL7cH2jFT+m7pNHnDBzReo1OK34PppN2SAOF4Fq9rwmUlEHJb9rD7rkt2tff
         RGkKHflbDg7/S9jqRWM62jUapFjAyyQ9uC7XISja46nZ1RsGHX+pnLVvXAr7nUPaz58R
         U2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692987199; x=1693591999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TeMnYPJ3KxrFwSpu3efDqnuLqJ80q872/kIEbrU7wo=;
        b=eSNLv0UVgstWu15mmOsV3OHrR+68viL6qU9qSezzT12iNQqJg2vIdN0c1MtRl9wYqC
         8FGw0hjmjEJhpA2PCUn9KiU+W2YWy+7/p8nxP4KdbT2DF63GOd2M8XxFpro6nvfrxGAZ
         rUj+2Oxynhbar4zlBUnHbou+S4DBEHg4INGZVReM3B4Ux3sjEEilBmWh8ygN+v5O5HhG
         +4uyAhPjiDFWsYVn/xEtKvg5xqOOPBn2OIAVHpc6Zdj/n/U0mpqQTl0ERdjEGKhSJOZt
         2gPknZWYvAhVm/piQUtm3WS4Ck64h81rXjwwVJ4uCNQREzW2UH4VQcus2i8FXJy6N8Mw
         3Wig==
X-Gm-Message-State: AOJu0Yx6AogDbX7VPn3q8uUHOMWRQ2Bzxsmu/KaT+oqoh2qmr6kf8X9a
        /PaPTGRtXCIK85JulhdBq8MEGA==
X-Google-Smtp-Source: AGHT+IENTg/CoSs/0Snu/WkdvbcaXjnIW9+7z+J89mjofNi00Tg7fcMFN+cdA/EGlC9TqHO36xqDKA==
X-Received: by 2002:a05:6512:3ba2:b0:500:8022:3dc7 with SMTP id g34-20020a0565123ba200b0050080223dc7mr14913390lfv.10.1692987199796;
        Fri, 25 Aug 2023 11:13:19 -0700 (PDT)
Received: from [192.168.1.101] (abxh59.neoplus.adsl.tpnet.pl. [83.9.1.59])
        by smtp.gmail.com with ESMTPSA id b2-20020ac247e2000000b005009920b6afsm374522lfp.9.2023.08.25.11.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 11:13:19 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 25 Aug 2023 20:13:16 +0200
Subject: [PATCH 2/3] clk: qcom: reset: Increase max reset delay
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230825-topic-6115_lpasscc-v1-2-d4857be298e3@linaro.org>
References: <20230825-topic-6115_lpasscc-v1-0-d4857be298e3@linaro.org>
In-Reply-To: <20230825-topic-6115_lpasscc-v1-0-d4857be298e3@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1692987195; l=566;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=87NDHyI+LvwN9CqST5Jf5fNXtDFPiv1laEmkRq1a1As=;
 b=9MzaglliUVrbmVPVIQA+UDY17AoEE8NafqETUwAVa7cEVjHT4LHRz4JfryCS7/DWvuQ/nXuop
 C4quWHeRToIBD3efWWErIbDbHrvHCboI3CcMEdWQb7ADChjyYXqFhJo
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

u8 limits us to 255 microseconds of delay. Promote the delay variable to
u16 to hold bigger values.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/reset.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/reset.h b/drivers/clk/qcom/reset.h
index 9a47c838d9b1..fe0561bf53d4 100644
--- a/drivers/clk/qcom/reset.h
+++ b/drivers/clk/qcom/reset.h
@@ -11,7 +11,7 @@
 struct qcom_reset_map {
 	unsigned int reg;
 	u8 bit;
-	u8 udelay;
+	u16 udelay;
 	u32 bitmask;
 };
 

-- 
2.42.0

