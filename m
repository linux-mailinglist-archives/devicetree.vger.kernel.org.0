Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C95C97C6C7
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 17:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727546AbfGaPfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 11:35:45 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:51504 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729187AbfGaPfj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 11:35:39 -0400
Received: by mail-wm1-f65.google.com with SMTP id 207so61319181wma.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 08:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
        b=WslNVOJJOckqG6h4DUpirvwvnqcmy+9M5+8dYvKmXJPwRrWZiPJo6I/x0g8HyQpQ9D
         Aa7KMN245ZUr648WNxDMcVk/5ALnaSic0hiu82fiKQ7wg9efPgm1MUO+9PPqqOjtPiKa
         iyhqeccWEHkRjiKa6j+w+5NfuQzqCkS6K+7ZQL1U7NaUl3fR4RsrlZj+NSAA+/aN9FXu
         k7M4t6I3rIl8izUOnLr9my5zNSBsFR8QtflfQib/5almrlmleu30fEd3gaHMhq8VftIp
         VmsMFYg6ZTOu01A4qh356un3Q821YxTWmznUd3veMM9XEX6oU8J0YNGc8yWn/HroMI0b
         fwrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
        b=Rrk0OO3ps3IOFLOpIoJq5hVGv9JoD6N3ZZm6RTsCKiq7pZij0Kvl+0i6QceM1P5fef
         iL/2Umxys1gSVXC9C+jjuTggKdgBcMwZP2MlND+GH8dkmpL+V0zfXEYIySJuhH9vig80
         LMZ7kRw6HsLqgggX88SdPmIBNt5bY3vRfp3V76w94D5oZrAgFMFkhoqH5llz3ZJvfdID
         l3szMOGCPgKbljDR9z6vUKz3UnaAwL2kxi8TooU4GkR7yNFS67GYqE2Axj8oFeEnWiTZ
         /BLzPsSza1SFEEEybvFUv+weQpKYBqnWaJllMkV5VJqs2CKDTsRpPffM2AKP5sZturJB
         V4Cg==
X-Gm-Message-State: APjAAAUbnaZYRVPXG4rUIvN9mlnAYwbckDGseiAziNRR/EqnYpg8Pbob
        dc4JsARUtyQsG4zKiR4xCLKKEg==
X-Google-Smtp-Source: APXvYqx/2w4qexmNS3QtNNLbJZY+VWEyXJDKlHfgNsPNm/cMZzoKbM5oOF3POVTExmO2V6vkElbleQ==
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr110767934wmh.63.1564587337837;
        Wed, 31 Jul 2019 08:35:37 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 08:35:37 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/6] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Wed, 31 Jul 2019 17:35:29 +0200
Message-Id: <20190731153529.30159-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731153529.30159-1-glaroque@baylibre.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer for Amlogic Thermal driver.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb2b12f75c37..299f27d11058 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15910,6 +15910,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL DRIVER FOR AMLOGIC SOCS
+M:	Guillaume La Roque <glaroque@baylibre.com>
+L:	linux-pm@vger.kernel.org
+L:	linux-amlogic@lists.infradead.org
+W:	http://linux-meson.com/
+S:	Supported
+F:	drivers/thermal/amlogic_thermal.c
+F:	Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+
 THINKPAD ACPI EXTRAS DRIVER
 M:	Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
 L:	ibm-acpi-devel@lists.sourceforge.net
-- 
2.17.1

