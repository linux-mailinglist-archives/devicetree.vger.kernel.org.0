Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A07952F16E9
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 14:59:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730589AbhAKN7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 08:59:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387985AbhAKN6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 08:58:44 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E23AC0617AA
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 05:57:21 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id dk8so18981613edb.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 05:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=05WhkcTFmBsr9whzq7N+CgKfu1Y8Nmz6LAwOiQkDfTI=;
        b=G3FlCdMjHDQKo4Fz17V1HFMjNMe0yhV20SwGuoyn/sN+dulQeXXYvNcQVzTdyGiN2k
         IJRGxpINn6xPGTF4227OfkMbNfWZC9/63wDRWvXbMuG822oc3kXK1lbhzcE0E8aq5SBi
         6d33VmLo2aqVKMEmn6YTHs/Go4s7HNfQDgtkN+sEErizfnF6PURrLNACnbRWYL/soHjO
         yklPhJSESqzWeVDo+UV4JqEqyzJlZrerCJ/Gh8SwGuhS3Qs9US0q85aNYiVmBvQm1Xxh
         Le6y0CjLzpBL3eMthzC5ioZWLszjStq3Z0KZDt2hW384vF6a9tQXhWQw8gEc7R7di9fw
         AA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05WhkcTFmBsr9whzq7N+CgKfu1Y8Nmz6LAwOiQkDfTI=;
        b=W2xvXL2oYCJOWkifLcd0dyopJ5LLiaXxixWz7vPeQxUabxVqGVfuXGJXR9gPfBUFVw
         KqtiDSiJKcP6lZrpsY4gLCw0OhxAby+Ga2sx7CDbWKtZTRpbVH6/wgk5EhAfDUzoMowE
         7Yni6lM8cLRMV6vxZ6HQ3RQjQ1gy+yn3O6PuTEzG7G1VP3/I109LNFhHYKYbHoS9kiuP
         vcBzpvOWDKtaPDqBMWUKiVaj+nvfsvJPBS7ymiFq+wSFipoNH1f74lqfv8P2G8VttjSY
         wk2pWiQO6genbv1LE/Gm7UiBWm5bFd3Wwi6OtGn9iPTyB4dFfhT8KpjM1o9yFkKl2ucI
         JD9A==
X-Gm-Message-State: AOAM532MIBEFJWdj0T3zUCMWdErPvbXW8Y24abIOPtJKIl9SMZgm/72z
        c/sg8Yz12ZiQT//GlvFbiF55Yg==
X-Google-Smtp-Source: ABdhPJxn3AWBZlrTAtOHn2pyFbV5zfR59Ms52ZaEkkfdw0/J4RQmgY1hSYy4TtW6q2V7RQoVpVp7UA==
X-Received: by 2002:a05:6402:a52:: with SMTP id bt18mr14445544edb.228.1610373439924;
        Mon, 11 Jan 2021 05:57:19 -0800 (PST)
Received: from localhost.localdomain (dh207-97-248.xnet.hr. [88.207.97.248])
        by smtp.googlemail.com with ESMTPSA id ak17sm7176408ejc.103.2021.01.11.05.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 05:57:19 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, corbet@lwn.net,
        linux-doc@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Subject: [PATCH v4 3/3] MAINTAINERS: Add entry for Texas Instruments TPS23861 PoE PSE
Date:   Mon, 11 Jan 2021 14:57:08 +0100
Message-Id: <20210111135708.3703175-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111135708.3703175-1-robert.marko@sartura.hr>
References: <20210111135708.3703175-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Texas Instruments TPS23861 PoE PSE driver.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
Changes in v4:
* Add documentation file

 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1feabab03fb2..527db97c42ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17607,6 +17607,15 @@ F:	include/dt-bindings/soc/ti,sci_pm_domain.h
 F:	include/linux/soc/ti/ti_sci_inta_msi.h
 F:	include/linux/soc/ti/ti_sci_protocol.h
 
+TEXAS INSTRUMENTS TPS23861 PoE PSE DRIVER
+M:	Robert Marko <robert.marko@sartura.hr>
+M:	Luka Perkov <luka.perkov@sartura.hr>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
+F:	Documentation/hwmon/tps23861.rst
+F:	drivers/hwmon/tps23861.c
+
 THANKO'S RAREMONO AM/FM/SW RADIO RECEIVER USB DRIVER
 M:	Hans Verkuil <hverkuil@xs4all.nl>
 L:	linux-media@vger.kernel.org
-- 
2.29.2

