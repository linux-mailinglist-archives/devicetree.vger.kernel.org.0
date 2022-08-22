Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1513059BA6B
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 09:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbiHVHmQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 03:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbiHVHmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 03:42:15 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43CC15FE6
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:42:14 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id 2so9210627pll.0
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 00:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=7QyUas+FLnoDjvpQTXVOSCYRlddQJ/V4Mg+5MhKdl9Q=;
        b=QPO//93mdKVvWHp2CKcq0d+X658L9tym1FpekTAlU2DNGlkkPpdqsqEOBCqdEC4SVj
         utYuG74InxUGt9KzeUDvA6XbZTGQBy+Z/19vOVnrl+8udG84eiZKN2qCYycA4FZRrvgT
         CUDkkUzrPy04StLWUM+kH/uDVUlAnmiS2NH4Jywu1V1MovqJVwzSWGdoWlAdwxNXOmcV
         BcyDOn3W74jFZlyglbXGywdLgkwQPoHBXWgniop+2bn3wrYNftabqNPAK+vmJh5/HZ82
         o3wgmP7+n1OuyDam+Tzcsx2saB6boTlqIS5J1ZVdo/jr8Q4tXTbNYwMJXcdL+Vo2TtZ1
         VJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=7QyUas+FLnoDjvpQTXVOSCYRlddQJ/V4Mg+5MhKdl9Q=;
        b=q15cbQYAotkQtRaa7oyhpdyGA6gQdblcr5rArNaRbvNm3u2pmR/tGrwwvTuZ6xzMh3
         tOxWeA9KiKIOpDGsexfqRPzXgsUmf5/Ch3+9b0crKqVzzPLiSfks1OYd+Kh+u7pwVCuy
         6pUzUpKdqXl/SgaeRGHgJfZvgiiyN5lIpMVjw1EK2M10YixXyRwh3s+A9mC83kJkdp6R
         098N//T9OaBCV38O2/zioU/RVn1LvFr4e/s9t+CqL99Fw5SAP1BDyViCvjiKuZiPxlk3
         HkTJ1PfEiZHLWy1bckZZB0oAZcKGbxG9gy7kqXKxYMfB65LsJdDDgos4CnubHirZ9e6F
         m2RQ==
X-Gm-Message-State: ACgBeo11zpZFaq/8PF+gjwfhPWRIDhmVLpFnKbDqkPmtSLvvPVfOveOU
        4s/vx83li1Voynp2Jd790skMFQ==
X-Google-Smtp-Source: AA6agR5IRJNG091ZHau7uJZbUp8ZOq74fSoZSXgaKeNT8eQQ7nf9J+rsRcnPQS/9g+Rnrr3t8QcdqA==
X-Received: by 2002:a17:902:ba96:b0:170:9f15:b997 with SMTP id k22-20020a170902ba9600b001709f15b997mr18513567pls.34.1661154134357;
        Mon, 22 Aug 2022 00:42:14 -0700 (PDT)
Received: from jensen.next ([113.109.76.237])
        by smtp.gmail.com with ESMTPSA id s21-20020a170903201500b0016bf5557690sm2936254pla.4.2022.08.22.00.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 00:42:13 -0700 (PDT)
From:   Jensen Huang <jensenhuang@friendlyarm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Vinod Koul <vkoul@kernel.org>,
        Chris Ruehl <chris.ruehl@gtsys.com.hk>
Cc:     Jensen Huang <jensenhuang@friendlyarm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on rk3399
Date:   Mon, 22 Aug 2022 15:41:39 +0800
Message-Id: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9d5b0e8c9cca..9491cafbbaa3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1561,6 +1561,7 @@ emmc_phy: phy@f780 {
 			clock-names = "emmcclk";
 			drive-impedance-ohm = <50>;
 			#phy-cells = <0>;
+			rockchip,enable-strobe-pulldown;
 			status = "disabled";
 		};
 
-- 
2.37.0

