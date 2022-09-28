Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB7BD5ED89F
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 11:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233598AbiI1JPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 05:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233448AbiI1JPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 05:15:00 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BB7817054
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:14:57 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id n35-20020a05600c502300b003b4924c6868so1970681wmr.1
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=nW4h8IysCeGHSdxKW2hUxsi6ulI+NrijOXZ0X0ypMHo=;
        b=cSVZEx//KYiPk9a5OcsGeg69zXg5u2hnhV8QdG4wQLAUAJ8pc3Y2ixxk0J4yyg9xJL
         AJ9nooK16JS2t5KJks7pMU14zOudKauKknY8dUsM1HrPneE/kz7oGB9l7oCCHv+/w8wR
         CAYkoxctNjA1shQSANzosDUV61P3g2ds7lgjok4UkWKx6t5j9z9fu7GhBrTYgN75SW9f
         uvpMWAyrOEsjuDu/PbPIYguULcDVfm6jbU3SjEofyY+WFh2pnKxwjECBc/NEyERGiPNQ
         BVhI5gNLUMBTkI7J+JnSkJeVSDF6WPkmR6uNSclg2CCj7uaeyICKm3BzN2lOQ+YNprN8
         uqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nW4h8IysCeGHSdxKW2hUxsi6ulI+NrijOXZ0X0ypMHo=;
        b=4zlNr3bI5gGLar9VgYIRzpKQ8dOnjW1v9B2/fwhaT+o+0KsFNVLFZgvvBnmtnVg8E4
         Bkz1dqeQSH8cOqydCEbJf4uOyKjprOMqPm//1PdKY25TNxmovU6GpnPZjAUAh97A1L7z
         Tr5l5f4NPRpCCnlAeU0GIgcQT7UPUjRgW47Eg63uZX8hL+64Esa2+aG310WCSR4fqt1H
         NZcJTpsyi7tLzIyPoSfsUxW6V5718R5Etyce7E293t2xSJEUAqz1hx19yAg7VbN054cw
         S84kf1Khmdkle8qkNQOZyzeFV4W0pqtaxWmdbzu7zMJ45I07UdP8PdTBsZsYzfZor1Mu
         h/UA==
X-Gm-Message-State: ACrzQf2GHMq4hWaXTr+oKvK0NwQ2Gq4VHBmPWuJkhwhYU3+bCj1CLQ5O
        9i/MPUj1g6tXh9AyPSJnfA9yGg==
X-Google-Smtp-Source: AMsMyM6I62be+B4NfMham3eMU2SbQ4sQJvp/B10RM814YcRrkShKs9YdwRftB0+Nk2RtPOg3bYYaUg==
X-Received: by 2002:a05:600c:a09:b0:3b5:2f6b:c7c5 with SMTP id z9-20020a05600c0a0900b003b52f6bc7c5mr5855174wmp.141.1664356495565;
        Wed, 28 Sep 2022 02:14:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d6382000000b0022a53fe201fsm2420016wru.68.2022.09.28.02.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 02:14:55 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 28 Sep 2022 09:14:53 +0000
Subject: [PATCH v1 3/7] arm: dts: qcom: mdm9615: add missing reg in cpu@0 node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v1-3-b6e63a7df1e8@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.10.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes cpu@0: 'reg' is a required property from dtbs check.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index b06bbe25fdd4..e547becc9f75 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -28,6 +28,7 @@ cpus {
 		cpu0: cpu@0 {
 			compatible = "arm,cortex-a5";
 			device_type = "cpu";
+			reg = <0>;
 			next-level-cache = <&L2>;
 		};
 	};

-- 
b4 0.10.0
