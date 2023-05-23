Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7419770E771
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238631AbjEWVig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233758AbjEWVif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:35 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48544FA
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:34 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-38eda4ef362so198801b6e.2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTtNHswnW0p7Ai5VHBQqwpfovct4y1t2cSckR4RYhYQ=;
        b=VP2eYu0mYZKLNe6VF95IV1KSztQTFzqKSR8AAUZeDFp5sxJD+S8uJIWxaRpTWI8as5
         YKICteRTItw9ONjGEZ8cQSCOqnHAtaC0f9eiqiPWlngdK+tO5lnAbJl396V5Oo5+dscx
         HBPl8ojxNaF8s9lBQS+3gZDAz0Ztn2MdhDHoHSIQ50qz0Lpw2YC7dNU8xo/y+ON+j5Np
         7Ya/ro0fBpN3Mb171bOJlzxnAMovpik89E4/cGFr6qucoYAVojUcbT0Vm58iDrAKZ6JD
         Ixg4Ftjo+2t9vy6I7lN12D7rfT21LH9VHZQ0I/rd9w/5Ao0nPlTmgoH0dNDoUBdQ4KrI
         gfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTtNHswnW0p7Ai5VHBQqwpfovct4y1t2cSckR4RYhYQ=;
        b=ZrkXo5E7HGFkSJ1gnggd0qOO+sxEG6QaOYuoIrpmzon9m3N23oy74/XksVgN5fLn7k
         Vu5MLlewm/r5OHPYQu3x+6hlml3rYWu6fTM3c8evjLJirpx636sD3PH2Z+5KMxvcuB0w
         Z7BcRntyjFGKVPE6wH7avvMq88K/k0jdyxcjJABpTa9f5euqRWdmfGhRDTU8ay1nUvbX
         aBNb0QEFitpKex6Z2KnCwQK62BqoIx4fqgRpDB6+n5dmAm6OBe3Q/gbGKzpMEi54WXW+
         Af9Cx+MB6R1Kbu2y8iSlNp0s0JMURkqFBMG7d7YHF0XmXoM5AScBAmfFJmnPj2uJTKeX
         ttGw==
X-Gm-Message-State: AC+VfDx5lIhNrh21HAyZu8pXtGxHCcZ4tKJZdQ4b9fvM8/dRbopsmmJ3
        9JEHbGPDIXOe9VzKJ1ZH1Qg=
X-Google-Smtp-Source: ACHHUZ4UHIvVwq9NygCAysw98QAheITp2cCaku+r4NtfRdiUslxK33f+rgJpUGnfmnmvQjEyKq2TcA==
X-Received: by 2002:a05:6808:5c5:b0:398:342a:f491 with SMTP id d5-20020a05680805c500b00398342af491mr1452917oij.34.1684877913521;
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/6] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
Date:   Tue, 23 May 2023 16:38:21 -0500
Message-Id: <20230523213825.120077-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add a default pinctrl definition for the rk3588.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..571cdec24a66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1187,6 +1187,9 @@ sdhci: mmc@fe2e0000 {
 			 <&cru TMCLK_EMMC>;
 		clock-names = "core", "bus", "axi", "block", "timer";
 		max-frequency = <200000000>;
+		pinctrl-0 = <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
+			    <&emmc_cmd>, <&emmc_data_strobe>;
+		pinctrl-names = "default";
 		resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
 			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
 			 <&cru SRST_T_EMMC>;
-- 
2.34.1

