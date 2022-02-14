Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFD54B4165
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 06:38:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231282AbiBNFhj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 00:37:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238703AbiBNFhi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 00:37:38 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3AD4EA17
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:29 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id q11-20020a252a0b000000b0061e240c8fb3so28230533ybq.22
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=RM7B/VP3RiMIbRxHXAkoswg4A5f1B95tqoOVGTsgT8Q=;
        b=TTbMKvwz6PseJb5lRAXLQiBv75QGAS10Z9JTQyCyZ32BBng4ecFDNGi05LGrA57+Fv
         +cgxTg66+Ae6IeLW50dDVi+h2CZqYrwt9erF1a+Qa3ZqUuQnXUpkEhOLGdZEDsmEtlOD
         aa4oKgzbTO7qdsYuMM9iefxLmoVMihDg2tb+VlAp/Hdb2c5gQwONJz1XJ01Jl5Ln9xl7
         jq4QV7B/naowDN69QoT8aNjnfHnCL5sbZxKazEBN2lAJpA8RKeNzdRDr0T2UqrxznoZr
         FC8aW/1Lq/VsZWV1tzNCy/EIcMbu6uaLKupmhBW6xUQeT0FcH85gsLXHR3nPNvCTJQ4R
         vDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=RM7B/VP3RiMIbRxHXAkoswg4A5f1B95tqoOVGTsgT8Q=;
        b=mpo51wUvzhR0AoJvbxw47yLEtHaCZxUJeEqpsUyer4PdTcQ44qwpWKL9Wp6teuUW7I
         liH0N9z4VXliIVY7gFxsoi0rBeg0n9MONQGE1K3pukMQotGOxiEL5QwzjQAC4/Jw3ysx
         MYM/hfmtCImTea9PdK35jQHy0H+tv154nK4Q7UdGyL4IjsREqQpHvL4M2oI+bXWOB6A7
         6k230+DYKIEB27o6ja4TwSbKhFHEXCnG4wdnxAyt+Y/ESWH7eyNT27m5SBD5Redo8iDC
         T6KCMZrVoP/FmuxqHMGpdLuBh+COp1JxLTRwAUBvMjNrm7RrW8n67VY0YwjiAwNEorDx
         oGmQ==
X-Gm-Message-State: AOAM532/Hj4oVjrZeAArV4h/0pITf+aIj4Eafq4944OeFGJDRmFS5k3h
        Rl9Zxknv1WQpJCEf9L616IDkMuFdg9x/
X-Google-Smtp-Source: ABdhPJx+13Gw/OOKY8khKfw7V8FFpvA8xTR4gZkToZpRpsfvFKIV+UFm7cr8RGYsxDkI86AyD9bMelqUh6+q
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:f315:f92d:e3d3:2539])
 (user=tzungbi job=sendgmr) by 2002:a25:e705:: with SMTP id
 e5mr786251ybh.216.1644817049075; Sun, 13 Feb 2022 21:37:29 -0800 (PST)
Date:   Mon, 14 Feb 2022 13:36:42 +0800
In-Reply-To: <20220214053646.3088298-1-tzungbi@google.com>
Message-Id: <20220214053646.3088298-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20220214053646.3088298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
Subject: [PATCH 1/5] platform/chrome: cros_kbd_led_backlight: sort headers alphabetically
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org
Cc:     chrome-platform@lists.linux.dev, tzungbi@google.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/platform/chrome/cros_kbd_led_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/chrome/cros_kbd_led_backlight.c b/drivers/platform/chrome/cros_kbd_led_backlight.c
index aa409f0201fb..f9587a562bb7 100644
--- a/drivers/platform/chrome/cros_kbd_led_backlight.c
+++ b/drivers/platform/chrome/cros_kbd_led_backlight.c
@@ -4,12 +4,12 @@
 // Copyright (C) 2012 Google, Inc.
 
 #include <linux/acpi.h>
-#include <linux/leds.h>
 #include <linux/delay.h>
 #include <linux/err.h>
-#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/leds.h>
+#include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-- 
2.35.1.265.g69c8d7142f-goog

