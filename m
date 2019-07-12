Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE7D267703
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2019 01:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727417AbfGLXx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 19:53:26 -0400
Received: from mail-pl1-f202.google.com ([209.85.214.202]:56547 "EHLO
        mail-pl1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728687AbfGLXxY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 19:53:24 -0400
Received: by mail-pl1-f202.google.com with SMTP id o6so5995502plk.23
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2019 16:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=CFxxqGnefOXorhrwYqF3mwAy1+jiw4VOCKpjKBDoyT8=;
        b=MnUPYPMpXRNJhnxIEOQkopnSiqM4LwT2KaAFhMGRiiQq8POudN9dt0VG4XPUeGz8ao
         nmHisWeLgIwP+2I/ubn8KZSf+D8q7CVvWz7iqwv1T4Qw2D0qDYwiKc0yMnqdjd3p5Yg8
         KLh8mRQ2Bd5E21GecWU9+bQ+p83bSYgh8W+1zJxQH5PM+NaikhlYF0spos9UT22/GD21
         opWt+BWMDrRY8FmbN/kBOAYR9JnWDPi/cCefm7Oeo60EF5cDG7A7YR2JyQ+2S/1JlARM
         Al2ilX4+kFDDQcvXTMQB1BuLNmh6oAZ2cY2FKNm15cK4Skj7hfX40d5iJEZ6HpjnRAdN
         Nizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=CFxxqGnefOXorhrwYqF3mwAy1+jiw4VOCKpjKBDoyT8=;
        b=KmoFSVe11r3f37OpGMSXgz7/3VnIhqi3b2+XT1YNivshvjg81RCYOnXUs9eRnpbg9m
         PQW4FqUJLlSzfEsp8LtNnF160bMNTThifv6EqP9aKcSAqhXyENLE5WDbLsT4/OAc5bNE
         ez8a7p9zymVxt0QL48DB3gvmj6+92WIbnOYr5uldTs1KE4V6yzRipdX6e8WDSHAMZxHe
         Kicg1nvQtgEwEPpo6oUmRFTPGRNDOGdzEO2C/L9iz/XDdPXx9dijD1BbjalQeSU+Qey+
         gLAWejNFc3/JUcksTg9YxXZeLJyxaZg3hQhG+SABhrMlZJbv8qhzcy/JUjLw/fcin3Xm
         THow==
X-Gm-Message-State: APjAAAVD1w8SIchWNw2J5On8H332Aln1BotPFXdGpSx3DXpDgjTAsM9m
        LGIuX48FRLEq6DG8UUuMliViAN/BTwUs5vQ=
X-Google-Smtp-Source: APXvYqw0E6zYGebktTFqUus6/97NONkNo8swfiCbKYdrUTLEfjPBQAFkvFlxtjmj0xrbWbFHkzYe9KU4nWk7qtQ=
X-Received: by 2002:a63:1658:: with SMTP id 24mr14469922pgw.167.1562975603646;
 Fri, 12 Jul 2019 16:53:23 -0700 (PDT)
Date:   Fri, 12 Jul 2019 16:52:44 -0700
In-Reply-To: <20190712235245.202558-1-saravanak@google.com>
Message-Id: <20190712235245.202558-12-saravanak@google.com>
Mime-Version: 1.0
References: <20190712235245.202558-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v5 11/11] of/platform: Don't create device links default busses
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Default busses also have devices created for them. But there's no point
in creating device links for them. It's especially wasteful as it'll
cause the traversal of the entire device tree and also spend a lot of
time checking and figuring out that creating those links isn't allowed.
So check for default busses and skip trying to create device links for
them.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 9f3b7e1801bc..b02dbaa01bfe 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -593,6 +593,9 @@ static int __of_link_to_suppliers(struct device *dev,
 	struct property *p;
 	unsigned int len, reg_len;
 
+	if (of_match_node(of_default_bus_match_table, con_np))
+		return 0;
+
 	for (i = 0; i < ARRAY_SIZE(link_bindings) / 2; i++)
 		if (of_link_binding(dev, con_np, link_bindings[i * 2],
 					link_bindings[i * 2 + 1]))
-- 
2.22.0.510.g264f2c817a-goog

