Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5E4467757B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbjAWHRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:17:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbjAWHRi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:17:38 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13A371A97D
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:35 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id u1-20020a17090a450100b0022936a63a21so14454993pjg.4
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GI8NCTgrz3eH8HHLTGGwu4ZgM3J2mR0tZKBmJm8ZEFI=;
        b=AyHSatqd3SUjFsZkrghnvnPkSgYtNAYZoegmcjQ8bkGVdN9rOP/5QyzHb7MuYYZe6E
         PjyIXgUSZ47Jd/uwzJ0o7sEDXjCCvWYcmafwW8Lozy6zNDY2RuClH4qDFstKW5IEwVu9
         CeigfEACWVJvv3FPV/J0I3zK+7VflToE5PWSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GI8NCTgrz3eH8HHLTGGwu4ZgM3J2mR0tZKBmJm8ZEFI=;
        b=o9UJ+YqmeG6NQKg//NP9lpq/XgSTsz/7CDKMVCrMlCFvKerfHltcS73itRWfCvFZWa
         ai5UsuRxOyHnIVsg6n1x1uIWjUNUD1Zrkrc1F/PzHerkD48Q4GlQU/owZLYlM0SPWzxQ
         AOipwdpb4ZCo/PGosvUs1WwCWwMHiJB46Ro/gtc+1wYOthXY9APL067mfkK6l0jL/iLU
         DZcgrzf5P4gAV2HaauIWM4g2KRHgYyeCQL2HHYW1r1002/oQGC44GhH1iZVVpZyhfh06
         k3Kb8zsrJPcZuOTOncBuzCc1ZvkpvC5nHEdGMpp6WRnlXGLXgyTDqHVfOcG1yqnrn61T
         sPzw==
X-Gm-Message-State: AFqh2koXOsq1lX31dQKTDWmWHSKJwWEHLsZYAPx3mJdsGDk8ijdVLg65
        ZMEYOczKjrjwXWSruaT2ZcF9dw==
X-Google-Smtp-Source: AMrXdXsOSisp+SnbTKLWuVOng0nj+csLrTEKupg1J6PgyZ1aQ/kMu0a27LLno5vdQZS39iibZqWZCw==
X-Received: by 2002:a05:6a20:1bc7:b0:b8:653a:6376 with SMTP id cv7-20020a056a201bc700b000b8653a6376mr21850436pzb.2.1674458254574;
        Sun, 22 Jan 2023 23:17:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:33 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
Date:   Mon, 23 Jan 2023 12:46:52 +0530
Message-Id: <20230123071654.73139-3-jagan@amarulasolutions.com>
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

With module and carrier board topology, carrier board dts will include
module dtsi files for creating complete platform.

The carrier board dts will have final model name and compatible string
so any model name added in module dtsi will eventually replaced.

This happened for any devicetree property if the same property is updated
or added twice.

So, drop this unneeded model name from module dtsi.

Cc: Chukun Pan <amadeus@jmu.edu.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 225dbbe4955d..c50fbdd48680 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -6,7 +6,6 @@
 #include "rk3568.dtsi"
 
 / {
-	model = "Radxa CM3 Industrial Board";
 	compatible = "radxa,cm3i", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1

