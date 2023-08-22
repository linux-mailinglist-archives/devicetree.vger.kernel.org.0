Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B252C7836AF
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 02:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231837AbjHVAON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 20:14:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231846AbjHVAOE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 20:14:04 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C78B185
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:13:59 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4fe61ae020bso5859037e87.2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692663238; x=1693268038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FS4tS46Wt2bF/A6aYMT37LuXJaPlC2jK1TxmIfbaIXc=;
        b=w6ZfMP4xggvlDWKBqYPlrU8hExJYAcdJMtSBUBm8VdNlU98/DaTw1eLtIGnR1U4peB
         VXUef7HxxIWn2NDwjWY1aoYC05gYqaldwHb6uiqPP8jDB3oQAhaKlOtXRItFIq1icF0q
         tbcjQuu4eAWJcgaZtzO2+uGatzPb3hYCBn5ACB+JCTaS1aC3Z28VlmQW5JZvrYp9co8r
         IGFEkvFkdv3pJna17gaUkfOAVTW1qBRFywfIcL/PPg247GWyjapXC9ojToTQLLUsyitB
         2lUujN/L10siZ5364tmX0XlWZb3un4HnNoMGhlumhmboSDNohkRyDpipVKj+CMNeNDNY
         esFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692663238; x=1693268038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS4tS46Wt2bF/A6aYMT37LuXJaPlC2jK1TxmIfbaIXc=;
        b=lfH78/D1EUbntiEzHJqQTm7qXnuLJTMkPEL3ZhLUVpmXvLqoT+jFcLvAXufSP/xzYy
         xrTVCqJCD3BGM6ZFOI0+VqAneUlGf81uyWB4Q3sG6fov0+tPOUQs5Qr7PK1Pd77Aa0/u
         VlsJHVhzSGiUCOjqLPVbCMv7kYxMsHNheyoJZXUPZ4MCQj/tbUshDNY3/VmpCOrGT+8n
         r3oJ5DJLJiip1qnZ+9SJE0Vc9bAoNeAdPYUcoWSN4AWflV2pL4AGgJG+WGyJbW4rigfq
         Mhq1XZOV+4PTdhOsVi4/p9ym6y1B5a7I5z59bgQYWKIPldBrWuu83aSaRMt6Flktm6N4
         jtwA==
X-Gm-Message-State: AOJu0Yzm0hBthLrVXtHYT3ueVMvtvfmcpQwbq92Lg9VCccSAyoinpq2W
        JkHP06vmZApDNGSWOyihGsDERA==
X-Google-Smtp-Source: AGHT+IGR+iWAhaMpzYEi1DjOI6TMf1ksgxP9CV6GrZQi3gb3RbDXiZs5cHGSNMeyFa85/EP43jc+4A==
X-Received: by 2002:a05:6512:a8f:b0:4fe:8c01:32ac with SMTP id m15-20020a0565120a8f00b004fe8c0132acmr7613795lfu.41.1692663237999;
        Mon, 21 Aug 2023 17:13:57 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id er23-20020a05651248d700b004fe36e673b8sm912024lfb.178.2023.08.21.17.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 17:13:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v3 08/32] ARM: dts: qcom: mdm9615-wp8548-mangoh-green: group include clauses
Date:   Tue, 22 Aug 2023 03:13:25 +0300
Message-Id: <20230822001349.899298-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
References: <20230822001349.899298-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Group file inclusion to follow contemporary practice.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
index b269fdca1460..e3b4b93c3d38 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
@@ -6,11 +6,11 @@
  * Author : Neil Armstrong <narmstrong@baylibre.com>
  */
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 #include "qcom-mdm9615-wp8548.dtsi"
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "MangOH Green with WP8548 Module";
-- 
2.39.2

