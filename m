Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 095323A1330
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239265AbhFILsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235021AbhFILsC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:02 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25BECC061760
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:46:07 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id i94so20089418wri.4
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nJFcESfNmuqpnzQeAxiF3OgzwQNYMvErOvMnIEXFWso=;
        b=0m6BMX+hvJl2iXhnYa7iPaGeS4es8Kt3pe3NumpAq4uCFqrPsVn2LwkKHM/PAI9VeD
         YA9zpilalIW2iMXDCtef3p1JwJV5uEduadwiVm4SBpQAIpjIf9rwobQxgWl706DLrpgK
         ZUptGOuem+gWhNI9aT4LRxbDVh8fv7LhnO1ImwZmYy25lzMssvgAMTUbdCO3t8vWaPXP
         he+uuEhW8dyBneqZ4FmyLujwSP81VbN1S0e5FvX3z17XhTjJrSC2IXXwK+2uy49oZicL
         qMe1lMAXvADLTU+9/TOk1H1qlkrffKM9er/Du0QzKmPUWNfDWeHJ+vr7/GRkQDS4dLXX
         E+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=nJFcESfNmuqpnzQeAxiF3OgzwQNYMvErOvMnIEXFWso=;
        b=LRjnQMAOpRfcu5ubruFdXremSNo0kCWyg3UWTIZbA4ToI0MavzwZkpCr7wF/8dZGNR
         mBGqapnkH6quv0MpEE85m9Cl/losWOs9lnBZ38e6dznn+CkS5G2K27mKACnI8HXwUkh+
         8hUuKkv2ziJKYo6tdGwrex8/n8w9Kpyw5h9/qDrw29mJ6Q7We6CbTIm+WRgvTa9QHRsG
         r0R00xVDRgzImtY1B7p/WiMQG11FGs0E+EeHT8AiAE2p/icjEHy/LL+R23X35vQmElbY
         bR18OuGfOjDwQdj6XOjwyBBdwVBzq/YHwNgxHy4MvVCb9+Et9RCU90I6tT9F3lz8MCqB
         7mhA==
X-Gm-Message-State: AOAM533j+36FcR7p6enXj4wiO+FAFkTn02oprlR41lDoUrMTcpM8ihCo
        GNoFw+TGnh2csX2u32KT5W8+Sw==
X-Google-Smtp-Source: ABdhPJwCyL97mdno19WFYlv8tJ9mnEcNXdfLVtVESfF8bMDKokS9YwVTG4/6DySDpifCcxHhsRG2ug==
X-Received: by 2002:a5d:4fce:: with SMTP id h14mr27755410wrw.57.1623239165804;
        Wed, 09 Jun 2021 04:46:05 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id m22sm5659459wmq.21.2021.06.09.04.46.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:05 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 26/31] arm64: zynqmp: Move rtc to different location on zcu104-revA
Date:   Wed,  9 Jun 2021 13:45:02 +0200
Message-Id: <d836bc85e64610fba148c66154f97f4aff49388d.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move it the same location as is on zcu104-revC for easier comparison.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 84c4a9003e2e..048df043b45c 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -417,10 +417,6 @@ conf-tx {
 	};
 };
 
-&rtc {
-	status = "okay";
-};
-
 &psgtr {
 	status = "okay";
 	/* nc, sata, usb3, dp */
@@ -441,6 +437,10 @@ flash@0 {
 	};
 };
 
+&rtc {
+	status = "okay";
+};
+
 &sata {
 	status = "okay";
 	/* SATA OOB timing settings */
-- 
2.31.1

