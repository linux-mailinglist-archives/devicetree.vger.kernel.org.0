Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E559297E54
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 22:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1764195AbgJXUF3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Oct 2020 16:05:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1764191AbgJXUF2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Oct 2020 16:05:28 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68047C0613CE
        for <devicetree@vger.kernel.org>; Sat, 24 Oct 2020 13:05:28 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id c141so6569741lfg.5
        for <devicetree@vger.kernel.org>; Sat, 24 Oct 2020 13:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UYixM3CajH2x6SQnmlezFCf5ckp9YaNT4ER557+5ckw=;
        b=LmJcIu/89BLmTEBmFjUf5I7IXfz00ipj5zEvzz1N7g5cqDeYGX4IU1/I9PSMzUSsur
         8LBkQoOt08R1FJr50EBf8E+5jfLsOWvMgBitGHoYBwO9eerAEYtP2wM/WWikGckgssEV
         +c8u8V/O01NeV8qHsPOjW/jGDf8OpGxwKzsWQ59lJwV/lQr0+JNsWVOLgioOCZHs0EtC
         dQcWFSAPeboQ6+3HX1VuMPhagxisuiYweq8lHpGuf5eGIoFmKLeOP3YY7+tDcZ+6sWnx
         +Q7LbolchKHAmY/L4IzsEUVwfFDSON+231HeK/pc6+swDvKQggSKLDzuD/GEkOyMmmvO
         lOow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UYixM3CajH2x6SQnmlezFCf5ckp9YaNT4ER557+5ckw=;
        b=Dvx8FvUIOpcq/XNHH+DcxOozZzcPKmIxYCK35PYmi3efA2/mwdz7ydh1EbSannY20t
         DAflxGYMQf7o4PRW2PzUPT4C2CXvSh334bEx782580C0kdHv5e080owiscIUxJNngfQJ
         fhJ8Dm5x/MyoPQ+4NzyBThPV32P86anyi4CElkXnQLX3dhSmgthGiiKWLx4KO6ooEqx3
         i8StZr/oNxu6gg6DBrK+gmSR9MGERqH7jCWmgJ8UgGvLg6zra+Q/nbqL1/bS8IhjrL3e
         p8yQ94+9NFZQUOw+8afmp7OE4C6akODzv9xCAv3dpiOZ0XR1ZutAQvpgn1wXMDnbARdO
         Aoew==
X-Gm-Message-State: AOAM533ADZ35CkWR7XKo5SUCFc9n7LmGdmolTjdMzrSpJVZwQfKTE0uK
        r5uphpDO6VXcwjxp2npArtu0QAG2DfA=
X-Google-Smtp-Source: ABdhPJzqaE0Hwm0IMpmtuETMrAYKAx3IfeMELuzcGwqtg99KDls6aMhnD5dlc1rpBW299BdAKO95hw==
X-Received: by 2002:ac2:4d03:: with SMTP id r3mr2830796lfi.89.1603569926536;
        Sat, 24 Oct 2020 13:05:26 -0700 (PDT)
Received: from localhost.localdomain ([5.188.167.245])
        by smtp.googlemail.com with ESMTPSA id q13sm526581lfo.44.2020.10.24.13.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 13:05:26 -0700 (PDT)
From:   Sergey Matyukevich <geomatsi@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sergey Matyukevich <geomatsi@gmail.com>
Subject: [PATCH v3] arm: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
Date:   Sat, 24 Oct 2020 23:11:20 +0300
Message-Id: <20201024201120.3582-1-geomatsi@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
modes. Adapt imx6q-udoo board phy settings : explicitly set required
delay configuration using "rgmii-id".

Fixes: cbd54fe0b2bc ("ARM: dts: imx6dl-udoo: Add board support based
off imx6q-udoo").

Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
---

v1 -> v2
- add Fixes tag to commit message
v2 -> v3
- fix Fixes tag in commit message


 arch/arm/boot/dts/imx6qdl-udoo.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-udoo.dtsi b/arch/arm/boot/dts/imx6qdl-udoo.dtsi
index c9e122865312..050642d7c582 100644
--- a/arch/arm/boot/dts/imx6qdl-udoo.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-udoo.dtsi
@@ -98,7 +98,7 @@ sound {
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	status = "okay";
 };
 
-- 
2.28.0

