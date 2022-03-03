Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 655764CC728
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 21:40:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbiCCUkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 15:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235403AbiCCUku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 15:40:50 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF7FA45044
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 12:40:02 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id j2so5941729oie.7
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 12:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W6ivzEST0/0RmfsLaCOCltq4DgvWGRxDFP541B1VCs8=;
        b=Z1LcOYQlEowy0QyeZxrUoMDteE4xtibDZsUdPTgwGAwZaAcvNkom9Z9tDJRRbMtoUk
         qewA1z6Mvtzir5svwwzzoNIlGeoLwmez44AVqp+983gm7OwxWj5AaUKg/H8GlcPAPKSx
         nX2zlGvcx1KTnv+3S0tQg3H0s1RIXEKUYnk5A9aWx64yhvWJ/2o3JvBlissJJ5BnJluH
         rAGaFTRO0smP1tuA5aI/RSp/2sotfshBY2qjXU96IuxL53U9LzKlcsskxtJ3LC75lSNE
         xvIgdpbRDqatJBCxgdd/wOi7SFeEWCfC9yyjp2jo4truf/MxiTgRa/1GBnt5plYjFVkB
         qmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W6ivzEST0/0RmfsLaCOCltq4DgvWGRxDFP541B1VCs8=;
        b=iSwxsj3Y/9oB78qOBj44HVX86LNGpJr8nOrlAYY9jRiW6Dsyt+4RNW1smJl+MVF+8k
         NJWJ0mYg2r+R7IJbaY3gI/pMipTQzk8oZnpsi5xMIEwmNfijw+xg7m4turefCiH/c3YA
         4aMFysJkuYTduImj61PWvIyK652LDPG0kdf/zgKzyQ23HsX37qAaEqX+MmVk2PlRmYEE
         NGa0Bu+5V7f2nwAJqneiZ5DgEO8QQpPBdSnoI1D7Hbx5+mMfEgXiUzXBbQugrNZ4zU0c
         lbbNfx3YNUuCNbbdJlXeFn+bO3rYUNaT/hBs8jQY0csKIryY3Zh1rZFzIKJEkFFSv2v2
         a2zQ==
X-Gm-Message-State: AOAM531vk3TbUpQDpqKbmtdgUVJv15SuWfHqQs3xhaTlnpnvLCg9bwoK
        u836PNcjU4qDoDo0qG9/UW7PITnvm8k=
X-Google-Smtp-Source: ABdhPJy+mTCSe/mHq4ifhK65etOUA2QVyk4U43+F1NvlrHbpFv6MKaOfV5N4Xitc4ZKfVgEeixgOPw==
X-Received: by 2002:a05:6808:30a3:b0:2d5:2019:97ac with SMTP id bl35-20020a05680830a300b002d5201997acmr6310842oib.40.1646340001821;
        Thu, 03 Mar 2022 12:40:01 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 12:40:01 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 1/4 v5] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
Date:   Thu,  3 Mar 2022 14:39:55 -0600
Message-Id: <20220303203958.4904-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
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

The Rockchip rk808 Power Management IC does not have a vcc13 or a
vcc14. The schematics for at least the Pinebook Pro suggest this is
actually vcc1 and vcc2, and may be an artifact from the reference
design schematic).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index c2f021a1a18f..20f71317d7ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -472,8 +472,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc_sysin>;
 		vcc11-supply = <&vcc_sysin>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc_sysin>;
-		vcc14-supply = <&vcc_sysin>;
 
 		regulators {
 			/* rk3399 center logic supply */
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d1aaf8e83391..0e45cc2d195b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -310,8 +310,6 @@ rk808: pmic@1b {
 		vcc10-supply = <&vcc3v3_sys>;
 		vcc11-supply = <&vcc3v3_sys>;
 		vcc12-supply = <&vcc3v3_sys>;
-		vcc13-supply = <&vcc3v3_sys>;
-		vcc14-supply = <&vcc3v3_sys>;
 		vddio-supply = <&vcc_3v0>;
 
 		regulators {
-- 
2.25.1

