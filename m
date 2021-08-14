Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECAE3EBFC2
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 04:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236686AbhHNCcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 22:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236545AbhHNCcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 22:32:07 -0400
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B67DC061756
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 19:31:39 -0700 (PDT)
Received: by mail-qk1-x749.google.com with SMTP id n71-20020a37274a0000b02903d24fa436e2so8852244qkn.3
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 19:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=rKVGjbPprzOVCWKzlLh4tG1TpuszZjwSp7r9YIWAvR0=;
        b=JPlA7x+zZWolHb7zSZpUIY9aIcuTF0t69uIQWppWqXw6zXHnnR/DGndGgegzdw5ptz
         V2tsHlUVQqy38ljcVEVlLSA3NPyi4goZLoq1SKcRjtsGWQY8SjTXzv21CuaJBDz8kjVs
         92oRhTwWjHe2svjrO6KXYIeQ93o2us9ZAqTsR19uthhf2mLbcWIWd+KDC/1JPmeUa55B
         amXgcp+rLUZpt+WaaQF+lbbpDyGkW8sC1Ry5tVVIduZgv1KvhcUOLyniZBlNl/bzvBNR
         cofMuF5F2urNs550VgFFayq4v0tz47WPm4u68Ule7X1wCR1bin+IAFEWwmKJoQvNjqpV
         0a9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=rKVGjbPprzOVCWKzlLh4tG1TpuszZjwSp7r9YIWAvR0=;
        b=mzI0kN2wLd8rgaowADJJHZXF3lDNFRn8fXpvWGC0EZTyeFq5+2YR0z2YlCPRuRPUh6
         4jt5btVNRyrsZnQqyCTyDWPJ94MVwy+stVDgBKvtTlPp5AfvbAIirqEyoiWMZPTj3m72
         L7wvL6yy6uZl7zX4nX0yKmDGQrJj6iVwR//7hx5rPXP/DeriHYu4EzlVPGMiJo5/0gTl
         A/U9tv/BsbAL3W1Yf5rJpbIV9DoIq5a4PPpHjgN+K4O0ZegSXyLUz8/X8rNyBEcsVyLM
         yrvrx51kKIX6p4kVNYgq6tgeeVtFkf58U0Xy9EaAz6TXDlPooGGaRBLv05RBFlkZrE1t
         DhDQ==
X-Gm-Message-State: AOAM531MZwdPwk3baoQ5PA+iy+lr8THwG3XmHx4iiHjscN+ShYdRTB9A
        Hm0mO5a9Ebe/acgEBqEtxWI7GhrpElByzak=
X-Google-Smtp-Source: ABdhPJx8v6ipmA6XHJxxhId2cdNaRBu/aZFAOABEZqglRPSWQq8mA8GtlJb/hmjpamj5O2OSEUW/QMhdGQDTkRU=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:55f9:6fdc:d435:ad28])
 (user=saravanak job=sendgmr) by 2002:a05:6214:2022:: with SMTP id
 2mr5522178qvf.38.1628908298650; Fri, 13 Aug 2021 19:31:38 -0700 (PDT)
Date:   Fri, 13 Aug 2021 19:31:30 -0700
In-Reply-To: <20210814023132.2729731-1-saravanak@google.com>
Message-Id: <20210814023132.2729731-2-saravanak@google.com>
Mime-Version: 1.0
References: <20210814023132.2729731-1-saravanak@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v1 1/2] of: property: fw_devlink: Add support for "leds" and "backlight"
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allows tracking dependencies between leds/backlights devices and their
consumers.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a81559c5ee2b..931340329414 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1289,6 +1289,8 @@ DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
 DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
 DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
 DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
+DEFINE_SIMPLE_PROP(leds, "leds", NULL)
+DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1375,6 +1377,8 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
 	{ .parse_prop = parse_pwms, },
 	{ .parse_prop = parse_resets, },
+	{ .parse_prop = parse_leds, },
+	{ .parse_prop = parse_backlight, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
-- 
2.33.0.rc1.237.g0d66db33f3-goog

