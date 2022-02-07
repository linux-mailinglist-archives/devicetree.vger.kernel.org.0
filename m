Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 868474AB5F2
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 08:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232578AbiBGHso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 02:48:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236330AbiBGHkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 02:40:36 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB3EC043181
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 23:40:35 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id y5so10619658pfe.4
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 23:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HxFVQJ55pxSJjbIbJNlsrh/PS3oUIh6g/FSSx3H6pL8=;
        b=Zlx4SHDCZWy6CQneSiMCvkD17ruEyL8150KL9uZJL3Tgdi44P9ibR98eOIOR66r5Ov
         3skOSu3jzcrd72OulZcYabiCLme7WpTm4M7dBknlMUx0hPpxm9PJu2GXwB3zxb9Oqire
         vzCJ4+Qx6tpVFPM6tU3ZiVcAcs5kKYSVCKbuEuZuIPwdcitohvedcMg56qkA7KTtUt7W
         cTooAb4+l7Hq6cgXovuauyVwiZIEoLiMn9BbuTKLTpyj6nRM393RaMOfdyMSANv1T9od
         JmdCaUMWabPIyQ9/8Py1p/2kG2Mmmo7JxnwopTMbtXGu8Q5cwiVXlzYI95esbMw+vK3Z
         3Sjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HxFVQJ55pxSJjbIbJNlsrh/PS3oUIh6g/FSSx3H6pL8=;
        b=NZXduGtZbwI6y5u3ubqzO9TdfBiEOS+xK01qRx+GpHWOg54qWO7oIuoWRa0gF1EAZH
         E6030twcRbc+31u1FbsGG9BIKeW+uLWHvj8/d+zCTkSVCXd9KwOZZbhyTLqoLgFw5e4y
         DcnJZxkxdK2i83OklBFeQq8RTI2pl1tWodf4puLqPE1ZPrZkE13iMReOuC03YhgfGhO2
         XVGkZCdXNRnzzS+mCu6wJ5RJCipv2r+fBNOAfv7FwPnwBahvqCU6rX5+20tzjTh/fll1
         CwR4ArvgU0AG337tLJdc/4zvFh9jaEzcToS/ARAjUuHBiqFeNaKh0JRwcw2hzamR9da3
         Yjiw==
X-Gm-Message-State: AOAM531Rko5coaCX3x0+MwGoaFKQPHt9jgtIiaiY4Hf3LU9D/VZsW6SF
        WpHUWTXnl/BYWfxOpsSsoGx/eSOS95Q=
X-Google-Smtp-Source: ABdhPJwKqGIJJey9Pgmc5aGqm9jPg2GDHM6NsebNS9fnzR/ZJUnM3yKNYSQykCsMMmrJfp+vslSc/g==
X-Received: by 2002:aa7:9838:: with SMTP id q24mr14675687pfl.76.1644219634855;
        Sun, 06 Feb 2022 23:40:34 -0800 (PST)
Received: from geminid.DooM ([118.211.233.122])
        by smtp.gmail.com with ESMTPSA id p11sm3757621pff.45.2022.02.06.23.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 23:40:34 -0800 (PST)
From:   Michael Saunders <mick.saunders@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Michael Saunders <mick.saunders@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: rk3399-firefly: enable the mali GPU
Date:   Mon,  7 Feb 2022 17:06:19 +0930
Message-Id: <20220207073617.7386-1-mick.saunders@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
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

The Firefly RK3399 device tree had the GPU status set to disabled as per
the default from the rk3399.dtsi. This patch sets the status in the
firefly dts to enable it for use. Tested successfully on a 2GB Firefly
RK3399 board.

Signed-off-by: Michael Saunders <mick.saunders@gmail.com>
---
This should correct the issues raised in the first patch. Thanks Krzysztof for your feedback and patience.

 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c4dd2a6b4836..65d659d56041 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -298,6 +298,11 @@ &gmac {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
-- 
2.35.1

