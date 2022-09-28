Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D267E5ED88E
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 11:13:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbiI1JNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 05:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233512AbiI1JMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 05:12:52 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 868529B859
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:12:02 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id r62so7849185pgr.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=qM+lTkdECo0J0ZhhLpB7ro4uoQDn3iCVEdOBITAk3Q0=;
        b=PbwktMuA9cnH6kD/2b60Shhox4vCiksy2RgnXF4n0N++WVeqtQP3uKJjbZXmPcWycd
         /oOrdyUzEyfsEbeQXWxqe+8Qcei09CtiKMCcP9eXPz7kIwtNzzyJ92XwOdNA8e7RO/IU
         nO31V7N4yRxU4RDblc7g7j2Vckq6+seN1l8M+CWIveGbZ551OBWVznR6gG8/wKGL4fm6
         Adt2bo9/E+AXUlKIvvKIjquDcHVZVFrq9v4gRU9XY7psNT0JW79uq5LZ308VWMBXdnxY
         GTNP+EgRsUCr1u64Z7YiPD8Rt5VQvg/UrJgLs1Kq6moVWKC8PukCWjHuy0S4bbZoEGJy
         uJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=qM+lTkdECo0J0ZhhLpB7ro4uoQDn3iCVEdOBITAk3Q0=;
        b=8P4R3LKQGbIrSZKJmaVcGDBt4UDxkiPivgXKwJtwsyxo1ku5lD8Z4JpsTvTeYVuZEz
         DynJ0iTpLW8WxOh3Px2gmGIhoSkJVXR010tuqx9nYLtoH+GUQKZagVgHnqOju5RmkECT
         h5arOd12fiDXEuwr942I7KKL6fKvwkV4keIb4undc6OD8x72hQIrBt25ZTpMRw78Uw9v
         rZF/ec5/1v28OmzvSb1fq0HJ3N9CF2BvweeUAq4AteJgMzSHfwL9krtSfGNZ6oQp00/L
         Z6QPkTl9cwgZO+4j5rum8LzjWhPunZw7po75yjS1/TmQHmNIl+gzkDpKIPZo7pgF6tRU
         qebg==
X-Gm-Message-State: ACrzQf2F56ZNEdKO+8MbBIBej7D5fyKjBD1FHPUeYyPVBdaF4GeSCYAI
        40FgMfHa1MHwH30HmdXu/fktGw==
X-Google-Smtp-Source: AMsMyM4PI1Uli3TKdfuQ/NqySpdQGk1FyZCpOIAFT1qcz3BBww3dRiGNvNHyp7fzs2YP9h4+dR8/zA==
X-Received: by 2002:a05:6a00:2185:b0:520:7276:6570 with SMTP id h5-20020a056a00218500b0052072766570mr33609781pfi.84.1664356320877;
        Wed, 28 Sep 2022 02:12:00 -0700 (PDT)
Received: from jensen.next ([113.109.77.159])
        by smtp.gmail.com with ESMTPSA id d4-20020a170902654400b00176b84eb29asm3112069pln.301.2022.09.28.02.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 02:12:00 -0700 (PDT)
From:   Jensen Huang <jensenhuang@friendlyarm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Vinod Koul <vkoul@kernel.org>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>
Cc:     Jensen Huang <jensenhuang@friendlyarm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on nanopi4
Date:   Wed, 28 Sep 2022 17:11:29 +0800
Message-Id: <20220928091129.20597-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.

Tested on NanoPC-T4.

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 278123b4f911..b6e082f1f6d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -167,6 +167,7 @@ &cpu_l3 {
 };
 
 &emmc_phy {
+	rockchip,enable-strobe-pulldown;
 	status = "okay";
 };
 
-- 
2.37.0

