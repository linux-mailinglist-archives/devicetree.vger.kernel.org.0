Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E20834EAEF
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 16:48:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232014AbhC3OsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 10:48:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbhC3Ori (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 10:47:38 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30029C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:38 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id bf3so18530275edb.6
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p958/KgSVdF5+9QpbHuTIEsCC6E24Ycmg43m5LKY0o4=;
        b=TijfAYCV9yntgSN/zpB4NqshxbZFEgPMvpo6bQnDNJenVWSFlXYCDW5B7GD/pPU1EZ
         e1PnMb1qRT3KM/JmPorV7rQQFFR10NzUOUjQk3FSITerXhbD+t98MYD791dndRthzCDK
         UxaMM5CyIjEphTUUWlydQDAv/oSzcbFw4+5IhCLrhFu14+gJB3I2Y3ScqiR5zsg1w9yt
         chPtx8zuQxg3U1TpWAiiKB1cQ04ito8ghvAe7ta274P9FXr2cXlV15x2t56CYdMOiWeJ
         OdSrh4cfNQdwONHa6IvIh05sQaOJu48JGQZpMPQKadVCQdJTUAz3fzF6Eyiec+Z78N92
         QfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p958/KgSVdF5+9QpbHuTIEsCC6E24Ycmg43m5LKY0o4=;
        b=Kzb2W00FX8918ZbZyi12qszPk7964jOh1BW/HG4jcAdpU5S/Ki13y3VVJ1hrkxq3qT
         oeUh5sLw6jD/Q152Bztmvl2FwQfwx983zkQeXj7+eXZjh7NtEReVmikjhSu54TiSFgSB
         U0OMAE9mxypY5Uc3N3tDDqY7RRq2xysafI/9Ms/OWiGXemKXSQyfYPmwYOue4NTO1Seg
         sLNFn7eB7WDm285R4z8FcDxjbC/FS7haqHJN8OAbChq9j5C6CvrlhKx+2GwsRBMfU/k7
         5+But40EahUuCSmAkHSPc161oLftoCZoAxEkmfGtwJBeeShwue5oXHhCwBAQ43bZYDTw
         /I9g==
X-Gm-Message-State: AOAM532klRCsb4Nu6QYEOo0ZAeOwzQe1aRb0m7/v5hM6TtkKOVfVioDf
        DYmHvXMIx92d32i0l+1YImnnsw==
X-Google-Smtp-Source: ABdhPJzIHvntJkZ9WV5oSDo3ZFuqPz9D9jEZRRnTk/jw9MFc4rQZbkPeJhwBvErP//sZ08l6DNe1LA==
X-Received: by 2002:a50:e80c:: with SMTP id e12mr34395379edn.229.1617115656985;
        Tue, 30 Mar 2021 07:47:36 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n16sm11520383edr.42.2021.03.30.07.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 07:47:36 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        kernel test robot <lkp@intel.com>
Subject: [PATCH v6 7/9] soundwire: export sdw_compare_devid, sdw_extract_slave_id and sdw_slave_add
Date:   Tue, 30 Mar 2021 15:47:17 +0100
Message-Id: <20210330144719.13284-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
References: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exporting these three functions makes sense as it can be used by
other controllers like Qualcomm during auto-enumeration!

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/bus.c       | 4 +++-
 drivers/soundwire/slave.c     | 1 +
 include/linux/soundwire/sdw.h | 2 ++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index 9bd83c91a873..a9e0aa72654d 100644
--- a/drivers/soundwire/bus.c
+++ b/drivers/soundwire/bus.c
@@ -603,7 +603,7 @@ static struct sdw_slave *sdw_get_slave(struct sdw_bus *bus, int i)
 	return NULL;
 }
 
-static int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id)
+int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id)
 {
 	if (slave->id.mfg_id != id.mfg_id ||
 	    slave->id.part_id != id.part_id ||
@@ -614,6 +614,7 @@ static int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id)
 
 	return 0;
 }
+EXPORT_SYMBOL(sdw_compare_devid);
 
 /* called with bus_lock held */
 static int sdw_get_device_num(struct sdw_slave *slave)
@@ -698,6 +699,7 @@ void sdw_extract_slave_id(struct sdw_bus *bus,
 		"SDW Slave class_id 0x%02x, mfg_id 0x%04x, part_id 0x%04x, unique_id 0x%x, version 0x%x\n",
 		id->class_id, id->mfg_id, id->part_id, id->unique_id, id->sdw_version);
 }
+EXPORT_SYMBOL(sdw_extract_slave_id);
 
 static int sdw_program_device_num(struct sdw_bus *bus)
 {
diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
index 112b21967c7a..0eed38a79c6d 100644
--- a/drivers/soundwire/slave.c
+++ b/drivers/soundwire/slave.c
@@ -88,6 +88,7 @@ int sdw_slave_add(struct sdw_bus *bus,
 
 	return ret;
 }
+EXPORT_SYMBOL(sdw_slave_add);
 
 #if IS_ENABLED(CONFIG_ACPI)
 
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index 350436db6ddb..5ff9a8f37e91 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -1039,5 +1039,7 @@ int sdw_write_no_pm(struct sdw_slave *slave, u32 addr, u8 value);
 int sdw_read_no_pm(struct sdw_slave *slave, u32 addr);
 int sdw_nread(struct sdw_slave *slave, u32 addr, size_t count, u8 *val);
 int sdw_nwrite(struct sdw_slave *slave, u32 addr, size_t count, u8 *val);
+int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id);
+void sdw_extract_slave_id(struct sdw_bus *bus, u64 addr, struct sdw_slave_id *id);
 
 #endif /* __SOUNDWIRE_H */
-- 
2.21.0

