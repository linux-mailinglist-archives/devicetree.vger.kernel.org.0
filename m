Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72FA4314BE
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 20:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727261AbfEaSay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 14:30:54 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:38564 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727256AbfEaSax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 14:30:53 -0400
Received: by mail-pg1-f194.google.com with SMTP id v11so4485712pgl.5
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 11:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=YwsYh5oJQwEPe3fUMLgYt42UUuHz8TcbW/5SHOSf0IySNNotnBLz6Ncn/XYSUY0lvR
         ehqPrkRrKLNcnGatvl7u/qtHnXUv79GA7hpq0fS+e0pHN2HIQ2XKgPwEtVhWuc+I3rkg
         t4lrlx+nsVcuz1d00TbZ+R/qzKQKNiQ5zy/PkSZDogcb1sT60aJcZPcXHitPzI0MLVzp
         OrC442BKu5YfjC6QmsV0cGLa/+ZjxFmlSF3iDQFzy9gDnH7249MzwnOwswDGrsD4O9i5
         Ew/m3oI79+XGy3jNNLkKi3x/EIdY8tp+v2fQLSVoi0kJcHm60szzVxh2VtaDAby5CZI0
         Y+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=eiLHd3XX+/WZZPwVdJXdy5Nk4LZbYUj6w+750lddbQpnW7tr13EoLTbIxteImUC6ci
         K9J1k9JgA3u0TZbHXJ0xSRi9o7O4j7c+gqdZwA9vEgVPH4FLudFIDbbX3LcS6jYyeo1o
         aubM7yzLpSe2KiMynnH2vCvQUReOmbsQmXNqpIsoERr+RtqMNaGtNk2fJFYphyP3NgRw
         87v4tYEEsAvCsi99AIgpUMo4Bcj+A/E871YA/jZO2uTEcIIpkZYdHHBdRuYoefJ1pvQ6
         Hg7cW8VK+pTGrO8Lg5MmKW4wPievw7xMinv/+TZ2EQolfnEvtyTGyMaynabYS2YppyME
         xIEA==
X-Gm-Message-State: APjAAAUOe11/libhLmw2QRZ/j/5+dT9mbWlyRziomrGvHBL+LvNHzAVq
        d0oTdyHPWbH2brNLpqNV2UfQkA==
X-Google-Smtp-Source: APXvYqxIXDnKCINPiPDUYB1592TeW9iGXZ+g+jZRRRPmdxLoYPiJ/NXv5iEiJLIhCXbPsgQ9QQWm8w==
X-Received: by 2002:a62:6241:: with SMTP id w62mr12176429pfb.226.1559327453352;
        Fri, 31 May 2019 11:30:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id 85sm10039511pgb.52.2019.05.31.11.30.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 31 May 2019 11:30:52 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 2/3] i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
Date:   Sat,  1 Jun 2019 00:00:22 +0530
Message-Id: <1559327423-13001-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
References: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update device id table for Opencore's I2C master based re-implementation
used in FU540-c000 chipset on HiFive Unleashed platform.

Device ID's include Sifive, soc-specific device for chip specific tweaks
and sifive IP block specific device for generic programming model.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index c3dabee..b334fa2 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -82,6 +82,7 @@ struct ocores_i2c {
 
 #define TYPE_OCORES		0
 #define TYPE_GRLIB		1
+#define TYPE_SIFIVE_REV0	2
 
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
@@ -462,6 +463,14 @@ static u32 ocores_func(struct i2c_adapter *adap)
 		.compatible = "aeroflexgaisler,i2cmst",
 		.data = (void *)TYPE_GRLIB,
 	},
+	{
+		.compatible = "sifive,fu540-c000-i2c",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
+	{
+		.compatible = "sifive,i2c0",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, ocores_i2c_match);
-- 
1.9.1

