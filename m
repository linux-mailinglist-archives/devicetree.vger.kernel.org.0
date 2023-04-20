Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A64736E8BC4
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 09:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234209AbjDTHvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 03:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234187AbjDTHv2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 03:51:28 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68F0559D5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:51:05 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-504e232fe47so707732a12.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681977061; x=1684569061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CWHnHNToGasJrGjvR3eKDTStQb2y8kbHp8eaclo2u2U=;
        b=CWBUgIitVWJxSHspzz20QTWtGG4QoDPwz45NNAy97Bs8k9/z8qwIhY05CsBC57Zbws
         CBuy0OaJ+NpzPDf6OruNTx4lwwX+hqXCfIWKZUgv9ZFd+ZQ3R2A4HhuPnfjsW3hyrfVr
         oBbDKx9ss/y1QBREkryRrj8ha9EzVsoD1LBrfzGLW4b0Kct8HQNJnlkUcA9k38SvoEhh
         aRb3aZ0gWbPww7zREf3P513/0h3cA0vz6VDyBQhASkga87z67YxkFPaHsSbD06W137CD
         UzbDP7acxlpKaP5zgAV/P3v6rvNah2VsrgwrWKwz6+9T6qwWqXEr4zoZuR/3TQXN/HVH
         5hig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681977061; x=1684569061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWHnHNToGasJrGjvR3eKDTStQb2y8kbHp8eaclo2u2U=;
        b=AN+NJCh/WMBBd0hkTeA9giGB8u29gToP9Z7mH7bidUbc7/j+PI1g2zpmikr3KLj65j
         YO6GVBv0AwQRSEf7RWqKfYDhlB5eRk03xTYgLxNGjwOotZcUaPL9oABWou5gbkXO0kDe
         GzepoOfYGTm/sruCnNXCPwIKss/N1Vu2q+zHnk2qXNR46n/GyDsGNPdvHdrzfynOZnBR
         50VxOPQdX7+A3BApxcpgsu0H4FE5qDB6S+MrlA5oNJNcZftGl9M3rdxpwXkmKrSjlEKM
         RBOGORDEBd5Ot+tYwtHVe5b1Moe2CYQkOzE6f2gUIZu+dL/O1wYPSL6pEszi1Z0cs36n
         MMOg==
X-Gm-Message-State: AAQBX9eL2b9buCwu49i7aLZNusOTdldX6wLEb/QKacbfm3v8veyaCOun
        FUynJSpPvnYQbQ06RXJ0+Pfqtg==
X-Google-Smtp-Source: AKy350bu2rvyxOdNXkK9xZupPFlAfRpbBcdy7kevrPzIpYFwmBrXlEUqDtpbzPDUHW+XKWXims0z0g==
X-Received: by 2002:a50:e61a:0:b0:506:bcd6:b125 with SMTP id y26-20020a50e61a000000b00506bcd6b125mr845212edm.40.1681977061521;
        Thu, 20 Apr 2023 00:51:01 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id h25-20020a50ed99000000b00505060e4280sm447165edr.94.2023.04.20.00.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 00:51:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 05/10] ARM: dts: qcom: ipq8064: drop invalid GCC thermal-sensor unit-address
Date:   Thu, 20 Apr 2023 09:50:48 +0200
Message-Id: <20230420075053.41976-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
References: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

GCC comes with syscon compatible so the thermal-sensor child node should
not have unit-address (bindings also do not expect it):

  Warning (unit_address_vs_reg): /soc/clock-controller@900000/thermal-sensor@900000: node has a unit name, but no reg or ranges property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-ipq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
index 182018d79a7b..49310520da1c 100644
--- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
@@ -522,7 +522,7 @@ gcc: clock-controller@900000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 
-			tsens: thermal-sensor@900000 {
+			tsens: thermal-sensor {
 				compatible = "qcom,ipq8064-tsens";
 
 				nvmem-cells = <&tsens_calib>, <&tsens_calib_backup>;
-- 
2.34.1

