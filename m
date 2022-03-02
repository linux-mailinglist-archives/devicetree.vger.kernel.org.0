Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 823754CB337
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 01:34:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbiCBX76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 18:59:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbiCBX75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 18:59:57 -0500
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CD31EACA
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 15:59:13 -0800 (PST)
Received: by mail-oo1-xc33.google.com with SMTP id d134-20020a4a528c000000b00319244f4b04so3916896oob.8
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 15:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CLi20Hor0G3/sIPJTYATf6fKIEtn5LFRUnAO/aft59U=;
        b=Av5CvcA2UnsOS3Z/PWZnEjldFTgabukGTmsIv/N5jqt2gdW/jUXtzyYcQoj/aCDTls
         x1w0Oc/bdwJI7F61rbNmg62fk5rDcXvijlat26rvc55hhigxcPY/VEil9YUkyk2ubfQV
         RrrNRQioy3mhGQ5BJUabYRzEnG9hIbBP2No0p6E9IQlFv/7GsA5rmbea8UpLWpSRknCh
         C5Mktcb5f89m0LeRWznJHlOFXedyIzHlMBAoAqzyHnmG5Oy7NmBrAoFgdZ0Dko6VBjtQ
         BYfFuJT1yNZo5Cme5lrcF++nv12zbVNI32Lp11pBvUpEm+pZtAJaGEE7tKZL5S+jpTEu
         ra8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CLi20Hor0G3/sIPJTYATf6fKIEtn5LFRUnAO/aft59U=;
        b=puOrkIB0w6oFEOTbmyPlipHZMMw7vzcGggS5v8UQ9/88pomZsHAKItfOFATfx7EvtE
         3+1KYu/LJzjs27hbPB55CIpJxJenZoGMdntND8l/gxQW6P6gHLHAAC6iEhUZRX0vzRTv
         ud0LIbu0kRvXKaHP5Eu+b9Q/vyUWAKh4XVBzgFEB5ApN+55fr3EvwxX9rl01ycncrxo7
         jPAbbUATS1NaAvsinG8bLArU/QpLHB/RuMyV+ceyB5dhni0LZosmm9TZJStoKNxa8fhd
         OuJlTgj/1qCDArZo+1ZkLDrn04okYzoLGTYKfGitfR6819z+uR9ez2ZF/wEzsmORzM5X
         bhig==
X-Gm-Message-State: AOAM530TnvnvRCRVtq2Eyq5Wej0RhMbirRO28R0DzKkRZCHL2zKQaMeE
        1sHzQjm5E7J9Xdh//NbnMDf7siFjuTg=
X-Google-Smtp-Source: ABdhPJy7WkY0vQdVZcc4+TG+enINumY8Xhw+KUiHcRiJ97bu7n0ByBwAkLPI2b5cviPC0A4n/2LD8w==
X-Received: by 2002:a05:6871:5c3:b0:d7:1322:9d48 with SMTP id v3-20020a05687105c300b000d713229d48mr1849381oan.153.1646263584963;
        Wed, 02 Mar 2022 15:26:24 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 15:26:23 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3 v4] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
Date:   Wed,  2 Mar 2022 17:26:10 -0600
Message-Id: <20220302232612.25455-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302232612.25455-1-macroalpha82@gmail.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
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

