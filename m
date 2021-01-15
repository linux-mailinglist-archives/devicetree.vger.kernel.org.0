Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59D2A2F871F
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 22:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388776AbhAOVCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 16:02:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388772AbhAOVCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 16:02:43 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3AA9C0613C1
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 13:02:02 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id n13so9213975qkn.2
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 13:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=HxQUFzxtkBI9IE2jZdisE7OWgiNmHacDc1aIpJob93c=;
        b=fcry9Lnx+lFYwZJOSIFilMZOfFjtLVaUyqSqSmrqaaSK6S56bQsgMZmazbos/VfW+t
         Bbm50u3Wh9ltZLSmEp5iioaxhc6efP45gT8eUmffMrrz/zt93VjuoF97MSLyBN5UqLFO
         d+jw288OCReuJt2rx9EYVdbd/gXDD4xntD8A1bTuR52uyae6XYmkIVqgQRlzorbHQ5wX
         J6PDnC2Ovx72pDJ6ZwtN0ms+WvcVePSlipcU5U8VhD9GMv0PU6BhQHtELx9tMPGeojKB
         PPpWi2Qj+xF5CjIbFFDsgFVGiQm5iKQ5Q995ZUOahsQkch0WX9vV+j+9ZSjacaR4UsoS
         +rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=HxQUFzxtkBI9IE2jZdisE7OWgiNmHacDc1aIpJob93c=;
        b=Ir67KEGpGDf/DK4OB72waKwyV9KM5SeLMbxJfvtqDUHgleUvUIkQHL9OTR3NPVzjtS
         Ls10e99oI+tDDp85JcXoiKd/fN2YfuVmeDdZFObKni7k8rBKc8Yh3FzGVVM+zFBGYJBE
         vOrjv9KtcGqtrjVy9FpGb8xP8DWPtQM+5q7kSJAstySOJ5ZDfKnsfI+W2CHzqNf2DOaf
         O9iSpUHWJcKDHRLkMmbOEJHN0Ig+j0P24I7pk6jcFS/xOhtEvWa367tyDDbO5VGupLnN
         HPiceCSFyWUVukZ8LdZVK22ndICnf2LB+PM7CgXRLgEO2rTKiSqTISRbo5yzk4RyloEw
         mdzg==
X-Gm-Message-State: AOAM533RzJLnhJSevmiYkj2LP4JNeRwKi0n9NiFIbY4988vC/MrYUOeY
        QUou4xpXft5q9yQEXHhsn+IbBJfHGx61e+s=
X-Google-Smtp-Source: ABdhPJzzFJ4sVYqQ5ohkt/drFJVkon5uRFouk1OF5Nb7fuaqlAi3rQHoA9RR7PjoJKZvqMU0aWek0r3Q+y1UA0U=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a0c:8642:: with SMTP id
 p60mr14075482qva.6.1610744522082; Fri, 15 Jan 2021 13:02:02 -0800 (PST)
Date:   Fri, 15 Jan 2021 13:01:58 -0800
Message-Id: <20210115210159.3090203-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v1] of: property: Add fw_devlink support for "gpio" and
 "gpios" binding
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Saravana Kannan <saravanak@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     linux-tegra <linux-tegra@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Jon Hunter <jonathanh@nvidia.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To provide backward compatibility for boards that use deprecated DT
bindings, we need to add fw_devlink support for "gpio" and "gpios".

Cc: linux-tegra <linux-tegra@vger.kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Fixes: e590474768f1 ("driver core: Set fw_devlink=on by default")
Tested-by: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 5f9eed79a8aa..1c8c65c4a887 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1258,6 +1258,8 @@ DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
 DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
 DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
 DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
+DEFINE_SIMPLE_PROP(gpio_compat, "gpio", "#gpio-cells")
+DEFINE_SIMPLE_PROP(gpios_compat, "gpios", "#gpio-cells")
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 DEFINE_SUFFIX_PROP(gpios, "-gpios", "#gpio-cells")
@@ -1296,6 +1298,8 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
+	{ .parse_prop = parse_gpio_compat, },
+	{ .parse_prop = parse_gpios_compat, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.30.0.284.gd98b1dd5eaa7-goog

