Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C5682BBC1D
	for <lists+devicetree@lfdr.de>; Sat, 21 Nov 2020 03:06:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbgKUCD6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 21:03:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727128AbgKUCC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 21:02:57 -0500
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com [IPv6:2607:f8b0:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA39C061A04
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 18:02:57 -0800 (PST)
Received: by mail-pf1-x44a.google.com with SMTP id z68so8363422pfc.0
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 18:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=u8gSY0xV7Hxd2w8NGW6IzppBe4J1ijRyucJg3LQF0Gk=;
        b=fsbK5xxw4z7i23FSKugbrasJEIXN13Q4zN4isokluNuL4HjEO/jGHpCycjM7g9sfqR
         +kbOqa7qcSGga0Lm/F27nYxTNhPX4fRgh4Mf9+oYz6aUhraA4s7J5QNNMCxQsLKJfiu6
         hO9xCcF+bjceWP/4mkj62eK+d2GhPUnH8ipvjoF5lXH5cwi6X4Wyh+5rcJdkI2Y7Mg6U
         iT6tK3+H9NRURvDqYLmMIA70OMrl2Yj+fQCQc8tKeIPW+uVGa3W2KjLifbeHcVbYlj5y
         Q04w/t2ewdvVIWyUrX6OqLnatW7MndjTFeg7RNiUGjOroBN0Dv6izRyJdeVw3DlHXFza
         a27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=u8gSY0xV7Hxd2w8NGW6IzppBe4J1ijRyucJg3LQF0Gk=;
        b=GwBRdeqaafTj2WjmcpWlQYJ+m/GfaD2y8ChGCp2D18J1lcDfZMggPPi7h5kPpBmxfG
         ePwkamz8kIRyI4nwjtfpTggpjcm+yR5qjmKtPxeIu7NUnQUAvrBpAnNsTAAbaAXuSNam
         mFE8RlBNZ8HfabJShJxKZzAuqtT1kWqUqz8N612ZsSAWHBGseWwj8fcvu3OJLics+XVV
         0nzE8ASdzLt6tbi4ox9MjR9ZjpBDLeY1vJCcROKAtfXIjsYZgIoEcmBP5zD1qXrQNiAZ
         YL3spvgve6mr/qosc9f8FB2F3EZlPuA/CPkSI6mwQvz9ttqfG5sWXUWUVmQ+EXtjGZ+z
         qIIA==
X-Gm-Message-State: AOAM5310ezUnzIYHd92g1uNDVD2qsnLtLYgMQKUXgVCBppNM/vX908b7
        QiJnGwsuAxZ2jDHxawn/Nsv22vRaIO2X8Aw=
X-Google-Smtp-Source: ABdhPJzP83DwhORfMb+bJuQz5UmJs3XebCnI6uLqfDOyEgb2ymxIPPeS7NMxGqPYiMO5s4yUrfepUAr2i5NMiTs=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a17:90a:f28e:: with SMTP id
 fs14mr6235679pjb.91.1605924177080; Fri, 20 Nov 2020 18:02:57 -0800 (PST)
Date:   Fri, 20 Nov 2020 18:02:20 -0800
In-Reply-To: <20201121020232.908850-1-saravanak@google.com>
Message-Id: <20201121020232.908850-6-saravanak@google.com>
Mime-Version: 1.0
References: <20201121020232.908850-1-saravanak@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v2 05/17] Revert "of: platform: Batch fwnode parsing when
 adding all top level devices"
From:   Saravana Kannan <saravanak@google.com>
To:     "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Saravana Kannan <saravanak@google.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        kernel-team@android.com, linux-acpi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 93d2e4322aa74c1ad1e8c2160608eb9a960d69ff.

The fw_devlink_pause/resume() optimization attempt is getting replaced
with a much more robust optimization by the end of this series. So, stop
using those APIs.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index b557a0fcd4ba..79bd5f5a1bf1 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -538,9 +538,7 @@ static int __init of_platform_default_populate_init(void)
 	}
 
 	/* Populate everything else. */
-	fw_devlink_pause();
 	of_platform_default_populate(NULL, NULL, NULL);
-	fw_devlink_resume();
 
 	return 0;
 }
-- 
2.29.2.454.gaff20da3a2-goog

