Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50ED351317C
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 12:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343780AbiD1KqM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 06:46:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244954AbiD1KqH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 06:46:07 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF2D8595B
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 03:42:49 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id g23so4994548edy.13
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 03:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5PDc4kwfq5Abwa8nZKwgraCJqPwJeISvtFvxURCWRYI=;
        b=Ew5KCg2phGMV+OlxGFxDY0ICfO7GTUKjam96t6qlNWEPwnXxSVtiVZ7gex/Rucl3Cl
         ToXn4Md9FB1/iF/Xp7Li/DTXFuOh4p3UP1VA20OaZEuBL4tceMnqjlzaziITbJEWE2sp
         8nGfWopm/bIIvlBozwjemM/p718KG1l1Kj6TU0LpqWcoY+3WOi8SgN9zOZe33rOqEzvb
         NtTkre3sDE0CoW3ek7xpQVcPxoWHqPuOmoe0c8MQcbpZ+Ivv4ZUSaE/DlckMYEPIhLn2
         e0Pw1ZmW79aNMLT6MMTiCPxbDeMJ0hcpBRARjyLQVyZhDwhBsvVGkSsl29ydfh2zLKC2
         DBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5PDc4kwfq5Abwa8nZKwgraCJqPwJeISvtFvxURCWRYI=;
        b=p8HPkKBTdaT0sTrcUejxVFgX0it3z1OPf7aGT/NGkbeb16y/Lyk+nRbxCKXI0jqj+q
         kT6LQbHZLl1ZPF9TDAujD059wFDCPjueQ3ASfG0p60ZgThJQK1Ia/uNXNqDVEDINrHhN
         plcw9YZFFnFloz8Lsjg6ZaZBqJMV+xPNy2vsQqRyMVj10s2VGIII5GiPRjT/9xsbdrAH
         huasD9N+iH8e8fhh78MUGJvWkGirdeQbfrao4euW/4JXzTYSdP2a1MWB4JK0N1amQTg9
         6mKlga42OK7POx/gnjKbMCOwTnO4rbLoIW+C/QHAFCwiofnJniLOHvfCl3vnuHkIlDVO
         ++Yg==
X-Gm-Message-State: AOAM533WxQl8SJdYnCUwPFPiiVUd7RtBVVSoXb+aY4hdJvXmNlsg/dLk
        khkh+ND+WtB7yU53iTmf2SxdrQ==
X-Google-Smtp-Source: ABdhPJy+Z7OawzbDT2c6fhA1n0JDALjZMKnTFACGqeHKsRKc9FV+bC5HddeI8Rw53Qh9jaOOXd8nkA==
X-Received: by 2002:a05:6402:270b:b0:424:7dd:9d7b with SMTP id y11-20020a056402270b00b0042407dd9d7bmr35038575edd.92.1651142568227;
        Thu, 28 Apr 2022 03:42:48 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id mf1-20020a1709071a4100b006f39f556011sm4982583ejc.125.2022.04.28.03.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 03:42:47 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Amit Pundir <amit.pundir@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH v2 2/6] arm64: dts: qcom: pmi8998: add charger node
Date:   Thu, 28 Apr 2022 11:42:29 +0100
Message-Id: <20220428104233.2980806-3-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220428104233.2980806-1-caleb.connolly@linaro.org>
References: <20220428104233.2980806-1-caleb.connolly@linaro.org>
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

Add a node for the smb2 charger hardware found on the pmi8998.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index da10668c361d..962a8719b07a 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -9,6 +9,23 @@ pmi8998_lsid0: pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmi8998_charger: charger@1000 {
+			compatible = "qcom,pmi8998-charger";
+			reg = <0x1000>;
+
+			interrupts = <0x2 0x13 0x4 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x12 0x2 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x16 0x1 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x13 0x6 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "usb-plugin", "bat-ov", "wdog-bark", "usbin-icl-change";
+
+			io-channels = <&pmi8998_rradc 3>,
+				      <&pmi8998_rradc 4>;
+			io-channel-names = "usbin_i", "usbin_v";
+
+			status = "disabled";
+		};
+
 		pmi8998_gpio: gpios@c000 {
 			compatible = "qcom,pmi8998-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
-- 
2.36.0

