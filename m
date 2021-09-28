Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 078AC41B4BA
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 19:09:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241937AbhI1RLF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 13:11:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241896AbhI1RLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 13:11:05 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C43FC06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 10:09:25 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ba1so28004428edb.4
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 10:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AapyUGMwZdZlGfkJRVj63XggLC45SeYx0cvXnnFw9IE=;
        b=BQXl1PqUkxYCqFSecsSFdQjjMZKGgfeTiyQ/wZLF8XVMDsTgzJYbmx81+c603HJdQl
         Wz3AnzV8fj78DOdzSmzuDrzzNRhJlzC4kvKdCnLYjoNLKbD9G/rH4QCYnog4pfmk7lk8
         lCLKHA4Sud2npi2lowoLSSN6VNnCNlVnd2vAhdlEfDrIlaurFE91jJEVbVfCk4DHOJNV
         FDM1bO8Gwkys1GA7tyxmTZEXjFsnYctVwiifD+4UVpiw1vJrICiJmFKUoH3UhzxhudJs
         ZHC+iQdv9xinoyLNQF/q6/OZBPWGQPOyKo01ekgPaMocBo/1ji9z+CN6Uh2oqjeL3Yc+
         T4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AapyUGMwZdZlGfkJRVj63XggLC45SeYx0cvXnnFw9IE=;
        b=IKut8AwVrqQb1EnM3jCO3i6LiSPnubVFnWy7ZZxkh5jD+qhBTGc1rVUK0Atu7PYagj
         X+XGrOyosb3Q6gVJBt6NZQ3ZHD/nl2l+fym72xk52FSm9utidMnYpE6MpOrx69tOihgP
         uGgmi52a1QqD8o8qtKSUubl9yB7iXfwZDhcu0Vl4O7zco/a2Ij0vKhmoaI8qynU/m4YX
         m/pJSbQ7KhypwWiC7FvCmqH2pWlSxt2SGiouT8WMpTlFIOYycRzAIQSl2gEzTJ4X1TOi
         LoqfWPV3MNSTZz2GEW4CMH2vN1IcohXe1VS6pI05ov0BqQh7IR5DYaiO3WBawXlASKzF
         E31A==
X-Gm-Message-State: AOAM532J1iqoTKDZsIGAcav/QMbSDYwRxVBmwyi2XbaVPd3jV/7BGgga
        MT7xA70PJGuFxzUvgOamnJ8SPA==
X-Google-Smtp-Source: ABdhPJyw2H/EV65V+ox2y/9HJNMx1dx1fAN9rtzH/5xFHPU3JqdWmM81U1UiNiYVyED0BCq0mbveww==
X-Received: by 2002:a17:906:c055:: with SMTP id bm21mr8051018ejb.350.1632848964117;
        Tue, 28 Sep 2021 10:09:24 -0700 (PDT)
Received: from fedora.. (cpezg-94-253-144-231-cbl.xnet.hr. [94.253.144.231])
        by smtp.googlemail.com with ESMTPSA id bj21sm10806129ejb.42.2021.09.28.10.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 10:09:23 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 1/3] arm64: dts: marvell: espressobin-ultra: fix SPI-NOR config
Date:   Tue, 28 Sep 2021 19:09:17 +0200
Message-Id: <20210928170919.691845-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SPI config for the SPI-NOR is incorrect and completely breaking
reading/writing to the onboard SPI-NOR.

SPI-NOR is connected in the single(x1) IO mode and not in the quad
(x4) mode.
Also, there is no need to override the max frequency from the DTSI
as the mx25u3235f that is used supports 104Mhz.

Fixes: 3404fe15a60f ("arm64: dts: marvell: add DT for ESPRESSObin-Ultra")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Add Fixes tag
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index c5eb3604dd5b..610ff6f385c7 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -71,10 +71,6 @@ &sdhci1 {
 
 &spi0 {
 	flash@0 {
-		spi-max-frequency = <108000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
-
 		partitions {
 			compatible = "fixed-partitions";
 			#address-cells = <1>;
-- 
2.31.1

