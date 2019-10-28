Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2A3E7C1B
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2019 23:01:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733276AbfJ1WAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Oct 2019 18:00:54 -0400
Received: from mail-pg1-f202.google.com ([209.85.215.202]:53229 "EHLO
        mail-pg1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390629AbfJ1WAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Oct 2019 18:00:41 -0400
Received: by mail-pg1-f202.google.com with SMTP id e15so9376684pgh.19
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2019 15:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=1WpJs4rqFlazEgG1ALqWM9ztjxvHbXQZYC6yFmWs2yk=;
        b=Yk6qAWI2BvbfBU05Wsff0PGaMNDhMIm5Rg86/K6xfu7Ma5L7ToyW6RNRjxoM4Zg0TZ
         G7EswA38UEa/5hWjOs9Rj9+aAM2uTwa/DxQemqAUpjIyuZ01xRkLERXg1ZB4q4hp2Bmb
         /lK0wtpMAUCxYWy4n40EF5mTihZrzbqmuJuNUzYwBkHijNaSOWbWatRM5osGKG8e5G40
         g7xTXzNsFUFuPKgTLNK+cAxfUNPX66DJKbpl6ZuVMygFxzMPMNLx2pczWyj4jM7jF8oQ
         atYJOzCIhoGGv1hCrpbhZGpW+SA9MrnblLyteW4ZN5WRcvlKTrZXt4paFNSBfkYgtf8S
         RdHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=1WpJs4rqFlazEgG1ALqWM9ztjxvHbXQZYC6yFmWs2yk=;
        b=c/xWllM0cm+4JZRKDKLpaYARDpHfMI/9LLLE+fE3BkCYZMJTueHGCj6pyEujsA0cna
         I2Sf5886wrhNs/Ti0a00ZTAN1X0N7lbKSagliI4TptONSRTVdAU8XOkW/zNir1i27l7H
         U8QrMlnFRk6nrgr79s1jnG/Pkvb+oHrKs5+dFrqfbZMUXwjj+55IsE4Rknx+KEWej/jB
         Y6aVZqVvdq3ttWva3a1CvryXE58xTSYFVx/sKxA/EZ6Viqmvw+iSIyZjJx4WEN6EwSOv
         AJm+uv2hAGyn6uTLnvPzcC45CyBzRvScoylHh2UW+TsxwTGw/KOgX2/VjcFnkRhJH1sU
         Rm1Q==
X-Gm-Message-State: APjAAAW0gqUycIDM579gIIxz0vITW7oN+FkBGrFrlSPksiKMd0aUvkgS
        x8/ZdSP2LtfdDwEEIRBdfGDNrs9R+W1DM2E=
X-Google-Smtp-Source: APXvYqy9nquaj1y+oeAHBa2FvIbJ3pRLRVkY7Q7QAx/FpyzTrOehqtDTnU4RgtT4SEkxlu/hY0FIOMFzyx2ixSk=
X-Received: by 2002:a65:554e:: with SMTP id t14mr21065330pgr.370.1572300040549;
 Mon, 28 Oct 2019 15:00:40 -0700 (PDT)
Date:   Mon, 28 Oct 2019 15:00:24 -0700
In-Reply-To: <20191028220027.251605-1-saravanak@google.com>
Message-Id: <20191028220027.251605-4-saravanak@google.com>
Mime-Version: 1.0
References: <20191028220027.251605-1-saravanak@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v1 3/5] driver core: Allow fwnode_operations.add_links to
 differentiate errors
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When add_links() still has suppliers that it needs to link to in the
future, this patch allows it to differentiate between suppliers that are
needed for probing vs suppliers that are needed for sync_state()
correctness.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 12 ++++++++----
 include/linux/fwnode.h | 13 +++++++++----
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 48cd43a91ce6..e6d3e6d485da 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -2297,7 +2297,7 @@ int device_add(struct device *dev)
 	struct device *parent;
 	struct kobject *kobj;
 	struct class_interface *class_intf;
-	int error = -EINVAL;
+	int error = -EINVAL, fw_ret;
 	struct kobject *glue_dir = NULL;
 
 	dev = get_device(dev);
@@ -2413,9 +2413,13 @@ int device_add(struct device *dev)
 	 */
 	device_link_add_missing_supplier_links();
 
-	if (fwnode_has_op(dev->fwnode, add_links)
-	    && fwnode_call_int_op(dev->fwnode, add_links, dev))
-		device_link_wait_for_mandatory_supplier(dev, true);
+	if (fwnode_has_op(dev->fwnode, add_links)) {
+		fw_ret = fwnode_call_int_op(dev->fwnode, add_links, dev);
+		if (fw_ret == -ENODEV)
+			device_link_wait_for_mandatory_supplier(dev);
+		else if (fw_ret)
+			device_link_wait_for_optional_supplier(dev);
+	}
 
 	bus_probe_device(dev);
 	if (parent)
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 25bb81f8ded8..a19134eae5a5 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -96,10 +96,15 @@ struct fwnode_reference_args {
  *		available suppliers.
  *
  *		Return 0 if device links have been successfully created to all
- *		the suppliers of this device or if the supplier information is
- *		not known. Return an error if and only if the supplier
- *		information is known but some of the suppliers are not yet
- *		available to create device links to.
+ *		the suppliers this device needs to create device links to or if
+ *		the supplier information is not known.
+ *
+ *		Return -ENODEV if and only if the suppliers needed for probing
+ *		the device are not yet available to create device links to.
+ *
+ *		Return -EAGAIN if there are suppliers that need to be linked to
+ *		that are not yet available but none of those suppliers are
+ *		necessary for probing this device.
  */
 struct fwnode_operations {
 	struct fwnode_handle *(*get)(struct fwnode_handle *fwnode);
-- 
2.24.0.rc0.303.g954a862665-goog

