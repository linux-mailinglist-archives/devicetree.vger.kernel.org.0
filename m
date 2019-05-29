Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 431BA2D4BB
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 06:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbfE2E17 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 00:27:59 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:37294 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726055AbfE2E16 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 00:27:58 -0400
Received: by mail-pl1-f194.google.com with SMTP id e7so252pln.4
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 21:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=SCunRLc4T0rNk+sSZV9/Xml+fAJUPREjBlQu89pZCipHWUR6B+SVrumnSlUAFodgr/
         /+ouQN5p7X6JofF86wPXAkN1N+QPSaK2irANBHSJawDb4noqMbmnXUFyQ9OzigQy9uTv
         4gI/CMvTfcABsG8DTmgRMLKa/zmITDwOxUyWpsU0ZANP+fsVAO2gqFzonXdIbaOjzmII
         rZDSKKIVNDKP/S5rp4hleCbStov7sYu1mdxgWlFvjeLHH5sRlsbCQ5XaYfcemwTIDJ9p
         II8VFmtwi8k0eDucVVWmpEasuvmH1rKx/wNKLerI5FJhzgCKkJlfknFR/q5jqFLlsWOE
         0TRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
        b=FtQ/L59e27Z6p6mKm62QmsvffSpX5dKMEYYYw788UMqpf8Ve8a4PDthvA5XL6isAS7
         R/Bhk3n7VvHCh+Le2xl+nr0OqgUYon89HIjEKryyYH0rtcJb06m7fBe6pOy/mrPIoLBt
         Pi+mfGLi+zUsRmUH+TxoUW+q/954LbnQ+KT/SAh/7YC5xT94mOHF69xpco11aobIdnko
         +1JrmCRkoQFuKgZl2XCFNBPXOBf7Vc48mEekaqO1gihE0DnVSNS4v7ik3LzDjhAki2N2
         eTNPNWcz9GHWhm1jPJKvFhlaK5cfuhAYmRM3gmU6/HmLByY6PTyWtCgkh96dP9ixQJcd
         4+nA==
X-Gm-Message-State: APjAAAU+f5/3nImVYuRpXh/L52mY4iyruhIfsQ+rXgAjGnQcw4nV0o27
        pCVAej0fBXN40RLAx0mvuPHEAg==
X-Google-Smtp-Source: APXvYqx+J/LVDOtRKJD6vV3CguLJwpznGJEh2qKtm72f8Qx+c6FbWQyMgSIZL6tuCUCLJ61wz2qm+Q==
X-Received: by 2002:a17:902:8648:: with SMTP id y8mr4690946plt.30.1559104077984;
        Tue, 28 May 2019 21:27:57 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id c15sm16444591pfi.172.2019.05.28.21.27.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 May 2019 21:27:57 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/3] i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
Date:   Wed, 29 May 2019 09:57:26 +0530
Message-Id: <1559104047-13920-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
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

