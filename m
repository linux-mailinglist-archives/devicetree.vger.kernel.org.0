Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EEBC3A1325
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234472AbhFILri (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:47:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234625AbhFILri (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:47:38 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71EFEC06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:45:43 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so4025064wmq.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dv5TZU6Wfb8j+K9/W/AYEnaVxLhCu1/evPURiwPUiMo=;
        b=Z85OLRbx3GH2ei/4xqhwY+3XR6I9n1h1s5VwXt9lvOq6dJ5i0Y7PQv9gzw83iNl3Rx
         xICN/iysMo7NlB1cSOlJROS3V2UXyBmkb1o6ntlPBTqSQ2KO/WCgGbyII+8hQPjR/2t7
         tcFuo6jBdp0JL9hlS5ckKfFUONWfpdkrNuUqdTjxtbspt2eptlxCyl+QHZKK8egaJKXT
         DsBFklGnyK7GIOHV/peFDp/MccwgOaIBEoUHTJZWR6CD7ipFEcvYE+RDrpOGcL4/18aI
         A9JNiV1CXsy1As6bxNgoRy41njUKJ82Fe4ExZNzRrayN0P08Ao52aIdYyzp9/sgj9ai2
         W/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=dv5TZU6Wfb8j+K9/W/AYEnaVxLhCu1/evPURiwPUiMo=;
        b=VfC+iWZ8zNQ2usTC42laVxg7eV00KsFtjbR83GuziR8aREjSxg73FzLHTCB0MaAxsD
         tRLb8O/x77esnVA9D1MXyq0X+Ja+BoAImR2j4VRSebiGWIH2yQE0ndaSpZeCAnrt/nXz
         RnrAReEwIfa8qjeknBYlO3wdV9+FTJOlDcijWqqRthyHQCWmLwteU4W8dbYa+oYd6Z++
         IEQp2Y8vYpJVyPnkKakzQLyiRUdGLWlhX1D7Hdpy3mqgdQSPWl5M0+lapilS1jBroqGg
         bpbmJ52s/t9rPqWg9hTS2DhPJ68gEKoAOb4nfmNhVkdL9wAMhApR3K7pD7qUpC9sGjKC
         nQ7A==
X-Gm-Message-State: AOAM532Zuo9Ry+52WioZAx2fU8hglC6CgQadqmBE4CXygczjnimuAZpo
        d4uzNvB0vXhtfNv/g1uD2IeUDQ==
X-Google-Smtp-Source: ABdhPJxZ4rF6XjqTvg0g48EKxnPE4/hfAi3vObLFC5G1cq2/FzO1UwWMM1SbT6R2lwIc1kdlcfr/pg==
X-Received: by 2002:a7b:c20b:: with SMTP id x11mr9596495wmi.9.1623239142053;
        Wed, 09 Jun 2021 04:45:42 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id n8sm20171026wmi.16.2021.06.09.04.45.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:41 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/31] arm64: zynqmp: Add missing mio-bank properties to dc1 and dc5
Date:   Wed,  9 Jun 2021 13:44:48 +0200
Message-Id: <2b2ab31639c706651dfd319f5b6bc59e68f111b6.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing mio-bank properties to zc1751 dc1 and dc5 boards.
The same change was done by commit 63481699d6e3 ("arm64: dts: zynqmp: Add
missing mio-bank properties to sdhcis").

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index f57cb5356cef..dd129347174a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -364,6 +364,7 @@ &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci0_default>;
 	bus-width = <8>;
+	xlnx,mio-bank = <0>;
 };
 
 /* SD1 with level shifter */
@@ -371,6 +372,7 @@ &sdhci1 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
+	xlnx,mio-bank = <1>;
 };
 
 &uart0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
index 6c9460a0707c..ae2d03d98322 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
@@ -407,6 +407,7 @@ &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci0_default>;
 	no-1-8-v;
+	xlnx,mio-bank = <0>;
 };
 
 &ttc0 {
-- 
2.31.1

