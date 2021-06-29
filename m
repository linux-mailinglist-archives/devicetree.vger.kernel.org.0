Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C51C3B721D
	for <lists+devicetree@lfdr.de>; Tue, 29 Jun 2021 14:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233706AbhF2MhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Jun 2021 08:37:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233585AbhF2MhE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Jun 2021 08:37:04 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC851C0617A8
        for <devicetree@vger.kernel.org>; Tue, 29 Jun 2021 05:34:33 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id a127so17019071pfa.10
        for <devicetree@vger.kernel.org>; Tue, 29 Jun 2021 05:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v9DYlWSWic1b68MEKNTSvKWtqRdyWA1mD3gX3M18m2w=;
        b=LFiFoi136IysUwzZESYIY+zVaVM3jxao0XpXOZ66W2JxOhTUXRobwI0mZG9B8ntBon
         fsO4+FESgF9+LibMYGpX1XnDMsd/zWHfcyds+jrpoYAe7L8jhOenS/Fm0sOAHIsNhqyQ
         HjyKGyfZyemtUCNoHSmeccWNX4+7fuxiT9z43znracKHan76oVexnuuRI8U/InxONGgQ
         4ypG6/998bPtjWoFWbo0gmcziQjdmyrEo+KIhcVkevs1RnCi+Fc9jriHGfPw50MEp6l0
         7MEX3VXs5uNbSvI8oXX4VAr00dUmzwmzyQLH8whjcQA9SACnkSZ5mvBmwbYCxsrSOibd
         p1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v9DYlWSWic1b68MEKNTSvKWtqRdyWA1mD3gX3M18m2w=;
        b=JMIpRbUVenMbUsWlJ7hQ31vzcMfQxd193ZyaW0nmiLGYtuKfwJSpYfNIwoF2kKNh6B
         izSRhy0+mRMHX9mIA7OjlldK69qgqDCU1AkCiPCD2NY7J7UVH/PX4fAHDNvNv/3jdDQy
         Cj1cri72qn2OMYHqBVYTlNNXs/SoWiEmkjgoVVVRMnZVSGTOj8hgXkdZELeS1oq4KKqv
         gw0RjGoS+l7gU7mqElG1WmudntPnUR7LnfgMiIYXl3HByfDVwUEDYPmsN/5CM5EW3yEP
         yvTkunOyNQJ7ZuZK1tsP8qazEbrdR0tmml0M+cAqjs2NaJjrHryi6nyMeXT5kuPqWTxQ
         NEwA==
X-Gm-Message-State: AOAM533YcVH9pgh1tnjQOQNMvCpi9tijXwle8r7kNio16/m8dSa7lP7J
        KgwXTQtfqFY4BNnykx5E44onMQ==
X-Google-Smtp-Source: ABdhPJwUGm+TPzInvCxfXZfDS0j6yozQ+HyOvr4MNSz6JFKKbNSiEA/j8+oQf10bWXX/s/JRpBKsIg==
X-Received: by 2002:a63:f65:: with SMTP id 37mr17583270pgp.367.1624970073332;
        Tue, 29 Jun 2021 05:34:33 -0700 (PDT)
Received: from localhost.name ([182.69.252.226])
        by smtp.gmail.com with ESMTPSA id 143sm16176692pfx.46.2021.06.29.05.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 05:34:32 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        robh+dt@kernel.org, Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/4] dt-bindings: pinctrl: qcom,pmic-gpio: Arrange compatibles alphabetically
Date:   Tue, 29 Jun 2021 18:04:04 +0530
Message-Id: <20210629123407.82561-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210629123407.82561-1-bhupesh.sharma@linaro.org>
References: <20210629123407.82561-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Arrange the compatibles inside qcom-pmic gpio device tree
bindings alphabetically.

While at it, also make some minor cosmetic changes to allow
future compatible addition to the bindings simpler.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../bindings/pinctrl/qcom,pmic-gpio.txt       | 62 +++++++++----------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
index 161216daf463..c9f02062774a 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.txt
@@ -7,10 +7,21 @@ PMIC's from Qualcomm.
 	Usage: required
 	Value type: <string>
 	Definition: must be one of:
+		    "qcom,pm660-gpio"
+		    "qcom,pm660l-gpio"
+		    "qcom,pm6150-gpio"
+		    "qcom,pm6150l-gpio"
+		    "qcom,pm7325-gpio"
 		    "qcom,pm8005-gpio"
+		    "qcom,pm8008-gpio"
 		    "qcom,pm8018-gpio"
 		    "qcom,pm8038-gpio"
 		    "qcom,pm8058-gpio"
