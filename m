Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B1EB1D5956
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 20:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726786AbgEOSoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 14:44:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726725AbgEOSom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 14:44:42 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51CECC05BD0C
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:44:42 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id n11so1386716pgl.9
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0jdcunXv3pqO3EZGEjVZoYTNjFacyriadazWIgCIza0=;
        b=dJGXyum44KSJaIJ6ilVk6F+MrANEv/lMa+3vHZEw+Ee/F1S+Khae+6am+JJqjUAiur
         xBltba6noayGshrr5DxfoWxBOGFddZ2Q6/7usxSbkmXzsQ6VuUbv+3k9rY0wEFNMFtsi
         hEwaIVZ0ywvmhwEBIyI/X+3TR4cdCOeMAROUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0jdcunXv3pqO3EZGEjVZoYTNjFacyriadazWIgCIza0=;
        b=V1d6SzkYVfgz5WwKDWgwsbA18j8Y+xX4pe8wMxufblUiYQCr9OcjWBfJBYMGBxpmQX
         4WTX7QOIyuH4ZB7QeeXEDK9BnYhB8RhycMuej9mCUUSd7+iQq42wLFE45dF9p0IWEqvB
         Ihi5tbmS3z0q8F8y5M02TVKphcLTOOCaKST+bv6fEQsBfer2uzYnFLrKPrZdwADOTLPT
         p+h+BTW29ACUJQiE/5/A2a7YT1x6yZ3jcGddPnqaU1A89poWKUdV50JQVuByouUT5snS
         mVXvNGKHc0d2m0Kl20Nymq8sqOEiR0dS6IiGVbWI/qHWrJi1xMR8r9CTVbp2F6cfkBIO
         uwCw==
X-Gm-Message-State: AOAM533LmcXuQBmwqZM2y93bankLKPfgXTm3b01BmhaMx5KMcecRXr1c
        5rcNfDJW1hbHlt+ZvlDxX06qrg==
X-Google-Smtp-Source: ABdhPJzok71/4xx3xqYrVEUNk01rjmmUYSquuxTkQe96RfbVBWJ4Kp4ARtspqkm/dg5KXVU82P9AJA==
X-Received: by 2002:a63:d60a:: with SMTP id q10mr4555654pgg.37.1589568281921;
        Fri, 15 May 2020 11:44:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mu17sm2243430pjb.53.2020.05.15.11.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2020 11:44:38 -0700 (PDT)
From:   Kees Cook <keescook@chromium.org>
To:     Pavel Tatashin <pasha.tatashin@soleen.com>
Cc:     Kees Cook <keescook@chromium.org>, Petr Mladek <pmladek@suse.com>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Benson Leung <bleung@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 2/6] printk: honor the max_reason field in kmsg_dumper
Date:   Fri, 15 May 2020 11:44:30 -0700
Message-Id: <20200515184434.8470-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515184434.8470-1-keescook@chromium.org>
References: <20200515184434.8470-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Pavel Tatashin <pasha.tatashin@soleen.com>

kmsg_dump() allows to dump kmesg buffer for various system events: oops,
panic, reboot, etc. It provides an interface to register a callback call
for clients, and in that callback interface there is a field "max_reason"
which gets ignored unless always_kmsg_dump is passed as kernel parameter.

Allow clients to decide max_reason, and keep the current behavior when
max_reason is not set.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Link: https://lore.kernel.org/lkml/20200506211523.15077-2-keescook@chromium.org/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/kmsg_dump.h |  1 +
 kernel/printk/printk.c    | 15 +++++++++++----
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/include/linux/kmsg_dump.h b/include/linux/kmsg_dump.h
index 3f82b5cb2d82..9826014771ab 100644
--- a/include/linux/kmsg_dump.h
+++ b/include/linux/kmsg_dump.h
@@ -26,6 +26,7 @@ enum kmsg_dump_reason {
 	KMSG_DUMP_OOPS,
 	KMSG_DUMP_EMERG,
 	KMSG_DUMP_SHUTDOWN,
+	KMSG_DUMP_MAX
 };
 
 /**
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 9a9b6156270b..a121c2255737 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -3157,12 +3157,19 @@ void kmsg_dump(enum kmsg_dump_reason reason)
 	struct kmsg_dumper *dumper;
 	unsigned long flags;
 
-	if ((reason > KMSG_DUMP_OOPS) && !always_kmsg_dump)
-		return;
-
 	rcu_read_lock();
 	list_for_each_entry_rcu(dumper, &dump_list, list) {
-		if (dumper->max_reason && reason > dumper->max_reason)
+		enum kmsg_dump_reason max_reason = dumper->max_reason;
+
+		/*
+		 * If client has not provided a specific max_reason, default
+		 * to KMSG_DUMP_OOPS, unless always_kmsg_dump was set.
+		 */
+		if (max_reason == KMSG_DUMP_UNDEF) {
+			max_reason = always_kmsg_dump ? KMSG_DUMP_MAX :
+							KMSG_DUMP_OOPS;
+		}
+		if (reason > max_reason)
 			continue;
 
 		/* initialize iterator with data about the stored records */
-- 
2.20.1

