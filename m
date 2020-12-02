Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4959F2CBC9F
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388577AbgLBMOR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:14:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388715AbgLBMOR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:14:17 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B59EC061A04
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:10 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id f1so547953plt.12
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r65t216Thxq+mYFTpyT4OjGg2gXVDw4eagVlWivHgyg=;
        b=dl3n5kTaebML2GhZwbAP/6F4kv/fdUQcJ20w30Xc5N6mA4IDp+rLVfV6Xz4dwNa6dz
         BH6K7tDoDnUBzg26WpYX20IcA2fa/4MT7d3aVlkF5Gyth8R3E3tbPgMrmEuH5WrOpWLe
         qSlmc6FraiSiHuONamreL/pDStzt0u9RCx3VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r65t216Thxq+mYFTpyT4OjGg2gXVDw4eagVlWivHgyg=;
        b=KHrG7FxMYgzwEBWaEWiFU6xXHlRByz75CP6dHG/aVSTC8IZKpqsHT+htbAToCPvSBa
         DemEcyXcjwYDpgEriaxb378ZFcT2jHRXTVY6cAeuGgA8TIf4Q8kCUdazHiU1Fy/64G8f
         NQcoCNn7lRuSssWnAFgnvYX69ybo3M0k2sGxxMJAv1azoNnsCsE7vFQfuaNFFcalV8E8
         HfawFj5eNL3RCH8uojKbwl9OiEkXp8OAw8hgygpjp6OG/AmJyTJyKMBwoZjrc+SeNBqG
         kDH9uRISe2lndqtoAQmF3l09RTCppBkySbCF/u24HghOihd6XLMVRMyhZ3Chm0zlkIMR
         YAQA==
X-Gm-Message-State: AOAM533Wwt4qHnf0oWD/XKbffus2WIg6R2YMFICs8xISDjB47gO33nfZ
        46Ed9GYlVAClT44MspQJztOXBg==
X-Google-Smtp-Source: ABdhPJx220bSGOq0ad9GZPmlbsoPPyCBbcw+sBeq+ZCAQwNxUN12eJrAm7ba4uluze/gsWvmjnitGQ==
X-Received: by 2002:a17:90a:a785:: with SMTP id f5mr2079869pjq.219.1606911190167;
        Wed, 02 Dec 2020 04:13:10 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:09 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: [PATCH 01/10] arm64: defconfig: Enable REGULATOR_PF8X00
Date:   Wed,  2 Dec 2020 17:42:32 +0530
Message-Id: <20201202121241.109952-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PF8X00 regulator driver by default as it used in
some of i.MX8MM hardware platforms.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 867cc4a5f00f..b070ecf61fdf 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -594,6 +594,7 @@ CONFIG_REGULATOR_HI655X=y
 CONFIG_REGULATOR_MAX77620=y
 CONFIG_REGULATOR_MAX8973=y
 CONFIG_REGULATOR_PCA9450=y
+CONFIG_REGULATOR_PF8X00=y
 CONFIG_REGULATOR_PFUZE100=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_QCOM_RPMH=y
-- 
2.25.1

