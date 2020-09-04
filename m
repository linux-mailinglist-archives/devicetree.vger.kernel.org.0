Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0347625D189
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 08:37:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729710AbgIDGha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 02:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729675AbgIDGhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 02:37:07 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FA09C061245
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 23:37:07 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id k15so4044177pfc.12
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 23:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oQZJoBmmMUGv3gcRM3sLFLuAwsd9ni+yGmgd7QDzGzk=;
        b=s1FU44aQcy9VujfxiSwv6BFGLpjAORDbRdzx+EOlG3JC2Lh743fYFcUfakH+aUKlzG
         vh/SwBOLcws5UMxXxHJiaAqaQmX2rJGnzmoqG9L30ERf4/LeW+fS9P4VNJEgqa19vzLS
         /6OooSwRtmVIE+BI3gsKtNVVdVRzxIQosZSxa2qjAF2AiYIt1b+rmvwTlgACgy+kJILD
         LJIYRMSSVK+EEo4b+pBkWAYTZaE50oYdyiqfntUxkLd2sQ+7TMnLEQv0G+n1wi/p9tyb
         UfdQWBKH10k+Oz7ov+qzTyIKMaENoH2ZSyiy6zQkk0ISU53rSS5vMWvhQHoOn6gUI9W7
         pM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oQZJoBmmMUGv3gcRM3sLFLuAwsd9ni+yGmgd7QDzGzk=;
        b=KNQAQwtAicQgfDtncuhJX1U5w5ErGoY38uugRPBQKc79+L9o4asX3K4xsREdkhKz9F
         49p0c1Jpa5jcnKg8Wpec+NFQzlcS4JHaX/fyM+o1+LGeOSlOQIMLcyaD99YTTVBVDtyw
         9bH4gd7CK9ARIosuXmDJkeeULYQhwis4jd3OIzjZ0YU7b4K87Tdbyqqj0D1nj1/+i/Sz
         zrNM/6XGJoHsHYWSqqM7/dpeXyKRQkV7YWl5Q3wQQrgfwPCq2jccWzszNZ/alTzYruIC
         s+BRRtmWEO9zgr/WfamInNB7UVxmK+pUmtuUS2Mz0EeITUCKB5/VNI1q6xV9b+YcxXad
         bbug==
X-Gm-Message-State: AOAM532KQ6jVMh+Kut2utr2Q+WpR7CXSYbvbmPJvh4bfBAgpD1eUsmD9
        x6TyBp2h1i+z8ZCvjbGiyF6l
X-Google-Smtp-Source: ABdhPJwv8ltLoPCJEp04NdRQ4wvrlJO3Sq81sjGV6vlMdvHUTU0YqDE10wc3BIlH0NuKSppBlRNjnQ==
X-Received: by 2002:a63:29c6:: with SMTP id p189mr5907174pgp.148.1599201426682;
        Thu, 03 Sep 2020 23:37:06 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 143sm5315040pfc.66.2020.09.03.23.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 23:37:06 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 6/6] arm64: dts: qcom: qrb5165-rb5: Add gpio-line-names for PM8150(B&L)
Date:   Fri,  4 Sep 2020 12:06:37 +0530
Message-Id: <20200904063637.28632-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
References: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add gpio-line-names for the GPIO pins exposed by PM8150, PM8150B and
PM8150L PMIC nodes.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index cf6dc0ec1640..1528a865f1f8 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -412,6 +412,53 @@
 	status = "okay";
 };
 
+&pm8150_gpios {
+	gpio-reserved-ranges = <1 1>, <3 2>, <7 1>;
+	gpio-line-names =
+		"NC",
+		"OPTION2",
+		"PM_GPIO-F",
+		"PM_SLP_CLK_IN",
+		"OPTION1",
+		"VOL_UP_N",
+		"PM8250_GPIO7", /* Blue LED */
+		"SP_ARI_PWR_ALARM",
+		"GPIO_9_P", /* Yellow LED */
+		"GPIO_10_P"; /* Green LED */
+};
+
+&pm8150b_gpios {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"NC",
+		"NC",
+		"HAP_BOOST_EN", /* SOM */
+		"SMB_STAT", /* SOM */
+		"NC",
+		"NC",
+		"SDM_FORCE_USB_BOOT",
+		"NC",
+		"NC",
+		"NC";
+};
+
+&pm8150l_gpios {
+	gpio-line-names =
+		"NC",
+		"PM3003A_EN",
+		"NC",
+		"NC",
+		"PM_GPIO5", /* HDMI RST_N */
+		"PM_GPIO-A", /* PWM */
+		"PM_GPIO7",
+		"NC",
+		"NC",
+		"PM_GPIO-B",
+		"NC",
+		"PM3003A_MODE";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.17.1

