Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF32F63F938
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 21:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbiLAUhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 15:37:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbiLAUhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 15:37:07 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45DBEC054F
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 12:37:03 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-13bd19c3b68so3503907fac.7
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 12:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kG+ctqd9teSCMiayuOxjPWFcl8agpohKd1uUpE0d4x0=;
        b=XFod0UnAcwD+9HZiFEkNVVUGDR7r1ylQFGkeOIptemvQBWaAm8mLU2oBy1tpxZxktJ
         NVFcw/h0kOr3HTw2wnyAaQlnuUoTNPQR9khmwGnmXNWy466LNGp9kbBckww6i48vwLfb
         nVZePvLt/0C2iqy1VDRpf4HUsRCh1OVFZfEnoZy0PBIw+x+RYNGeQCILCDwkoEiZPnvQ
         9Gcq1B2V1O2Y3vK/3q+RfQQ5o0YYNjFdteTNFEF3TkK083ol/wmmCv/pbB3BdbXikwqh
         zby9Iy6GWBTDJOHBegLng3GTVXrLSkaVWNz3uHlxD6WPfOOB53QRTc0se7oJZgl6W9YZ
         Ojng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kG+ctqd9teSCMiayuOxjPWFcl8agpohKd1uUpE0d4x0=;
        b=iIYw3Z73WAg2PhiBS6bNTi8yDt3Q+0GRyU0HxWmS+6QpbW7mXISt6qDTHRop9rXYzn
         atI4Ry26pQWQTaE71Qp6BdO5efzvrpEBUW77O9oRQOybAC85MzVrYIPhnRd+JBrAu72Q
         SlzMx0U7EDtGvlji+FEPAbyDRwcSXNBqUAwR1noZZWhEL+1cokUR2ppjAFHiJwCAg5a/
         yPMT4XdUBMm5h+SppKUACphsqQ6Y2B+xWJgxgCK/FrkSiDKLAqEBlroaPZK+Rj1auGWS
         Ud0M9KWYza3l5fz4g4vbK2qAjGE3UtwWox5EcOInjuiYR2P0DNmELJ7QuwnDZ9ISLksv
         hzCg==
X-Gm-Message-State: ANoB5pmzx3Xt1sphPEQDB0fByRlVsxVUm+pyXDdihmcPfjKZl2gFjPqf
        D2bN8giPzF9a84yuKYcJKYg=
X-Google-Smtp-Source: AA0mqf4+24um7ZcR5CWbp77KpWBR42nA3acpMhuAqJ7rgMXGTdcB+7tCniwHGtESiGH09AMg14QD2Q==
X-Received: by 2002:a05:6870:e88:b0:142:9422:84e4 with SMTP id mm8-20020a0568700e8800b00142942284e4mr29981790oab.57.1669927022468;
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: don't set cpll rate for Odroid Go
Date:   Thu,  1 Dec 2022 14:36:53 -0600
Message-Id: <20221201203655.1245-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Odroid Go Advance devicetree tries to set the rate for the cpll
clock to 17MHz, which is not a supported rate. This fails, and triggers
the error of "clk: couldn't set cpll clk rate to 17000000 (-22),
current rate: 17000000" in the dmesg log. Remove the incorrect rate.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index 60063f4bb366..802be64626d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -192,14 +192,12 @@ &cru {
 	assigned-clocks = <&cru PLL_NPLL>,
 		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
 		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
-		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>,
-		<&cru PLL_CPLL>;
+		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>;
 
 	assigned-clock-rates = <1188000000>,
 		<200000000>, <200000000>,
 		<150000000>, <150000000>,
-		<100000000>, <200000000>,
-		<17000000>;
+		<100000000>, <200000000>;
 };
 
 &display_subsystem {
-- 
2.25.1

