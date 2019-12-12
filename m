Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 088B811D720
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 20:36:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730449AbfLLTgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 14:36:25 -0500
Received: from mail-pj1-f65.google.com ([209.85.216.65]:38613 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730715AbfLLTgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 14:36:25 -0500
Received: by mail-pj1-f65.google.com with SMTP id l4so1500285pjt.5
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 11:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I/PREmgXNFnXrCjIoeu5i0RRy2A/HbW6IGnfPCXczl8=;
        b=T7BwW0N92zCoHek8Miu1pfCKC9fml6uE1NVnvPqt0NoWdvtGNsju43eyhF+BUXyrpd
         0Rq1kbOCLHJIYBNcoTT6xDnXxN6xmzlWnf88Z71Sp+s3OYB4Sivya/1b/eVKQvjjgWPt
         wNVHABAq0b1OtbRxNVufqPAwho5y16plDn0y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I/PREmgXNFnXrCjIoeu5i0RRy2A/HbW6IGnfPCXczl8=;
        b=mDShgektyWabsqX79WXnyJVScyYWMW+9IS3QQH40kaWHEXv5IxLMY26DK4ERNNbdk0
         qwvsCh13LMivysVr0OgUvVG5t54i2n4L3rKtwsH4OuDOFab4IhOTl5NmCqKIGq0lSyux
         KyhjGFa54vEtBokIsCCnpBE4cK390bh2IJBOTWNcxkAv68N40meM1kMHbj8IL/HEGIna
         AxYtys0C+88XUPqLG0trI626VugjJyqeWL432Ifv/fViwHN306yTLrBWpy6Zknix57Es
         pHeqcfvdXicQe/9sSY+kOE/bDOiLKHdbqkKYP9bdmMLKChDINohq7XfzFS15jEEKH/zz
         VfBw==
X-Gm-Message-State: APjAAAVFwINPtRQFGV6kfRVm5eUSyQDwfZHDmgBlCUvACqQnbYu8/Fwo
        8n7WAHEdlcgwvehnFS7SAg4U7Q==
X-Google-Smtp-Source: APXvYqxRviElYQ2WA06uHTXpvSGeaTso4kQnAEIIpHNJETMQIyHgH1+LsV+muNtwvYIJnfvf+ujIIg==
X-Received: by 2002:a17:902:6b0a:: with SMTP id o10mr11105366plk.15.1576179384001;
        Thu, 12 Dec 2019 11:36:24 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id m34sm7568302pgb.26.2019.12.12.11.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 11:36:23 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, swboyd@chromium.org,
        mka@chromium.org, Sandeep Maheswaram <sanm@codeaurora.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Maulik Shah <mkshah@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 7/7] arm64: dts: qcom: sc7180: Use 'ranges' in arm,armv7-timer-mem node
Date:   Thu, 12 Dec 2019 11:35:43 -0800
Message-Id: <20191212113540.7.Ia9bd3fca24ad34a5faaf1c3e58095c74b38abca1@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212193544.80640-1-dianders@chromium.org>
References: <20191212193544.80640-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Running `make dtbs_check` yells:

  arch/arm64/boot/dts/qcom/sc7180-idp.dt.yaml: timer@17c20000: #size-cells:0:0: 1 was expected

It appears that someone was trying to assert the fact that sub-nodes
describing frames would never have a size that's more than 32-bits
big.  That's certainly true in the case of sc7180.

I guess this is a hint that it's time to do the thing that nobody
seems to do but that "writing-bindings.txt" says we should all do.
Specifically it says: "DO use non-empty 'ranges' to limit the size of
child buses/devices".  That means we should probably limit the

I believe that this patch is the way to do it and there should be no
bad side effects here.  I believe that since we're far enough down
(not trying to describe an actual device, just some sub-pieces) that
this won't cause us to run into the problems that caused us to
increase the soc-level #address-cells and #size-cells to 2 in sdm845
in commit bede7d2dc8f3 ("arm64: dts: qcom: sdm845: Increase address
and size cells for soc").

I can at least confirm that "arch_mem_timer" seems to keep getting
interrupts in "/proc/interrupts" after this change.

Fixes: 90db71e48070 ("arm64: dts: sc7180: Add minimal dts/dtsi files for SC7180 soc")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 36 ++++++++++++++--------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index c671f0719d42..336cf65bdcc2 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1206,59 +1206,59 @@ watchdog@17c10000 {
 		};
 
 		timer@17c20000{
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0 0x17c21000 0x10000>;
 			compatible = "arm,armv7-timer-mem";
 			reg = <0 0x17c20000 0 0x1000>;
 
-			frame@17c21000 {
+			frame@0 {
 				frame-number = <0>;
 				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c21000 0 0x1000>,
-				      <0 0x17c22000 0 0x1000>;
+				reg = <0x0000 0x1000>,
+				      <0x1000 0x1000>;
 			};
 
-			frame@17c23000 {
+			frame@2000 {
 				frame-number = <1>;
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c23000 0 0x1000>;
+				reg = <0x2000 0x1000>;
 				status = "disabled";
 			};
 
-			frame@17c25000 {
+			frame@4000 {
 				frame-number = <2>;
 				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c25000 0 0x1000>;
+				reg = <0x4000 0x1000>;
 				status = "disabled";
 			};
 
-			frame@17c27000 {
+			frame@6000 {
 				frame-number = <3>;
 				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c27000 0 0x1000>;
+				reg = <0x6000 0x1000>;
 				status = "disabled";
 			};
 
-			frame@17c29000 {
+			frame@8000 {
 				frame-number = <4>;
 				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c29000 0 0x1000>;
+				reg = <0x8000 0x1000>;
 				status = "disabled";
 			};
 
-			frame@17c2b000 {
+			frame@a000 {
 				frame-number = <5>;
 				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c2b000 0 0x1000>;
+				reg = <0xa000 0x1000>;
 				status = "disabled";
 			};
 
-			frame@17c2d000 {
+			frame@c000 {
 				frame-number = <6>;
 				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
-				reg = <0 0x17c2d000 0 0x1000>;
+				reg = <0xc000 0x1000>;
 				status = "disabled";
 			};
 		};
-- 
2.24.1.735.g03f4e72817-goog

