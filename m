Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C219B659158
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 21:04:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233290AbiL2UE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 15:04:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiL2UEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 15:04:55 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF3314D19
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:04:54 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id o31-20020a17090a0a2200b00223fedffb30so19832421pjo.3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=iLgLqZLDJX2Ye9k2/ZAPmcANrBpyk4t23vNaocACF/ibMZiqhhDK6V6PsAIdG3YgSW
         kjzCxD6jqR4RpJ2myc3jA1wKWiY6kn5x3pCQHGABMeqNSlOrqDHE8U+SVsQJzJMs5URT
         eyVAwAgANinXdCitGy39kOIuROIWPbPTF1BuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=tNaXNyrR+X4WKbWPQN5dFG8NSSTnKwBykyCXBqRlOjGmJWERw6z5/2/6etb6KcaSz7
         +rN4h7U1VHiwImQJsn6021G2B6UNLmuOS6PTbZr4pZ/rDpDtn50EhD174H/T9XpDHFld
         Ry8YEvNs7yZIagBH4WvoPFSsc3O/bigP0J/ieUg3V2DTZiv6zzJDWrLi+hU9fyVM5Ib5
         Zyn1NutYyZHaKud+Cz+7aEUGukodKJjS89fK/Wpnir/GPugabIUTY0txkuAT5i9Kkx1w
         pfchDQy9wrXIZ6HI9F7lF48P2Ql1sezVQM1SyP95XSpY9LH8scJbCAZMCn2vd289lhEx
         YPYw==
X-Gm-Message-State: AFqh2kqamepyXlIGURfFKV0gvWfQWdHNodqzz/Weo7OnrSo2jVUM4M91
        r5cY1TmCmOXFPv6MTo06MorTtg==
X-Google-Smtp-Source: AMrXdXuzwQ4VItMxn8kr5amybyS1WH0+aoq4c9oWoZrJZAIFnawIFPwWXypWM6CPWzQaP0jziQwjiQ==
X-Received: by 2002:a17:902:e543:b0:189:a6b4:91ed with SMTP id n3-20020a170902e54300b00189a6b491edmr44840220plf.17.1672344294143;
        Thu, 29 Dec 2022 12:04:54 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id w17-20020a170902e89100b00189ac5a2340sm13438589plg.124.2022.12.29.12.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 12:04:53 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v3 2/8] mmc: sdhci-pxav2: enable CONFIG_MMC_SDHCI_IO_ACCESSORS
Date:   Thu, 29 Dec 2022 12:04:05 -0800
Message-Id: <20221229200411.295339-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229200411.295339-1-doug@schmorgal.com>
References: <20221229200411.295339-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable CONFIG_MMC_SDHCI_IO_ACCESSORS for the pxav2 driver. The read_w
callback is needed for a silicon bug workaround in the PXA168.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/mmc/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 5e19a961c34d..b9e9185c86a6 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -360,6 +360,7 @@ config MMC_SDHCI_PXAV2
 	depends on MMC_SDHCI_PLTFM
 	depends on ARCH_MMP || COMPILE_TEST
 	default CPU_PXA910
+	select MMC_SDHCI_IO_ACCESSORS
 	help
 	  This selects the Marvell(R) PXAV2 SD Host Controller.
 	  If you have a PXA9XX platform with SD Host Controller
-- 
2.34.1

