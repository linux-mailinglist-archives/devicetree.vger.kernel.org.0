Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B2551210BF
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 00:55:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbfEPWz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 18:55:28 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:42778 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726452AbfEPWz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 18:55:28 -0400
Received: by mail-ot1-f68.google.com with SMTP id f23so5000795otl.9
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 15:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wo1wvKuW2wRAeBZgH3Md7/opMqaL+d5QH7rn/Aok/6A=;
        b=r/Hzow894YMn63BzLn3udxc2iz0fp5z+8BmWOW32vkyU3d6BLdekXJIhxAVWDB8w4Y
         GKEZnn6LdxIBmKBj39Tt9WjUnmqbDt1vCLDNq67TdQyec2QYWml5zC/I6nJpz/TcVt60
         Tbtq5MUcAZ31x9Kwg66v8EwVXuNNFecwNILJbWjilnf+TaiDgSCt0gBqq3Hikpv1I6mv
         hCmtI6uvmXP/AhHfkCfG+AKSzhCfTJvTtimP22sIz9b0WQW97eNSEuvKJPA3s3LCUQ3x
         9Oq+tYZ9HuENLC1+Z7rEH9X+gGXKdVGJFkQCGvaAsKas/Am50dZyDqTIS03mFNKQ72lF
         cjPw==
X-Gm-Message-State: APjAAAVNkozQ94UeQnTCqVjp/ygDk8/6J92DKbWKdw1qvo6wyeiLQl+I
        pNIxvdPFC2VJeDH39tQ/0w==
X-Google-Smtp-Source: APXvYqxmg+gzYkyVlfHII48Vvf/s4pSIlpHK0/TWP0/yX9hqjsRT/6A3Bt7JAP4fGsPFwbl4YP7e8g==
X-Received: by 2002:a9d:5f99:: with SMTP id g25mr664810oti.10.1558047327863;
        Thu, 16 May 2019 15:55:27 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id x64sm2759951oia.32.2019.05.16.15.55.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 16 May 2019 15:55:26 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx: Avoid colliding 'display' node and property names
Date:   Thu, 16 May 2019 17:55:25 -0500
Message-Id: <20190516225525.32605-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While properties and child nodes with the same name are valid DT, the
practice is not encouraged. Furthermore, the collision is problematic for
YAML encoded DT. Let's just avoid the issue and rename the nodes.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/imx6ul-geam.dts   | 2 +-
 arch/arm/boot/dts/imx6ul-isiot.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-geam.dts b/arch/arm/boot/dts/imx6ul-geam.dts
index bc77f26a2f1d..21ddd359d3ed 100644
--- a/arch/arm/boot/dts/imx6ul-geam.dts
+++ b/arch/arm/boot/dts/imx6ul-geam.dts
@@ -169,7 +169,7 @@
 	display = <&display0>;
 	status = "okay";
 
-	display0: display {
+	display0: display0 {
 		bits-per-pixel = <16>;
 		bus-width = <18>;
 
diff --git a/arch/arm/boot/dts/imx6ul-isiot.dtsi b/arch/arm/boot/dts/imx6ul-isiot.dtsi
index 213e802bf35c..b26d4f57c655 100644
--- a/arch/arm/boot/dts/imx6ul-isiot.dtsi
+++ b/arch/arm/boot/dts/imx6ul-isiot.dtsi
@@ -161,7 +161,7 @@
 	display = <&display0>;
 	status = "okay";
 
-	display0: display {
+	display0: display0 {
 		bits-per-pixel = <16>;
 		bus-width = <18>;
 
-- 
2.20.1

