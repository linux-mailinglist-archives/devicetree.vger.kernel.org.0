Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B50466CFB0
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:44:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbjAPToe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:44:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233697AbjAPToc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:44:32 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40B9D2CC56
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:32 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9so31288004pll.9
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Wi4HXdWl8Al9zdbLRA4NeTDiEhXtpoSSMpcfMYna90=;
        b=XmeOYStYca7sVmV9F1A8yeAePT8b6Q8i3Oc7gOtEMiPBNDQA92AK0uJhI6IBwCkG3u
         HhaFUqO+cicO9t83/B3I6Gs5DEO5tbv7N+WN4BdGVSUTCGlcsoO5vENysIRigQcCP5bm
         JMubIZoCt/jb0rcxmhM4FQjMgFMXfwTzijX2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Wi4HXdWl8Al9zdbLRA4NeTDiEhXtpoSSMpcfMYna90=;
        b=HfilC2NG5Gt9BJ0+P9Vx27VKBaHTrJU3Pd0CPhlGiC2wXOEfn6i/mnuAx0ESB9X9TB
         0CKNCUf+SauUXjt/GczVkZLyTAqMXtv23X10RxsJekhRLJjtKvtKjRbppCbhY7kVp/2i
         6GjLlXcBbmAybL/AcvVz3qnOkh8TlyLr5rpgudzNk1/77NJV4yLiluQoAXwQyk5BWwHo
         rV2XCFwSHeBn1fr4MASPZDs63fnG6OZ3nMAIXyjhwiGkExESsuRvcBGXvhELortDxku8
         rleb8gobkM/RYvQ0OLdxIePnW+8l2Ef7nkL6rmomEpbULi7WSyBs40iabyrNl9nmvy2u
         3DnQ==
X-Gm-Message-State: AFqh2koLWnFuhe5kfm9ZHAYOhteyfupsMLzoLWkUE/b51r5bBLlEhLg/
        P+inZ4eG0aTpGuW2q/7f9mkZ4A==
X-Google-Smtp-Source: AMrXdXuzuSFP2cb1AOrdgnbHtLmgMCMk7+mhii1aaBpsAgzjDZLKE3LusqKK/Z7F898mZLNsCd2hoQ==
X-Received: by 2002:a05:6a20:8e0a:b0:b8:7b63:252a with SMTP id y10-20020a056a208e0a00b000b87b63252amr8112807pzj.51.1673898271699;
        Mon, 16 Jan 2023 11:44:31 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id t13-20020a170902b20d00b001926a76e8absm19734663plr.114.2023.01.16.11.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 11:44:31 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH v5 2/8] mmc: sdhci-pxav2: enable CONFIG_MMC_SDHCI_IO_ACCESSORS
Date:   Mon, 16 Jan 2023 11:43:55 -0800
Message-Id: <20230116194401.20372-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116194401.20372-1-doug@schmorgal.com>
References: <20230116194401.20372-1-doug@schmorgal.com>
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
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
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

