Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B42866A1E8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 07:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726631AbfGPFnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 01:43:43 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:39080 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726603AbfGPFnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 01:43:43 -0400
Received: by mail-pg1-f196.google.com with SMTP id u17so8846619pgi.6
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2019 22:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N6toVwyA6tljYKwbAO1V3W75btj77jauRdKoxprg6Cc=;
        b=nYAAjE2Wjz9f5uoxv9TENtzxKfST3pEPboQwrAquJN4kDGPInxplURjmyQJXRLgxoG
         XphA29mOn+0leg059GSj/3ep6JXO3je09vToMdgjhickm4MjNxA39rA6iGcTVAINdnSs
         2celxbKTtZrr4babweV/hWw9MNY8iRMxk1UOjqE0C4c2cnPygwT94LnQA1uAy7aNynZz
         TCUn3m7hcLJvzjM8Z1MaNvgSejVhVV8f+ZGEuZa13FjLEh41JryT8OgpnQhg5mdLakUl
         8XuQxfWSYlyXjdztVLR4oVWPhNJdEpCjf5zRIkzd/iddbtHBRrZpUR8RsWL0IQ26a1Lo
         VKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N6toVwyA6tljYKwbAO1V3W75btj77jauRdKoxprg6Cc=;
        b=U4dVKe17Uggvki2MsdAKnAwKiRlLR5QsUnKXnuebD/vrPrO7RK4BhJa6vbcomZhG3R
         pRbQyucMvDEMu70b40m1Ll9Bu1wXq9CAllRBzqvke6Mx4fBeLuZYdl/zuuOKEGF3vyM/
         BIjW4BTjR57HWdKYl/f05dbnR8AE3k/A4O8BaGD5+zLFbpQRJU7R0DQINFkwFiHHcE22
         VA6JE0zQRWFyK98DU0avY6q6frDW7qvmEhHJT73XQIwhgBu3EJC1Crf9QvMpXm+7Oz+c
         5NLt3u5J/WLN9NZ99hMgFhKj372d1iKmVLfIXY6nBqI9Q6eyVd34qYvAVeTL/YVaflAr
         OkoQ==
X-Gm-Message-State: APjAAAW0izM3qjtENFtSD5y1ZbZu+bQv/y9LV7+VESjHTw6ZY1U9OKAN
        NujzpbfCpguB07vkdfdY5lQx2lq+
X-Google-Smtp-Source: APXvYqwQGAMT2vHetBNbE7cr+VrkF0OUlYwDJ7LNuVOiVoVajuFw62MWh2Rf9kmNxPwQg7RpGM5lSg==
X-Received: by 2002:a65:5a42:: with SMTP id z2mr31934038pgs.421.1563255823062;
        Mon, 15 Jul 2019 22:43:43 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
        by smtp.gmail.com with ESMTPSA id f15sm2060691pgu.2.2019.07.15.22.43.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 15 Jul 2019 22:43:42 -0700 (PDT)
From:   Nishka Dasgupta <nishkadg.linux@gmail.com>
To:     pantelis.antoniou@konsulko.com, frowand.list@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: [PATCH] of: resolver: Add of_node_put() before return and break
Date:   Tue, 16 Jul 2019 11:13:30 +0530
Message-Id: <20190716054331.2775-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return or break from the middle of the loop, there is no
put, thus causing a memory leak. Hence add an of_node_put before the
return or break in three places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/of/resolver.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
index c1b67dd7cd6e..83c766233181 100644
--- a/drivers/of/resolver.c
+++ b/drivers/of/resolver.c
@@ -206,16 +206,22 @@ static int adjust_local_phandle_references(struct device_node *local_fixups,
 	for_each_child_of_node(local_fixups, child) {
 
 		for_each_child_of_node(overlay, overlay_child)
-			if (!node_name_cmp(child, overlay_child))
+			if (!node_name_cmp(child, overlay_child)) {
+				of_node_put(overlay_child);
 				break;
+			}
 
-		if (!overlay_child)
+		if (!overlay_child) {
+			of_node_put(child);
 			return -EINVAL;
+		}
 
 		err = adjust_local_phandle_references(child, overlay_child,
 				phandle_delta);
-		if (err)
+		if (err) {
+			of_node_put(child);
 			return err;
+		}
 	}
 
 	return 0;
-- 
2.19.1

