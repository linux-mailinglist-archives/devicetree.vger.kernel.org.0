Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1883F2FF2C4
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:04:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731814AbhAUSDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 13:03:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729191AbhAUK2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:28:47 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C40C0C061793
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:13 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id g3so1850046ejb.6
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dTDIuTc0U8fse5lYanlEDxbQeooG0OMqfA5FbckRqJ8=;
        b=T6kbEPjXSsmcVinKCO6J8hPsllDVgX4+2rFC6FP4RUZIdTpwhKuj0GDASK4dBIuzlm
         e6lvX4eQDDmROB1olcc5GNA68blp7my824cSZLc08tPIyh2nXOwtXsoVjZtQ5Rd2/RlP
         BeBdTBoXkR1jfZnnOGfdjuhw06dyBBEjEb8uBX/17naCS6YZmDZ7GDx8T2/ZbxARWiwd
         AyIAapbc9zDKGaf7nAOojF3EBxDl14UCt4EnFBbrnBjursxGWP1YDa/qned/J/MHHr5u
         tWG9kHpJjeAP8U7TTS43tboY2xFlsrK5+Yg/dyYVGADlfK4v9t17dperQ3E+pPbvK8We
         5hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=dTDIuTc0U8fse5lYanlEDxbQeooG0OMqfA5FbckRqJ8=;
        b=XqbOjCDgeW+pwAm179HI3UgPDffU79Va9LRYRlDkXdzGBDPu+f3tgZGc2jQne0xg/v
         m/3x59J2m+fVxSXIPy70RyNAhlydlkukuzPHVfEEbKBgZzc0tVQo4+dX42uK+0ltuww6
         bFatUIBHXNBOSAi6boyU2UE+I7n9uBXWO1pXlZ4pXS9aNF8eRzzS7E9b4KotlJ2MHHXh
         uYmxh8YOSZJ/CQzVN7c/X/yX+XfSUSEO9yg6a36Nzeg/1XqIXBwd5nP/GPIzuthebT71
         tnjjNG3DoYIUAQ2QkpJSCW3E4pZMzMuV9+vGF94k7vxqYrtSVLS+oo0d/rdcnLMypiH3
         +9+w==
X-Gm-Message-State: AOAM533V8wkYUR0HIn7uGLDd7sCShj8KBJVxsKkRy0ZHmx3kbiMmEtl1
        kKUKLvreXXnLvGgWmZZYcCJq7g==
X-Google-Smtp-Source: ABdhPJwmyScYHu7MGf5khxbIvxwB6eQ3Vxjpa5gJzsbED8H4xTRzj6eQ7YMQ+faEkaR9cdp/53tdhQ==
X-Received: by 2002:a17:906:4e0c:: with SMTP id z12mr8583626eju.370.1611224832578;
        Thu, 21 Jan 2021 02:27:12 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id c14sm2601834edr.46.2021.01.21.02.27.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:12 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/12] arm64: dts: zynqmp: Enable reset controller driver
Date:   Thu, 21 Jan 2021 11:26:52 +0100
Message-Id: <4fb62952f61e5046d750fff0e3e469c7abd1d0d0.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1611224800.git.michal.simek@xilinx.com>
References: <cover.1611224800.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable reset controller to be prepared for use.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Remove reset description for IPs from this patch. IPs will be enabled
  separately with DT binding update.
- Change patch subject

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index cdc1a0ddfa01..94a2e1f2b713 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -187,6 +187,11 @@ zynqmp_pcap: pcap {
 			xlnx_aes: zynqmp-aes {
 				compatible = "xlnx,zynqmp-aes";
 			};
+
+			zynqmp_reset: reset-controller {
+				compatible = "xlnx,zynqmp-reset";
+				#reset-cells = <1>;
+			};
 		};
 	};
 
-- 
2.30.0

