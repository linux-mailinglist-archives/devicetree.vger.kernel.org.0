Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14E744A7454
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 16:13:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345394AbiBBPNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 10:13:36 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:51536
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239085AbiBBPNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 10:13:32 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 91B764030C
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 15:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643814811;
        bh=duSAVgvelNICvdKrcx93NtKcQsfey6iTKnfcyqiY3yY=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Glw3FTXzWUWX+Qx+Y5dsWBc6dTEGpgNCoHy3GNWFfFmhhOWrjdZBsGZ9TJ1BKeAJ6
         KFZ6/Z7nvcDVhS7m8S1BMwmloW+6bwGTOPynzJW5qPdo4Ek+oex0aKvJ6p40it17kU
         PGpPdg8hTfQIeGsnIQOR6fFI20kp1cPQFmB7wK2FfFYbSmmwVBxP3SjMopLT7ZNYEh
         6GcTUwBdtSJ2Cd0S96J6gEhY4XZtG1TFreSJmKbHZM6w9YQCkmWW8jAnNnCxeAvqV3
         ibT2aIDWZzF4SBfXT8f3rhndFvp9mjQPVC1HeIicMMVuOQMSahWKB0ue6pK7Jf7+BX
         2+isMMI2k5cCQ==
Received: by mail-wm1-f72.google.com with SMTP id m3-20020a7bcb83000000b0034f75d92f27so2619151wmi.2
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 07:13:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=duSAVgvelNICvdKrcx93NtKcQsfey6iTKnfcyqiY3yY=;
        b=GPSRLdB5KUT7rSpRquOTlIiunJEI7hYbCJYqmi3Coql3NW4YuM5iKIkGA7/VuLxAb4
         hquZFuOzNAWeiI6LvMHoCt9g9A7vq5IrSsTccGQcP5AgE+hAzTqTG6uGA8Vo3niFQjxo
         /Rff78B7Fi6/JeA71akr8gnj4M63Ia2K6Qpj/ju2T7AYsTHNrSyXeIboI1dKGrCA9pDj
         etOlaEafcDT/hnrb29JgxgMXD0U1aOMow4Nib++quM7wWtY+o6NwaQoZn7CBoesy3Q5C
         880SPVYeEQctNwmg/MppV++otsZhZWZGuho0xWrV9F9boOUuaJESN13hpURJuYnMJs3T
         TDZQ==
X-Gm-Message-State: AOAM5323soSNVr1eVGp0fYDcv7dHknrX2WsTAnX8h5pNk2Byy+7Tw4z4
        zgcFxiJ5CKoVhg7Obv/OGozeikojwFp6WdQsfn9jBOXDtmC3m2LlN79xG/Vq8fK9RW/WpjZj8tk
        cbZPi+gQnp4HNbRVYfdpvBbhApAu9yoij9GqoJt0=
X-Received: by 2002:a5d:5986:: with SMTP id n6mr25028460wri.574.1643814810950;
        Wed, 02 Feb 2022 07:13:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxcQvlGtuGDsOAUNuOny5cBjriPqSZIg0IJGHnbFOwypEQNWRpEICVNmvDV+loDy3xq4zaoPw==
X-Received: by 2002:a5d:5986:: with SMTP id n6mr25028444wri.574.1643814810787;
        Wed, 02 Feb 2022 07:13:30 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id p7sm5098872wmq.20.2022.02.02.07.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 07:13:30 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org
Subject: [PATCH v2 2/3] mfd: exynos-lpass: Drop unneeded syscon.h include
Date:   Wed,  2 Feb 2022 16:13:09 +0100
Message-Id: <20220202151310.285561-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220202151310.285561-1-krzysztof.kozlowski@canonical.com>
References: <20220202151310.285561-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

syscon regmap is not used since commit addebf1588ab ("mfd: exynos-lpass:
Remove pad retention control").

Fixes: addebf1588ab ("mfd: exynos-lpass: Remove pad retention control")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/mfd/exynos-lpass.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/exynos-lpass.c b/drivers/mfd/exynos-lpass.c
index 99bd0e73c19c..166cd21088cd 100644
--- a/drivers/mfd/exynos-lpass.c
+++ b/drivers/mfd/exynos-lpass.c
@@ -15,7 +15,6 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-- 
2.32.0

