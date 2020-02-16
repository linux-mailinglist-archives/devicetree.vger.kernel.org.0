Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 31FCB16017A
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2020 04:11:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726652AbgBPDLi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Feb 2020 22:11:38 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:45318 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726634AbgBPDLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Feb 2020 22:11:38 -0500
Received: by mail-pf1-f194.google.com with SMTP id 2so7035721pfg.12
        for <devicetree@vger.kernel.org>; Sat, 15 Feb 2020 19:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4IurElQdFvPC+/LWrawVEzBSutkHfaHW4YHKUExtECo=;
        b=OdaEGu8UaT0nfCoYa8y0buTZsB+qFnCdan2qxyKbN9qOUts306Ll04w5KORGUFhhYb
         FG8IcNMe+i9RpSjST6E2pFeqXa5uCWRFM/lu2poHLos1TZjLxBFBWbUPXWle4VEaly/c
         zYCPeqgkEydJob7Adu/hD8l/1xP+E/814nAPV0oKr7MsVGkOgEGxiUv6fJcYKe4Whhls
         bzWX4mahwN2Q7rxntgaT/zmSUa/ooDP2kMVK+p5SXQv7kxRCBuqgkpFqRBs4SJemGyCA
         1c0bV5nXt7/fbdBXzu1UhfnG8lSs3IfJZQQsFzKwwhBid6Vpkmc/wU0/PaYuvplWJJvV
         7ClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4IurElQdFvPC+/LWrawVEzBSutkHfaHW4YHKUExtECo=;
        b=saPD3ubtJHlUC+fld6XSLZZdczbD0aKZjIpGOhAFRouw1bVh7wrPJavc+YVD9+Kt2G
         d/puDKFskAZKA2bGMy8zYp3/LsmOUbM12hBYdt9yrR5x8cBPOcDLVoA1NEZm8d9ce/cz
         /LlFbFFvcNrSqYJey/OCWY6SCwcxtAwFdElcr1IukZrrK67tllgIqi1qDwBiP03iDDsM
         qD/EwPDSHBDGdvF29/rgtHE4KiZZ3/c54s9Hy8g8P3IATkBM76PAli6enQJj1RH3wQDx
         Ed38T2EQMmYvoxkgGbeLnH7urqR92ZW4gx+Gd0CilrQASXwORGcg7Ka2mpTVrIj44twB
         aY7Q==
X-Gm-Message-State: APjAAAXxCX/2px6eG/mehg61IkOyitfBqtJNNRltJYfjB5zOL5XsbRJ+
        5dFDKig/sMrpYVGEPd3ouPk=
X-Google-Smtp-Source: APXvYqze3MpvB4LMhxffD+xuPIz+yoZbmR97xDl9oWKB97jBUYfgnFBxfRykFvX0MmlOZ2+XTkPz7A==
X-Received: by 2002:a63:7e5a:: with SMTP id o26mr11144285pgn.117.1581822697992;
        Sat, 15 Feb 2020 19:11:37 -0800 (PST)
Received: from localhost ([43.224.245.179])
        by smtp.gmail.com with ESMTPSA id 70sm11786274pgd.28.2020.02.15.19.11.36
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 15 Feb 2020 19:11:37 -0800 (PST)
From:   qiwuchen55@gmail.com
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, chenqiwu <chenqiwu@xiaomi.com>
Subject: [PATCH] of: kobj: fix unreasonable pr_warn() in safe_name()
Date:   Sun, 16 Feb 2020 11:11:33 +0800
Message-Id: <1581822693-5308-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: chenqiwu <chenqiwu@xiaomi.com>

safe_name() tries to find a non-existing name of kernfs_node
by sysfs_get_dirent() no more than 16 times.

There are three possible results when while loop breaks:
1. i = 0, name = orig_name, name is safe to use.
2. i > 0 && i < 16, name != orig_name, name is safe to use.
3. i == 16, name != orig_name, name is unsafe to use.

However, the original code consider 2nd result as unsafe with
a unnecessary warning message by pr_warn(). This patch can fix
the problem.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/of/kobj.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
index c72eef9..b32cf55 100644
--- a/drivers/of/kobj.c
+++ b/drivers/of/kobj.c
@@ -52,11 +52,14 @@ static const char *safe_name(struct kobject *kobj, const char *orig_name)
 	}
 
 	if (name == orig_name) {
-		name = kstrdup(orig_name, GFP_KERNEL);
-	} else {
+		name = kstrdup_const(orig_name, GFP_KERNEL);
+		return name;
+	}
+
+	if (i == 16)
 		pr_warn("Duplicate name in %s, renamed to \"%s\"\n",
 			kobject_name(kobj), name);
-	}
+
 	return name;
 }
 
-- 
1.9.1