+		    "qcom,pm8150-gpio"
+		    "qcom,pm8150b-gpio"
+		    "qcom,pm8350-gpio"
+		    "qcom,pm8350b-gpio"
+		    "qcom,pm8350c-gpio"
 		    "qcom,pm8916-gpio"
 		    "qcom,pm8917-gpio"
 		    "qcom,pm8921-gpio"
@@ -22,21 +33,10 @@ PMIC's from Qualcomm.
 		    "qcom,pmi8950-gpio"
 		    "qcom,pmi8994-gpio"
 		    "qcom,pmi8998-gpio"
-		    "qcom,pms405-gpio"
-		    "qcom,pm660-gpio"
-		    "qcom,pm660l-gpio"
-		    "qcom,pm8150-gpio"
-		    "qcom,pm8150b-gpio"
-		    "qcom,pm8350-gpio"
-		    "qcom,pm8350b-gpio"
-		    "qcom,pm8350c-gpio"
 		    "qcom,pmk8350-gpio"
-		    "qcom,pm7325-gpio"
 		    "qcom,pmr735a-gpio"
 		    "qcom,pmr735b-gpio"
-		    "qcom,pm6150-gpio"
-		    "qcom,pm6150l-gpio"
-		    "qcom,pm8008-gpio"
+		    "qcom,pms405-gpio"
 		    "qcom,pmx55-gpio"
 
 		    And must contain either "qcom,spmi-gpio" or "qcom,ssbi-gpio"
@@ -98,35 +98,35 @@ to specify in a pin configuration subnode:
 	Value type: <string-array>
 	Definition: List of gpio pins affected by the properties specified in
 		    this subnode.  Valid pins are:
-		    gpio1-gpio4 for pm8005
-		    gpio1-gpio6 for pm8018
+		    gpio1-gpio10 for pm6150
+		    gpio1-gpio12 for pm6150l
+		    gpio1-gpio10 for pm7325
+		    gpio1-gpio4  for pm8005
+		    gpio1-gpio2  for pm8008
+		    gpio1-gpio6  for pm8018
 		    gpio1-gpio12 for pm8038
 		    gpio1-gpio40 for pm8058
-		    gpio1-gpio4 for pm8916
+		    gpio1-gpio10 for pm8150 (holes on gpio2, gpio5, gpio7
+					     and gpio8)
+		    gpio1-gpio12 for pm8150b (holes on gpio3, gpio4, gpio7)
+		    gpio1-gpio12 for pm8150l (hole on gpio7)
+		    gpio1-gpio10 for pm8350
+		    gpio1-gpio8  for pm8350b
+		    gpio1-gpio9  for pm8350c
+		    gpio1-gpio4  for pm8916
 		    gpio1-gpio38 for pm8917
 		    gpio1-gpio44 for pm8921
 		    gpio1-gpio36 for pm8941
-		    gpio1-gpio8 for pm8950 (hole on gpio3)
+		    gpio1-gpio8  for pm8950 (hole on gpio3)
 		    gpio1-gpio22 for pm8994
 		    gpio1-gpio26 for pm8998
 		    gpio1-gpio22 for pma8084
-		    gpio1-gpio2 for pmi8950
+		    gpio1-gpio2  for pmi8950
 		    gpio1-gpio10 for pmi8994
+		    gpio1-gpio4  for pmk8350
+		    gpio1-gpio4  for pmr735a
+		    gpio1-gpio4  for pmr735b
 		    gpio1-gpio12 for pms405 (holes on gpio1, gpio9 and gpio10)
-		    gpio1-gpio10 for pm8150 (holes on gpio2, gpio5, gpio7
-					     and gpio8)
-		    gpio1-gpio12 for pm8150b (holes on gpio3, gpio4, gpio7)
-		    gpio1-gpio12 for pm8150l (hole on gpio7)
-		    gpio1-gpio10 for pm8350
-		    gpio1-gpio8 for pm8350b
-		    gpio1-gpio9 for pm8350c
-		    gpio1-gpio4 for pmk8350
-		    gpio1-gpio10 for pm7325
-		    gpio1-gpio4 for pmr735a
-		    gpio1-gpio4 for pmr735b
-		    gpio1-gpio10 for pm6150
-		    gpio1-gpio12 for pm6150l
-		    gpio1-gpio2 for pm8008
 		    gpio1-gpio11 for pmx55 (holes on gpio3, gpio7, gpio10
 					    and gpio11)
 
-- 
2.31.1

