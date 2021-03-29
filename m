Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05E7334C199
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 04:00:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbhC2CAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 22:00:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbhC2B7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 21:59:54 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5F7C0613B9
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:54 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id x126so8833905pfc.13
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hFDDuuLCKMVUPK4LrKSbpDVOykG8ODUpVOe4CV5ias0=;
        b=xKlytlsBzwGNAFwU1VhNkhjcwEyCmNQIczCp06u/q0KfQvgaZZuEhz3WOEDFHmETZ6
         rBE/162JqmYTWIthPZTVvFwj/m1RFqtfRGP8IKYTIh1yeGtYIFYUx7vHvNUqC1SsRj9z
         5Mw0CDoa8E4TceroBJh/bEHhN03w06O1s4cZY3mWw+oUFE2FUe7WFw9PUmKVRDXW5nJ9
         eXwWMFVNAyrVEQoqMjzpFp+AD84fMz+MhqQwF2ODOP9JeLnhSO8jv4IAhaCVSz/XV4jE
         SLNVg9l2ShQKdRudkdiF3xQZxu5qOFy5IDoCq2U2Ij5S22mjJZmR1PYJK0B4VgH/u5Fw
         /Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hFDDuuLCKMVUPK4LrKSbpDVOykG8ODUpVOe4CV5ias0=;
        b=n9saqvUlEv4c6m/+pQQHv6YRfsfOnCnXbH71NmY5dmam9naDtBhDpggsVRn20hZyj6
         xHd2NjKLDtEK+EZVfp0yMddgsWPCQRo9BV2oR5oa8U37e2ifpY7hBvJY9jKFJI79ciJI
         fbBxd0JBAbmmfYg4hUxVyGBi2kH/RHk/H1cxwBw4pEGQWPIPPiF6M8ZykOPFtk4fN5PT
         F/yIiKY5tdoE937bos64ah0CfXiEGUPvGWojTG6x8tS8DbMGestqoPlJeb4LFBurGz/9
         SXYxK4YYyBPwjHj51y7PJ/oWbKSQBjcKqlqBzTlKbozh7eBfCqyJ4utVIFSp/NR2OHlX
         uJyg==
X-Gm-Message-State: AOAM531VDEi2flTXQ0pFIDlLy0P0R/kHzqeouaDTCWPuiL5njYJu6TK0
        r/pufX/Vazfy2+B9PhlNYzbV7A==
X-Google-Smtp-Source: ABdhPJwej5FvA3qbg7diAr+YwUP02ukL5pGxFmtmHovYsBxZ5iVBfQwJDwqkiski1VTrQ0GBw0n7Hg==
X-Received: by 2002:a62:7782:0:b029:1f5:b56f:525e with SMTP id s124-20020a6277820000b02901f5b56f525emr23413452pfc.20.1616983194208;
        Sun, 28 Mar 2021 18:59:54 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id w37sm14728027pgl.13.2021.03.28.18.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 18:59:53 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/13] arm64: Add config for Pensando SoC platforms
Date:   Sun, 28 Mar 2021 18:59:31 -0700
Message-Id: <20210329015938.20316-7-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210329015938.20316-1-brad@pensando.io>
References: <20210329015938.20316-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ARCH_PENSANDO configuration option for Pensando SoC
based platforms.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 arch/arm64/Kconfig.platforms | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index cdfd5fed457f..803e7cf1df55 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -210,6 +210,11 @@ config ARCH_MXC
 	  This enables support for the ARMv8 based SoCs in the
 	  NXP i.MX family.
 
+config ARCH_PENSANDO
+	bool "Pensando Platforms"
+	help
+	  This enables support for the ARMv8 based Pensando chipsets
+
 config ARCH_QCOM
 	bool "Qualcomm Platforms"
 	select GPIOLIB
-- 
2.17.1

