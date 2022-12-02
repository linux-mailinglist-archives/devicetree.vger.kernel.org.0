Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8576163FE93
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 04:13:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbiLBDN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 22:13:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231281AbiLBDNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 22:13:55 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042CBBDCD4
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 19:13:55 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id x66so3733865pfx.3
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 19:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=GzFWbtk3S9t+0VjSG76aShbOV7wvNmi2SYZMEKPNNrTRGTuFIXP51tcs/kbn4fdkjo
         DanB1GiufsQDarHpUm64Ztphf9zHHPICk6zwyn9tU4Op3V9WYXHiHzP7lR6/I3IWBh/0
         NttKDv9CXewheMn05Z/aFsl24LonisuV/Asto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=10C9l5cM9Gx+6A1r6iqoMzAy/dFS6z3guP1T2Uf7DqQ=;
        b=ajRiOyzGDeu85BcAUu2dCXNDGe2gf9eooqbWhbhif1LzbTai6JOjz7fiKy8e7WY50+
         v0vIM/mgfFFDMGOy+ls4ZyNNyyyHnutm3vqCrf8D3AFcAVFtfTinY+6CS0zZ3TjskTHK
         +3KAZk75xN0ozOXK2M3xE+I/D/dNk0hCtsZfzjhERBoXaLxcmitxCG+FWfVX2F4JSXLf
         soFqC1tCLrlRhsINOtTagRcUX9wwCw4Z9A66JbtHlmvXK6OLPtd7lkazgddyDyMaKaox
         oyyGLBkQONImKKNvZEweuwd7mDWPQAQfppNkLh9acxamVio9lXDq9wyYM9L6FNIIcaML
         PMAw==
X-Gm-Message-State: ANoB5plWNA5hBQgjeDQzkrMP4zet1oBzVNkx3vYzqkJM8CrpPAhDVsX4
        yix8jzMmA/IDra8v3vLXLtWNHw==
X-Google-Smtp-Source: AA0mqf4o793oxYNk0FFPeFBWUTicJJXqgOj7ZiMm623X3fFZKUdWvG/U0vCNIQRUALcpLh8gH54DJw==
X-Received: by 2002:a63:4d61:0:b0:477:b1a8:531e with SMTP id n33-20020a634d61000000b00477b1a8531emr41918713pgl.158.1669950834441;
        Thu, 01 Dec 2022 19:13:54 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id jx24-20020a17090b46d800b00213202d77d9sm3708410pjb.43.2022.12.01.19.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 19:13:53 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 2/8] mmc: sdhci-pxav2: enable CONFIG_MMC_SDHCI_IO_ACCESSORS
Date:   Thu,  1 Dec 2022 19:13:24 -0800
Message-Id: <20221202031330.94130-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221202031330.94130-1-doug@schmorgal.com>
References: <20221202031330.94130-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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

