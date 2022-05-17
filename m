Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B5F052A3E0
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 15:53:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347744AbiEQNxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 09:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347593AbiEQNxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 09:53:48 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61561BF6A
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:53:47 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id i40so7524452eda.7
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3A4OivyTFNaDUV/j76uS7UAfnr06mF8BaqQDTpHH1NI=;
        b=fso1T4lD4yWO8PPaFfhx9YZ/S5An9S2h6icVIVaWNn0/6FN2XmB0+6yoqEWPxxY+Rv
         Q5SfZgRqP8YlX/QV2y/KE/iVEePjJ3lCd9SIDdWQzbxhKlyocKUNCqXa4suFVLgqqLgc
         OBLdawBRX6/T4OFX/EAVi2n/kCZhclplFkTNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3A4OivyTFNaDUV/j76uS7UAfnr06mF8BaqQDTpHH1NI=;
        b=AoXhQtk6+LVb/PQ6YykdJX4GgNS3Y71pyjSuj6Ynxh3Tnd1E4g/0dh/bSC8mQyofQz
         0oubqQB8EzTLIjaeLGJNJgLl3DCx447bIy1MAolQKXy0L0wmTvSCVa3m3JvCQbOJa62/
         v/SxON/6ds0mhn+J1Dr5JsgC137c2Xr5mMqAqDdArpE76DjFyg6Q/xaave5svsygOKzs
         KH+Hba43xTi5CJVGY/y9NSqjtO/n5/VEGsDsxXKLG4zXPzJSfAWij53/tz2+fWV+Du8d
         EHLYTYmAPjx7Cm4zOnsuHfyX44Y0w+FvmxxtigyvoCLABWmUhacJwB6YR2L4itn68VJN
         b7BA==
X-Gm-Message-State: AOAM533bZKcLwgyhERuByMNMgli0SemhCl65hnH5o8zmL/ZSKJj+Jd7C
        4XrR3eQfJ/AAPzkkb+d1PYD+Nw==
X-Google-Smtp-Source: ABdhPJywNs/FNa8nCJvFyZ6zYFCJ0exS7vS472Ed5ayC3rSFnDN431mnp8g4VhrHiXVWjrdlrEeJ1A==
X-Received: by 2002:a05:6402:1941:b0:413:2822:9c8 with SMTP id f1-20020a056402194100b00413282209c8mr19378672edz.13.1652795625905;
        Tue, 17 May 2022 06:53:45 -0700 (PDT)
Received: from panicking.amarulasolutions.com (mob-176-245-91-171.net.vodafone.it. [176.245.91.171])
        by smtp.gmail.com with ESMTPSA id u20-20020a170906109400b006f3ef214e56sm1055806eju.188.2022.05.17.06.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 06:53:45 -0700 (PDT)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Rob Herring <robh+dt@kernel.org>,
        Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Simon Holesch <simon.holesch@bshg.com>
Subject: [PATCH V2] arm: dts: imx6ulz-bsh-smm-m2: Support proper board power off
Date:   Tue, 17 May 2022 15:53:42 +0200
Message-Id: <20220517135342.2458267-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Simon Holesch <simon.holesch@bshg.com>

Supports initiating poweroff on SNVS_PMIC_ON_REQ signal.

Signed-off-by: Simon Holesch <simon.holesch@bshg.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
V1->V2:
	- adjust the sign-off for mailing list policy (Thank you Fabio
	  Estavam
---
 arch/arm/boot/dts/imx6ulz-bsh-smm-m2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/imx6ulz-bsh-smm-m2.dts
index 59bcfc9a6b10..c92e4e2f6ab9 100644
--- a/arch/arm/boot/dts/imx6ulz-bsh-smm-m2.dts
+++ b/arch/arm/boot/dts/imx6ulz-bsh-smm-m2.dts
@@ -29,6 +29,10 @@ &gpmi {
 	status = "okay";
 };
 
+&snvs_poweroff {
+	status = "okay";
+};
+
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
-- 
2.25.1

