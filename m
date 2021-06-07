Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9626639DB99
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 13:40:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231556AbhFGLmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 07:42:25 -0400
Received: from mail-pl1-f171.google.com ([209.85.214.171]:42723 "EHLO
        mail-pl1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231515AbhFGLmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 07:42:25 -0400
Received: by mail-pl1-f171.google.com with SMTP id v13so8483421ple.9
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 04:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vZIfMhSvtEJ6asHNrQjDt1xp+fgKwv6Gaq0cGOsZKuw=;
        b=NuayGiOUMZyjjdhrOKE7sUlwR0V9thZBnTval9GvHCTHEP7OO18MEaRWPAXJIVfGCu
         WfuS4RtawKhx/JcU3+Hayu5dX/GSzszzc6HJfpl7Oo2SK/PWa5MqMYLIMFHMuCRk1A2G
         JJ3rtfQSpNol2B3xmU8SslV9RESBnapMDJZl3DgqmGhnjSCt1GnJuOjNscAZyeiqTWtw
         p+GJE8g5jBtf2PKl3vWZQnfZXCXiPXzuCfY155jrxle+HIqmOsYsagGp/nD8ACTSpWGk
         4eBu0DiHE3tkAPljOo2SqtB7dxeR9Cd3JM0Nk5EbgAVLXufG682Zu40sxzepQsbxDK+z
         mqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vZIfMhSvtEJ6asHNrQjDt1xp+fgKwv6Gaq0cGOsZKuw=;
        b=tlynxt7Ey1xFrRgq9IXR1BX7Km2C4dpK2BFBaiahvNXi8xzQYZrgT4xqqTXEzKWhw9
         v8KRUEUvGxzn73T6nbtEG4e3BAobV/j62VfooyuzmyrJIc//hcsZYbnZ6jhepR1vuPe3
         TKf0nxU5RtQol/K18lgU85PmbdNqcc6aysIxXHPyus0A5G9Zraliq7iJpNe5n3t/V4IB
         f+7V7mGKpPDMfpaAqzW/hvP0y6NzB16j1144rwGuK1gCjzYOgMdp3f4kyVMbmnbtg2uM
         +DCeOxnADS807sB3GT/P6ifQmdkRul1KbwAPCkAGhVx5C74oXhhCNrtE8c6ixfA1EenW
         DO9w==
X-Gm-Message-State: AOAM532cek87W7bQ1pkqyVBPQi8kQDLQ/7HfWERQt5lMesjBOxT/ELOR
        JHJ1oEF1WKwnP9MF0L7E1XFX8Q==
X-Google-Smtp-Source: ABdhPJx59lohaSytzkWeOLH+/cGBTyd7NkrexT1xUNBwK0clEFxVKpzGUYTcBtqBABfNnsgPLTaO6g==
X-Received: by 2002:a17:902:b48d:b029:fd:e7d2:4e98 with SMTP id y13-20020a170902b48db02900fde7d24e98mr17246691plr.55.1623065973947;
        Mon, 07 Jun 2021 04:39:33 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.177.211])
        by smtp.gmail.com with ESMTPSA id j7sm7223939pjf.0.2021.06.07.04.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 04:39:33 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH 5/8] pinctrl: qcom/pinctrl-spmi-gpio: Add compatibles for pmic-gpios on SA8155p-adp
Date:   Mon,  7 Jun 2021 17:08:37 +0530
Message-Id: <20210607113840.15435-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
References: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SA8155p-adp PMICs (PMM8155AU_1 and PMM8155AU_2) expose
the following PMIC GPIO blocks:

- PMM8155AU_1: gpio1-gpio10 (with holes on gpio2, gpio5, gpio7 and gpio8)
- PMM8155AU_2: gpio1-gpio10 (with holes on gpio2, gpio5, gpio7)

Add support for the same in the pinctrl driver.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-gpio@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
index 00870da0c94e..890c44b6e198 100644
--- a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
+++ b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
@@ -1127,6 +1127,10 @@ static const struct of_device_id pmic_gpio_of_match[] = {
 	{ .compatible = "qcom,pm8150b-gpio", .data = (void *) 12 },
 	/* pm8150l has 12 GPIOs with holes on 7 */
 	{ .compatible = "qcom,pm8150l-gpio", .data = (void *) 12 },
+	/* pmm8155au-1 has 10 GPIOs with holes on 2, 5, 7 and 8 */
+	{ .compatible = "qcom,pmm8155au-1-gpio", .data = (void *) 10 },
+	/* pmm8155au-2 has 10 GPIOs with holes on 2, 5 and 7 */
+	{ .compatible = "qcom,pmm8155au-2-gpio", .data = (void *) 10 },
 	{ .compatible = "qcom,pm8350-gpio", .data = (void *) 10 },
 	{ .compatible = "qcom,pm8350b-gpio", .data = (void *) 8 },
 	{ .compatible = "qcom,pm8350c-gpio", .data = (void *) 9 },
-- 
2.31.1

