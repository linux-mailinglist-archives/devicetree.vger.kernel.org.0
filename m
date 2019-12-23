Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B188D1298C5
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 17:36:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbfLWQfz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Dec 2019 11:35:55 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35986 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726847AbfLWQfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Dec 2019 11:35:54 -0500
Received: by mail-wr1-f68.google.com with SMTP id z3so17225610wru.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2019 08:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vPjEapO472fGuu6r9pn0273O+OdDnQWnbnL006wm7qI=;
        b=c4bPts9eLzdSmLo8BPbi0cJwCBXFHpIAtBqzxEAzbIiHuhGOfq8pm31YtE7QqLFBrW
         8faufW2tXVBPL25RSY0u3DuCoNIlwn8qYOKtqWjBwHgCiYP1SqUT1GtprP9tGYSn2Xhn
         /MyN47Ci5ZqaG2brFAwNpYSgczdSca6+xMeHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vPjEapO472fGuu6r9pn0273O+OdDnQWnbnL006wm7qI=;
        b=jrGI+JnczUnoP5uOkmCY2qSkU783DrYE57M7Qcrrw13zPOvX+cYOLjLK1AIzOHJLXz
         dN92hQCPqKyZ5Fmt2kJW01wi0rrrDID/uhGlyQkpOkLPMIjDOBDDw5vU1wU4b0uYYD6p
         /i1okCPNaWJSkKsps/dh2287h11In3FjfbpCkvJfrzaruu3NPe85M17arXMwa7a9py0+
         PSJaasBoMDI3OS6pF7n9JJ317pVqiLyGgLm9PpRoXyHub5xfULBmIGkjFfVDSkjvUnUm
         /VAm2I8nvTZCx9asU+yUI5yquh5Rowo0YRG5h6+cRw4T+DXbtqSrEKpALqIOB2r+4Eit
         BE2w==
X-Gm-Message-State: APjAAAXMDN8lli7y6tE0sYqN44bYIEAk7ZjIYzGneHNcgvNdX10FjYML
        oDWzTp55IGvhLYjT4j1SqP+Y3Q==
X-Google-Smtp-Source: APXvYqwJjBQTL188ZZ/AP5tk5sNzzz79GHtu2hX6GCuvFT5Bhap94m3m5SMQCn6JD2CoQYJXssTz2Q==
X-Received: by 2002:a05:6000:1052:: with SMTP id c18mr30899895wrx.268.1577118953089;
        Mon, 23 Dec 2019 08:35:53 -0800 (PST)
Received: from localhost.localdomain ([37.160.152.81])
        by smtp.gmail.com with ESMTPSA id s8sm20412498wrt.57.2019.12.23.08.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2019 08:35:52 -0800 (PST)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: imx6dl: Remove duplication in Engicam i.CoreM6 1.5 Quad/Dual MIPI
Date:   Mon, 23 Dec 2019 17:35:45 +0100
Message-Id: <20191223163546.29637-3-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223163546.29637-1-michael@amarulasolutions.com>
References: <20191223163546.29637-1-michael@amarulasolutions.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Avoid to re-define the reset gpio for ethernet multiple time. The
imx6qdl-icore-1.5.dtsi include imx6qdl-icore.dtsi that already
define the reset method

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
index d91d46b5898f..0fd7f2e24d9c 100644
--- a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
@@ -25,10 +25,8 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET_REF>;
-	phy-mode = "rmii";
 	status = "okay";
 };
-- 
2.17.1

