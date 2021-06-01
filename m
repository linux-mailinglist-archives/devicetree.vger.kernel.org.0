Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8BC1397638
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234497AbhFAPNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 11:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234297AbhFAPN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 11:13:26 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FE3CC061763
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:11:43 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m18so14733524wrv.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+GjmxYyUga7B4GL+GCcTHSSwwi6F91q3aeKrD7ugyx4=;
        b=ALrkzpxJ1biPvqhqumjgIqBXq+bep0HrKvz3jz+nlA/sKQvui6LfibMA1czxiBD2Tn
         BpvnZsNvgMoxqhyDcLqpwiK99vAb7nBCtcE803sHwg0yjzhiqlV/5NoTKT+6UkqfnVlt
         lrwL7hY9Sm4oa+XH4zoClOyt+8AvjI+Lq7rwZLjuS4QDoWUU5xgDAyyFsOmovjSGq7cj
         QuJg8XIWB41cFrLz3/xvhn3TmRYzCywHyFVmYqSyXa/y2v+4S6ecV0MW3XWbdSng0Ico
         wzHmja10yvaOc+U5fydDd6RLs9FNUUF0dtJR+2Lk3jOufW/Lb01JReqM6+0S7FMCs+mN
         mYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+GjmxYyUga7B4GL+GCcTHSSwwi6F91q3aeKrD7ugyx4=;
        b=gjKB2FWadiXZo4aB1NrOI7RwMFiQqbHfDbceoq7OpWLWiPtLtb09g84Ec/E30WfbXL
         WUkMYTVQhRoI4h76n7jRGKp8dZ7QBMXCk6974nfFeduqSltzDQ42a+EbIM+lhyCRwnpc
         OI++sm+6oiSgB2ZrtRRMf70bkvHkKorijmInPONJBA33TGilhYtUpQTOyyGGWad0Ryyo
         RGOO0jCzwX5vLbDCRcDw9rpQmQ3zK0GFqQR8KLSM7lxCKYWISQ2/uNW61PI3dohyCogm
         er252ZVdef3kW3M3h3331IfcGyMLXW+3HBAej7fkq/AQU9DOJQkVRdcjX0Ee8RRBuAEA
         xsDw==
X-Gm-Message-State: AOAM532oEArdD4TVSOQGVpxiMniahzBdDeJ2pBDsShtQjEnvqgXqJut2
        i2/RG6Q4PqOYlAsDQLQVm50XWA==
X-Google-Smtp-Source: ABdhPJyV59TMbxN75gBzpa2VPvEZRuB+a5vUoi7VNyYoZhJaB1DMacQ4LthLe9mCtnE3Cn36NQ270A==
X-Received: by 2002:a5d:4f05:: with SMTP id c5mr2512404wru.341.1622560302106;
        Tue, 01 Jun 2021 08:11:42 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f20sm22344163wmh.41.2021.06.01.08.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:11:41 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        linus.walleij@linaro.org, linux@armlinux.org.uk,
        robh+dt@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 4/5] ARM: gemini_config: enable sl3516-ce crypto
Date:   Tue,  1 Jun 2021 15:11:31 +0000
Message-Id: <20210601151132.1893443-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210601151132.1893443-1-clabbe@baylibre.com>
References: <20210601151132.1893443-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the crypto offloader by default.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/configs/gemini_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/gemini_defconfig b/arch/arm/configs/gemini_defconfig
index d2d5f1cf815f..3ae4b8f62b82 100644
--- a/arch/arm/configs/gemini_defconfig
+++ b/arch/arm/configs/gemini_defconfig
@@ -100,3 +100,4 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 # CONFIG_ENABLE_MUST_CHECK is not set
 CONFIG_DEBUG_FS=y
+CONFIG_CRYPTO_DEV_SL3516=y
-- 
2.31.1

