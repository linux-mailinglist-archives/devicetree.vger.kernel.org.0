Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 397B6CEB3B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 19:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729265AbfJGR4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 13:56:10 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:44968 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729462AbfJGR4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 13:56:09 -0400
Received: by mail-pf1-f196.google.com with SMTP id q21so9099930pfn.11
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 10:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1oH7lj03wYz79i/zPzaUWTT6QxHftIiKZMYorEdLMBo=;
        b=iD2o9He3U69q6RpgqdzxaCMFlm/KSulpW5frmlBOgF4pZ0uYO5c4gejji2HqtrMSQt
         8JhD9FTrk7VwS9GB2wrv8Hba0ZUIEQWc9WuQjOP7YxIOKTfoneOS2w/L0Yeb+Ppfbn79
         SWF99J20b4fqvta/nclqz+QzVDbV4tZIOQhTbnETRWBCpLXosYrqEgWPHgV0nEEVG5IE
         T9jbitj49uv/eck9gVcH09akU4ZrdFhTPVaX7LcuokFH39wF81h2s3f+Kx5TVU38lUwk
         +Sz21hlnZ3RyMbV0oqLJKa6oZqZICMTUv8vFFP0PxLuGOnFixbMAk5Z4XfOwdpENVbIe
         XJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1oH7lj03wYz79i/zPzaUWTT6QxHftIiKZMYorEdLMBo=;
        b=PJtaDvY04TVGN4YNg94hfdM0v/XojQVaZPTJQBAv3CfNj02uOmbiTWF8kG3JjrJgZx
         8NYbMZ65jK7netQ5ZOFXvC5pips9NPObLdcBd6rLBYSb0E44faY/cVlkgMlUTJi2I/vT
         2XBs/3K7TwE3qm3F+TsrPqlYuWXApsC2TtMReGwB6SdskSUAhkm5PrnszTxINfR8bseS
         kIvRfxu1gnk1RGmTbRrNy0yj0//+FfuV5rQCsymTkT2cQ9SuW/qaUkWCf6zYynKvqKN7
         BTc79+88NNYwCyFHavxIPKf1netpoa5FFdPQc/f3hkHM6QipO9Xcc2LA9rW9ouRmrH+r
         bnog==
X-Gm-Message-State: APjAAAX2Sb8EuWvwc6tHBZZm1PA3bfTCHXQxVEsJ9UkUVz1atcT5OZ1W
        elzHEgU1KPH3mmodng2InWnl/g==
X-Google-Smtp-Source: APXvYqz1K67CyWo0e/emHrkBQnZS3p/dyk4OrQ9OdF6w4uS+MO8fNgdny3guoMksP8tvRCj3SarDBw==
X-Received: by 2002:a17:90a:fa0d:: with SMTP id cm13mr610912pjb.70.1570470968394;
        Mon, 07 Oct 2019 10:56:08 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id k15sm3820096pgt.25.2019.10.07.10.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 10:56:07 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     Yu Chen <chenyu56@huawei.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>
Subject: [RFC][PATCH v2 5/5] usb: dwc3: dwc3-of-simple: Add support for dwc3 of Hisilicon Soc Platform
Date:   Mon,  7 Oct 2019 17:55:53 +0000
Message-Id: <20191007175553.66940-6-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007175553.66940-1-john.stultz@linaro.org>
References: <20191007175553.66940-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yu Chen <chenyu56@huawei.com>

This patch adds support for the poweron and shutdown of dwc3 core
on Hisilicon Soc Platform.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Yu Chen <chenyu56@huawei.com>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index bdac3e7d7b18..78617500edee 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -51,7 +51,8 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	 * Some controllers need to toggle the usb3-otg reset before trying to
 	 * initialize the PHY, otherwise the PHY times out.
 	 */
-	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
+	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3") ||
+	    of_device_is_compatible(np, "hisilicon,hi3660-dwc3"))
 		simple->need_reset = true;
 
 	if (of_device_is_compatible(np, "amlogic,meson-axg-dwc3") ||
@@ -183,6 +184,7 @@ static const struct of_device_id of_dwc3_simple_match[] = {
 	{ .compatible = "amlogic,meson-axg-dwc3" },
 	{ .compatible = "amlogic,meson-gxl-dwc3" },
 	{ .compatible = "allwinner,sun50i-h6-dwc3" },
+	{ .compatible = "hisilicon,hi3660-dwc3" },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
-- 
2.17.1

