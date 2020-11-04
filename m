Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 161202A71AE
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 00:26:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732673AbgKDXZk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 18:25:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733035AbgKDXYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 18:24:24 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459C1C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 15:24:23 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id d14so4857183qvz.16
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 15:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=UieoMpj8B4G4ELM6jyQkvhU8K54bvEZUN88uvzxrq1o=;
        b=Dato/sGTwd0wDlhkRWIv3VuShqxnqXWdeJZugh8clsc95AYuGBQFJ4oBRWJDxuIVFN
         0tOSAjhCWMQYf8C1ZF2/pxlteAnpWPjhB87e57fDlwFwDW6ui1BV/rkIPlqn4WLB5oZE
         A++gaXeMZQuOcaIncCYHhoifNp0QV6aRdbM8JxKhbEeUq5s+94b0oUphoOHlGc7ijU3p
         NRqWTb1tJVJxYtHpHoFBRKZrLS/x65HlXsJkbV4cc7ZondhrKpL7dDQMTdMavPSlW6gn
         Qv+/3R2xqg4htPHMffx3SHvFbMSXZduSh1aEMxeSyQAKb5Nhtt3PSmyHvM3mYNJDQhU5
         v9yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=UieoMpj8B4G4ELM6jyQkvhU8K54bvEZUN88uvzxrq1o=;
        b=WvxpX+2fioNhK0yNkpoMbvE5qkFwWD0+r7R50C90RfQADo9IYWAKaWBPNMmaEUD3eh
         QDviE6aC2htmj2A5Xtx6d5NUw7N0i3DKWCQ+ruHItcmJ0MgyfOQc7RD9My7Wgq8wRGar
         I+aaJYxZaqpt2UpoItMTe8HjjjvMldz+zSkEt2vi5fx/3tqi9QAlCOMhQQmOcNUwQXa1
         6fHvYTpHCG4wxRVFcWee/rbYkVRMF5n9Ffl109VfeEAKjzcF/fYKMYAsMdoQbK7f5oDC
         57ZXx1t3QZO8aRE1viV+8/dKEYEo2c9n6I/rKhSXBY8EKoske/i7pCOt0VFy6zCjZAZB
         +8vA==
X-Gm-Message-State: AOAM5326jtJrjfh8VPjdgFhqMhYaWL4q5t8dR77zPKk/tqcxzvP4sZoJ
        P+XYteRk4/2r0Aej5lCFBiiwalkiqCJHk2w=
X-Google-Smtp-Source: ABdhPJw+qdvZ55bJqASFWAsEag1odtfmLwkpRgmqmYY74br1rEUeZosUa41aLDY7Lp1MdCuP/aZglGnS4TcxzEU=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a0c:a105:: with SMTP id
 d5mr249343qva.35.1604532262407; Wed, 04 Nov 2020 15:24:22 -0800 (PST)
Date:   Wed,  4 Nov 2020 15:23:46 -0800
In-Reply-To: <20201104232356.4038506-1-saravanak@google.com>
Message-Id: <20201104232356.4038506-10-saravanak@google.com>
Mime-Version: 1.0
References: <20201104232356.4038506-1-saravanak@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v1 09/18] driver core: Allow only unprobed consumers for
 SYNC_STATE_ONLY device links
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

SYNC_STATE_ONLY device links only affect the behavior of sync_state()
callbacks. Specifically, they prevent sync_state() only callbacks from
being called on a device if one or more of its consumers haven't probed.

So, creating a SYNC_STATE_ONLY device link from an already probed
consumer is useless. So, don't allow creating such device links.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 1a1d9a55645c..4a0907574646 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -646,6 +646,17 @@ struct device_link *device_link_add(struct device *consumer,
 		goto out;
 	}
 
+	/*
+	 * SYNC_STATE_ONLY links are useless once a consumer device has probed.
+	 * So, only create it if the consumer hasn't probed yet.
+	 */
+	if (flags & DL_FLAG_SYNC_STATE_ONLY &&
+	    consumer->links.status != DL_DEV_NO_DRIVER &&
+	    consumer->links.status != DL_DEV_PROBING) {
+		link = NULL;
+		goto out;
+	}
+
 	/*
 	 * DL_FLAG_AUTOREMOVE_SUPPLIER indicates that the link will be needed
 	 * longer than for DL_FLAG_AUTOREMOVE_CONSUMER and setting them both
-- 
2.29.1.341.ge80a0c044ae-goog

