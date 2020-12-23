Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52C582E1B56
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 12:05:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgLWLFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 06:05:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728303AbgLWLFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 06:05:18 -0500
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F99C061794
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:04:37 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id v2so10176329pfm.9
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UCpNXBLs8298nV11fod2O1HtjRRraxH4UkX4Yv1+PQk=;
        b=rm0mYdbD8d/695juRo4oy1IhUDYL/Y71+amkr3dlh0zAnX5bfUVgOBuvAQND8lHddt
         WVejHFLn4Qt5W3WAA7Gijrl9RvF7URyAu32CGp/dXAIpDiFRIUNUqZAgRfmcynEMPfTG
         65BAtDPIfCoglSwbjtP2urQGVgQux0TtQSDQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UCpNXBLs8298nV11fod2O1HtjRRraxH4UkX4Yv1+PQk=;
        b=lF3O1ov6QTNCobXBdii8dTFDAx5UYV5FZpmNsQedRQ0jOsNctHC1lBgTf16MxWYqp2
         qsW/p5c2psNScZ+8GPjdeRn8Cl7JTdvr0qYuJUIdWt5kBrf/zqYunNy32xCtSvjle0nQ
         9TFiQzs3UgS9Fwet02NQfwfCNBveWXkpqWJVyrnMOJf/NS96vjzZStrd+5gGwoSkUwQY
         n/+B4zS7+cCmP7lOOZJiM9dS7YZQjeds1b+F0MEfkhwTqX9dj9whFd545BuCquFWSfBs
         3J7/4taIUzskXygMWcK8sNSU4zycOZcF6afrhZVIgtbXCF8dDNWNGXundMVjRE9A9U1O
         DyiQ==
X-Gm-Message-State: AOAM532UyuJqmVYr80VbPG2hob7G3pqAcB4w99PHsgTUXnr8UAmOxNHv
        H9OukEUKXlTTLnNpF/EqqgZsEQ==
X-Google-Smtp-Source: ABdhPJxA1TmgS+k2PrAa5h6XdzoifIMR7/nUKrYzrTet4Atk7S1muCkIPsTTTIs8XyWpr+0rzjEcpg==
X-Received: by 2002:aa7:8499:0:b029:19e:6c5:b103 with SMTP id u25-20020aa784990000b029019e06c5b103mr23502520pfn.13.1608721477401;
        Wed, 23 Dec 2020 03:04:37 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:eca4:40c1:8784:571c])
        by smtp.gmail.com with ESMTPSA id 3sm23275909pfv.92.2020.12.23.03.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 03:04:36 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: [PATCH v3 1/6] arm64: defconfig: Enable REGULATOR_PF8X00
Date:   Wed, 23 Dec 2020 16:33:38 +0530
Message-Id: <20201223110343.126638-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201223110343.126638-1-jagan@amarulasolutions.com>
References: <20201223110343.126638-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PF8X00 regulator driver by default as it used in
some of i.MX8MM hardware platforms.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- collect Krzysztof r-b
Changes for v2:
- updated commit message

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index fae83673c3c3..e952c76ee970 100644
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

