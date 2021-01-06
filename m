Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 086622EB776
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 02:11:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725797AbhAFBKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 20:10:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbhAFBKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 20:10:53 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E58CEC061793
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 17:10:12 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id n3so1796517pjm.1
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 17:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=PXy/Z4cJJtmSLwHIzvv94AFXm53IcXaCkEjo0NBKC5Y=;
        b=oi8zXYJrbHvbF8TUMKFopRoHdNivhe1Fo/c8jQaLdtweQNLFhcVVlQ3VPxqW7CtzUK
         A+RXWIfOOCoHuzWgamz+RROj4L7sq1JZdh46QEyHC65hI36oOPqj+PwcP65SOdcDJfpr
         wxYyP8iEUTokbYvxypuY3/A7qbeSQVFGTRdOvgOOHfnbVdsy4D48rRyveAJiAU9h6PZ0
         Fup5N1stFi9e5CCKOJ4wway6ZskVcmF205+zT/P4IflbX9yheA8vZUvffRgQxvY73hly
         aIVDzqtQzb51fRi+I/M76iOn6HV/Q6b+0dbAXE5KFJUeeCSxi3qL0aBF4VFJBx5+xj0R
         nfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PXy/Z4cJJtmSLwHIzvv94AFXm53IcXaCkEjo0NBKC5Y=;
        b=patp4I11kTJCkY0Yfk+ML6VFYe7XD/CW0DlG6+bfw0fMQa5qS3u+3baCt168PMKpAv
         hfISCmiSQu91hyVPBp4qfGHodk6cQ61IePPoHZBLfZaTwFKzTF+ZsadWj95th+S10kCL
         5HRfSYkGXyFE4ho0F9h2vo+OC58cv6a8smw2iN7/L5xi266V01/+kvuuZlCgDSc/AXPN
         wEiHZOIBoqrpFYqjq8L3rouWhIHO3l6+IXWnNtp9ni8pRlQFIDxwqQ5Edz1Bqh7LTIhX
         5cXKXLq/haij73R+uyxQ/nymMHadPi2Wh73p7rns6dk5faB/28/z1O4gYug2a1VfXqTl
         xYXg==
X-Gm-Message-State: AOAM531iSzYSd7l2B5VLwlEN1YYMfCWiYrv2HV8VEO4k5dQCdeM3oBH/
        utdzrLVlsnZtRTtxwxgJwJnSKLvSBnU0sw==
X-Google-Smtp-Source: ABdhPJzb2NBFlB2Iy+fLNXVdH2f2B9SRUOKH+f1lQbsYbSuH4ElZoTp6rgkK1t0vdoCyZy4dmEDuAg==
X-Received: by 2002:a17:90a:31cb:: with SMTP id j11mr1878377pjf.6.1609895412576;
        Tue, 05 Jan 2021 17:10:12 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
        by smtp.gmail.com with ESMTPSA id w27sm502126pfq.104.2021.01.05.17.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 17:10:11 -0800 (PST)
From:   Vincent Pelletier <plr.vincent@gmail.com>
To:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: of: Add OF_SYMBOLS
Date:   Wed,  6 Jan 2021 01:09:55 +0000
Message-Id: <56ad8108c15715d4e948a8921e24c97731d11478.1609894820.git.plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210106010955.578304-1-plr.vincent@gmail.com>
References: <CAL_JsqLCeNVnjgYAHhMEiv79iX552EPC7LGgk7GBrt2JsSYo5Q@mail.gmail.com>
 <20210106010955.578304-1-plr.vincent@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allows telling dtc to emit the __symbols__ section in produced Device Tree
Blobs, which in turn allows using overlay Device Tree Blobs which reference
nodes from the base Device Tree using such symbols.
This does not presume of what will apply the overlay (bootloader, kernel,
fdtoverlay...).

Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
---
 drivers/of/Kconfig   | 8 ++++++++
 scripts/Makefile.lib | 4 ++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 18450437d5d5..2f3db2241561 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -93,6 +93,14 @@ config OF_OVERLAY
 	  While this option is selected automatically when needed, you can
 	  enable it manually to improve device tree unit test coverage.
 
+config OF_SYMBOLS
+	bool "Include symbols in generated Device Tree Blobs"
+	help
+	  This option tells the Device Tree compiler to generate __symbols__
+	  sections in all produced Device Tree Blobs.
+	  Useful for Device Tree overlays, be they applied by the kernel or by
+	  a bootloader, at a slight increase in file size.
+
 config OF_NUMA
 	bool
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 213677a5ed33..402c2a5158db 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -299,6 +299,10 @@ endif
 
 DTC_FLAGS += $(DTC_FLAGS_$(basetarget))
 
+ifeq ($(CONFIG_OF_SYMBOLS),y)
+DTC_FLAGS += -@
+endif
+
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb= DTB     $@
 cmd_dt_S_dtb=						\
-- 
2.30.0

