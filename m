Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4E9E76933C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbjGaKg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231448AbjGaKg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:27 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CE7B116
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:27 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-686f38692b3so4114527b3a.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799786; x=1691404586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbDc3vFd9mDjJk+G0DxzOOHRpawNqHj3WeQNjvGFd14=;
        b=qK1nZSkoxT+iouFJXd6HVWIhueUqHCGIpFkAd3uUwljYkGFVG1Fb4zW50qPIRXdexA
         yuJ9vOGnbTmQl3qA8vKc6lqou9ufPaz/QKMRvp1IlWCO5Dte3sn0Zfh328r0hGOJ7eND
         1M7+AQCgaNKJXq7oxgrAbyWjBSOQytgZzsa8BLdhinfQX88DRv74uk8Tg1pUYgMvD0lK
         jzCzFZFsoRRy8xbTR8AnZM0ivTH9UIiyEMvrd0OccHM/+yG+Qyakg+Rc689uZnM5MiFt
         ak1PupLVUGOVSd/Y/kVP8lOVdfqsdWDZYuBGT/ieDP4DfNvkNWIFOT5f/FwY9ZiKr1Pa
         x3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799786; x=1691404586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbDc3vFd9mDjJk+G0DxzOOHRpawNqHj3WeQNjvGFd14=;
        b=D50hs8KSwtF07/0JtSda0Qa6o+uzQm6t+TB5HDQ3ypRK9iIs2XoMMoG1Qet5RaKqBe
         ikigdYZEDBjuQzKfKqCoyve/VUhPfSvPSv/nbIdAGeliBFl3nLyBgKRnTe294haaaT/D
         gxwKYCUmLYjanUW4iJ8QWtpY6dTfjNMwDq0s1sSfiSauMiDhkg6cQfs1epRHUSFTV+iG
         pyBTfoIMzvjSQjVgjSGM2A5r9mqCzPqa0dVghfReCU69wy4+T0Gn3LvebFjbcDGx6ESM
         oaq3K/flQpxs6ttIAq41eLMtK0CpkvR92igBDGhkk7jEQo9D3JJ6eD6+Jx42/u9ajWrp
         hmwg==
X-Gm-Message-State: ABy/qLb70FQX5rChIu7xqR4AgVbpfqgTFwDYMu6bsBU+0q39xHaZKSgj
        FcwLKWDdKWrPabPkcgOiUbuaVg==
X-Google-Smtp-Source: APBJJlG2jqcU1efaCPDs9Obe3awP6I8g3DMsPLnl96Ttp+090wFN2IHHAAGXatPJkM/yvavSs8a3bA==
X-Received: by 2002:a05:6a20:8e24:b0:134:76f6:e9e2 with SMTP id y36-20020a056a208e2400b0013476f6e9e2mr12100972pzj.58.1690799786682;
        Mon, 31 Jul 2023 03:36:26 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:26 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 12/13] ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
Date:   Mon, 31 Jul 2023 16:05:17 +0530
Message-Id: <20230731103518.2906147-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
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

Edgeble Neu2 IO board has 3V3_SYS regulator to power Audio, RS485,
and 4G Module.

Add regulator for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index bbc1cd50a1f6..1c6a6a134131 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -20,6 +20,16 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	v3v3_sys: v3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &gmac {
-- 
2.25.1

