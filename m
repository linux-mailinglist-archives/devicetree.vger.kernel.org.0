Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFD6475F98
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 18:45:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237591AbhLORos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 12:44:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235513AbhLORor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 12:44:47 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D505FC06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 09:44:46 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id z8so34454694ljz.9
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 09:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=69DJNWe/D3Mca4RZyKuYAP8sNs3B4wyCI9D7posoa6o=;
        b=RShYZ6NK2Bn8nx7jVK0kLb7s7GE/oSmhOAOxFKJY0o4HYVX3tpCIp3ebRus6pb7tUX
         Gw8CNQnfboSV9FiZJ5i4M9w/LySzWavg4+5XSoxMp30xIDFR33rT4XagvxZ9SoBzsJSf
         JddESGBaKaRIdStubZAbkBv54lxkK1oY8Re+zgyQfxXqBp1v03YJIGLOHa9TyD8wy5ys
         NlJbBtIdOjxURidNJhezkzkBEoKkQQ/ZAi2fI9HycPFPF1tKVztNE6eGkxxxgrAe1jXW
         e6W/IW1Ckmq5rAZpjgm2LJvtZvRfLMnSo9LC+9yPS3IlqWCMJn+sdp7m/dE4o/gMY0J/
         r4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=69DJNWe/D3Mca4RZyKuYAP8sNs3B4wyCI9D7posoa6o=;
        b=ATduYRURbi56BFDDWNPkobJ9TrnF+FPqJ5EzI5gnYuL425vdBOJPEAfuDIbalk8NRS
         xNG/iIaU5JdIe8x4+HytZZw5Bhte3qDLkpjMZC4atkxaP10vG0CAQ9Q7ARNMqLqsS7Yp
         4FADnwilpHEBo2LTOMyjhIcbKQyFT1kkxfatMpGRb/qe1vPESNW41dgvksjR5K32zsHV
         bU0sj+h/Aa/5vKNUkTMdPKu69pZgQ6Bgzup64aS98AXFqBxlD0EofjxipkuvQMOboiRp
         zoe3SbR6eddTOKv6I+R4OpUNGYbry7W+JJBrSeuLjrXoJctFfeoAIbwxrI6ox9resFmo
         MFpA==
X-Gm-Message-State: AOAM533ltTWAyBWv1HECcdSXCu05EKo29o+jxmgRTL5UMbowW9bN7QQF
        X5vJAvYUsR5dzDEI6++cfBlFyg==
X-Google-Smtp-Source: ABdhPJz3xqzy1eAarWGUTG1XyKWi4mqhi7cm7xjUQNoFRGjdkLIpTKITMqZZvE609tNuJrNXsPsGxw==
X-Received: by 2002:a2e:a3ce:: with SMTP id w14mr11495799lje.21.1639590285100;
        Wed, 15 Dec 2021 09:44:45 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id v9sm543534lja.109.2021.12.15.09.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 09:44:44 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>
Cc:     linux-hwmon@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Peter Rosin <peda@axentia.se>,
        Chris Lesiak <chris.lesiak@licor.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] hwmon: (ntc_thermistor): Add Samsung 1404-001221 NTC
Date:   Wed, 15 Dec 2021 18:42:41 +0100
Message-Id: <20211215174241.1496169-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the Samsung 1404-001221 NTC thermistor to the
NTC thermistor driver. As far as I can tell it is electrically
compatible with the Murata 47K NTC thermistor.

This thermistor is mounted in a variety of Samsung products.

Cc: Peter Rosin <peda@axentia.se>
Cc: Chris Lesiak <chris.lesiak@licor.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
The DT binding oneline is included, I see no point in splitting
that into a separate patch.
---
 Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml | 1 +
 drivers/hwmon/ntc_thermistor.c                              | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml b/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
index 9e77cee07dbc..3d3b139a91a2 100644
--- a/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
@@ -76,6 +76,7 @@ properties:
       - const: murata,ncp15wl333
       - const: murata,ncp03wf104
       - const: murata,ncp15xh103
+      - const: samsung,1404-001221
       # Deprecated "ntp," compatible strings
       - const: ntc,ncp15wb473
         deprecated: true
diff --git a/drivers/hwmon/ntc_thermistor.c b/drivers/hwmon/ntc_thermistor.c
index 00356c28e8c8..414204f5704c 100644
--- a/drivers/hwmon/ntc_thermistor.c
+++ b/drivers/hwmon/ntc_thermistor.c
@@ -45,6 +45,7 @@ enum {
 	NTC_NCP15XH103,
 	NTC_NCP18WB473,
 	NTC_NCP21WB473,
+	NTC_SSG1404001221,
 	NTC_LAST,
 };
 
@@ -58,6 +59,7 @@ static const struct platform_device_id ntc_thermistor_id[] = {
 	[NTC_NCP15XH103]      = { "ncp15xh103",      TYPE_NCPXXXH103 },
 	[NTC_NCP18WB473]      = { "ncp18wb473",      TYPE_NCPXXWB473 },
 	[NTC_NCP21WB473]      = { "ncp21wb473",      TYPE_NCPXXWB473 },
+	[NTC_SSG1404001221]   = { "ssg1404-001221",  TYPE_NCPXXWB473 },
 	[NTC_LAST]            = { },
 };
 
@@ -671,6 +673,8 @@ static const struct of_device_id ntc_match[] = {
 		.data = &ntc_thermistor_id[NTC_NCP18WB473] },
 	{ .compatible = "murata,ncp21wb473",
 		.data = &ntc_thermistor_id[NTC_NCP21WB473] },
+	{ .compatible = "samsung,1404-001221",
+		.data = &ntc_thermistor_id[NTC_SSG1404001221] },
 
 	/* Usage of vendor name "ntc" is deprecated */
 	{ .compatible = "ntc,ncp03wb473",
-- 
2.31.1

