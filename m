Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B142C44E7B9
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 14:44:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234998AbhKLNrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 08:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235016AbhKLNrC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 08:47:02 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95AC0C061767
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 05:44:11 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id r12so37919366edt.6
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 05:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Te8uMFAKWa70Z+xlgUBJy/DeGEU5ONbhKqlyU3jBfw=;
        b=CvADpE8mEm4BvrmHxnc+woYk3lFVlZlj9xhizjLerbW8ZJgflvYEoT+Ys7HQBYM4RX
         aOPAG3+0g/xQ1P90RJ1ZI0/iNMmFylZNXldg633IilUNZnEV8vekZQGQ9gjyAETzAE6C
         E/8MAElsHbXmWWnpNJfY83FSNH6IGL/42Su8B7t4PFuQXP2rhgGg+j/kZNK2kzEPOWmi
         oczdgP9pVsOUzJTgagvowHHgLnJS/1RbL9JhigLvox4SOOeJ1bRsyYno9OhWWcQ/gxUm
         yHpe7MrTf70lCU3cpSzwU+DIYI/lmvFTQe5W3kchy7upqXj1DGDzo4ehzaz/ZaL3Wxhj
         kImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Te8uMFAKWa70Z+xlgUBJy/DeGEU5ONbhKqlyU3jBfw=;
        b=YeLlPVbun7ivN8o+HjJAKC27THqbyru6WdSY0FkHrT/HGIxTOtT9iDHtycl1UNVdpn
         UfH/b8QqpjIzCe+jO/xbP3HAUktB4PA7hRviavz/fVErC5FDuRPjHc/EvJee/XyPpssV
         5f/q5K+BVrJ6P6VzVIPGDlAza+5ZSvg7GVi6uwp0UkVUGottBPG5wwjMnNUqSn1pOsRX
         jGNTDN+CGAIil6a7PPdt6UFxUgVqMwm9d2KEc0fqOf7u0KCrMdiJXBnAvAGZ60yBual2
         fBEOODFvYdXG+IllSsB9lnuUkxXVB1hlGtj0z8HFcGi7Yc+JjC3uD0JNk4mhoU0KCIF9
         Krsg==
X-Gm-Message-State: AOAM531DgmzOvWTppSSbztAGR9e5Wl2JYcktI37AKnNlxDxA8JZ17g/F
        AdK9gTyNuLE3f+an99tANfHH3w==
X-Google-Smtp-Source: ABdhPJwR0ruu6ixgO9BNjgc0WyNpjKN0SnNcEGAOjbSUi5aQeH6jeONBYonqAtODs3RhPlTcBbah+g==
X-Received: by 2002:a17:907:3d88:: with SMTP id he8mr19981427ejc.565.1636724650181;
        Fri, 12 Nov 2021 05:44:10 -0800 (PST)
Received: from fedora.. (dh207-98-14.xnet.hr. [88.207.98.14])
        by smtp.googlemail.com with ESMTPSA id z6sm3142867edc.53.2021.11.12.05.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 05:44:08 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        miquel.raynal@bootlin.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        pali@kernel.org, marek.behun@nic.cz
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] arm64: dts: marvell: cn9130: add GPIO and SPI aliases
Date:   Fri, 12 Nov 2021 14:44:02 +0100
Message-Id: <20211112134403.1016717-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CN9130 has one CP115 built in, which like the CP110 has 2 GPIO and 2 SPI
controllers built-in.

However, unlike the Armada 7k and 8k the SoC DTSI doesn't add the required
aliases as both the Orion SPI driver and MVEBU GPIO drivers require the
aliases to be present.

So add the required aliases for GPIO and SPI controllers.

Fixes: 6b8970bd8d7a ("arm64: dts: marvell: Add support for Marvell CN9130 SoC support")

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/cn9130.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/cn9130.dtsi b/arch/arm64/boot/dts/marvell/cn9130.dtsi
index a2b7e5ec979d..71769ac7f058 100644
--- a/arch/arm64/boot/dts/marvell/cn9130.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130.dtsi
@@ -11,6 +11,13 @@ / {
 	model = "Marvell Armada CN9130 SoC";
 	compatible = "marvell,cn9130", "marvell,armada-ap807-quad",
 		     "marvell,armada-ap807";
+
+	aliases {
+		gpio1 = &cp0_gpio1;
+		gpio2 = &cp0_gpio2;
+		spi1 = &cp0_spi0;
+		spi2 = &cp0_spi1;
+	};
 };
 
 /*
-- 
2.33.1

