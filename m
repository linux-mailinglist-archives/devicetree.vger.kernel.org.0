Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D91422FEC65
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 14:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729195AbhAUNzq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 08:55:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729549AbhAUNqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 08:46:50 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A340C061796
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:44:46 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id rv9so2617432ejb.13
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MHgMDVFVKDKvtDgBJ6bSsn28+Hx3KTR2/9Rg1yeA1/0=;
        b=Epwg9MmfT84c7AZZSAtt3VkZJXSsj7soBPEhI9/0szwu/a7jQ/4TyrgBWqo2W3aFbu
         LMvaxbnkL23je/wK4jW17vQvw3ya02FEgNyU1/8YzKqq00rSXTZqNN4LzAcE9pDtqe8p
         jPGaThFu2UI8UuVqxW3fJFDeCl0U3YJRu3GFt92vr3FxqMWbv+jPMHgz2H4v82ocFTs8
         sLYqRvLcYJ98CJH/WET1F6wa+Oi+L1cghXBgEEppRk9lfVxoZLuSmDRfM6NmBkYUetkv
         mner/MhldDpbAVP6hI6RSyzfowsl8ThOcpxog3bsHPdXNwLn+1gduH+OxbiJMHd7exqZ
         QwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MHgMDVFVKDKvtDgBJ6bSsn28+Hx3KTR2/9Rg1yeA1/0=;
        b=mctD0HCX2SwBV6qb4FR5pPkDUFtV6KOqfYJlMa7Qg4n86hwwmqXuctI/6d79FVmU6j
         MM5DIwxoaxxX+m16xFV68evxjoyJ8pmGAhbMmytL1FCJCwZlfj88b0l8BfQvaDReB2Y+
         FXrOTmFh5sIrW35QNmrAJFftzqisSRLQ5XS6HJ6BR3MwkcSwvfTZzNBiZZxayxWtJAh/
         7yzukJWTRqmW+b9iQt0EBYB4f2wAFLl+A6usZSuqiFSVwpHvkRKjRYoTFls4lMIodA7+
         ncMUrsRQrklHxD6bQroJ9KG06lWcghr/Od/ppPEP3RUOmQlk/b7RQmcHcRW4SYc3H+cX
         RzDA==
X-Gm-Message-State: AOAM531pLauDZX3wy51dzj23DximXNlFIEeaDRoQdSCqsgYgpj71fH5C
        V0zQf7ln+oGQTtZGwUKZdNc86Uzskp10QA==
X-Google-Smtp-Source: ABdhPJw3ZMcxnyc5Cnx5632MdTcRNssQjZ+YXRIFuTN+Zk3DUq06EZWaz1Nq8Laiz6fUfz7LyHJAjg==
X-Received: by 2002:a17:906:7798:: with SMTP id s24mr9380830ejm.19.1611236685185;
        Thu, 21 Jan 2021 05:44:45 -0800 (PST)
Received: from localhost.localdomain (dh207-99-51.xnet.hr. [88.207.99.51])
        by smtp.googlemail.com with ESMTPSA id j18sm2246376ejv.18.2021.01.21.05.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 05:44:44 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, corbet@lwn.net,
        linux-doc@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Subject: [PATCH v5 3/3] MAINTAINERS: Add entry for Texas Instruments TPS23861 PoE PSE
Date:   Thu, 21 Jan 2021 14:44:34 +0100
Message-Id: <20210121134434.2782405-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121134434.2782405-1-robert.marko@sartura.hr>
References: <20210121134434.2782405-1-robert.marko@sartura.hr>
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
index f95e887e5d76..2a7f22587774 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17602,6 +17602,15 @@ F:	include/dt-bindings/soc/ti,sci_pm_domain.h
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

