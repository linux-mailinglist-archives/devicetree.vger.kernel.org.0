Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4DD71298C3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 17:35:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbfLWQfz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Dec 2019 11:35:55 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:46473 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726766AbfLWQfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Dec 2019 11:35:54 -0500
Received: by mail-wr1-f68.google.com with SMTP id z7so17131074wrl.13
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2019 08:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0HQesosprpGmVlh0zbgZtCGyxB3GA8LKvF8lU1VAedI=;
        b=rRJNtwwRx+5RzgqTLIxJG6UsSQ6gC0jzvHt+rlkuEFTfdQiebonMWF/GFe43r2a5TX
         8gS7lH2OyXAleCyvXlW/U8KGovJ7a6Ruy+MdG8swhWoCeySn2ygRfRX5ZpbwC7UKm4+G
         lQtna3/Y/EyFQLrVGGEIENU6I7wDUF67zrhGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0HQesosprpGmVlh0zbgZtCGyxB3GA8LKvF8lU1VAedI=;
        b=UZFRs0WulMaLDOQbCKvudST9Yw4UokwrcQuNJCj2vAvfoh+Lo5DJaQXFXGBAvKtORg
         lUjTWJy8rUNer38VfsleBwKG53+A/cISsyzF8vA7VB0BUBpJ0HjuEeHXA+HezmIBxgrc
         6HicCRPAKhVxN258dK7l9vV6DkdOrXbaAEa0G6Uw9K1EdnlUC91HjFM9UZbYRWW5Y5Sm
         stW1NRYXVJ1DBmVec1GdanVkC/Qr713shN8/H2YlK8WidfNGyjsVIwabg/dL1nkJv5pw
         337WHIpFG+bRInqBrv5OpolmLqApaVEfXZzNBzAH6mgu1izbAA7M2o0jRQXAUwRps4mr
         S+wQ==
X-Gm-Message-State: APjAAAXBzT7kwWZMC3eI9o5XyiX1fbyZpx7KlVO5/aExYsGXqDc+wFul
        q5RZRtbUVlBXyOUOxmc0tnFuzA==
X-Google-Smtp-Source: APXvYqz/MMNcrLqV4ANXvIxeIGXp4d50q4NXH/qBL523lAObZh+tywV09Z1VDphXKfwDb4wdAqaN6w==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr31306772wrv.364.1577118951849;
        Mon, 23 Dec 2019 08:35:51 -0800 (PST)
Received: from localhost.localdomain ([37.160.152.81])
        by smtp.gmail.com with ESMTPSA id s8sm20412498wrt.57.2019.12.23.08.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2019 08:35:51 -0800 (PST)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/3] ARM: dts: imx6dl: Fix typo in i.CoreM6 1.5 Dual MIPI starter kit
Date:   Mon, 23 Dec 2019 17:35:44 +0100
Message-Id: <20191223163546.29637-2-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223163546.29637-1-michael@amarulasolutions.com>
References: <20191223163546.29637-1-michael@amarulasolutions.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the file to be included in dual mipi starter kit. This
fix ethernet probing

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm/boot/dts/imx6dl-icore-mipi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6dl-icore-mipi.dts b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
index e43bccb78ab2..d8f3821a0ffd 100644
--- a/arch/arm/boot/dts/imx6dl-icore-mipi.dts
+++ b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
@@ -8,7 +8,7 @@
 /dts-v1/;
 
 #include "imx6dl.dtsi"
-#include "imx6qdl-icore.dtsi"
+#include "imx6qdl-icore-1.5.dtsi"
 
 / {
 	model = "Engicam i.CoreM6 DualLite/Solo MIPI Starter Kit";
-- 
2.17.1

