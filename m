Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 04623115032
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2019 13:15:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726140AbfLFMPi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Dec 2019 07:15:38 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:35148 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726116AbfLFMPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Dec 2019 07:15:37 -0500
Received: by mail-pg1-f196.google.com with SMTP id l24so3247161pgk.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2019 04:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tmDTvyzKJN4BGK5XnUkDqSs/fhNmeYuQgBZlLT7FtnI=;
        b=nca2zetfYQvgjmDlvB9Gvi3IHUI3dpqmCkaIW0tq4rl+gxdSYGQdrqMG4Vi4t1jVXY
         cpXuA0Xncog+iRhm96XsKuQN3UZSSOKXMmIhzmRMgGual704TCnoxpaDysaLAzVjbmiV
         ywraly3o7N3FRaAXu4f9zqBMx5UMQg7JX5K7tLhP1UF1JfVuiQwSTKHwK6dn6lGdI74Y
         J48NDoEZnh8+AuTzjHzTX02Dbhmginr5Qdh2OTUTsNGodWz/BywUa3EJZzBlIIuGz6ge
         xfOcWuExBcyGbAxOEKP8JGsq7zjDuYQTyOfGrsx1jen0m6ypCy414ZzFwPM1nanvterW
         9SIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tmDTvyzKJN4BGK5XnUkDqSs/fhNmeYuQgBZlLT7FtnI=;
        b=I/eEnY71IoHVvbRYEX4yepl4vJnCGht+vz8WUtV8TKE7dy21gnU8OR0fd8OFfsxGa5
         65Y9GPmw9F8zd/Mq7kItxssprMyTXaKJk40CpFuvnNgFAJHWwlrzQ+dyc62t9AiiGMxS
         ygiIhGU8ZtGtOD6fS60Yakdffr/lkAhlVv3iyCrSc99wAxEkhZqeWQs+xWGQqvWrpsNd
         1XdJqD/W3QZBbozeHBx/mut3q/zA2qAP/syAPxbEuTkIWuXLiKqXNldg569iWp1GBab6
         kJp3shjppWzUi15Go3+1z6ueFvDF/Pw1NpGCGJQ/dOiZDfePykvk1MNhXj6VwlTsNgcF
         lbIg==
X-Gm-Message-State: APjAAAUlgSqikzVN2qqtLJy6UlaUprzj0yyvWBGk3h4ZpGo5NboVHQf+
        5k2DcSVAMzmcr2XGZVAIvTY=
X-Google-Smtp-Source: APXvYqygVbryWDpy1D5RQQVRbypDf1CRBuFnEUPzmkXWiAh+8s93wX30oBEEctD45aQIhxBeI/sN/Q==
X-Received: by 2002:a62:545:: with SMTP id 66mr13841836pff.1.1575634537276;
        Fri, 06 Dec 2019 04:15:37 -0800 (PST)
Received: from localhost ([43.224.245.181])
        by smtp.gmail.com with ESMTPSA id e27sm16705998pfm.26.2019.12.06.04.15.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Dec 2019 04:15:36 -0800 (PST)
From:   lijiazi <jqqlijiazi@gmail.com>
X-Google-Original-From: lijiazi <lijiazi@xiaomi.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     lijiazi <lijiazi@xiaomi.com>, devicetree@vger.kernel.org
Subject: [PATCH] of: increase readability when reading prop through sysfs
Date:   Fri,  6 Dec 2019 20:15:32 +0800
Message-Id: <02bf81614fd5806fbdb8e58760f424adeee3fdc6.1575611847.git.lijiazi@xiaomi.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace '\0' with '\n', output will display on a single line.

Signed-off-by: lijiazi <lijiazi@xiaomi.com>
---
 drivers/of/kobj.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
index c72eef9..c776610 100644
--- a/drivers/of/kobj.c
+++ b/drivers/of/kobj.c
@@ -32,8 +32,18 @@ static ssize_t of_node_property_read(struct file *filp, struct kobject *kobj,
 				struct bin_attribute *bin_attr, char *buf,
 				loff_t offset, size_t count)
 {
+	ssize_t pos = 0;
 	struct property *pp = container_of(bin_attr, struct property, attr);
-	return memory_read_from_buffer(buf, count, &offset, pp->value, pp->length);
+	pos = memory_read_from_buffer(buf, count, &offset,
+			pp->value, pp->length);
+	/*
+	 * value is ends with '\0', so if read prop value through sysfs, the
+	 * output will be displayed on the same line as the shell prompt.
+	 * Replace '\0' with '\n', increase readability of output.
+	 */
+	if (pos >= 1)
+		buf[pos-1] = '\n';
+	return pos;
 }
 
 /* always return newly allocated name, caller must free after use */
-- 
2.7.4

