Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D17913170D8
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 21:02:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232859AbhBJUBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 15:01:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232824AbhBJUBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 15:01:34 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B47C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 12:00:53 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id d8so3723705ybs.11
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 12:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=nAWyJ+zxkv0LYbUQRaRKMv3uecWVrQKPIIyiCbLAoxY=;
        b=aYx2s5uTYXvURxGfXo2FePoZlMBgiLhXFh8iGW6wYkkIIEVjBdHHE5Bmr+zKX5LqVE
         sXAE9oLKNYAF6Eo3GNppSO3S8wL5KoL43p4Utf1urdr1Cx8BiVzYlT3vitvVq1VO2dZZ
         vFY51evq5GqIQdt3BGAiNWVi5v8zJzrJB9B8M6oUfSmcW2y7h2YHsrwLpC0D6cGeiCh7
         sirmlE9KYu4PaWV/84XvvlDexO0dBEQQmKomiGUeKKwIMcJsoJi75xodus7bGArPlXPp
         iwsPzZ2jQNs3SOeStu+4Q9xrITQ+FBJ0ZwwRKreYP/JKJZJNENb5olCjsrV/ebSFuG8O
         bmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=nAWyJ+zxkv0LYbUQRaRKMv3uecWVrQKPIIyiCbLAoxY=;
        b=V+HZ71DHVMXgqbgmShgrR/Hl4c9yeDjPA0EYMndICQ+wni87CJijuK67GASeb9yYbL
         CWPmtcdeQLRCCetw1Tdbd9bnOLD16BrDyQSxEWKLi1RJuJUtSVwwmxAopX7tAby6NIx8
         3vrEOLY7/lQIysbH6fIDqZCHxFGDmEWwzUlQiJGrJJwtcEMYwKJr+ml9B89xhnrMCvCt
         OD3zN0CIW70RlZyiYg3JDo0U4XjFCIjCLxi1JqEHVkwA3hpV9LlW6NNk+UGeY8TQcLmM
         b1zwXYh/ycKaATHCh9so8+wT+h8AKFFk92qrmfaIxchPa77suJ8K1x2FxFEbVA6q3DtG
         uVSw==
X-Gm-Message-State: AOAM5322ZdVOkUa9wSgFPVOxiJsM1XjSXG4uYle5cm6tWQR+/ddgQofr
        2FsJCMrRpZuKKbOiiFmAJgu0fBJ/5iord7E=
X-Google-Smtp-Source: ABdhPJwmVag+wQKQjAADmpTdq761ecbwOkwNmoZOkg6ITLu+atzaYLx1Kpp0+J/C5kPa7r7f66aTWjvXw0sVbVE=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6d2c:28df:85a5:da6c])
 (user=saravanak job=sendgmr) by 2002:a25:9b88:: with SMTP id
 v8mr6980038ybo.338.1612987253194; Wed, 10 Feb 2021 12:00:53 -0800 (PST)
Date:   Wed, 10 Feb 2021 12:00:49 -0800
Message-Id: <20210210200050.4106032-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH] of: irq: Fix the return value for of_irq_parse_one() stub
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When commit 1852ebd13542 ("of: irq: make a stub for of_irq_parse_one()")
added a stub for of_irq_parse_one() it set the return value to 0. Return
value of 0 in this instance means the call succeeded and the out_irq
pointer was filled with valid data. So, fix it to return an error value.

Fixes: 1852ebd13542 ("of: irq: make a stub for of_irq_parse_one()")
Signed-off-by: Saravana Kannan <saravanak@google.com>
---

This needs to go into driver-core.

-Saravana

 include/linux/of_irq.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index f898d838d201..aaf219bd0354 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -60,7 +60,7 @@ u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in);
 static inline int of_irq_parse_one(struct device_node *device, int index,
 				   struct of_phandle_args *out_irq)
 {
-	return 0;
+	return -EINVAL;
 }
 static inline int of_irq_count(struct device_node *dev)
 {
-- 
2.30.0.478.g8a0d178c01-goog

