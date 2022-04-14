Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E188501BA0
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 21:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344938AbiDNTRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 15:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343975AbiDNTRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 15:17:15 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94CD874858
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:14:49 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id mm4-20020a17090b358400b001cb93d8b137so10113177pjb.2
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sC6zeBvAQu12F4pHcyP2yBc/sNcvkHC/U+oaZNn0uLo=;
        b=uOPnNAUNUQ7jwwDqzHgu4WNfYdX+MgOjquYim4Yn6+bLjo/U9mt3hsGfQRcXEeWut5
         nqL/4igPajYp6EQbXgUOKztmxoV53xEfPVMXWYvPWURmBhCKUM8owh4x++rNHcV0xiOM
         nzlpYQ/uQZcV0eSBfQC7/sUc+0yrIzADf5be71GbD9Asgna2j14fi/Rd0Bd90m1Xc2Be
         aezeNYzxz19ZnqxGMpbvRLSX+br0+p7fzY3zIHVdMqNIcDkCoqVBJIAHPDL5wUApbQxC
         yywvJYCxIPrqSjlUMp963ymQy0bLjWocfsTWrzrMJk0H+A8Yvw5aguyCpOWlQbeNiw0C
         VBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sC6zeBvAQu12F4pHcyP2yBc/sNcvkHC/U+oaZNn0uLo=;
        b=hgela0+gByBW0VQ4HGMLbqv5b2NADV1yeK/srUHVsktQYkzte+W4zq7179dilsRgVO
         pCOWyeqD+DgDD3//+dl5UsLZKa/SzhLQwYR1xvjcnMFAnvCzRL6ointsmaYbC1FAs/2g
         Bp7BXN63FYzfwd3/I5HqeUboT8hpVhUtNMCX0IH9MH7R51ZcOw47OAEYdywr6WpNTq+D
         HQ+kA1X1DCNIGSCKrIbROIdFg/+P9tenTqmEQRnAa4QgcH5rnvgj2JoisLhG6UfAMm/4
         aFaDtnxGYDbbf+U+ODKB/C2G/YJHw2GCUIBA/wMh9ZrThLViyfB9GYfAvCO1Mvl3bMRc
         9bqw==
X-Gm-Message-State: AOAM531gp89qz5uxKiDOrEt+7NTWPVBGO4oZgXnTSFKeNBedBuUMt2op
        nzDlL0Dbm5zlZObnGOcHfCGz9Q==
X-Google-Smtp-Source: ABdhPJyf50ZI8IugN/R07ThnGCCofq3wROK1WuuGeKtd9INnnt9Chq5pHi+VbR6o91yKZi9RNl/dvQ==
X-Received: by 2002:a17:902:f68f:b0:158:4a47:5607 with SMTP id l15-20020a170902f68f00b001584a475607mr25312057plg.89.1649963689119;
        Thu, 14 Apr 2022 12:14:49 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:5b60:6a76:138d:2646])
        by smtp.gmail.com with ESMTPSA id e12-20020a056a001a8c00b004fab88d7de8sm614148pfv.132.2022.04.14.12.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 12:14:48 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH v2 2/2] soc: ti: wkup_m3_ipc: Add support for IO Isolation
Date:   Thu, 14 Apr 2022 12:12:50 -0700
Message-Id: <20220414191250.2969282-3-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220414191250.2969282-1-dfustini@baylibre.com>
References: <20220414191250.2969282-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
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
No changes from v1

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

