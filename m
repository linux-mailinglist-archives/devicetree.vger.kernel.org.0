Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 958C2291469
	for <lists+devicetree@lfdr.de>; Sat, 17 Oct 2020 22:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439120AbgJQU5r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Oct 2020 16:57:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439117AbgJQU5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Oct 2020 16:57:47 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C850C061755
        for <devicetree@vger.kernel.org>; Sat, 17 Oct 2020 13:57:46 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id a9so7987321lfc.7
        for <devicetree@vger.kernel.org>; Sat, 17 Oct 2020 13:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GsAKwQUklDguAeMO9EuBCZ2lqiZiq3xQEaWi886htd0=;
        b=Rhzup4iVhyFLLhd7kLLr5pAI+BsRypSaQsQvQEFGr7kEwXZlp4ivvLKDdOzgqTeLPs
         jzAckXxSDT0tbXWIFeqjtwLL8PtufdchIL3XGj4ACRA7DcNz74EYisShs5U4CNFW3+04
         jsj18Wlnl1WTTcILDpWGk5BUxIlbGZoX4yqWPLy+7Juk4JQKxy3oy5BtkRj78kw6TcJW
         6fXxom1XFWxW3fd7TrKP5y4gVIQzFFOsrV/ZOo7BYP85u0vhLzTh6z1QYk/nWS/LCB3T
         5mM3/GETScqUHhRGExpAE5w7Hxjf8UpAR8zMMEyAPL9DYCo8ijzmuep+tfYXob6bKpAr
         JeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GsAKwQUklDguAeMO9EuBCZ2lqiZiq3xQEaWi886htd0=;
        b=LjCeLkoNZndI4NQnMddPwpQirrjNK0pj3OPjecOx7CpvSZBzBcgq3JMArgCIE3+wra
         rrpsWod6M8ymZW4DQHePW30+cf3RrohRmHFijbkUKk4MTjHoIdAwZ3sqy80IFDzAdsnH
         IUgSlLSv33yCWSTUeJGGQUGe0WQZHMP3rxFcHFVw7Wy/OBvJxbQkhAczhPKhNkOyorE3
         uG+HgxmHo4A5/Zkeo6tfrRn8CgiMrH/1rHJhBr9ZrO6KDYuESjBB9nfZG3SAe2lxhRfz
         vhEAJk8RXui/kMdrt1A14h67KXc/In4HRRoEeoKYVaiVme03Dsr8zBuwSf/L35yO6+s3
         p/mw==
X-Gm-Message-State: AOAM530NZ+EFhTrV2tjUllc9BaiVc319CD841Imvid0CcX11mUPpVca/
        dvRlpzV3qVQtun443HcVFLqXojuxKF0=
X-Google-Smtp-Source: ABdhPJyH6L3P6fekT8qK4BA31Hcm/N2AJYOJAr8Tfp5c0JpN5feMPev4dkBfw5LFE1kGLSJJ3m1hLw==
X-Received: by 2002:a05:6512:3248:: with SMTP id c8mr3466085lfr.156.1602968260497;
        Sat, 17 Oct 2020 13:57:40 -0700 (PDT)
Received: from localhost.localdomain ([5.188.167.245])
        by smtp.googlemail.com with ESMTPSA id q5sm2251013lfn.215.2020.10.17.13.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 13:57:39 -0700 (PDT)
From:   Sergey Matyukevich <geomatsi@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sergey Matyukevich <geomatsi@gmail.com>
Subject: [PATCH] ARM: dts: imx6qdl-udoo: fix rgmii phy-mode for ksz9031 phy
Date:   Sun, 18 Oct 2020 00:03:24 +0300
Message-Id: <20201017210324.556454-1-geomatsi@gmail.com>
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

Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
---
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

