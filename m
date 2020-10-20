Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7A612942FB
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 21:28:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438104AbgJTT2J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 15:28:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438098AbgJTT2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 15:28:09 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12AAFC0613CE
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 12:28:09 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id l28so3524863lfp.10
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 12:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LMUQOiqtyBcG0QQURpNLPy6SwElFcomAqHXV+PixSGg=;
        b=Ks1RdT0z4jB012yjLckwIgVk0uaAxYYquqq67wMCuJ706xQJVFYoxiyg/4eQ/cyYwT
         Dp5fRXFSnY8jzzMGuCdLkcnc4Y9FzdMqauelMcaQTrS/xmhjW+tPP5MrkotlSczU29P7
         /a2iO3QK4g38+LFvR/2NOrGp53vNBN/BcrCd0Xji2UADL6PtSMU+gmefD7KWxHWDyPiN
         7u+Q9EGsBQ/uh4rGMPJqvantC+dh/ibYI840JFMDVGAiCg8sZmepoV6F/4DGetS+fRpn
         D0qu3TOx9DyhvUODZSAbw8eeLgLEUtAIQFIMcQyXqQpQ14sb/q4eWenO1tyrFJ3qy3qx
         oNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LMUQOiqtyBcG0QQURpNLPy6SwElFcomAqHXV+PixSGg=;
        b=MA9l4ffFQVpUZd8CRDCbAij7xZawA7gjgvDamaTjtIeuVRiDCQ9/doaKjNz2PySISa
         99xfNKAyZrJIwa23MlAA0CGClNM5TC9F75RUAVVnbDpN2e8SaBS8yDhxSmF/OIl+nVkU
         8D3RkgUyClq47ozSBsiwl4h3BT0d2qBXcNTCftG2Duuue1WSDDciKN8j0VSNAET5m9AC
         0NQOorUIyyW4XqXKEI6dZeGaonBLqFiWmtC4P/Ly0EwtAUnIPpXflWUJK0TPwijclqDh
         3kgJYcWK3VeXoRR8+ib4dKreTH6+ZlWj3pnJRDpDKE8K5IREO85inyEmUFy/lE/4WUyL
         ZE5A==
X-Gm-Message-State: AOAM532Cj3+PCcZ7l+gL8FN0iCcRC200PbgVqB5MzoHEQcg19nBNEJkA
        PwYMuQxD9V/7jafQPjGchvInoK3VHPs63w==
X-Google-Smtp-Source: ABdhPJxOTPsmUU7303wemxaZ3ryQW2mnED88l7zd9QMuGfEDxR4kPtQbnEqNr00svZt3PGt+fqov+Q==
X-Received: by 2002:a19:9d5:: with SMTP id 204mr1412213lfj.583.1603222086076;
        Tue, 20 Oct 2020 12:28:06 -0700 (PDT)
Received: from localhost.localdomain ([5.188.167.245])
        by smtp.googlemail.com with ESMTPSA id o23sm542379lji.68.2020.10.20.12.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 12:28:05 -0700 (PDT)
From:   Sergey Matyukevich <geomatsi@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sergey Matyukevich <geomatsi@gmail.com>
Subject: [PATCH v2] arm: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
Date:   Tue, 20 Oct 2020 22:33:59 +0300
Message-Id: <20201020193359.6075-1-geomatsi@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the
KSZ9031 PHY") fixed micrel phy driver adding proper support for phy
modes. Adapt imx6q-udoo board phy settings accordingly: explicitly
set required delay configuration using "rgmii-id".

Fixes: bcf3440c6dd7 ("net: phy: micrel: add phy-mode support for the KSZ9031 PHY")

Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
---

v1 -> v2
- add Fixes tag to commit message


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

