Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3A5724BAC
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:35:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727221AbfEUJfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:35:34 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:40984 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726705AbfEUJfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 05:35:32 -0400
Received: by mail-pf1-f195.google.com with SMTP id q17so8763804pfq.8
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 02:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FnxOSFCClFXBL/MQEoj2x4esQGTm7evFd77Wm/m1NK4=;
        b=FFvJMEerPN6RTzJ+NEOY16l+7iMM0ppRraH6BWkcq2lCBKg0mIogK7V9VC0mYcnoFC
         lpcwM2Gk+YfdcAdRsD1nkSSdLsZUylUpeLVeBwh0oBruUCaG9/tx8N6CnMySTJwPQVOp
         4Zcw1MxuGUvdcMaMWCGCeZXje44wam6ITlpgXVwK6Dc87G6IaG/nRabVCKTEJLTppkUO
         i3lgHNB01l3pm9EN1IpqlE91qR/FgJv4Ca/zhN6x8+WEkKKyLjd2ZBLFT4BAeggnr2C9
         7U7qr/o1nxk0MfPBf5UVzNw3gO95qTis3Vw3EEfBCyjpdLtzvF/AH8mrQuUsFr4CIwaK
         Q+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=FnxOSFCClFXBL/MQEoj2x4esQGTm7evFd77Wm/m1NK4=;
        b=d5uX4wU6BLIsj5+yWp+CPcnKrbY3fnaWC/8JCqaPOaOghzBAtEa5godf4mxY0vwJs6
         J8RI+2JuiT7SQJf2SM6XflNqIntimpFd5KSxYn9cJ1QOzTki9SPC6XFLsSPCUkM6bquP
         SvSdVQvWEduRIfSr/Jzpxqqb/QcMfuPDxdatoyEoTYTYCWtVUD4NjAz+p78bthQuHFfu
         Dw4wzISH01O5dKEaT2fPR47n1Q9WHx+kXBpMgC7cKdLgmatfs7bqPCB3reSQRYS/+XgH
         cnTlL/zHN99kGiKbtMXf8saKQgWAm9Fi3JdsbUcptcCMjzp6wOzwd3bC/vO7xdIqffDH
         +3DA==
X-Gm-Message-State: APjAAAVZ44ilKyBlJR/ioQhdxv68dxJTk/z45jQ/x4olbz0V/mSSy7Ee
        h5HAiqedmCE6tVG60hECg4Ocog==
X-Google-Smtp-Source: APXvYqwADQFmBLmMydAb2ax1jzlS0xwcSIkCQrM5GCjaAteOFtjZewJqH81wNhkrczg63VjCnLukfA==
X-Received: by 2002:a63:1354:: with SMTP id 20mr79407935pgt.356.1558431331764;
        Tue, 21 May 2019 02:35:31 -0700 (PDT)
Received: from localhost ([49.248.189.249])
        by smtp.gmail.com with ESMTPSA id l21sm28759496pff.40.2019.05.21.02.35.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 May 2019 02:35:31 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        niklas.cassel@linaro.org, marc.w.gonzalez@free.fr,
        sibis@codeaurora.org, daniel.lezcano@linaro.org,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 2/9] Documentation: arm: Link idle-states binding to "enable-method" property
Date:   Tue, 21 May 2019 15:05:12 +0530
Message-Id: <9dc4ce06143de48039e841c337fafa7cb9c8d7d2.1558430617.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1558430617.git.amit.kucheria@linaro.org>
References: <cover.1558430617.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "enable-method" property for cpu nodes needs to be "psci" for CPU
idle management to be setup correctly.

Add a note to the binding documentation to this effect to make it
obvious.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Acked-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/idle-states.txt         | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/idle-states.txt b/Documentation/devicetree/bindings/arm/idle-states.txt
index 45730ba60af5..3bdbe675b9e6 100644
--- a/Documentation/devicetree/bindings/arm/idle-states.txt
+++ b/Documentation/devicetree/bindings/arm/idle-states.txt
@@ -241,9 +241,13 @@ processor idle states, defined as device tree nodes, are listed.
 			   - "psci"
 			# On ARM 32-bit systems this property is optional
 
-The nodes describing the idle states (state) can only be defined within the
-idle-states node, any other configuration is considered invalid and therefore
-must be ignored.
+This assumes that the "enable-method" property is set to "psci" in the cpu
+node[6] that is responsible for setting up CPU idle management in the OS
+implementation.
+
+The nodes describing the idle states (state) can only be defined
+within the idle-states node, any other configuration is considered invalid
+and therefore must be ignored.
 
 ===========================================
 4 - state node
@@ -697,3 +701,6 @@ cpus {
 
 [5] Devicetree Specification
     https://www.devicetree.org/specifications/
+
+[6] ARM Linux Kernel documentation - Booting AArch64 Linux
+    Documentation/arm64/booting.txt
-- 
2.17.1

