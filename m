Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81DE432CB14
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 04:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233019AbhCDDom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 22:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233039AbhCDDoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 22:44:24 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0BEFC06178C
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 19:42:32 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id t25so17994293pga.2
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 19:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hFDDuuLCKMVUPK4LrKSbpDVOykG8ODUpVOe4CV5ias0=;
        b=1opUXAsn2Kt8qlhlTkZuka8cdGg9pcFuMg87cVSygAl2xQ5X0EAshUWlvWYCdUXMp5
         AWhfN/NOGbE+AQh5ijSGOHHg3jjyH0fd4VMghuOm4V7uABp0spgfMvnIDwKRUAX869G/
         W56G2VbCRO4OEYFtODPVNbJjZh6mwMdU0ouuqzzVtGYppmVCCfeGoIO6RsLHVQHkLkNK
         1ZxI+fVL/wfF2uDsCHOF+HI/Pmd+UC/fXWbqWyKw/AcAenGrPGOFQ9s1JRoC3rGsGD9/
         Rok3iMUTJpkyj69iIt3abyN9gQAvOf7PIDT2Ax8l10B9yQWwO1UJZxh67pP+3qHp+l+d
         kX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hFDDuuLCKMVUPK4LrKSbpDVOykG8ODUpVOe4CV5ias0=;
        b=Mm3sJ+qeo0arIgA0kNwGmPTChJGNtttk6dFUjkyotWWSQhvjcZFX8NZlRkr/HiIje1
         9aNpoNnpLtxbIkVBIHfoD0C6/5c4T5UJ0mOyMm1dj341nE+uApZM5o6BwiAQfpItlFPl
         SbQdA8VB6AEZ1vQFn9YC/TdQVG3A1JG4Z7Q3Y40b2lkq85VAZ6RAFf6+mEQZPv2O3fUM
         VHmU4+DoE+PjaHEl4DzVPv2pkv1oElFp215vsB2hlMCRaaO+E63/KCdBwPcFMQDh1qgc
         fbrJye5a4uLPbc4PZESCzzGlYXW4mE5Mh100thMahD5iYkJclxgru2PiUh249lqeLb9j
         XumA==
X-Gm-Message-State: AOAM531KHQhwX1WAQ6MhdNuYQiaCf5ZXxr//2Y8YF9Z/eClj1rKja2DR
        YgRUv1CzSOCoyjS8+LauyeOVIg==
X-Google-Smtp-Source: ABdhPJzLtFoQNkM8z+nPvDTwYRktUQTeKXYN+F/VF6vpP4GvYQVlLQkPZGGit0J8TlMHm+yaO6XMow==
X-Received: by 2002:aa7:8c0f:0:b029:1ed:4d05:218c with SMTP id c15-20020aa78c0f0000b02901ed4d05218cmr2256407pfd.21.1614829352253;
        Wed, 03 Mar 2021 19:42:32 -0800 (PST)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id h17sm2403989pfc.211.2021.03.03.19.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 19:42:31 -0800 (PST)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/8] arm64: Add config for Pensando SoC platforms
Date:   Wed,  3 Mar 2021 19:41:39 -0800
Message-Id: <20210304034141.7062-7-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210304034141.7062-1-brad@pensando.io>
References: <20210304034141.7062-1-brad@pensando.io>
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

