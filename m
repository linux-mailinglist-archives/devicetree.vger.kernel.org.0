Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8F6D1C5C30
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 17:45:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730711AbgEEPpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 11:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730706AbgEEPpU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 May 2020 11:45:20 -0400
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com [IPv6:2607:f8b0:4864:20::f44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E27C061A0F
        for <devicetree@vger.kernel.org>; Tue,  5 May 2020 08:45:19 -0700 (PDT)
Received: by mail-qv1-xf44.google.com with SMTP id p13so1200150qvt.12
        for <devicetree@vger.kernel.org>; Tue, 05 May 2020 08:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qornXbYFne24kTDVtG6Enzv9EKW/vIs7l4wKHWNfM5w=;
        b=YCLaXzRxdW1HgmXu0HMwAyHhL3W1VAocPqoaft1CNoCmk9GizehVnh747vjwl7Qs1A
         OEE0QAHvwJup+Zcnrg5keJItQuuMiXYPcf526bzKkYu4RoJ3ywo3uLeZzx3vSSz5/ONl
         FaSUiGTaVXPfTz1gydhl03moYiuc7uJrmqiNQC0Zjg9fJTTptYOOjWBf0jB5yM1pxICE
         po6d6hckIZ4vSW/5GVg09a2Gp/XDyEdWn4KJ02eq/krECsUe5tNKcmWKSjJnz64uoL/T
         ihu47TlHcT700IeLpCbp1wDqVDYSRYYZs+U7hPNFyGTgxtoizTq0t5P3i8hQAt/q3icr
         BFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qornXbYFne24kTDVtG6Enzv9EKW/vIs7l4wKHWNfM5w=;
        b=ptqq+EsRIhks9rWOvQyeyNiHiYIJLNqU5ieA/xWWIgOuuqfLQjYF1pZksvX33EO4Kw
         Xr5+Fr9IKYENvFyz4Jt/Hf0/3hOcwhl3UO+9u6mYGf3vgoxxo0rvF/5jub651lAUgBTW
         m0fHmwI2ZAtzVoyIEucd59GjasCprwyuXJoeMZ8izkGAlwTbto475gtYfTsyOTGPHsvz
         n8sSus7yvASgD3Xrdz+M6OTn2oEnRnBq0qfC1iYZh07ijtQt2MAcY3Cx9TQmGxlDaTxG
         ww5Q1WE2C8l4/B/O7U1WTbde1wXlcVEsgOuM7cZb9sTUy7UgI7xf5FFxBHZ6GQry9JHs
         0K1w==
X-Gm-Message-State: AGi0Pubf2DZZKv5xjOQVB6ktQrEYHjMTExj0uZP1ap01lM1jsuP5osnr
        bqY6b0hwQriZRHZ685vM8v/DJQ==
X-Google-Smtp-Source: APiQypKOFMcc9GEvOQJqwkzSq9CotVdQlcXS8ndJUOA9atjU1WXUwDMJpaBxoZOBlRcA2TyAnGIlnA==
X-Received: by 2002:a0c:b604:: with SMTP id f4mr3373148qve.40.1588693519032;
        Tue, 05 May 2020 08:45:19 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net. [73.69.118.222])
        by smtp.gmail.com with ESMTPSA id x7sm2122407qkx.36.2020.05.05.08.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 08:45:18 -0700 (PDT)
From:   Pavel Tatashin <pasha.tatashin@soleen.com>
To:     pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
        linux-kernel@vger.kernel.org, pmladek@suse.com,
        sergey.senozhatsky@gmail.com, rostedt@goodmis.org,
        keescook@chromium.org, anton@enomsg.org, ccross@android.com,
        tony.luck@intel.com, robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 4/5] pstore/ram: allow to dump kmesg during regular reboot
Date:   Tue,  5 May 2020 11:45:09 -0400
Message-Id: <20200505154510.93506-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505154510.93506-1-pasha.tatashin@soleen.com>
References: <20200505154510.93506-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, ramoops is capable to collect dmesg buffer only during
panic and oops events. However, it is desirable to optionally allow
collecting dmesg buffers during other events as well: reboot, kexec,
emergency reboot etc.

While, a similar functionality is provided by pstore console it is not the
same. Often, console message level is reduced in production due to baud
rate limitation of serial consoles.  Having a noisy console reduces the
boot performance.

Thus, if the shutdown dmesg buffer is needed to study the shutdown
performance, it is currently not possible to do so with console as by
increasing the console output the shutdown time substantially increases
as well.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 fs/pstore/ram.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 223581aeea96..568d9911beae 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -60,7 +60,12 @@ MODULE_PARM_DESC(mem_type,
 static int dump_oops = 1;
 module_param(dump_oops, int, 0600);
 MODULE_PARM_DESC(dump_oops,
-		"set to 1 to dump oopses, 0 to only dump panics (default 1)");
+		 "set to 1 to dump oopses, 0 to only dump panics (default 1), deprecated use max_reason instead");
+
+static int max_reason;
+module_param(max_reason, int, 0400);
+MODULE_PARM_DESC(max_reason,
+		 "maximum reason for kmsg dump. (default 2) ");
 
 static int ramoops_ecc;
 module_param_named(ecc, ramoops_ecc, int, 0600);
@@ -689,6 +694,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 	parse_size("pmsg-size", pdata->pmsg_size);
 	parse_size("ecc-size", pdata->ecc_info.ecc_size);
 	parse_size("flags", pdata->flags);
+	parse_size("max_reason", pdata->max_reason);
 
 #undef parse_size
 
@@ -939,6 +945,7 @@ static void __init ramoops_register_dummy(void)
 	pdata.console_size = ramoops_console_size;
 	pdata.ftrace_size = ramoops_ftrace_size;
 	pdata.pmsg_size = ramoops_pmsg_size;
+	pdata.max_reason = max_reason;
 	pdata.flags = RAMOOPS_FLAG_FTRACE_PER_CPU;
 
 	/*
-- 
2.25.1

