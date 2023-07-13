Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37490752550
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:39:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbjGMOjz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:39:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbjGMOjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:39:54 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD9E32707
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:53 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-666e64e97e2so520874b3a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259193; x=1691851193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zB1XPfhcNMtArl3vuKIcc3WSzGrnVrigx9OQGKNyiw=;
        b=0P9DSscAeX+uPqfiFSd7MFJE+7fGIgHocGha1bu7Htu/PibTRPvs9ejyWs30Xu4P0b
         Y3gw6m2vuG3owKyw4f0o+vsf5uY4tKVVmXnsKKbrrZ6vvvbarfmJpBYG/qvbnU0UT0b4
         KfYAZpqx3M14d10JPpEz8jjsYeJIYwZ20Adf9bnvYTiTdOpjthd8bw4f/pOzxbzNNF6r
         jl71izEVFl104mYK5YpiD2SLHo+9FCncm44HAH2/nS5C1WRgVcEG5jm5IxTiT2YDNAzU
         4j8A4KLsW0fBa7uiWg+Z0RzXYZYdL4OYMzn/boYrl5UpSVXR8CXrd8wmQjBeGVVH3C91
         Bxwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259193; x=1691851193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zB1XPfhcNMtArl3vuKIcc3WSzGrnVrigx9OQGKNyiw=;
        b=kR6yl+FD1qSf+0uTqeMbWeSB9vbEH0RNJWWSO+h/pUErXCITtDJyWpIVJ11w2dOzf9
         ESRg5/reTFCfwvdmKQcpCtOks8txiPiV5Kh8JGd/F6tKsBJy5KlcRPB4p/C6Q3PJ3OW6
         /rdqks+/3jnlgzjGIHzUrLj4GSfQR/YQlSr82jTeGh3oRz22gJ1TwZGX4xzFgxjTzx11
         4Z8smC9pJa7b0m0l94v14uAFYD7WdJW0ID51LHvjx/ZFgK70k4dZz51/sxjK9iMCg5lr
         UC5O2p6D7T2ivPbeM0eDh/FJEs8JEEUgtotCmTWBm4j3OiZQciOy+R3mKSI0E8aWxyaf
         Uc7w==
X-Gm-Message-State: ABy/qLaxJgRU3Uz36p9+eu6h5MoYl+H7DBdCUHjh/NAOLLp59sbiaCY7
        NMgpvKrIsVuv0DqMCyZ/3Kbnfw==
X-Google-Smtp-Source: APBJJlHHasrwoctMJrPEurc6F42vi24LFPbZDgofhEE1TweUVlUzY/otWUJ5rUuxaRvD+CXflZW8cw==
X-Received: by 2002:a05:6300:800a:b0:118:2e5a:efab with SMTP id an10-20020a056300800a00b001182e5aefabmr1166089pzc.4.1689259193164;
        Thu, 13 Jul 2023 07:39:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:52 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/8] arm64: dts: rockchip: Enable SATA for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:36 +0530
Message-Id: <20230713143941.1756849-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SATA support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 7f9e2c750287..0b6f32e9b820 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -21,6 +21,14 @@ chosen {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+};
+
 &sdmmc {
 	no-sdio;
 	no-mmc;
-- 
2.25.1

