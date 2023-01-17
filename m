Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 675B466DB9A
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235897AbjAQKza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236401AbjAQKzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:25 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E04CC30B22
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:23 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id v3so21645788pgh.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fJtlHTF1df2A4QOlLz/TKZ1XjsPQU9/4l4s+9UMdIZk=;
        b=kFh241HwYWmbl4x1/yagUljldgPrlmPtvL5XHrexyBctIdoiAPJfCUWEaLkCSxn/GR
         MYHy5gW4MJwVlqrhgyrBUQuf2tRxSEFKHsli8ZFMaRFZxhgtYoYw+G7QWcPQOLxtH9n2
         rq350DftfAKkfPPf/Ye68bXh35jM+4WPOtfyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fJtlHTF1df2A4QOlLz/TKZ1XjsPQU9/4l4s+9UMdIZk=;
        b=TTJiW9cLmlGFjfP3ZVA9m5M3vuL7PrKin1S38Rxj0tenesxn33/Sm7w82pdMpyFaWu
         3G4eaj7idJDS9DiHvw4QTZ7HT9t9bUMs6mjePNtrBl2PAE5D/uFU+8EjdylUm27gP4sR
         a0YxoqKHo3DnkR0vLyxY99cetS387qDlsMcJuei7Aq4kf8uH8FxgOkPIZR6QQoySKY+y
         ya576am6uMh8tSVI5Ojv6GmkK7TUo5fnpPIDJ0f+rHeCrCoUwz/USFBd1+IwCOvnIEeR
         5lDDCXzmFTOjH+HX3Oi1mr0FvAMzl/TAi6M1CV78qtXKtg4fiaKxLHoeqs5LJMfonSh3
         8x9Q==
X-Gm-Message-State: AFqh2kpshH4bABvUDqBz3vjF+ek3gQOPz31In6oH5yUJL5NkXoL7rqEz
        PcGNxjWKUcLXPSiKNtbJlgbIPw==
X-Google-Smtp-Source: AMrXdXsPDMqwTVNS1gDyLpPkddAuu0QHiS066qXAINEfq7x9//tUGuC7qb5GYz+YpGg492whi0urCg==
X-Received: by 2002:a62:be0f:0:b0:588:d6c1:66f9 with SMTP id l15-20020a62be0f000000b00588d6c166f9mr2526471pff.31.1673952923409;
        Tue, 17 Jan 2023 02:55:23 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:22 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 2/7] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
Date:   Tue, 17 Jan 2023 16:24:59 +0530
Message-Id: <20230117105504.18296-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
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
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index fb96019b0e87..a4c33310ca42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -5,7 +5,7 @@
 
 / {
 	model = "Radxa E25";
-	compatible = "radxa,e25", "rockchip,rk3568";
+	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc0 = &sdmmc0;
-- 
2.25.1

