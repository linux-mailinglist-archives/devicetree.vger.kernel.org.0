Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 183F73C922
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 12:41:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387657AbfFKKlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 06:41:04 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54662 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387578AbfFKKlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 06:41:04 -0400
Received: by mail-wm1-f66.google.com with SMTP id g135so2377347wme.4
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 03:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IyhckBm8THgO1AcZvtqNCZU3xMQ1j3cGrqaXKQ6WbdI=;
        b=OQg8KvQSnrphvOofdMTtzsvKGujUIWuYj1y2jJhYsUUJnfc5YvjQgj63rr2m+LiIt0
         3imTNZNG8Lci6WAr050UBiTC4xMuRbvBbLj+OzRZF+ZVxes6Rnd6qJSqEi47ylZsZNTz
         1bnnmMNh2VzawyKTFMnAQlX0NUbhTQvCyHYk+rrbOLjynzdhyjYgGudPPu2b5peh6e/W
         WIsWRIui9pT1KXuRPLflunZh5bFKClaFLv7JiUcjVXlhis1ALkbflrNmW51Y/e651F1L
         xhPAnH8+HBGsLGLVOsysHnb4om4QXPLAeLhS+oCmug5bI2VDO5u19U0uMJotsJxch5ak
         Ej/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IyhckBm8THgO1AcZvtqNCZU3xMQ1j3cGrqaXKQ6WbdI=;
        b=f92zX/3K5+AN2kt6D/Oq547tNzyg6SJ7IDrH6h9E51j4LTGSOmgX2R47h9Jc5u4DUM
         w9sdTDmSReorws5hLl90Oh5tmCsiUGVP5yyKCXTNj8hAeq5bcKiCk4iDX1TpgSJ3PgJU
         h8/kNjxM0oBnpWBO81hrTYLQSP1LPGd10RtuGeITkN2Tfoo/CROcNF7Dv4VEFTrzpUm6
         A0ZkP1ey8Go5epaACC4uz/YoOXy+l13Cltcwe2CPfrEkb1P/Q5IwQGEz1cUybZHv4F2j
         q8MF3r9ToVYDkuP3XiY8d9hQMUlazQhL9zKH97noTe4PSuY4IsUZnsQSFMqMywjiZ84V
         gj7g==
X-Gm-Message-State: APjAAAXQWnEDmtLIB9AMf083w7K5t9ALsRjkgw2iNKRQYPyINpUzSI20
        lhRmUgmK7IavJW74sqfMHliRoQ==
X-Google-Smtp-Source: APXvYqw7U0OrxR281JBKNtGwW3T/tVCMLH0nKEqT8RKrvVAJtAC3Jt3/37FtCPWSnQMDlSVb6GPB5Q==
X-Received: by 2002:a1c:6242:: with SMTP id w63mr18506760wmb.161.1560249661813;
        Tue, 11 Jun 2019 03:41:01 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id c65sm2359614wma.44.2019.06.11.03.41.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 03:41:01 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        bgoswami@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 3/5] soundwire: add module_sdw_driver helper macro
Date:   Tue, 11 Jun 2019 11:40:41 +0100
Message-Id: <20190611104043.22181-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611104043.22181-1-srinivas.kandagatla@linaro.org>
References: <20190611104043.22181-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This Helper macro is for SoundWire drivers which do not do anything special in
module init/exit. This eliminates a lot of boilerplate. Each module may only
use this macro once, and calling it replaces module_init() and module_exit()

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 include/linux/soundwire/sdw_type.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/soundwire/sdw_type.h b/include/linux/soundwire/sdw_type.h
index 9c756b5a0dfe..aaa7f4267c14 100644
--- a/include/linux/soundwire/sdw_type.h
+++ b/include/linux/soundwire/sdw_type.h
@@ -16,4 +16,15 @@ void sdw_unregister_driver(struct sdw_driver *drv);
 
 int sdw_slave_modalias(const struct sdw_slave *slave, char *buf, size_t size);
 
+/**
+ * module_sdw_driver() - Helper macro for registering a Soundwire driver
+ * @__sdw_driver: soundwire slave driver struct
+ *
+ * Helper macro for Soundwire drivers which do not do anything special in
+ * module init/exit. This eliminates a lot of boilerplate. Each module may only
+ * use this macro once, and calling it replaces module_init() and module_exit()
+ */
+#define module_sdw_driver(__sdw_driver) \
+	module_driver(__sdw_driver, sdw_register_driver, \
+			sdw_unregister_driver)
 #endif /* __SOUNDWIRE_TYPES_H */
-- 
2.21.0

