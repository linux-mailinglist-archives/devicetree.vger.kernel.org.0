Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CF267757C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:17:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbjAWHRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:17:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbjAWHRm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:17:42 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 879EF1A97F
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:40 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id y3-20020a17090a390300b00229add7bb36so10210441pjb.4
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2YGakH9pYkYD73KfKfwouPB9cCWa0mtmcn+X4PJ1qI=;
        b=rKOwd5XzvsFOgekLFnlLwsvEiUCrNhSlvpUvRYxSIohtqmWAvIsJgJGOV7e3BEWDcw
         VYZjE4nIQjYuOrnUxUllf/dXlseQY8xfX8YsKvpEDRhjYSX8cDjvQgt0Rtg8s4Ji+2Wi
         2H/3vlt9dZEQ/XT0ypBjM3bROlf5v+iNQvfio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d2YGakH9pYkYD73KfKfwouPB9cCWa0mtmcn+X4PJ1qI=;
        b=XPfBTKF0ITIblg5HcqRm5CMUDvulXaFDfdgtH5AwiWQ2mMwMT1cDjOK9r4qNBxjUeG
         vVxQ7A9Csuli4mLcPkNAzCZzpHOW/8PhkO9Jt2rz5mX+yFPaH0xFfMDj83ImH1umk2Ri
         zCtijdjqIVJHsGJoHkJ/grpKUvcGMVxIpQmQtKau8lxLcP8oFwOzw/HZiEXCFS4+224S
         j9hdSkPFZqzd6bzBXFqiU/EFecqcO38ZqUnDoSYbce9aEJ44sfAIsIEClODBX+fsj8KR
         A/rlqZobDRCOc2zugIfQkTN2uwVKiVxddBuQ8BOJh9TEUvQaOlP2hpLyZ6R1j1AMWRwv
         Y6Og==
X-Gm-Message-State: AFqh2kqBIjwjyqGFY8yMwZdsKnzYhehfzcCSLPIdTARoKYdkv83HkxOj
        H8pVw1zh1C+3GKfRsDCNrEOgrw==
X-Google-Smtp-Source: AMrXdXviTJZzXMOc8OKmyBpNavbXFCp4YfwA3oQupaeAFEbtlVRcNlIe4OclPoA1jLQng7UdgTEO3w==
X-Received: by 2002:a05:6a20:4d91:b0:b9:7a34:a78d with SMTP id gj17-20020a056a204d9100b000b97a34a78dmr9923977pzb.9.1674458260089;
        Sun, 22 Jan 2023 23:17:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:39 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Correct the model name for Radxa E25
Date:   Mon, 23 Jan 2023 12:46:53 +0530
Message-Id: <20230123071654.73139-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
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

Radxa E25 is a Carrier board, so update the model name for Radxa E25
as suggested by the Radxa website.

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- update commit message add Fixes tag

 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 9fc9459505bd..63c4bd873188 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -4,7 +4,7 @@
 #include "rk3568-radxa-cm3i.dtsi"
 
 / {
-	model = "Radxa E25";
+	model = "Radxa E25 Carrier Board";
 	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1

