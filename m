Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A59C7210D8
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 01:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726609AbfEPXAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 19:00:12 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:37353 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726975AbfEPXAE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 19:00:04 -0400
Received: by mail-pf1-f195.google.com with SMTP id g3so2617737pfi.4
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 16:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
        b=IrWnxdlePeHzk4plSAn4SitSypwJhfMhyVRFzVajRhwefK/vTtfDyVbKcueIKno2Ov
         jT6zbh26BxuIW4pNBvtfSUcEVz8djCazhjKU2cYWODdnIiwcJETXjueu1AdTY2Vy4UaH
         9FEwUwnG58TWdJ+b6VXxLxHhJE5mCkwSbNT+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lvg93XkWk/IauY18P9MzBBlRGinky/ZsfgSfGtfzvWE=;
        b=rsbuU7PPkIZ8UWAA+d1L4KTlx095RmjZlGsU6TnUYB26kUWpBLrD/hubB5Xfw+dica
         XtHR85uKNEujBxBRXcKN+vhQkU9aDVgk6GqJQhCi03dawZMyowDhx9pq0LmtVyAFapTE
         OBp/8Q5EjcttN2k9PdBdDjsUQOsOcoAiUHRA0yqVe6+gwy0pPQs/lX1bgwlnF4lfCjTp
         lL57QQkoP6nvVEHjnmh/mNE64I3FVcscAhDqynp23MK0elTn0ihhln9h6G1zblk5Ccwb
         nIKhfpBeMnOKJM48ZcJH5DhbFLyChx/A99IHPE6RM/A5VjpS6PZlS0r7utBJEyC0w7hH
         Uh+Q==
X-Gm-Message-State: APjAAAVfZWxUf3ldHKsCSXUY0fIkJCA+nmSYJrR3JM0Hiy1renIcfsRv
        6fb1cCfgBdqXrfLTzxibVgpykw==
X-Google-Smtp-Source: APXvYqyXmrMlXwbThNdH5OYzM2uXETKw3ITSWk1x8137xR6JOng1E+DtlSZxRvtpsu174gwuzPC5Dw==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr57008369pfd.115.1558047603560;
        Thu, 16 May 2019 16:00:03 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id j64sm1769506pfb.126.2019.05.16.16.00.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 16:00:02 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Minas Harutyunyan <hminas@synopsys.com>,
        Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Cc:     Alan Stern <stern@rowland.harvard.edu>,
        Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
        amstan@chromium.org, linux-rockchip@lists.infradead.org,
        William Wu <william.wu@rock-chips.com>,
        linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>,
        Randy Li <ayaka@soulik.info>, zyw@rock-chips.com,
        mka@chromium.org, ryandcase@chromium.org,
        Amelie Delaunay <amelie.delaunay@st.com>, jwerner@chromium.org,
        dinguyen@opensource.altera.com,
        Elaine Zhang <zhangqing@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [REPOST PATCH v2 3/3] ARM: dts: rockchip: Allow wakeup from rk3288-veyron's dwc2 USB ports
Date:   Thu, 16 May 2019 15:59:41 -0700
Message-Id: <20190516225941.170355-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516225941.170355-1-dianders@chromium.org>
References: <20190516225941.170355-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We want to be able to wake from USB if a device is plugged in that
wants remote wakeup.  Enable it on both dwc2 controllers.

NOTE: this is added specifically to veyron and not to rk3288 in
general since it's not known whether all rk3288 boards are designed to
support USB wakeup.  It is plausible that some boards could shut down
important rails in S3.

Also note that currently wakeup doesn't seem to happen unless you use
the "deep" suspend mode (where SDRAM is turned off).  Presumably the
shallow suspend mode is gating some sort of clock that's important but
I couldn't easily figure out how to get it working.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- rk3288-veyron dts patch new for v2.

 arch/arm/boot/dts/rk3288-veyron.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..1d8bfed7830c 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -424,6 +424,7 @@
 
 &usb_host1 {
 	status = "okay";
+	snps,need-phy-for-wake;
 };
 
 &usb_otg {
@@ -432,6 +433,7 @@
 	assigned-clocks = <&cru SCLK_USBPHY480M_SRC>;
 	assigned-clock-parents = <&usbphy0>;
 	dr_mode = "host";
+	snps,need-phy-for-wake;
 };
 
 &vopb {
-- 
2.21.0.1020.gf2820cf01a-goog

