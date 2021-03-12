Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 685B7338B9C
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:40:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbhCLLjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:39:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229909AbhCLLjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:39:36 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 490BFC061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:39:36 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id g8so3615692wmd.4
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mGFYaFoZGjo5NxDZ1LQpVesb6DQQaa5iPWIxyqLl8X8=;
        b=yYyuZSidKe3KaG+8fbP8QW5dSsKPv2q6xMm2NmDKR2Vc7bYpblOu6Don5G8cjIi/va
         sZ7ghr2Ej0Z8wnYfXl4ZRK4xO5My77x+hOTL4c2s7QY/dOpjnQ8k4vOUOFVbPkEeeW8Y
         xZz/YlZXiMRQ+Q2UGdo1HPWWqAG0rphv4XS2bt6Pr7VN8o6HXbBniS+/dI16KjNUPuWE
         36TM6WnI3evkGuJOkTEilGYRz5DLg+fowkKRvxFAD0q/DEiM5dlz4QFVpn33FxApXZ2r
         xM5UdG0nZeFXZZV8JcjulbriafVa3ueh2d7OP42qgYNzrHtraqqSm1GnU4tOuwtV2p4j
         mZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mGFYaFoZGjo5NxDZ1LQpVesb6DQQaa5iPWIxyqLl8X8=;
        b=CHOhnO+1qUerszQRpkdci3hAk9xnIQPq2FYVT3i4xvPzxsayMQpD9M8HEzISoVxMdi
         MjH1O3cYbuE13ZVmgGcjHyH9KszgcuVF3wrUAcYIIBESUYPc1490UC8IwQszihGbi3oK
         Ml5xK7GquLBSlq0sY8G03Q/d+TnytRrKteaGwMDfRgHbHovOt7DiTZH4HwUJRbD3PM55
         fBHZsiCX+OWM49gXKEKhkPs591JlWrL+2ziKXIL7M822AOyYLPeDVLLXpYJdbsaPyWyk
         /t1ad2G8M3e1djc/6Niz0Fqc1etgoh6mexRHldpD706EpZp5I3Ya6iVF98SeaRvHnrDp
         eOhw==
X-Gm-Message-State: AOAM533TvFxKi/S7a+dCKqcPzo8VlpaLJFuvFwZvOfv+4rlrPond+D6J
        DNyHNv93dUIF+yhyAHDDxl71pA==
X-Google-Smtp-Source: ABdhPJygTa4sQibiODvvigQEBBrcoNsLhKiWnTj350U5MKmcO/BK5OxSKL0BUB2GqkcSzJa+5YndnQ==
X-Received: by 2002:a1c:dd43:: with SMTP id u64mr12622483wmg.160.1615549174918;
        Fri, 12 Mar 2021 03:39:34 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id z1sm7412458wru.95.2021.03.12.03.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:39:34 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 1/5] soundwire: add static port mapping support
Date:   Fri, 12 Mar 2021 11:39:25 +0000
Message-Id: <20210312113929.17512-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312113929.17512-1-srinivas.kandagatla@linaro.org>
References: <20210312113929.17512-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the SoundWire device ports are statically mapped to Controller
ports during design, however there is no way to expose this information
to the controller. Controllers like Qualcomm ones use this info to setup
static bandwidth parameters for those ports.

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

