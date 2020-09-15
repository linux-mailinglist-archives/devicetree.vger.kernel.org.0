Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C31926A582
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 14:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726508AbgIOMrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 08:47:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726477AbgIOMrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 08:47:19 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 776F0C061351
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:46:01 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id x14so3126153wrl.12
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GVroTBa/RDLMNit62OYeyl1hwDTywX684KnqperhLJ0=;
        b=KzcCsQcCjNO2iAn9TLGuYKccXqq76Nj0G9UJEj75DZeAVJEgvJT6Akrl2s/t8SN2jR
         f+VpZ3IYj0dWNYEWjt3KYBSzy+3ss8FhI3NjAX9w7PAbvdI1K75ZPZTCdZ3N9EZTpRcC
         9KyxKduWnNaYewl+WxNSAPi5bUdQAPrc7dH2IXz/+fOpTb3AJ92YfMuVMk3VtQtucnyc
         WeF6Z35o9CcD+fsh2JtEmSrhXeediy1NniiqbJptEfq45VvvtOXHPVKjusNu4HMMoBXC
         CHYpVKAW42yRxwxbyVUQvVGwzhaw46d2jKslG9h9oQI15IMindO2vTldycnwE1V4VQlW
         dF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GVroTBa/RDLMNit62OYeyl1hwDTywX684KnqperhLJ0=;
        b=RPB3IYVvQQ5NRbEuaWCIaLSbX8bauawdYCZpb56ZFAl66DlJd+WsAfZC/31Q/cH24p
         yI5Z0Y28CBfMuu+a3mt2bVe/4qu8+t/YoENL6nT0SwGNjG5FLR+ljFSem0JF3duKzTf9
         mvWcadxk5gGBf9UkTUI7ccotlNTqAQwqr9KJUF0NAkTSGukaC0rPUNT5ctAWX6QIQVHG
         11/OoiFFwuZRvHQFojfiTUMSNs2rj0NnMIOvx6tEc1jcrS95SWI8yS46u2U/0S1rUtZU
         vyqjfzp20GKbwU6zsc0zLZYQ4cYMyRBRmL3NDW6PYGIuMpo/zIUYOLYvDcFoTero8SDv
         40HA==
X-Gm-Message-State: AOAM530aPXCrWxF1aG3hlo0wHQVorn9eaHN0s1i2U1GbehwfTcJvWSLi
        EtbkkW+uI2owBOXuSWswzf95Ag==
X-Google-Smtp-Source: ABdhPJysDu/Y8r8jEY0r1n/+h2yMo4tuRHu2mdOTiCUa1sJv4dyYJnuG+Dz8/5wjkBbEz3rOODjJgg==
X-Received: by 2002:adf:e690:: with SMTP id r16mr21086562wrm.15.1600173959260;
        Tue, 15 Sep 2020 05:45:59 -0700 (PDT)
Received: from bender.baylibre.local (home.beaume.starnux.net. [82.236.8.43])
        by smtp.gmail.com with ESMTPSA id q8sm26548589wrx.79.2020.09.15.05.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 05:45:58 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 2/4] dt-bindings: clk: axg-clkc: add MIPI DSI Host clock binding
Date:   Tue, 15 Sep 2020 14:45:51 +0200
Message-Id: <20200915124553.8056-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200915124553.8056-1-narmstrong@baylibre.com>
References: <20200915124553.8056-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the clock ID for the MIPI DSI Host clock.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/dt-bindings/clock/axg-clkc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/axg-clkc.h b/include/dt-bindings/clock/axg-clkc.h
index 281df3e0f131..e2749dbc74b8 100644
--- a/include/dt-bindings/clock/axg-clkc.h
+++ b/include/dt-bindings/clock/axg-clkc.h
@@ -96,5 +96,6 @@
 #define CLKID_VCLK2_DIV6			130
 #define CLKID_VCLK2_DIV12			131
 #define CLKID_CTS_ENCL				133
+#define CLKID_VDIN_MEAS				136
 
 #endif /* __AXG_CLKC_H */
-- 
2.22.0

