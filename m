Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38981338C31
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231439AbhCLMAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:00:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231437AbhCLMAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:00:32 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A1D9C061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:32 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id l11so4655922wrp.7
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ns+tspE3TpNVqG5EYUwkfh0nuT4Nkt3p2sWFNFRFG3w=;
        b=P6+peZvDODkplKd7B975gw81MJr7jqWIWBOCgEwcQ6jwIjBbL1A4fSfPMJubO9u/HI
         klsjbXDAggxVo9agrb0jMULcytEzWovafXLqeTCJPvnRVuG451MUOen4ZgTsVM2xkmPx
         DP9VCq/2rpA3kT9bLXvhQb/qWsKgd860Kvp4RuYkjt82c9UgfGZHbDma2ONT3f5uiqjL
         Pwj//Vr/Sac6hv2F4v3XuEZEVPoDILbXRZzgFSDFcTzf49sp9XrwfQ4NBP6fpT2Cs8IF
         hIS8V8ZOPlc4RmjO3OSHfUKRPmjyHP8VyroNx0+sTrQT0WluViH1T5wWPBQy0ZEpZsNU
         feew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ns+tspE3TpNVqG5EYUwkfh0nuT4Nkt3p2sWFNFRFG3w=;
        b=jDjBc8ixcDuAfSMPRCFILIqwoBkqlCNiz+GlNNA3yUDOygyZ30sI0yYqcsaKmZHjnb
         DC6k92eV7w6nVkffUJlWFJYJAt26TQP1Xiw0M/ZLx11jeHuCBle448zFBVI39m1GAYqX
         myR5o8oMFf/ZRYDPnXtSvyIEGXNydcRrXPHe2m2GgfESXQnPsi76pt/EBWRkaUqL7d25
         3Q3xpbSvp1hyexU6yjIcqb64ir2IKguIxj4ipHlM+pktH++t2BzcuNo/eIFGygNN91KA
         ZB9EaJWH8HfPF5VeYM5GwwBa+cge9/hvgBUgImYbP/0kT9LJbbaaPr3n8+wYA79eE6f9
         Qrxg==
X-Gm-Message-State: AOAM533mjgsPWpW5FFgKE1O3PQDvsJimQm17n1ws4omRvejQZ8Ht4HWv
        5juZBb9SgvJFQ5d4WTE9oYW7Iw==
X-Google-Smtp-Source: ABdhPJzSUeK2qRXfZNTLJGfilhw5GBIt689/i+iQfv9UnkTEj5vCg6xatpfddnC7X66twH0g4f5VAg==
X-Received: by 2002:adf:fe48:: with SMTP id m8mr13403133wrs.135.1615550430888;
        Fri, 12 Mar 2021 04:00:30 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h25sm2268315wml.32.2021.03.12.04.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:00:30 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 7/9] soundwire: export sdw_compare_devid() and sdw_extract_slave_id()
Date:   Fri, 12 Mar 2021 12:00:07 +0000
Message-Id: <20210312120009.22386-8-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
References: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exporting these two functions makes sense as it can be used by
other controllers like Qualcomm during auto-enumeration!

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/bus.c       | 4 +++-
 include/linux/soundwire/sdw.h | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index 46885429928a..6d7708964735 100644
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
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index b032d6ac0b39..c677ab1013ab 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -1011,5 +1011,7 @@ int sdw_write_no_pm(struct sdw_slave *slave, u32 addr, u8 value);
 int sdw_read_no_pm(struct sdw_slave *slave, u32 addr);
 int sdw_nread(struct sdw_slave *slave, u32 addr, size_t count, u8 *val);
 int sdw_nwrite(struct sdw_slave *slave, u32 addr, size_t count, u8 *val);
+int sdw_compare_devid(struct sdw_slave *slave, struct sdw_slave_id id);
+void sdw_extract_slave_id(struct sdw_bus *bus, u64 addr, struct sdw_slave_id *id);
 
 #endif /* __SOUNDWIRE_H */
-- 
2.21.0

