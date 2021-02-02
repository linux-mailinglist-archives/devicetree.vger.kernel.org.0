Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8398A30BB23
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 10:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233097AbhBBJhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 04:37:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232874AbhBBJfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 04:35:48 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B27C06121F
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 01:34:12 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id l10so23400725ybt.6
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 01:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=n+HIDm5l4jQRPPtNBc/UNsUvzf1d4KY5BZBGTQEQIq8=;
        b=fyJZYtIOnNGXE3WJ6HGneefUyCbgC57EOFdBFPZD3uPqdNEVD6obsGjb6FmaG/5Y5u
         lYuqLYlmGCQWgk5uaFHF34hja5oDgc3hcQCMlLlpZ9xZIMV3yy3Jc6i4N2ISFZeu6pwb
         Dj0Ji574t008WKCCSyY+4izoHjBobobcmL+iZxyIgtS9yw0kzg2y+GK8W7lkeVNAO3Xk
         Un6yeGPIN/pnzoNMllsM/ZGQapSzKVJUaF/gvetfYICCwQ8OTFvhuON+yRT9W71len/e
         CSB48Kefl+d8qcFuXuZp5g/A9J0HatWbS8LfSu6xo9Hr1P/74YFIs0JKn+FNsS6QtQwv
         xubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=n+HIDm5l4jQRPPtNBc/UNsUvzf1d4KY5BZBGTQEQIq8=;
        b=RgTg1PIIiLxYf4l0zqFbJgUTWT+dgh9G0x4nGxcqJzELr4bfeDMY7Yu4KySfm44evT
         2YvSA1Hv/Q0B2Ges5gOPgUnbG2gcVECnBsn5Nj34lKtY6Zs6GmG6ARcGHcVnH7nrVghK
         LlseizHzdrBw7Xsmsdz0stnie6S9nR0C8YHveMbyQ4SN5ZTEXmSXtPDpSol77vbeuUJp
         DuO53d3fxEc2hR4Gu5kNQGF/LKSdSy7LwP0O3u/Vat2i5SqnsvmmJRT0rWfmERcWREmJ
         neNE2D8AWJ9lJUdbeygphR2q7pKIBziacAuYLhaUh6Xl0PM5/nsWPjAQd7mN8xL2pMun
         OLKA==
X-Gm-Message-State: AOAM530OKQ4hwv4MEB9UC3cWKrO+jJz8Ctlim4PmSUsZbATkwcLQuduS
        oZiILCL2m30l3Z5+qfVkEsZBb8+236Xc
X-Google-Smtp-Source: ABdhPJwVRfvopollGibiCRWVfMgFR2TNOM63D0rQ6huMczsd5aorRh6yYa/vUtowKmuwJ6GDz5levI9m6Ayq
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:dd94:c753:a81d:c855])
 (user=kyletso job=sendgmr) by 2002:a25:df48:: with SMTP id
 w69mr31861428ybg.85.1612258452148; Tue, 02 Feb 2021 01:34:12 -0800 (PST)
Date:   Tue,  2 Feb 2021 17:33:40 +0800
In-Reply-To: <20210202093342.738691-1-kyletso@google.com>
Message-Id: <20210202093342.738691-7-kyletso@google.com>
Mime-Version: 1.0
References: <20210202093342.738691-1-kyletso@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v4 6/8] usb: typec: displayport: Fill the negotiated SVDM
 Version in the header
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

VDM header now requires SVDM Version. Get it from typec_port.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
 drivers/usb/typec/altmodes/displayport.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
index e62e5e3da01e..7b47dd4ea531 100644
--- a/drivers/usb/typec/altmodes/displayport.c
+++ b/drivers/usb/typec/altmodes/displayport.c
@@ -15,8 +15,10 @@
 #include <linux/usb/typec_dp.h>
 #include "displayport.h"
 
-#define DP_HEADER(_dp, cmd)		(VDO((_dp)->alt->svid, 1, cmd) | \
-					 VDO_OPOS(USB_TYPEC_DP_MODE))
+#define DP_HEADER(_dp, cmd)		(VDO((_dp)->alt->svid, 1,			\
+					     typec_get_svdm_version((_dp)->typec),	\
+					     cmd)					\
+					 | VDO_OPOS(USB_TYPEC_DP_MODE))
 
 enum {
 	DP_CONF_USB,
@@ -62,6 +64,7 @@ struct dp_altmode {
 	struct work_struct work;
 	struct typec_altmode *alt;
 	const struct typec_altmode *port;
+	struct typec_port *typec;
 };
 
 static int dp_altmode_notify(struct dp_altmode *dp)
@@ -536,6 +539,7 @@ int dp_altmode_probe(struct typec_altmode *alt)
 	mutex_init(&dp->lock);
 	dp->port = port;
 	dp->alt = alt;
+	dp->typec = typec_altmode2port(alt);
 
 	alt->desc = "DisplayPort";
 	alt->ops = &dp_altmode_ops;
-- 
2.30.0.365.g02bc693789-goog

