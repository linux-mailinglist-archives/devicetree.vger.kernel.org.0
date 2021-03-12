Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6ED338C98
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:24:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbhCLMX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:23:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbhCLMXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:23:00 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E68C061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:00 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 124-20020a1c00820000b029010b871409cfso15673394wma.4
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5ru3G/xiV/FesvnfCiQRQW9G+LeLCgjQacdkoFKvPOI=;
        b=rEb1ZAVk7u4jNmffOk7mLfzINp31HOQMZUlWVBN1F2s9P8pN+JhAhtVmrutZZRCR2E
         VvboNivvgKapQp0hLjn1Et0fvwqvFPT3/jQxXbInUp2Zziw0ChMUtR4ReW9vkDNaOa47
         WqpOAvxl6jLyNluRd9IkqSzz/L906chETyQVZxEKp1v58HpOH2+8tX9dS06GJhxI/5d6
         MsR7N/o3fMB+RnAWcbyfGqYYV72Ir5ufpOGUNPlaSI9hyRPzRHF45GWaKhrGTD3dCgI6
         2T8gH/Kjhva1MCuF/zRknPrKHnoZ7aLrdtFx3Gjsij9XrcOgbDF+FbqG2yzct9VzuKeg
         a+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5ru3G/xiV/FesvnfCiQRQW9G+LeLCgjQacdkoFKvPOI=;
        b=QNQGeqobauD5VEjNSgLNCZzTeLm04t5eBREXaZS1CxgCKA7vbiqHXT547KZLthFsmx
         PNFGUh+1tvGSwpj8RUDdPV/rh9rMA9OMpcdEAo7ZETs2TidNyhOWm7jXP3mjGDbcfnQi
         sNdxmp6mgPfa/LkHyyh5tIbLWnNwQJhLKqu3rvlGOaVsTfumCmrd2TxtoYffhrh3fbf2
         7oShdlQRJItsbGNH89BjHUXv2zgHLyGh8wQAX4ZDigs97vveAqqK4FP6QA2Z6Zbr+BNN
         91lUmiZog15uO091RUKe3hYaJNs7YkpVLBLmpfIFkwtFbExl5Kli+ZLBgDPBkzKYuN9S
         SCXg==
X-Gm-Message-State: AOAM530RsTd66uUmV4DzIVW72RKtjrzfxYvOO+Jt9nwKj4w2rHatDGWD
        gmpvteCxS+Gr2sWbx4QPbmEMAQ==
X-Google-Smtp-Source: ABdhPJwpydk8dosdsqVArU7quVgt8gCulgkPEEHFjnRr1TiDAGDr3M4AaBcsKdbXa0SYvUH86WN2vQ==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr12894536wmj.76.1615551779161;
        Fri, 12 Mar 2021 04:22:59 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id 3sm8804329wry.72.2021.03.12.04.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:22:58 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v3 1/5] soundwire: add static port mapping support
Date:   Fri, 12 Mar 2021 12:22:51 +0000
Message-Id: <20210312122255.3143-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
References: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the SoundWire device ports are statically mapped to Controller
ports during design, however there is no way to expose this information
to the controller. Controllers like Qualcomm ones use this info to setup
static bandwith parameters for those ports.

A generic port allocation is not possible in this cases!
So this patch adds a new member m_port_map to struct sdw_slave to expose
this static map.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 include/linux/soundwire/sdw.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index d08039d65825..b032d6ac0b39 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -614,6 +614,7 @@ struct sdw_slave_ops {
  * @debugfs: Slave debugfs
  * @node: node for bus list
  * @port_ready: Port ready completion flag for each Slave port
+ * @m_port_map: static Master port map for each Slave port0 to port14
  * @dev_num: Current Device Number, values can be 0 or dev_num_sticky
  * @dev_num_sticky: one-time static Device Number assigned by Bus
  * @probed: boolean tracking driver state
@@ -645,6 +646,7 @@ struct sdw_slave {
 #endif
 	struct list_head node;
 	struct completion port_ready[SDW_MAX_PORTS];
+	unsigned int m_port_map[SDW_MAX_PORTS];
 	enum sdw_clk_stop_mode curr_clk_stop_mode;
 	u16 dev_num;
 	u16 dev_num_sticky;
-- 
2.21.0

