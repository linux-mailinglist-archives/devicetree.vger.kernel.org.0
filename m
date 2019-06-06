Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F28437520
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 15:24:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727456AbfFFNYs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 09:24:48 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:36109 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726092AbfFFNYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 09:24:48 -0400
Received: by mail-lj1-f195.google.com with SMTP id i21so2024711ljj.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 06:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AgdqLQXn+eFsENGi3TGX3m0oH1+i9BXYaFNzwUk2hBY=;
        b=Jv1//QGczOL8PJgA/8yTe+F/gSGzICINohuxCQVRNucqu5hQ6bn7PgtzSeSQOhlMr4
         cCEQkV1jo7lUGqW57t5xMMrPKNO0Wx4bkDWTVHBrycYVQ/X1daYRrJ0j77rjduSmu3mQ
         jJ5AlCPZOByb3x3QbOTvts/hfA/nX1BIzCAz+ySLKT/YYP9ajVfuUsXEwj8mt6P0oiH2
         SUDhb7mVl171rzx+yAtpT0w1K+Jk+QkuYYwHdjSXeMKCObNKY+A2INPsA1hjg0UO4SXc
         0tZmZVds3u3uXFDLj2yeyYA+CK65goKkLuZjHuhoMObcpyN330slrJd6DfN3nhnhWRTy
         2biQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AgdqLQXn+eFsENGi3TGX3m0oH1+i9BXYaFNzwUk2hBY=;
        b=ATUCgOrYAoH1IKHoF/8XCcZMk2MJ32HNysd/uXoq0iKC/r3q1GZ74SlvsKfGPySMEE
         40EXVs9kDjkSMw530OYiOJq3znSAmHZcloTRsohhYGefco7SB9XY9OrSvHPYg8dg9mD7
         etjjVldCnLObW/VSeTqpetjMo+wDI/VGzuJEe+hFGXoLKCnGfsnFhtN+luvUc46AVo6N
         fBW1Iy2DikHjxfkVwvdp2ghprBpzU0q7aCSxOaDrADtw62yhMxIveJJGYGY/gVZUpj5w
         KK2Ps+SIXUqsfQ+dDSG+fQHHKYv/2vqBaMy01+m+8twr8XKFK93eAoMF2a+d8LRpdWPj
         nv6g==
X-Gm-Message-State: APjAAAVQgzh/PaWJr1RrXCp6UPxouimIkUJZ0rgShLoilKPTwdMtotNw
        Faf06N255PU7Bru/odBQ0hU=
X-Google-Smtp-Source: APXvYqxgk8rER+f9lmPOhKSCoUcCstS8fs4nd7WspvhCjtNJa5VUcOM+isChxUcBcyADq7/DKh0JRw==
X-Received: by 2002:a2e:b0d0:: with SMTP id g16mr12359591ljl.161.1559827486062;
        Thu, 06 Jun 2019 06:24:46 -0700 (PDT)
Received: from localhost.localdomain ([217.153.215.58])
        by smtp.googlemail.com with ESMTPSA id t21sm354932ljg.60.2019.06.06.06.24.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Jun 2019 06:24:44 -0700 (PDT)
From:   Krzysztof Michonski <michonskikrzysztof@gmail.com>
X-Google-Original-From: Krzysztof Michonski <krzysztof.michonski@digitalstrom.com>
To:     khilman@baylibre.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     afenkart@gmail.com,
        Krzysztof Michonski <michonskikrzysztof@gmail.com>
Subject: [PATCH 1/2] meson_sm: Extend meson_sm driver to be compatible with gxl chip
Date:   Thu,  6 Jun 2019 15:24:38 +0200
Message-Id: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Michonski <michonskikrzysztof@gmail.com>

Extend the meson_sm driver by adding gxl structure and SECURITY_KEY
commands.

Signed-off-by: Krzysztof Michonski <michonskikrzysztof@gmail.com>
---
 drivers/firmware/meson/meson_sm.c       | 14 ++++++++++++++
 include/linux/firmware/meson/meson_sm.h |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 29fbc818a573..b19489f759fc 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -54,6 +54,19 @@ struct meson_sm_chip gxbb_chip = {
 	},
 };
 
+struct meson_sm_chip gxl_chip = {
+	.shmem_size		= SZ_4K,
+	.cmd_shmem_in_base	= 0x82000023,
+	.cmd_shmem_out_base	= 0x82000024,
+	.cmd = {
+		CMD(SM_SECURITY_KEY_READ,	0x82000061),
+		CMD(SM_SECURITY_KEY_WRITE,	0x82000062),
+		CMD(SM_SECURITY_KEY_TELL,	0x82000063),
+		CMD(SM_GET_CHIP_ID,	0x82000044),
+		{ /* sentinel */ },
+	},
+};
+
 struct meson_sm_firmware {
 	const struct meson_sm_chip *chip;
 	void __iomem *sm_shmem_in_base;
@@ -269,6 +282,7 @@ static const struct attribute_group meson_sm_sysfs_attr_group = {
 
 static const struct of_device_id meson_sm_ids[] = {
 	{ .compatible = "amlogic,meson-gxbb-sm", .data = &gxbb_chip },
+	{ .compatible = "amlogic,meson-gxl-sm", .data = &gxl_chip },
 	{ /* sentinel */ },
 };
 
diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
index f98c20dd266e..9352d35c6e96 100644
--- a/include/linux/firmware/meson/meson_sm.h
+++ b/include/linux/firmware/meson/meson_sm.h
@@ -18,6 +18,9 @@ enum {
 	SM_EFUSE_WRITE,
 	SM_EFUSE_USER_MAX,
 	SM_GET_CHIP_ID,
+	SM_SECURITY_KEY_READ,
+	SM_SECURITY_KEY_WRITE,
+	SM_SECURITY_KEY_TELL,
 };
 
 struct meson_sm_firmware;
-- 
2.21.0

