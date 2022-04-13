Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7164FECB8
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 04:06:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231650AbiDMCIh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 22:08:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbiDMCIf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 22:08:35 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFE07E0C6
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 19:06:15 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id n18so696682plg.5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 19:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nzvi/7I6o4g6gT+tWp3ktIpiQNQJRFeE4veqO2lT0Cg=;
        b=eKqKjAr4pOgRkVvIywuOKZrA+1JkHZeB4DPvaRtX84pupA4Xh5uCCFwBf/j/bXki4E
         zoeT5mfIoFWi8E1Sh5ibmDqxmgTg7YwjJRpXDwCWIW3g6evCufRybe/GWHJvsKwiPsd9
         Kp/8cBV9wAGkugBu0ibCIvB8Z1tDuVuvQoWmgDZewT9BYepvWDzLydrACLsatYhAzRTs
         d2XwCkg9PxcJZ3/uj2bJkFnCzV8JtQ/LwDQ2gHzyGuTodr/DAUqYgZLF0X1PRKJRUMrI
         xEqo6ofkXQsE+RkQLqKelZGTcOEsKc+421+M2mg8Mpmu08vZDHDhTXmkkHp9UN0fnz9c
         VZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nzvi/7I6o4g6gT+tWp3ktIpiQNQJRFeE4veqO2lT0Cg=;
        b=yXlQR35kxpEFu95vWRabzFnj0Uo+GdWpUqajmzIhxa4/3BC3jOITRdU6fuURAouwtw
         coYqhnRZFl1YOnxZPZXUbw6UzIPUD6v87R9ufU132rz1vBYbAFKvxdz2990PRhsFOXAJ
         BxHzUIm2yXcLSOjutoFDGafOXZSn/8UezNP25otrpghHfTr174uTxaBZxDhkOjsV5zF7
         xH4SnHtMf+JSufJ1KBGtGemooe3RG3N+WF1Sp3OWXFk1d3W5NYT7svuAMx/IXWtYFo13
         egO4nlyhrODx4MMLl18Yy7XxYr6gJcOOGwl8NQU+0b1fJ4oVSMFpgrNW00cMwdJ/WPqg
         6chQ==
X-Gm-Message-State: AOAM533HEYJZANkA2YPkCEFwKLsgdrQXdbJVdfCEMxajmRZUMKWa0Bsd
        NeVbaijTJdYkIrjvOxEdLsNg6A==
X-Google-Smtp-Source: ABdhPJz4RdYgxf39eBGJAQQcu/L60B2/GMbOeS1p/vMQQ88FQqB1pwtDxzR3Z9fyqDxnG04Jk8W7+w==
X-Received: by 2002:a17:90b:1642:b0:1c7:2497:3807 with SMTP id il2-20020a17090b164200b001c724973807mr8088350pjb.176.1649815575283;
        Tue, 12 Apr 2022 19:06:15 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:669f:cec7:c0c2:1cc])
        by smtp.gmail.com with ESMTPSA id o3-20020aa79783000000b00505f720bb76sm4234053pfp.215.2022.04.12.19.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 19:06:14 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH 2/2] soc: ti: wkup_m3_ipc: Add support for IO Isolation
Date:   Tue, 12 Apr 2022 19:06:41 -0700
Message-Id: <20220413020641.2789408-3-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220413020641.2789408-1-dfustini@baylibre.com>
References: <20220413020641.2789408-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dave Gerlach <d-gerlach@ti.com>

AM43xx support isolation of the IOs so that control is taken
from the peripheral they are connected to and overridden by values
present in the CTRL_CONF_* registers for the pad in the control module.

The actual toggling happens from the wkup_m3, so use a DT property from
the wkup_m3_ipc node to allow the PM code to communicate the necessity
for placing the IOs into isolation to the firmware.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 drivers/soc/ti/wkup_m3_ipc.c | 14 ++++++++++++--
 include/linux/wkup_m3_ipc.h  |  1 +
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
index 247a4b57a372..988162dd153a 100644
--- a/drivers/soc/ti/wkup_m3_ipc.c
+++ b/drivers/soc/ti/wkup_m3_ipc.c
@@ -46,6 +46,8 @@
 #define IPC_VTT_STAT_MASK		(0x1 << 3)
 #define IPC_VTT_GPIO_PIN_SHIFT		(0x4)
 #define IPC_VTT_GPIO_PIN_MASK		(0x3f << 4)
+#define IPC_IO_ISOLATION_STAT_SHIFT	(10)
+#define IPC_IO_ISOLATION_STAT_MASK	(0x1 << 10)
 
 #define M3_STATE_UNKNOWN		0
 #define M3_STATE_RESET			1
@@ -228,6 +230,11 @@ static void wkup_m3_set_vtt_gpio(struct wkup_m3_ipc *m3_ipc, int gpio)
 			    (gpio << IPC_VTT_GPIO_PIN_SHIFT);
 }
 
+static void wkup_m3_set_io_isolation(struct wkup_m3_ipc *m3_ipc)
+{
+	m3_ipc->isolation_conf = (1 << IPC_IO_ISOLATION_STAT_SHIFT);
+}
+
 /* Public functions */
 /**
  * wkup_m3_set_mem_type - Pass wkup_m3 which type of memory is in use
@@ -308,8 +315,8 @@ static int wkup_m3_prepare_low_power(struct wkup_m3_ipc *m3_ipc, int state)
 	wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->resume_addr, 0);
 	wkup_m3_ctrl_ipc_write(m3_ipc, m3_power_state, 1);
 	wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->mem_type |
-			       m3_ipc->vtt_conf, 4);
-
+			       m3_ipc->vtt_conf |
+			       m3_ipc->isolation_conf, 4);
 	wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 2);
 	wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 3);
 	wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 5);
@@ -518,6 +525,9 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
 			dev_warn(dev, "Invalid VTT GPIO(%d) pin\n", temp);
 	}
 
+	if (of_find_property(np, "ti,set-io-isolation", NULL))
+		wkup_m3_set_io_isolation(m3_ipc);
+
 	/*
 	 * Wait for firmware loading completion in a thread so we
 	 * can boot the wkup_m3 as soon as it's ready without holding
diff --git a/include/linux/wkup_m3_ipc.h b/include/linux/wkup_m3_ipc.h
index 2bc52c6381d5..b706eac58f92 100644
--- a/include/linux/wkup_m3_ipc.h
+++ b/include/linux/wkup_m3_ipc.h
@@ -34,6 +34,7 @@ struct wkup_m3_ipc {
 	int mem_type;
 	unsigned long resume_addr;
 	int vtt_conf;
+	int isolation_conf;
 	int state;
 
 	struct completion sync_complete;
-- 
2.32.0

