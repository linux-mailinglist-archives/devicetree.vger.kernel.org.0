Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 723E92505F
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 15:33:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728320AbfEUNdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 09:33:25 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:43302 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728319AbfEUNdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 09:33:25 -0400
Received: by mail-pg1-f195.google.com with SMTP id f25so2065630pgv.10
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=MihmeJoI2Kctk0t4cBE6oHsC3/eL4jMiONd0z9ECsi8xF1h36S2fBIAYttGJ+D/VR6
         lqUeTum/ne1zyIfAWGp7YIF0hAuqw9Ru6Ee9KOw4M6h1fHcU4CtUeCPLTrt+ESAkZDbz
         EBvXNPjJps5LmyKDeUtSTeh+zfNLZnSFKAsV6P3uiaN5nQ9DXL/+28bW7LQWUN9lPRju
         jNS+d1P3PwHSigIq5bMuDW2bUKSUvzDGM24Wc/2iDlKQagXjw6WGe1SdsZQja2oPT7cL
         GMXoYXJBGLWcysOjoJih56jXxc9nUsTO29getB3MaFyK4NGgHFSSoOZtJQ8ueCZ1LZDe
         sO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=N/nGONrAMQ92Zao6J4DknvIL0qlkUXAnmgG65jtN9EiPdwenkKMNfCUtulP5jIeG6d
         5svuTBIBNQ/MpLkXmD75MMLw/zFqPedtVfLJ7NIcSzkaYlIBflaGv1f8Y5fFCjejak23
         4xnDxqtn+obLDrjxFeHKsJHoZj/X59/p1TH+3SkGWtsuQ7g0n9eGBOJv4RljX9seL42a
         7x1hmOGIoG1DwkF8Fzz4xuCiIGLSsPsYukUHUUzIX0lspKomZppmX+dEDvHTG+0pKehU
         sqkIc4dT6BcCM8/saJzpJc9CsrERRmEoxF45Twh5wDtok+2Y+zXn/mTKLsmuWdthRDa1
         +q3g==
X-Gm-Message-State: APjAAAUzef02YmL5k99zCrUs8mcE+xyF2H51cqrShcoPdu4cE4SYJU01
        zYCv1rqm/YtMeckJBqPD88aJFQ==
X-Google-Smtp-Source: APXvYqxEv2PJu+YRU/OJSvjSo53F+3SPbm1+GyvMmTi3+tv2KXiA05zIWK5yTfHuZpUZZI5bB1e+Mw==
X-Received: by 2002:a63:e43:: with SMTP id 3mr39548393pgo.253.1558445604442;
        Tue, 21 May 2019 06:33:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id d15sm65368906pfm.186.2019.05.21.06.33.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 06:33:22 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
Date:   Tue, 21 May 2019 19:02:53 +0530
Message-Id: <1558445574-16471-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
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

