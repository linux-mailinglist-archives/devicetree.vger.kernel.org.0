Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F135432CB1E
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 04:45:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233041AbhCDDom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 22:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233027AbhCDDoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 22:44:24 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EBC0C0613E3
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 19:42:29 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id jx13so5669535pjb.1
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 19:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5evIgUHLH3iE2TL4J3188f+WN89LXupcPiWpSn3upRg=;
        b=krHS8jj2QXNypospcYRERtT0+swfUgztdkYoHNFA4VXLWuLUzq1MJ2lTyCbONQ9lm3
         SW3+pEdHNibO6/v+AT+N1GXAJ3vlyfPvJBuznRg8PgvdmrSRvXHM1bbvOrgxmVS5NFTB
         fsk65ZMoYfpHFyxr+mc6JuuJoVsUtoeBzr4GpksP3Esx/CZGRBiGwBID782USqdyJ15n
         SqDOhFLlS4h7sR6YIdE+UcuCjTzzbET6pA1nFw+OzZp8yejsYPff5nNC4DloJ5AXxa9+
         SyP2ksaKSvomzTQB22fRNsD3Qqy3qjWN90i7tG0rDH1dBA9CYj4+3a1nAU5Z5VRw5NV4
         4SWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5evIgUHLH3iE2TL4J3188f+WN89LXupcPiWpSn3upRg=;
        b=NZtNU1wokl4LeVzSMlnM+ESORayGoyVwaOcoSAFiDxepi/cFkv8JxXtm+kQ9mE6vlx
         7PwQ1G97TFpJZpO/byBn+3FNax2lXZ0RlA6L25R83wwB+Rid4ZL+JCK5LW7N4Hd2by3L
         GtAoQSORGZXMMpA0WKK7hcOZW4nnaRkgmHIhAd2nKvVGVZUWFrJO567jJLA7P2fk27xC
         n+woG8FILymbAHbZ+NKGswLvNfYp/ifSk70Yug8VUgL4CJkWRnfxDbSEftxTJ1SKgXRR
         wXZwgzij7R7V/0/tEpMYGppeoN33oVRHWwbnMQmMSVJkV5MU2/sTZd0BvsRFeuzq6PLa
         04cA==
X-Gm-Message-State: AOAM530E47lZSbq+kBUzAnT5WaYCAmpA66XTMtm0yRoEHyxYYAuzkvWS
        gfggPf6O3PFTpneUOYh56HAxJw==
X-Google-Smtp-Source: ABdhPJyE5bFbeBfYEWSJ+gwpOI0+z1XD9msbhoODqnXnZy8LX7goajm/FKghGMdptdJQWuIweGqeRA==
X-Received: by 2002:a17:903:2491:b029:e4:16d6:e0a4 with SMTP id p17-20020a1709032491b02900e416d6e0a4mr2197194plw.64.1614829349158;
        Wed, 03 Mar 2021 19:42:29 -0800 (PST)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id h17sm2403989pfc.211.2021.03.03.19.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 19:42:28 -0800 (PST)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/8] spidev: Add Pensando CPLD compatible
Date:   Wed,  3 Mar 2021 19:41:37 -0800
Message-Id: <20210304034141.7062-5-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210304034141.7062-1-brad@pensando.io>
References: <20210304034141.7062-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pensando Elba SoC platforms have a SPI connected CPLD
for platform management.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 drivers/spi/spidev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spidev.c b/drivers/spi/spidev.c
index 8cb4d923aeaa..8b285852ce82 100644
--- a/drivers/spi/spidev.c
+++ b/drivers/spi/spidev.c
@@ -683,6 +683,7 @@ static const struct of_device_id spidev_dt_ids[] = {
 	{ .compatible = "dh,dhcom-board" },
 	{ .compatible = "menlo,m53cpld" },
 	{ .compatible = "cisco,spi-petra" },
+	{ .compatible = "pensando,cpld" },
 	{},
 };
 MODULE_DEVICE_TABLE(of, spidev_dt_ids);
-- 
2.17.1

