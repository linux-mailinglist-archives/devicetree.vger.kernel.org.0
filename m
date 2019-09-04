Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D18E4A94A8
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2019 23:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730925AbfIDVLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 17:11:52 -0400
Received: from mail-pl1-f202.google.com ([209.85.214.202]:53201 "EHLO
        mail-pl1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730836AbfIDVLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 17:11:51 -0400
Received: by mail-pl1-f202.google.com with SMTP id v22so73706ply.19
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 14:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=AONGf/XrwQ57qLLsqc1IAcmsTXCE/q6wdhnpClqGQ04=;
        b=TH2xF9mpWDfyKefZivaec2xL2ZLzp5qmn+OX6MYUIXS2P1CjEvnb+Hi+fFGGne37r+
         n5WaCkirA8ys3qam6eq2w/K2LobHixeNannHiGYWMdrhwT5IqXtIrGF/Fq4ThsEtaE0M
         6zMs2g088BP5ODUSxygXiKvEVb4ipDr1UDih7zeBZTcrmwVwnUx7v9C87QnD9SzyRexJ
         lgx7s3bLVkyvLu/ssnM7MB/bNODRixypQRgxHumSL3SpWLpiXre6kSIQ1fy8Cyg4KZSV
         OzI9XFXbFmzcF+hI9066HuVIAREQztV4usQa43BAXNW5jZmLD7g4BYm0On05mKRRN4JS
         uJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=AONGf/XrwQ57qLLsqc1IAcmsTXCE/q6wdhnpClqGQ04=;
        b=nBNIw3t4gT5bord2n4bLiMHH4K87BF9ks2WwQz7OZFMYhiZH4ZaMMaLFtTCxJYYZ36
         bFNY68PnR/E6BE5CCzzOTkejamBc6VbjpxmqECE9EPxQy3rn6Xs5S7f0HtwEJ6mGArkR
         PHTDIO4BllbpvPqRuCImUHFbfZzuHF9KGlH9lV5miur8XW++1Q7spgsVO4jWhE0NtLPz
         0SLCJSziCIgbKyIUTkTBeTkwh9phEifbwKmm1/27yoBBq5VRwcP6NPoEVxUkjOrOHKtb
         CinfjUJriChmikniQWuuwZYdBE7ZqseyiWu/xX8ueWgDtWJQwWGid3XTCByCTdw/hSwi
         2uvg==
X-Gm-Message-State: APjAAAVCoBnAVASecD4UfNHSOuEGJAyN25Fx3xZx2VH/5M/4yZ5iXd11
        b3FlCisxfq8h4UP2nG4wUpYwMjWbRMVKlmc=
X-Google-Smtp-Source: APXvYqySn9/+gjnHwwNQKP3hpZKLo+bE+U3qbKQShvLUPwIPN5cMyBzHW3ZdrhgFeLsSv9k5msga7lFRlYMUPrY=
X-Received: by 2002:a63:6f8f:: with SMTP id k137mr146678pgc.90.1567631510692;
 Wed, 04 Sep 2019 14:11:50 -0700 (PDT)
Date:   Wed,  4 Sep 2019 14:11:25 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-7-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 6/6] of: property: Create device links for all
 child-supplier depencencies
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A parent device can have child devices that it adds when it probes. But
this probing of the parent device can happen way after kernel init is done
-- for example, when the parent device's driver is loaded as a module.

In such cases, if the child devices depend on a supplier in the system, we
need to make sure the supplier gets the sync_state() callback only after
these child devices are added and probed.

To achieve this, when creating device links for a device by looking at its
DT node, don't just look at DT references at the top node level. Look at DT
references in all the descendant nodes too and create device links from the
ancestor device to all these supplier devices.

This way, when the parent device probes and adds child devices, the child
devices can then create their own device links to the suppliers and further
delay the supplier's sync_state() callback to after the child devices are
probed.

Example:
In this illustration, -> denotes DT references and indentation
represents child status.

Device node A
	Device node B -> D
	Device node C -> B, D

Device node D

Assume all these devices have their drivers loaded as modules.

Without this patch, this is the sequence of events:
1. D is added.
2. A is added.
3. Device D probes.
4. Device D gets its sync_state() callback.
5. Device B and C might malfunction because their resources got
   altered/turned off before they can make active requests for them.

With this patch, this is the sequence of events:
1. D is added.
2. A is added and creates device links to D.
3. Device link from A to B is not added because A is a parent of B.
4. Device D probes.
5. Device D does not get it's sync_state() callback because consumer A
   hasn't probed yet.
5. Device A probes.
5. a. Devices B and C are added.
5. b. Device links from B and C to D are added.
5. c. Device A's probe completes.
6. Device D does not get it's sync_state() callback because consumer A
   has probed but consumers B and C haven't probed yet.
7. Device B and C probe.
8. Device D gets it's sync_state() callback because all its consumers
   have probed.
9. None of the devices malfunction.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 23b5ee5b0570..923d6f88a99c 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1207,6 +1207,10 @@ static int __of_link_to_suppliers(struct device *dev,
 		if (of_link_property(dev, con_np, p->name))
 			ret = -EAGAIN;
 
+	for_each_child_of_node(con_np, child)
+		if (__of_link_to_suppliers(dev, child))
+			ret = -EAGAIN;
+
 	return ret;
 }
 
-- 
2.23.0.187.g17f5b7556c-goog

