Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CCDC23B121
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 01:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728854AbgHCXmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 19:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728298AbgHCXmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 19:42:06 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5952EC0617A0
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 16:42:04 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id v6so25112945iow.11
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 16:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/FMp7t9zJsevOEX4yhVr5KoKILCcT3l3u0rcT+JXhAY=;
        b=QmPh5nUPZ/EESdkkBHbazCKwv58BbTK07a7ZwJHmzagU/Bz4f/E1vxoLzaRwdM18Ec
         zQL+cmXrtCJyMcJDC76O4BDu8yXMjiU4vSL3q775lP2gnzPpziQXmChMp8UmXGDoc9/r
         ZBGwYzEmn6I2arNS/DD88D7/M+xg1ZNcCF4lY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/FMp7t9zJsevOEX4yhVr5KoKILCcT3l3u0rcT+JXhAY=;
        b=PAyC3Xi15FEXpq57y9I6YkVcuK7EE/07qofs5MQ+v98wUn6bCdv2PaWcqNAlZ9j0da
         ZpTsqSNSlzbluoZUox0h+kTgtzvbjzmBM36F/sBUFjDO+AsVBO5zPUS/uiutypWyfh42
         1hmqZRu8EmdZg0oFwsXLyuMt0+oUg63XahqUfRDZm7fgn46+vlzQSkgor4lir4rjwY6y
         5oU/tRDpuBNMzMAnwa1pi/VQT+nIxyygGsi2mNn3A75NzsRxzqfBKDxdXT85pankRiK4
         FNqmEzTVF1lK3Q7xxLHHZBv6VDeNCJ+bLJv06Q4CmCJ4d7ugMNQ683r7nL67F7BCiOzh
         9qiQ==
X-Gm-Message-State: AOAM533QD/SwN2RDAkJj6A0iN0ISfbKOMiCg+WV0IemJ4gCu/gpF7uN/
        gibsmv7KPmO3JHcF3DeCT3pLLnkgCw9SxA==
X-Google-Smtp-Source: ABdhPJzjGK7YETFVd/XuYfzZTadZNnhp+w6G8pQCShVInAJwoMtBVMhKSEdDiv4NIJ6qjucNotgs0g==
X-Received: by 2002:a02:b689:: with SMTP id i9mr2549762jam.59.1596498123575;
        Mon, 03 Aug 2020 16:42:03 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id g2sm5468435ioe.4.2020.08.03.16.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 16:42:03 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        kbuild test robot <lkp@intel.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio@vger.kernel.org
Subject: [PATCH v4 04/15] iio: sx9310: Remove acpi and of table macros
Date:   Mon,  3 Aug 2020 17:41:43 -0600
Message-Id: <20200803131544.v4.4.I9bf713a86d6076b44441ef5f534f9c240271699a@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200803234154.320400-1-campello@chromium.org>
References: <20200803234154.320400-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Avoids unused warnings due to acpi/of table macros.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Daniel Campello <campello@chromium.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---

Changes in v4: None
Changes in v3: None
Changes in v2:
 - Added #include <linux/mod_devicetable.h>

 drivers/iio/proximity/sx9310.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 3523ee5c8f0d2d..3642d23cd5e6f4 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -15,8 +15,8 @@
 #include <linux/i2c.h>
 #include <linux/irq.h>
 #include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
@@ -1048,8 +1048,8 @@ MODULE_DEVICE_TABLE(i2c, sx9310_id);
 static struct i2c_driver sx9310_driver = {
 	.driver = {
 		.name	= "sx9310",
-		.acpi_match_table = ACPI_PTR(sx9310_acpi_match),
-		.of_match_table = of_match_ptr(sx9310_of_match),
+		.acpi_match_table = sx9310_acpi_match,
+		.of_match_table = sx9310_of_match,
 		.pm = &sx9310_pm_ops,
 	},
 	.probe		= sx9310_probe,
-- 
2.28.0.163.g6104cc2f0b6-goog

