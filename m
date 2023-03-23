Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5387A6C7422
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 00:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbjCWXhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 19:37:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbjCWXht (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 19:37:49 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B642CC6C
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:43 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id y20so64096lfj.2
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679614661; x=1682206661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+68XLJlMQiAJbakqRYHZICNWbFaukDSRyNz+AoqyBhw=;
        b=jwmACRoXnboV8q9fE1FsAs64uaJ8smLtrZqQzpO/wvqpYjZXxbWBt0OJ4DsnwkBl4Y
         FQTf7+HtVg89pt8FphOn9g4qXRFO2H5SD5Xah7haJ+rtINEKDr1WlZ2+pwbWTtXSiviK
         osxRuXfifA7VE0PSjbI7O2cb9exD/OSccJGM9Mh/1p/kxx5Ao867U8+dz7brsDv2mmGu
         RuAb//MM5UQXWFUIy5x92PnHujdKhuaHhB3mCn2Hj+pRp1aOMSliX539/xskdLkSp77O
         ob14kW445A4/ifPfG1ashvyOD6+595A6MDYaFXsvq1dpHJUrXElJGsEeI63h9aQHynvo
         TuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679614661; x=1682206661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+68XLJlMQiAJbakqRYHZICNWbFaukDSRyNz+AoqyBhw=;
        b=eFIfesK5I+5VtflMFZN1GDT3aqn47b/ZgrakbnCgi0CyTDBOZjqPd5TebzFda4t4uk
         ACzswoMIBHimqN5570hgNgxwItb1rZ4vqz3kiq+kDNuN4EjbN+j5AXVkGUf4AYixd3rz
         0/htXLdXpOeAKHCopxWhD/7bDw3AncHaVwGbMqnKP5R5QalV/gnnq3pTOsBUDxZa0Ol3
         AoHufL0RnpbOm9BI/hAiOLd5ZD+sDpbRgE6HM0IGGrel1vIiaYpcDD05TqlGmrQJBYvC
         LNXn9whaLQzCQ+aKIK4aKbf61k2iw2l5A0EP3RW5oYslmhRL+CTZC+89AIHlbILkpPmx
         gSsQ==
X-Gm-Message-State: AAQBX9epLRqxfj3bqmMsTJTxub945sxEVL6hR5Cn+BXdH76uveZ3Ch8a
        Qw3XqdY7s6jyptQ7iLAbMqgUSQ==
X-Google-Smtp-Source: AKy350YXac/3/X8FMo8O7mW1GeLbcm/v9GdqyH6QFB6ytxYCPNSFRDArkX8Zfsx9jQ61znnXi5zAZg==
X-Received: by 2002:ac2:4184:0:b0:4e9:d613:503e with SMTP id z4-20020ac24184000000b004e9d613503emr88592lfh.6.1679614661484;
        Thu, 23 Mar 2023 16:37:41 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id w9-20020ac254a9000000b004e845b49d81sm3105264lfk.140.2023.03.23.16.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 16:37:40 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: qcom: msm8996: update QCE compatible according to a new scheme
Date:   Fri, 24 Mar 2023 01:37:32 +0200
Message-Id: <20230323233735.2131020-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
References: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the old deprecated compatible name of QCE IP on MSM8996 to new ones
based on SoC name.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 4661a556772e..2ee28f9b6229 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -784,7 +784,7 @@ cryptobam: dma-controller@644000 {
 		};
 
 		crypto: crypto@67a000 {
-			compatible = "qcom,crypto-v5.4";
+			compatible = "qcom,msm8996-qce", "qcom,ipq4019-qce", "qcom,qce";
 			reg = <0x0067a000 0x6000>;
 			clocks = <&gcc GCC_CE1_AHB_CLK>,
 				 <&gcc GCC_CE1_AXI_CLK>,
-- 
2.33.0

