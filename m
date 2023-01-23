Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFFA867757A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229817AbjAWHRb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:17:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbjAWHRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:17:30 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56F131A4BA
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:27 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z4-20020a17090a170400b00226d331390cso10205142pjd.5
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMwonOiSUVp9jhT90JcUAzZvSTpZ6/Yz1M6VtYsU3xE=;
        b=CQIlqmQAloiuVIqAm5JZ1Bk2PqJWFMwN8DX8XROZo/z+rWmcVm75yRw9ovQyokUyYT
         g1IGiBCEfgZ3PXfjw18lx0k1UHzJj3zLlyfye29ULiXhcUT3E1YQambsJYa57pmrjk1l
         MctNVSrMcKQOg/gjp4AtQjpbBCikx3eMd8ywg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMwonOiSUVp9jhT90JcUAzZvSTpZ6/Yz1M6VtYsU3xE=;
        b=X3AhJdcl1LcOxOoBg2POK6EUSWz/eQYSZQTn30146JnobV14ZIKqDIOOCIKj86MCLd
         IA3t9M1Di4wP8aqYC7wNdA1K/3R3o/EjToXzIRjCBnZa9528UhLJ+dhmUmYwu4nOGdNw
         EARovQtlly8EOTHhvc0/8TNiuAD7ptq8KJlU/5qXzUG15cC2MZmZ0Wzl0E0cisZ/RpM3
         nHQeZkMWd4bm3QoU/X6j2Jz7jfzNZW53DrbOUMMqILWq2gDpl14YSgzJfYaSJn2cTOZK
         kwLRX8fNs5fkIbm5ySN7MQjhzugZIwNP/unDSuHX7CDuU6Y8NnV/brxeoowWRXTqtDaI
         F4jA==
X-Gm-Message-State: AFqh2kpCC5bjGXqUSMIQVpip+EeJYeyik7OchQzqFBk2Z45o+8jTf8/g
        Y4KV+O8QIdjxVO45kq7iMeqW8Q==
X-Google-Smtp-Source: AMrXdXvUu2JbWD9FpaP1gO1cV4kQmyV69aEA3EdyJN8SBgUCbshXSTxactSZpS/eyxpH+6ZvLEoCFA==
X-Received: by 2002:a05:6a20:7fa5:b0:b9:4afb:1472 with SMTP id d37-20020a056a207fa500b000b94afb1472mr21863315pzj.13.1674458246817;
        Sun, 22 Jan 2023 23:17:26 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:26 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
Date:   Mon, 23 Jan 2023 12:46:51 +0530
Message-Id: <20230123071654.73139-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to function the Radxa E25 Carrier board, it is mandatory to
mount the Radxa CM3i module. 

Add Radxa CM3i compatible as fallback compatible to string to satisfy
the Module and Carrier board topology.

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none 

 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 0372dd97c392..9fc9459505bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -5,7 +5,7 @@
 
 / {
 	model = "Radxa E25";
-	compatible = "radxa,e25", "rockchip,rk3568";
+	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc1 = &sdmmc0;
-- 
2.25.1

