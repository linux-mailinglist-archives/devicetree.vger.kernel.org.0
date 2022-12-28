Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E10416585F5
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 19:52:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231366AbiL1Swv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 13:52:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233316AbiL1Swr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 13:52:47 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C870515FEE
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:46 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id n1so17302294ljg.3
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dPiUl4EdKWMJANife8srJ0scEoyX5E4VGNwbBAPuzVA=;
        b=TZV+uTSHiy7YF5VzIDQcLXz6R1cYwZ4v95WqQtTAizYgOWDgsY8dhMb9a+S44UTYVB
         lEvrS04EokPBh3R67FWk66XiDYBVjigF4QbQyTKLM9Qa7KMEzwjP5qO0KGqrjmasLv0F
         ESrbzUeTjnWtpnmM673WZGNoG/kIe/hzBADr6fno8j5iutTtfZ3aR/XJsXeXYAqmdezR
         qnsDhfkUuwz9gTIAJ+0+z63edP2QV1rOt5XrgnMTtNvJySJT6pYybItO00FTAXQ0cemn
         Ocad+7uOIrc7hbDOTXCTPmaEF+9ZQuyo2c0Cp06qxvaJjw79v3Z26EWTK2uvF1m44fhh
         GjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dPiUl4EdKWMJANife8srJ0scEoyX5E4VGNwbBAPuzVA=;
        b=ge3IIKa4TzWlDUuVbr0wVL5pHHJooUsvzsa07aiUDuKF+hVs4K9BCxDvgiqOnO63rz
         xTThDqxQGpoNgIZzENrFRKne/un1znOgFLZ8nQLWvzt/J5A+LJb/QTEyD9eBjKbGvnk3
         83L700SJwQUsBgWZFVEHl9py9NB3J2nXw+/8eEmjnoXqsbLr+MZCj0ts5gl7Z8i0pe0x
         5u5GTo4huC+sT4dqveP3JIPxiF4u6ABz+aIdSTC+iJQR7yr2APMP66vLjh2l8eIB1va3
         jUERoXNA9H08MI8HfS8MYWjI2CugcfDBQ92bHyLMMqOdTNZs4GS3Tn8ViXVDegrFpQn+
         HVDg==
X-Gm-Message-State: AFqh2kr6zO12xmoW5/LR1HQOOLcJ6I0IJrUYa51gclWcLTKk7edCYqN+
        Gcpd6MgeiMG0BGTSGvP5jomb+g==
X-Google-Smtp-Source: AMrXdXtk6ND371WXwR5KhjifLVDAGPElPRICguomcgAPNkaK34kPPrgRovcAfOB3F4vpyQIl30iaSA==
X-Received: by 2002:a2e:3c08:0:b0:279:da98:df8a with SMTP id j8-20020a2e3c08000000b00279da98df8amr6972126lja.43.1672253566412;
        Wed, 28 Dec 2022 10:52:46 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s7-20020a2e83c7000000b00279d206a43bsm2031893ljh.34.2022.12.28.10.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 10:52:45 -0800 (PST)
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
        devicetree@vger.kernel.org
Subject: [PATCH v2 07/16] dt-bindings: clock: qcom: gcc-sm8450: drop test clock
Date:   Wed, 28 Dec 2022 20:52:28 +0200
Message-Id: <20221228185237.3111988-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
References: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The test clock apparently it's not used by anyone upstream. Remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-sm8450.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dt-bindings/clock/qcom,gcc-sm8450.h b/include/dt-bindings/clock/qcom,gcc-sm8450.h
index cf1469312c4c..9679410843a0 100644
--- a/include/dt-bindings/clock/qcom,gcc-sm8450.h
+++ b/include/dt-bindings/clock/qcom,gcc-sm8450.h
@@ -8,7 +8,6 @@
 #define _DT_BINDINGS_CLK_QCOM_GCC_SM8450_H
 
 /* GCC HW clocks */
-#define CORE_BI_PLL_TEST_SE					0
 #define PCIE_0_PIPE_CLK						1
 #define PCIE_1_PHY_AUX_CLK					2
 #define PCIE_1_PIPE_CLK						3
-- 
2.39.0

