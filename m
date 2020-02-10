Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 363BD1573F3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 13:07:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727781AbgBJMHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 07:07:43 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39933 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727763AbgBJMHm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 07:07:42 -0500
Received: by mail-wm1-f68.google.com with SMTP id c84so10297636wme.4
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2020 04:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4Kx77RkRZ6BLkxPPbqLY1opgnPyzoSH+OO3s+PAvU9w=;
        b=jwidverGDqxKUryr2rjAfuBdvB6PYnCqcqfLl5iwaXxA2Rqsg6SLGtCVM+abnqAmDy
         jWHBkr5Jn5kxh7dwNNcGG0sP0ZlO0SDQ1EMMbVVgBkxQLiztLTc4XqpQPvwfd1dZXf6u
         5KFhD39eiPprRntcTM49u4+dS0OWuAEORspl0UJZWoDsDICJSmBoULkVre5f9goEkI3P
         41lgDWI8s1xucFqyVV3+ZF7DXpiZLJE4EIjPIddki6vOiSi6W6obu5Juoq5PVU9dY/4I
         dbFa5UsgPCEmwbkoHQlPIYaN2bB1hjsANL0lZX1rx/Bi9jwHxUSgZIuAgkl6VPNVih/C
         2uSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4Kx77RkRZ6BLkxPPbqLY1opgnPyzoSH+OO3s+PAvU9w=;
        b=A0XA7K6tuAjw7MLE52t+whWvSNxfpsqR9v4J0htNuYVaY8Xb/QhT0shyw389l8KWQA
         VPW2MLEQNN+EzrL+lKb0hpKf7trvD8hTnznQ0Siw8OKfy8UqqEwukmlZi6JwGImq4ntb
         +MkOTCWJM3ZBNun6jklL6gCaHlFOU3xVXjIW5B7dQMfbvUuMH2lC5zBE06257lWVoY4v
         6mKlsR9jqK3E7GUnFk7+qTxWO0I4gQyhSxgPUoN5xuayL5LbtPN9odddTRRsynwFHiK3
         dQQefwxQeWl5gDxbeHm80a4Lgyn+bOktBbVjAG4qDED9Tc8KoFyksLkX0DbpBvNaKzwc
         Z0Mg==
X-Gm-Message-State: APjAAAUVB1U8I1Y0AlLTylc3qjlbb/AIgZ2N1NGTwrUCVkeabry6+gid
        vcbxbwr8AomGm2URhwvmIJjRgw==
X-Google-Smtp-Source: APXvYqw701m0PX1z/zERDK7rm352EQhGZkc+h8ZXXoz6EqZ/j8XAaSG68jXgkXAw0R6YcPWNdy9oFA==
X-Received: by 2002:a1c:39d7:: with SMTP id g206mr14296473wma.111.1581336460292;
        Mon, 10 Feb 2020 04:07:40 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id i204sm293124wma.44.2020.02.10.04.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 04:07:39 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        gregkh@linuxfoundation.org, jackp@codeaurora.org, balbi@kernel.org,
        bjorn.andersson@linaro.org, robh@kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH v6 16/18] arm64: dts: qcom: qcs404-evb: Describe external VBUS regulator
Date:   Mon, 10 Feb 2020 12:07:21 +0000
Message-Id: <20200210120723.91794-17-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210120723.91794-1-bryan.odonoghue@linaro.org>
References: <20200210120723.91794-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VBUS is supplied by an external regulator controlled by a GPIO pin. This
patch models the regulator as regulator-usb3-vbus.

Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index abfb2a9a37e9..01ef59e8e5b7 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -33,6 +33,18 @@ vdd_esmps3_3p3: vdd-esmps3-3p3-regulator {
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
 	};
+
+	usb3_vbus_reg: regulator-usb3-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "VBUS_BOOST_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pms405_gpios 3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_vbus_boost_pin>;
+		vin-supply = <&vph_pwr>;
+		enable-active-high;
+	};
 };
 
 &blsp1_uart3 {
-- 
2.25.0

