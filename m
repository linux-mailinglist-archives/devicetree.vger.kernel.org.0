Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B7264DD8DF
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 12:24:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234493AbiCRLZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 07:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiCRLZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 07:25:58 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B9461770AB
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:39 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id p15so2872544lfk.8
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=91Be4yrn4yfsAzlOBuwmzqMFu/jSErj9KMODaLLmTL0=;
        b=Ola1lJ5cQ1J8iEZrADaa3OSLv0N7SoXdX2otI2EPEnii4hbcivZwgMn6jsmLgDcUyu
         vov4/IwFkfKodoF2RHsJDJHyyZZcU2VuI0Rw6FakCfHs6iPIU159gzcOeLlz7k3vjCB6
         Qgm/kt8eZ86L2LwGeuA5DCt9Ps5jhV1hpqwnYw3GGMykgSg9JiQj4xDY86pl4KdORKTs
         WVP3gG7IRjhROiVL729mHD+OXItEefnLb/AexZmZZjpk4HI7mCBlfS4mRL1D1BwE6SjH
         zHYZ+mbj/ReQONRktosgCCxSX4SdE4GgUKe9Ed0EcSKwCyUCqQdIF6fCxP7LGd7efV3N
         PJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=91Be4yrn4yfsAzlOBuwmzqMFu/jSErj9KMODaLLmTL0=;
        b=qan2mQsNUhRRh8ERBnO3IQkcf5mGUgFFY7wV/5JoA9B19FdvWFQ1IGw7Rb2PpCT1JI
         ouy2T/QQPGkq5qaewwe0BX+0n1HY/ZrvIg8l/RUwDtguXfSF096efyA9J6ewgwAwirWN
         QyMjKXwxs5vq/lmT3wauyW/LaLCfLBDAXuB9JLUS/eFE7SDnETMoNOHWMKhiHo8wvKf+
         VuqRs50YiQd6l2CI5cJlyYsduVhRMKk+sR9p6GqUX8XL9ecLkzIjOURnOEQ8H+5XUvs0
         ISDYjkPbFUKhXZvxkgEbJ6Kezk/p44Vkq4hQFekUt71+aGQugd9QJBVZjOBSmVkzEorK
         +sTg==
X-Gm-Message-State: AOAM530X7tlcs6aRMr7cdTXXtOlfGvOD9s1OugKjg/GbkJKiFcEG+opw
        OHq2pBOC6OgWv7s5NuarlIM=
X-Google-Smtp-Source: ABdhPJzRD8VncCgDWs33CZ93MaLEU9YxgANjeTns2aJuU69/hlTSuoj9PQ4PuxCHmQxD+qdOcwAA5g==
X-Received: by 2002:a05:6512:1084:b0:448:42b8:f45c with SMTP id j4-20020a056512108400b0044842b8f45cmr5635570lfg.13.1647602677739;
        Fri, 18 Mar 2022 04:24:37 -0700 (PDT)
Received: from gimli.lan (h-98-128-229-222.NA.cust.bahnhof.se. [98.128.229.222])
        by smtp.gmail.com with ESMTPSA id i9-20020a2e6d09000000b00247ef729e93sm893418ljc.137.2022.03.18.04.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 04:24:37 -0700 (PDT)
From:   Joachim Wiberg <troglobit@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Joachim Wiberg <troglobit@gmail.com>
Subject: [PATCH 1/2] arm64: dts: enable 2.5 Gbps port on CN9130-CRB
Date:   Fri, 18 Mar 2022 12:24:17 +0100
Message-Id: <20220318112418.285312-2-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220318112418.285312-1-troglobit@gmail.com>
References: <20220318112418.285312-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While testing the reference board we noticed the 2.5 Gbps port working
fine as long as the phy-mode was "properly" set.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index d9f9f2c19740..893a9be704ba 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -355,8 +355,9 @@ &cp0_eth1 {
 
 &cp0_eth2 {
 	/* This port uses "2500base-t" phy-mode */
-	status = "disabled";
+	status = "okay";
 	phy = <&nbaset_phy0>;
 	phys = <&cp0_comphy5 2>;
+	phy-mode = "sgmii";
 };
 
-- 
2.25.1

