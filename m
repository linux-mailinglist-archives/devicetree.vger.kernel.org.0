Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F19EA734280
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:16:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234510AbjFQRQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236059AbjFQRQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:16:06 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A8F4E50
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:16:03 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-519608ddbf7so2337885a12.2
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687022162; x=1689614162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0CEpp92aXA++Oz1YdU9MsKnQw7p6STRWrODme8arX30=;
        b=By8h6Y3h/Z7KrQ4e0iFDJbAYxReol6+AWsoLSJrWFCa8kTRUvRiFZjoD09Wvr1MSrp
         3oHhOWf2aSQhan3TUtLe94KewQ/ERSGXENZcvjKJPHR7Y9oycRQp4F8WgTi8R9cm0AAz
         pn+OOZymDqWpe3UDXdaHpbdVm/8pQ3ETAZl2Qg4HgYJzZj1TK39kTNcQpO3W6aiSXgS1
         o/vnX6IaG2aV5QFMyM7Xc0DtKGBpOkCO2g1exMw6VsTrJNiuTZ7ZfI//MZr869Jm4MkB
         vVdjFJ5xG5ZlhLtxhvTmQnDFVHGkBmw3MDDyTW2AEM+bqLdqyeHFSplBF7W3suCHMJPy
         gZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687022162; x=1689614162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0CEpp92aXA++Oz1YdU9MsKnQw7p6STRWrODme8arX30=;
        b=AObcQWbwm6g+G127ErxDYL7IUrNYFpi/gKubI9qHrvHwmxBorBu/g6Z/G67KcO/wuB
         Xtu2fP8KLdHT+2SQYqyHvjSo3JsNrG5BXk/xPlBpXP/vyMxLoIRwhtWnOlW3iwq9H+z4
         l2G6jyru5h0uEKWunvzvh9iYDqseY3A/2DLAp6AQ3wbhPTYkQSpKauTuUUCMgQlf8hmS
         QP52ivkYWu1isDUP6pcELVl7EvYdtupTbzpnkm8B1PEEjUyi2MZrFMSjNazybfyj79gu
         CvWbMGcGik8UZMTirD3RosiJPwq1flRBueE/zQqslfPsveRfVBD0vFeWmArR9kD4E7x0
         jaoA==
X-Gm-Message-State: AC+VfDzKMkQIuRxCPyUTwuccjgN5soURo1osbWVQgJBKmAcUE/VFOcoE
        TV1TKj1HKR1KrgRB1BncmcYsfKcSM6rLq3h4aKw=
X-Google-Smtp-Source: ACHHUZ4UgjROBr6RCdcj3wSV+z+h62CvPdPwN9sYaUj3qqRfzJ0n+U5Rz6rxovg2RBcLBHDp97Hzgw==
X-Received: by 2002:a17:907:6ea8:b0:974:1f03:fcd1 with SMTP id sh40-20020a1709076ea800b009741f03fcd1mr5990417ejc.3.1687022161882;
        Sat, 17 Jun 2023 10:16:01 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b009829dc0f2a0sm3841897ejb.111.2023.06.17.10.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 10:16:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 13/15] arm64: dts: qcom: sc8180x-primus: correct panel ports
Date:   Sat, 17 Jun 2023 19:15:39 +0200
Message-Id: <20230617171541.286957-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Panel takes only one port:

  sc8180x-primus.dtb: panel: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index fc038474cb71..9b8695b92c48 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -377,11 +377,9 @@ panel {
 
 			backlight = <&backlight>;
 
-			ports {
-				port {
-					auo_b133han05_in: endpoint {
-						remote-endpoint = <&mdss_edp_out>;
-					};
+			port {
+				auo_b133han05_in: endpoint {
+					remote-endpoint = <&mdss_edp_out>;
 				};
 			};
 		};
-- 
2.34.1

