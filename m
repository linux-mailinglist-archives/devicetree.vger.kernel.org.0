Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE2A83E1EEA
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 00:37:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhHEWht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 18:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhHEWhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 18:37:48 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22A53C061798
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 15:37:33 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2so7600893ybi.13
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 15:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=fL6zL3bgDKoj41fw2amrxGoE022QL9i1/1BBnYTkkEI=;
        b=Jtqz16Tw/vBp/t//5XPLEvXpHhN9QrA4FibWFMOqOropRz6y/dOzKvJxIpuyQJNhtz
         3oV8WU88CA4Fvn13nzOTpWVKZvGeY87VwIQTDJDAaNpqE+ANV38UyzUE/kfMDfORMOfc
         Eyyb4q4jf/sDdCtwR/ima7+0zz3+vkklC743XAZdNAZqE6SgLqJSnvIERfj5krYlNfvL
         ApHRvy2jJHyPOmA+LFody9nILYYqQBH/dPhT0GndygphP1wrK4Cw4z6HWtiP1wYHANKS
         625Tc8fcoSYSpqKQSZBQGyZzf43aIg+rdFVNvfdHkHu2bHi/lviXvy449PJGK8sO1Hfa
         BMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=fL6zL3bgDKoj41fw2amrxGoE022QL9i1/1BBnYTkkEI=;
        b=ri0nov3Jdv97HtT+y6XLIq1WIsCqnMUPs7BJfyj3Rpv9I9uIslg2klIiVKm5De2OfO
         dbtLWGB8bmpCxTctQx4KZXJqvVnQT1R8FiWjUEzSKw+PDSGcyPmGWx4cqtUeScAS0U6u
         NeKDdtJLoUH0JQlFHlUwFzlgYQvzQtWnfhOK6hdnSlh7cjiOndUt5MV/1m1muuIiBnSq
         oDNrmDurNiLD6IrPs+YDA1ICpWSrFPbD0k2a9IVHjxYM3qIyXcA29gYuv1owdSMncrwM
         9FT5yEATdWNF97MMWEVRaFLOsEhT4EEoIWZjPq8mJCz47XORXv7wlDqaPfXTsfqEVVfW
         5J2w==
X-Gm-Message-State: AOAM530cSlB7iFg7Gw/NMAyZs6DQp0C1FpsPROcQmqY1/LAt4U3vX8jG
        R40VcksV731gZIxUmkt7TjCPsXB/23MyQP4=
X-Google-Smtp-Source: ABdhPJxNPooh84jJzmCxPrTdrUh7HEDiT1rUwoJyi/vFJIXI0L1Q/dOxvI+cFAn+XqV1oj73JmigVFLmjiS9I6k=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:1dc3:2174:a64b:bbf])
 (user=saravanak job=sendgmr) by 2002:a25:2985:: with SMTP id
 p127mr8981567ybp.386.1628203053006; Thu, 05 Aug 2021 15:37:33 -0700 (PDT)
Date:   Thu,  5 Aug 2021 15:37:29 -0700
Message-Id: <20210805223729.1196047-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
Subject: [PATCH v1] of: property: fw_devlink: Add support for "resets" and "pwms"
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allows better tracking of dependencies between devices.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 6c028632f425..a81559c5ee2b 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1287,6 +1287,8 @@ DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
 DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
 DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
 DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
+DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
+DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1371,6 +1373,8 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
 	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
+	{ .parse_prop = parse_pwms, },
+	{ .parse_prop = parse_resets, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
-- 
2.32.0.605.g8dce9f2422-goog

