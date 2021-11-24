Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50D4145CC5B
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 19:45:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230204AbhKXStH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 13:49:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbhKXStG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 13:49:06 -0500
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F142C061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 10:45:56 -0800 (PST)
Received: by mail-vk1-xa2e.google.com with SMTP id q21so2224625vkn.2
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 10:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ZvYuJffNty4suvgMDfh1Qw+wta/8QhpfauNZKyCUkI=;
        b=CZg8cYqPZHMzdJ7QDvO2NXar5ajeeS17F4+atqyF0xa7Z53dgKGDmEQ5aJSN0nbSCS
         QdPLqu91Qa6gk5FsNSm9js3G/u5ZeQTagXn87kILYhhNHO2fKfTN/Ua0GGnyesJHv+I2
         aRKlqF8ShHLXaTRP4tWUd0JCLi4oH6HVoc5luRVUcNSP/zqgdjoVLUi533QLFMJ9OBUh
         KkgmTpcfap3DijQzp1oM0pfq2XuHfaNxBffDJJeGoEoLxNWvWLmXhMVDmyZj2+iPTXqr
         fpJ1RxayEORe4ZRT7V7dJ/pmF/0MGDbgx2x5MCUPDmsUa4K62acODcZzAEwqXpEQvIXX
         UBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ZvYuJffNty4suvgMDfh1Qw+wta/8QhpfauNZKyCUkI=;
        b=ez17wdN2YTFd2i8dNxu0gH50cdJeHv/xD9EN/DhUHe9+YoXpLXjnkhUpvBj0AgOlHp
         3e8P4hnLURUVikJTboTYctTEETvLQxqvx3TFl3rRfjthtrCkP3pKrALMmYgaHEYRh+GF
         fxNl6axs13tGxi1ZOI7idqsXdO82UC3y5j/sdnHRlRsY93nNt4nqIOLvdXhEon81OoV/
         Iz4scB3Jzroh2GML0CTzgZPoa/T2uJRtZWlqVdzN+g91z+T5hTC31Wbiw/yO8gYifvmL
         UVlHHjuPe9d8mci9qClBovbS6ur4oLJcKPRn2xGtAGiB5amaTUjGINC54B+/BQBEu4Dm
         B5Tg==
X-Gm-Message-State: AOAM530GB9Znbe7HRohkqSnk13V6e1awm9cktXss+0uKvzXTqYQXNX3q
        cvs8eY5jpci1/fIebVPR0Sg=
X-Google-Smtp-Source: ABdhPJyHhaBDJildL5TigcwMII8W/2XYYmpsb6vFiNSPTZuy/+26tgNmhAOmR/BApcWrgDh+Y9wlRQ==
X-Received: by 2002:a05:6122:8d6:: with SMTP id 22mr31672797vkg.21.1637779555666;
        Wed, 24 Nov 2021 10:45:55 -0800 (PST)
Received: from localhost.localdomain ([2804:18:10c9:b8c6:de0e:1a8a:aed3:29d7])
        by smtp.gmail.com with ESMTPSA id t132sm303271vkb.19.2021.11.24.10.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Nov 2021 10:45:55 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, otavio@ossystems.com.br,
        georgemakarov1@gmail.com, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] ARM: dts: imx6ull-pinfunc: Fix CSI_DATA07__ESAI_TX0 pad name
Date:   Wed, 24 Nov 2021 15:45:41 -0300
Message-Id: <20211124184541.745827-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the i.MX6ULL Reference Manual, pad CSI_DATA07 may
have the ESAI_TX0 functionality, not ESAI_T0.

Also, NXP's i.MX Config Tools 10.0 generates dtsi with the
MX6ULL_PAD_CSI_DATA07__ESAI_TX0 naming, so fix it accordingly.

There are no devicetree users in mainline that use the old name,
so just remove the old entry.

Fixes: c201369d4aa5 ("ARM: dts: imx6ull: add imx6ull support")
Reported-by: George Makarov <georgemakarov1@gmail.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Remove the old name (Shawn, Otavio)

 arch/arm/boot/dts/imx6ull-pinfunc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ull-pinfunc.h b/arch/arm/boot/dts/imx6ull-pinfunc.h
index eb025a9d4759..7328d4ef8559 100644
--- a/arch/arm/boot/dts/imx6ull-pinfunc.h
+++ b/arch/arm/boot/dts/imx6ull-pinfunc.h
@@ -82,6 +82,6 @@
 #define MX6ULL_PAD_CSI_DATA04__ESAI_TX_FS                         0x01F4 0x0480 0x0000 0x9 0x0
 #define MX6ULL_PAD_CSI_DATA05__ESAI_TX_CLK                        0x01F8 0x0484 0x0000 0x9 0x0
 #define MX6ULL_PAD_CSI_DATA06__ESAI_TX5_RX0                       0x01FC 0x0488 0x0000 0x9 0x0
-#define MX6ULL_PAD_CSI_DATA07__ESAI_T0                            0x0200 0x048C 0x0000 0x9 0x0
+#define MX6ULL_PAD_CSI_DATA07__ESAI_TX0                           0x0200 0x048C 0x0000 0x9 0x0
 
 #endif /* __DTS_IMX6ULL_PINFUNC_H */
-- 
2.25.1

