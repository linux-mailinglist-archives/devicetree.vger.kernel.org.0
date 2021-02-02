Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 748D730BB39
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 10:43:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbhBBJkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 04:40:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233057AbhBBJgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 04:36:22 -0500
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5308DC061226
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 01:34:20 -0800 (PST)
Received: by mail-qv1-xf49.google.com with SMTP id ew14so13204296qvb.21
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 01:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=tJ1RjowJP8uP6aGuamfXuNzicvFr4anl7UIOhyimvSM=;
        b=UYSEEmQqneBOHrV3WY9xVXjDQZiAkWnGO/zcjzjm7pmnTnSl7/j7jfKOpCCNbvo/xW
         7WUnr2VlXpN/qWDExCjLWxp92YDS6gHzFQLPxj0v/19hJSFF86tq/GDKu5/0nvU3BqsB
         lPNhwbInkv+J3uAfSQPWn+3jl+27ZtxyOJopep3tiDMecxXmFUGvlDpCv4RdE77nNscg
         Ljq9vh7ORDTHyggVB+oX59uoQm8D+ldkoYL5zUlD6WxzCOScYmloUPjcfHmBapLtum+o
         ms+aJ4H6aek8xSB8Kxb5Ey42V/5ilunV72M5WRtfwKDU+aJTDYzRIpYWF9EiwgaJ2KTk
         /5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=tJ1RjowJP8uP6aGuamfXuNzicvFr4anl7UIOhyimvSM=;
        b=GqaxO3YukO+5y5D2YJ63iaoT5Ncb0MmMr2PVczvDFR7edcAmrgYMPm67sz8wO2Biwt
         vi1k8a8uJnN4U+SmRNvuq1gDgIQiV+jI5YBkTDo/g8DBU3MaC9y0+3KJ8vj4Oj6dgr4U
         weJl0kFrZgN4n93B934BeMRGXxIKYJd2goUcoGVNKmkRFMROAYhWPUACMqHFMlJ7DREB
         qyRKf2zl6tDTArRt8T7edx7owu+36T1ZBwnYtNXOBbn0IClJX8Ctl9jzOcBXe5kHt8OI
         MaJjvKRPaPOn82AORBHT3ud8fwuH2pYzcrRuBjTO4VadFwOpUN+8TY+Dl0b/FEGpuuTo
         XcZg==
X-Gm-Message-State: AOAM530DEISMU7iNh5OYTGDWrkPNrafovrOvOc888Av8ynJqiQXiOI26
        0p0Q4OOKKwqPl10VSZEWU38dl+Q3Y7BR
X-Google-Smtp-Source: ABdhPJx8H87AaA19QLhZP4kWOuj4GBSkhWW6xyVDo/8Cnf9nLIfrpDTfBxe5ahdMMHZY7fjkCBG+r8Ugt+Oy
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:dd94:c753:a81d:c855])
 (user=kyletso job=sendgmr) by 2002:ad4:56ef:: with SMTP id
 cr15mr19275156qvb.45.1612258459484; Tue, 02 Feb 2021 01:34:19 -0800 (PST)
Date:   Tue,  2 Feb 2021 17:33:42 +0800
In-Reply-To: <20210202093342.738691-1-kyletso@google.com>
Message-Id: <20210202093342.738691-9-kyletso@google.com>
Mime-Version: 1.0
References: <20210202093342.738691-1-kyletso@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v4 8/8] usb: typec: tcpm: Get Sink VDO from fwnode
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, hdegoede@redhat.com, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit a079973f462a ("usb: typec: tcpm: Remove tcpc_config
configuration mechanism") removed the tcpc_config which includes the
Sink VDO and it is not yet added back with fwnode. Add it now.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 979b7ee6473c..9b13e19118f0 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -5677,6 +5677,20 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 			port->new_source_frs_current = frs_current;
 	}
 
+	/* sink-vdos is optional */
+	ret = fwnode_property_count_u32(fwnode, "sink-vdos");
+	if (ret < 0)
+		ret = 0;
+
+	port->nr_snk_vdo = min(ret, VDO_MAX_OBJECTS);
+	if (port->nr_snk_vdo) {
+		ret = fwnode_property_read_u32_array(fwnode, "sink-vdos",
+						     port->snk_vdo,
+						     port->nr_snk_vdo);
+		if (ret < 0)
+			return ret;
+	}
+
 	return 0;
 }
 
-- 
2.30.0.365.g02bc693789-goog

