Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A45830A8D8
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 14:36:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232240AbhBANfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 08:35:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232206AbhBANfe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 08:35:34 -0500
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B3E8C061794
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 05:34:49 -0800 (PST)
Received: by mail-pg1-x54a.google.com with SMTP id z6so11532061pgg.17
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 05:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=3bTiiY2TYZdB8z5fIVv2Vg5Pj/B6JPLinnl3a7b42P4=;
        b=EH7llqD9kCs9ZfKZzpbgp1kT2eYf2LgF1qrGg6iINPHbIOis3kVT+7Q1J3XoTqxCbY
         wsTtMwAVHYCKxIB795hp7HCr3+as7SjEtdKO3ZVBcc12Jj7Maun5SEhorqhkPmT51Zxw
         2qycqUKI4MtTP8zzBqJdVFWFeX9D4WpuqVpxsThewocx1CO37LCM3zQgqNDHWyBlSgRn
         3QW5VRrCmlzkr+IW0K+/ih2aB8oWWbGPAHHn0teIPp39lksqzhDajSENa/f1hFpC+pKC
         I+i+ljcNOVRsMtqjUt6NYGil1WcX3KKRsIv8kG/SCK29mV3UgW6BUBpTQFwYqxKbbgvE
         CyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=3bTiiY2TYZdB8z5fIVv2Vg5Pj/B6JPLinnl3a7b42P4=;
        b=fXhTd45p91NfEtIMMFtZAWZ7Y5nvcXJLvZbbY5PsYsxcrY7Rp/4LEmdVkEwK2jTFcf
         tM7HXUuA5eabpNq5SGBFd6On4PhCyTsCkLIdrLtSoiaDmKd1NMudHnmstHsJ5Pznty9a
         yeupTfQp2ALlnnPhdNuuY6uU077JATAzBNDNm6KF2Z+Vv4C5XlkU1k0/p8i1jqbCEWBL
         EJ2+N+hqOKTk9Iuwb1d7RIA5HxXYDXp+n17Ib8AFH6PE2s4grR3ZGrKzSwAHRcAYYM62
         4wHa6TTg6ZkacNsgDLdDo9WuUsVjqhOSFS9W4EF9eEb6Jtf6mdYh9QxSIcimZ9N58OuI
         hndw==
X-Gm-Message-State: AOAM532K9nAHB5X9Fgth5r2jRU8b0pJ1vtoRsRgeeS9y6czdk8crBnNl
        tCDeX44dtkcsEOuk4KaIrq5TWmKhZs0w
X-Google-Smtp-Source: ABdhPJxXYRGY/304EOVH7+1bl8Yd22VbcjVS5vuMbgmRKYV5vF0CNSrN4xIVWaf4YFdCq+Pj5WCRvRPvt37f
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:dd94:c753:a81d:c855])
 (user=kyletso job=sendgmr) by 2002:a17:90a:8d83:: with SMTP id
 d3mr1361366pjo.0.1612186488456; Mon, 01 Feb 2021 05:34:48 -0800 (PST)
Date:   Mon,  1 Feb 2021 21:34:21 +0800
In-Reply-To: <20210201133421.408508-1-kyletso@google.com>
Message-Id: <20210201133421.408508-4-kyletso@google.com>
Mime-Version: 1.0
References: <20210201133421.408508-1-kyletso@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v3 3/3] usb: typec: tcpm: Get Sink VDO from fwnode
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
Changes since v2:
- use fwnode_property_count_u32 instead to get the count
- revise the error handling

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

