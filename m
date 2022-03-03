Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2E184CC726
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 21:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235141AbiCCUkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 15:40:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235964AbiCCUku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 15:40:50 -0500
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE7670914
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 12:40:03 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id j7-20020a4ad6c7000000b0031c690e4123so7108372oot.11
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 12:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZER1xlrF5OLn4vnRWSKKsumGqChKVTvRQzNWAx59PWE=;
        b=EJaoWiZkHlsvFm9x5fEKxTQge06popRyPC0XcAF0WTTVCjY61TyxOOukThZwzSW2Ox
         +fiqBKldlBCJTNmbHtcVVaJEmkIbUt0CR7Nn1jdmnu0S36E1K+DchNXxuLQ5x5E0nV4X
         DAApgsv+w8shSQpSF1LyWVMMiS/WPW4WtVZJyBJoAN3JfGkIRY/ytMWafYJS8Kh7+v9u
         Cva9hfH6bEj8LqF0S3IY6z+P3scJhpxyp9sW6H55pgqNJa0tIZvOczywV0hy/Y1pdh/D
         fPXwpEwwJCV16THINp2xcbUlNJUUyZ7uDKeOSrjnJ/8CNbnZiEdxIyzJrgLF7Jcz3HjZ
         4pvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZER1xlrF5OLn4vnRWSKKsumGqChKVTvRQzNWAx59PWE=;
        b=rndANYZgiM+WvyZIY4jqp4FRYmIcaL5ED2HoTlf0SkmmlwoicgIDmm6rPwDbbKgUIC
         tcBXu82UxXKS5QtspIVnebzd0WcVGjnh+nijXcnkrV999CfaPzJnRu5Vm/ZbBA2oCvOQ
         zaBgHKzv8tgVK1rXkXxTDQCBKnzVmAWv+b9Dyaz+6lmSrMxUzQ+xLOsK4RfhFhz6HGp+
         B3C9kfn5sCqoS7JL7WHX4ZQ0E125fFqQgYUsucw0pBtADPKpsMhjIiqXLqWKtjPXNLdx
         sxd2VOlK5HFKLkiVplowKewQPzBNitzwG6myyFdLYlrCx1KsokMDkA1btE1W5Jih8AY+
         JMEg==
X-Gm-Message-State: AOAM532prebSDlGMwnpoJxiI+ufgAPPyjd7BtOWOK9K7JQvlXWth8lrW
        o4aaNLEB+hyktH99jYOFNLALUxdHUY4=
X-Google-Smtp-Source: ABdhPJyUS60t7H/eYGRpzg49saWDRIolfyQYxQZr8rY7FglZ2qM4Cxt3uc3u26snCVvwrv+lDw3IMA==
X-Received: by 2002:a4a:3906:0:b0:31b:e657:fbd9 with SMTP id m6-20020a4a3906000000b0031be657fbd9mr19534638ooa.14.1646340003028;
        Thu, 03 Mar 2022 12:40:03 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 12:40:02 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 2/4 v5] dts: rockchip: Add #clock-cells value for rk805
Date:   Thu,  3 Mar 2022 14:39:56 -0600
Message-Id: <20220303203958.4904-3-macroalpha82@gmail.com>
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

Based on a brief discussion on the mailing list it was determined that
clock-cells should be a required parameter in the event that a consumer
of the clock gets added in an overlay.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm/boot/dts/rv1108-elgin-r1.dts      | 1 +
 arch/arm/boot/dts/rv1108-evb.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index f62c9f7af79d..0c99a5934ebf 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -72,6 +72,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index fe5fc9bf75c9..46cad7cb94bf 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -85,6 +85,7 @@ rk805: pmic@18 {
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
 		rockchip,system-power-controller;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index de2d3e88e27f..40bf808642b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -160,6 +160,7 @@ pmic@18 {
 		pinctrl-0 = <&pmic_int_l>;
 		rockchip,system-power-controller;
 		wakeup-source;
+		#clock-cells = <0>;
 
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
-- 
2.25.1

