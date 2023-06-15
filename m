Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB157315EB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 12:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343770AbjFOK65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 06:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343794AbjFOK6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 06:58:54 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905302729
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:44 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f640e48bc3so10112853e87.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 03:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686826723; x=1689418723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gv+DyaZll/H2jD9ow4C+es+DNFI9kuFxb3UaUHDFHqk=;
        b=Mb+vso8FaqEEofawsYkCeO6DcWi2o/+zW8gnJATEZQOM4QaWY0QPvGxuwLl7IJogHB
         dxeDv8yKMU27OtF5I5Mqlk/X3lbiRg0CZ75rF51wFgaN2G1UjUmiO9BkQ3TuKjnMNJ6T
         kUrCQabCoKJ8kJXxwDkmuwQJZhNOaEqoRjsJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686826723; x=1689418723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gv+DyaZll/H2jD9ow4C+es+DNFI9kuFxb3UaUHDFHqk=;
        b=AkB42NoIa42MWwc8sfEaTfkmynNTV04gwMoKvM1rCPWsT3gUdaCcU4aX83NK1uZiD0
         S189gnGDBPsOtOII+aYz/66OeZQEYunvXPgYhzo8mv+1EnvnNoM6od/8pAyU3B4JhymA
         oQ9hhWO003i5kLuPZmsnp0w3fh+8ksMZVP7ZlEfhqgOgSpip4GBpN2G3vGXpW02BoJSP
         jAhoRpnNbHor1vt7m872qr6985OTTG5xw2PH09euUYpGmo14p+jQpgpgShF4x2Usozi7
         xUxVu7WxE4u98oAhiLmYXuOpDf/l8AhgDnp8PgPzzhF6bEupcxzejM9Fl8lYVRzcKOOk
         Vpjw==
X-Gm-Message-State: AC+VfDwPhoAsYfIq2z+GfvKh8ulrOZ7RoaYZPILGxp5QkPnBG5lJdA2f
        etywbXDONBDVhO0Sijik0dRffA==
X-Google-Smtp-Source: ACHHUZ55S44mbroI4h4dOvkl5CJL0C/g7l1shWyyYYaWVWNVM1qxhxYMPsD8IgVniWLYd4y5+ukC6Q==
X-Received: by 2002:a19:9150:0:b0:4f8:48f3:f08 with SMTP id y16-20020a199150000000b004f848f30f08mr12996lfj.21.1686826722859;
        Thu, 15 Jun 2023 03:58:42 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id h7-20020ac25967000000b004f13f4ec267sm165364lfp.186.2023.06.15.03.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 03:58:40 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/8] rtc: isl12022: implement RTC_VL_READ ioctl
Date:   Thu, 15 Jun 2023 12:58:23 +0200
Message-Id: <20230615105826.411953-6-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230615105826.411953-1-linux@rasmusvillemoes.dk>
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230615105826.411953-1-linux@rasmusvillemoes.dk>
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

Hook up support for reading the values of the SR_LBAT85 and SR_LBAT75
bits. Translate the former to "battery low", and the latter to
"battery empty or not-present".

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/rtc/rtc-isl12022.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/rtc/rtc-isl12022.c b/drivers/rtc/rtc-isl12022.c
index 6a757f0a4736..a48456abdcb9 100644
--- a/drivers/rtc/rtc-isl12022.c
+++ b/drivers/rtc/rtc-isl12022.c
@@ -204,7 +204,34 @@ static int isl12022_rtc_set_time(struct device *dev, struct rtc_time *tm)
 	return regmap_bulk_write(regmap, ISL12022_REG_SC, buf, sizeof(buf));
 }
 
+static int isl12022_rtc_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
+{
+	struct regmap *regmap = dev_get_drvdata(dev);
+	u32 user, val;
+	int ret;
+
+	switch (cmd) {
+	case RTC_VL_READ:
+		ret = regmap_read(regmap, ISL12022_REG_SR, &val);
+		if (ret)
+			return ret;
+
+		user = 0;
+		if (val & ISL12022_SR_LBAT85)
+			user |= RTC_VL_BACKUP_LOW;
+
+		if (val & ISL12022_SR_LBAT75)
+			user |= RTC_VL_BACKUP_EMPTY;
+
+		return put_user(user, (u32 __user *)arg);
+
+	default:
+		return -ENOIOCTLCMD;
+	}
+}
+
 static const struct rtc_class_ops isl12022_rtc_ops = {
+	.ioctl		= isl12022_rtc_ioctl,
 	.read_time	= isl12022_rtc_read_time,
 	.set_time	= isl12022_rtc_set_time,
 };
-- 
2.37.2

