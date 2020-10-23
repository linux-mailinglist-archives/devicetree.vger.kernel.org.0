Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04E112976BD
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 20:18:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S374294AbgJWSSd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 14:18:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S373962AbgJWSSc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 14:18:32 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A111FC0613D2
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 11:18:32 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id c20so1978961pfr.8
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 11:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4m6jfpbMPvI670v+G/621vDvUbzIbqCiowX3qojKrHw=;
        b=OnkZ5bNo3R7+KUYl2VjSFO4cE69flfZGBlgFhKWUCEvet4c7zl9z0V4Qa/bIHcoFlb
         ZvZUeqnObh5JBFDqgzycXfZq1QwG8mAJvv+v8eHfYQGSRUAvRlxsm1u5CI98zQOirmFj
         4yjjrW5PwzY1KGllFJ+rgc1yGbwPVz+8jyU0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4m6jfpbMPvI670v+G/621vDvUbzIbqCiowX3qojKrHw=;
        b=imvG43yZ36x8IhPEsPEzv5LH1svPWhBFc9QySex5G4ZnRpll0fyfkVdpn3aTR6sG2o
         ygjEmbHu2Qp0Fl93prUzFW8xoiQG+9zDII6omUbBKGGStQDMHJK2c7hWPd5CeY0iomKf
         gWYbVB5ua7tYmCgGeN072n2ZucK0PZXrR3sLf4UElPKdabNkkLDOZckNSO93e9WxzXGT
         +0OmjPYMey4gxgXSYlo3qoye3L7JKKTHHwlbIJadNCCV+Xosfnn+Rqzw7yuuSLb2hAHz
         qeKjK2PNvrMT3HFQZSut8eDqDbLagyazpxoAFzapRFwJT04pvydjdQhp0Psza0WzPYoW
         YcTA==
X-Gm-Message-State: AOAM530cVIqNbKOFQXU+qNU9/ik89/qegp8lcVEZt5ZoGl1AmY84uE7X
        xLByONSgXnBgAcZSA8/A3Zzbxw==
X-Google-Smtp-Source: ABdhPJybfaHmQ0Qz0QLxS4XqhlxkmDHZb4o+gWXwJ3icSXABR6RqkLoRyXl0QuuoqyOHS54Cas/Ysw==
X-Received: by 2002:a63:481d:: with SMTP id v29mr2942292pga.448.1603477112153;
        Fri, 23 Oct 2020 11:18:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d08:2249:ad54:d32d])
        by smtp.gmail.com with ESMTPSA id q24sm3271162pfn.72.2020.10.23.11.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 11:18:31 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Tom Cubie <tom@radxa.com>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] arm64: defconfig: Enable RTC_DRV_HYM8563
Date:   Fri, 23 Oct 2020 23:48:13 +0530
Message-Id: <20201023181814.220974-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RTC HYM8563 used in the ARM64 Rockchip SoC's SDIO power
sequence enablement.

Enable it as module.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e0f33826819f..7f72d3b4b39d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -770,6 +770,7 @@ CONFIG_EDAC=y
 CONFIG_EDAC_GHES=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=m
+CONFIG_RTC_DRV_HYM8563=m
 CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
-- 
2.25.1

