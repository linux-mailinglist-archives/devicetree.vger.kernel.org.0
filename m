Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE2D4FB03C
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233918AbiDJUxo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 16:53:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236047AbiDJUxn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 16:53:43 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 537065520C
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:51:31 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id m8so376403ljc.7
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t69oCZEW/bMPYdVmTxc6rrv0zm/Oj37WLcE4owOEwKk=;
        b=whMEjuK1zaCpm1IhGP7myyApuhE1pqdJuOvL49DwftSjGAnbq5cMof+tA1ywZz9+CP
         rdlHLvozxoLMX5BiyNgNtoXRXq1vZr1x7YWJBXfQ0oScwaJ0FvcBLs6dYo1m6/UQc54E
         CctMnLzGposyeVCNWAxN2j15NHtPaCVeWdQD9eJk5LJqBfygJQGH0kM6s4ceA6lhCYP/
         0T4dnUwWzlREtFkLe1FzeLZ177E0AmaUM6rVh6cyIQpMRJBuCc2etVYzDp7BUhMGCvJj
         5ocJTHYqGxA5ermkGD2XS79U9X0dAcyzYii1zX3OZcp1VBieT6h9qjU7wNLZ8R+IYmt/
         td7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t69oCZEW/bMPYdVmTxc6rrv0zm/Oj37WLcE4owOEwKk=;
        b=1NAArwXkhtjEURpoZAiVaSBCCX8Jm8B0TOqk5R3+OdzcPaxh49NCvoRXtKj+1e9Ac9
         Zhb7PqR6XVmnOJC6MREQ9QrHn2gHBkHnnEkSF2M0QF3TXQFuf5ctCkc1nJoj4VSViITj
         DK91HW9J5pDHZyibMvAAT+jj/uxPCwH7ipzn1Hf46pqlQu//dqUzBxJ9x3rXCQD1bvuJ
         4JbXTOZ0s7JEUWPQ9Ie8UCa+iTdOLMJ+zrRGjIiCePot2KGtosGUFZ73NZd/UGUYWpvS
         +at094+Sm66sRsudBOYeoBwsZgVxTHJrv2zMxR0j0D5Mto07S+BYzDP+0W1arJK9AQel
         k/eA==
X-Gm-Message-State: AOAM531N0pg8avsMQYc6m7UC7yKldsB6E9THhPQm1O94i4g7ceBNYsTP
        THP6oEHlYaFeL2yAl1pxh9MWxQ==
X-Google-Smtp-Source: ABdhPJy0Bs70ZJnB1BvoxHWUMNter25LRGbIqzLahFMZEmio1TP8zkycEvQM+QgAsFHgOh9/wQ7OYA==
X-Received: by 2002:a05:651c:160b:b0:247:f955:1b18 with SMTP id f11-20020a05651c160b00b00247f9551b18mr18726414ljq.427.1649623889369;
        Sun, 10 Apr 2022 13:51:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t15-20020a19910f000000b0046ba6b39d14sm85244lfd.10.2022.04.10.13.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 13:51:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8450-qrd: add missing PMIC includes
Date:   Sun, 10 Apr 2022 23:51:26 +0300
Message-Id: <20220410205127.1670705-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220410205127.1670705-1-dmitry.baryshkov@linaro.org>
References: <20220410205127.1670705-1-dmitry.baryshkov@linaro.org>
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

Add includes for PMICs used on the SM8450-HDK. This makes GPIO blocks
and thermal sensors available to the user of the platform.

Co-developed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 9526632d4029..b7ea92045bc4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -7,6 +7,13 @@
 
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm8450.dtsi"
+#include "pm8350.dtsi"
+#include "pm8350b.dtsi"
+#include "pm8350c.dtsi"
+#include "pm8450.dtsi"
+#include "pmk8350.dtsi"
+#include "pmr735a.dtsi"
+#include "pmr735b.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. SM8450 QRD";
-- 
2.35.1

