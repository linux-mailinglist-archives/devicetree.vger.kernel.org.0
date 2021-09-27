Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15B9F419818
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 17:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235127AbhI0Pnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 11:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235253AbhI0Pnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 11:43:49 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9EA9C061765
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 08:42:10 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id dj4so71246613edb.5
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 08:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=juM+6gU0xK/tJnkRCnKH9JSf1NnqqHNF9Op7kOVux8s=;
        b=WlZihghXPzhGhYExfbANXkqk0WYAsLgrdQOqlzEdrljD7wOzF5t9x4pViv5d+sRrpi
         EjAmSafmRlDebwfnyeGUdjf1zBIwtqKI8hAO3a9v0E1sa4RJuxX0quwtiHIbyQqMZ7dM
         Lnx/lOXzmHV2djDQ5m/m0pPpyjCxTxlZuy/VP+ponlx1R3kC/tAZc2BTkRHn5WpSPYKn
         z+hlFOS13nzgfKCfhji4qNheFli5ncKrA2301X3XKkiRY8h32VFtVdSmIgdJOzzI09S4
         UnSSvwW3pD8Tuvtl0ooBdGvJ4r96BWWKGMZyXmL52gNzqDX1V+fbk8OPchX+BSLbE61Y
         ff0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=juM+6gU0xK/tJnkRCnKH9JSf1NnqqHNF9Op7kOVux8s=;
        b=kOmHN5tnVVTUKt0Q2Juonq0nzV6orVwuzoC83ei0bTx54ZFL+rllgxb2kseGOkNsF1
         mmXVpzufCketNHXLFXc5zMVlVtzyMi/I20xO7aUy2PRbqsXsp0OvtxMzCm+9d4xZa3pH
         3IJcdiuBthzwvJQZ8FP2DugPXoCR2aWqMXFA6VeqcrAlAtSJpQFryz3eZzCclIUvhqLL
         jzLneOI3IOHAzR7TO+1Ge8BEIQij4ZMys2ehSavgoPj0Nu8nX4jLn1Bzbz0DEqo4PTp4
         YnL58Ihw7AGXvfJCC6+4SH59fB0zNJpwl4+cMPlbzDi+zewB7f9BODBvqjd7MHaU9laN
         Az/w==
X-Gm-Message-State: AOAM530NA61t84Wsi1o9IfSccwuh+tbR32XX1ZmehX3erZ9SLyroQb/h
        wGyxBFVlExDTXzH5phXRNS2xvFLHtgeJQw==
X-Google-Smtp-Source: ABdhPJxwalP72BgLvd/32aQZy4mLoHFqGDu6v6C6pm4gn9aAcY5K5VhlaO5E3luQJuJFu47zQHG7Cg==
X-Received: by 2002:a17:906:169a:: with SMTP id s26mr465518ejd.278.1632757329473;
        Mon, 27 Sep 2021 08:42:09 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id n16sm10768025edd.10.2021.09.27.08.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 08:42:09 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 3/4] arm64: dts: marvell: espressobin-ultra: add PHY and switch reset pins
Date:   Mon, 27 Sep 2021 17:41:58 +0200
Message-Id: <20210927154159.2168500-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210927154159.2168500-1-robert.marko@sartura.hr>
References: <20210927154159.2168500-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both the Topaz switch and 88E1512 PHY have their reset and interrupts
connected to the SoC.

So, define the Topaz and 88E1512 reset pins in the DTS.

Defining the interrupt pins wont work as both the 88E1512 and the
Topaz switch uses active LOW IRQ signals but the A37xx GPIO controller
only supports edge triggers.
88E1512 would require special setup anyway as its INT pin is shared with
the LED2 and you first need to configure it as INT.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 8a700afd0570..96855a10b4a0 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -118,12 +118,16 @@ &usb3 {
 &mdio {
 	extphy: ethernet-phy@1 {
 		reg = <1>;
+
+		reset-gpios = <&gpionb 2 GPIO_ACTIVE_LOW>;
 	};
 };
 
 &switch0 {
 	reg = <3>;
 
+	reset-gpios = <&gpiosb 23 GPIO_ACTIVE_LOW>;
+
 	ports {
 		switch0port1: port@1 {
 			reg = <1>;
-- 
2.31.1

