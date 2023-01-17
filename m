Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 086C466DB9E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236401AbjAQKzm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236345AbjAQKzf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:35 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B0E305C2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:34 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id g205so6048389pfb.6
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nu/Ix+1gOtGEiBRhLoDua7gRgmdwQFVNbDjh3YIsf54=;
        b=SJpFephnhqR1betrvPfxruzIEt2ihI0Xv5lNtiGSQjI9uZ13A8TY3i7bEpzQwRXwZ2
         J0E7adH6YIdCu8m1NGc63e9+UJy9+LECBMdXItkPPO1ZzycLFf445/FFDOJAz/heea4t
         sZeKSNRpLL4dyVgH2HW/QtP7gyoQ2VdRN4Mdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nu/Ix+1gOtGEiBRhLoDua7gRgmdwQFVNbDjh3YIsf54=;
        b=11ZSGwRroaXbl/yDjmwlTJIgUp6HNgztNtZMe7fpmqRIYhv0opQQaUZsgbuHOWNeHB
         vD7D6QeD/6q3ASrgqJooKJIDcQMJ6bzYKgjySinxBLg0BlWdNwip8Hf/ItYIFGrccjWE
         NoLB1S08eQhQu+MgA01LiFgY5+Lvm5vHif0Um9IR38KhZ6NAH8FPIJSZvYLPsOBwudEm
         mnclLFrt4sysALpr9cPeGE3uacixyMvprPIL7COG5CNxtT9E/sQoNltvBK15lrci4sCc
         qR0D3ocGyRrX/C3W/JmrlUgQx6faPvmnZCirEdwSXnhSLfFtLLbUsK0LbwKpKwRmL288
         GGlw==
X-Gm-Message-State: AFqh2krP1hiUAlM6o+zOu3nYQWXfkxtHnCe5RrrdF9f4HMCYQp01eZ6n
        /sls292eIrRNrYC0uxOXZVY53Q==
X-Google-Smtp-Source: AMrXdXuCQoqv/WgWQnkqCbkSTbfMvmwfrLPdhpYntThE9zYVbc5QmSgQpIcstJa3f0G3+1TCPxnu+g==
X-Received: by 2002:aa7:910c:0:b0:58d:a924:9ce with SMTP id 12-20020aa7910c000000b0058da92409cemr2944036pfh.7.1673952934037;
        Tue, 17 Jan 2023 02:55:34 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:33 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 5/7] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
Date:   Tue, 17 Jan 2023 16:25:02 +0530
Message-Id: <20230117105504.18296-5-jagan@amarulasolutions.com>
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
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 0c9a918b809a..1bada98a4d8b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -6,7 +6,6 @@
 #include "rk3568.dtsi"
 
 / {
-	model = "Radxa CM3 Industrial Board";
 	compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1

