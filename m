Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E67E39BC00
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 17:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230348AbhFDPiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 11:38:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231163AbhFDPiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 11:38:10 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C38C061767
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 08:36:23 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id h24so15194347ejy.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 08:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=18khHUA2AJ3ib5wXxPFFaQIfHWGb1QOUw5+Na90fAf4=;
        b=rdqeHmjXUcQIOHQ/to3kGr2aZHwHzLmp4uZnM7Mq3J89WlI6CCkq0M0UbJrNaS61lD
         p4HwIp1+5cDCIJm6mP0kMoBYg+eQUH+rHUUzJO3RwR5kLtEKiKoBnd3GamDGK1EIe4FT
         TyWJb5f8qBengCA3jkb2xc5HPsA4rm4XgZ3Ytm0Kz6sJOEqAAztIlkmv8/WFlIji7/lt
         qyNp5WGkmM49RpoBMIIZB2Bqf/Rlm/oHL2GX3E5GqnrrBxTmb3JccFneCUs/NKc7O3Hu
         8MraCGqto5hET+0twyYCBnGZ8Z9eZUNyoobQc78pvSF/qkwZigKqJ1dJTC76tYit1Hqe
         aTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=18khHUA2AJ3ib5wXxPFFaQIfHWGb1QOUw5+Na90fAf4=;
        b=mMboKhAurWRtXd5jkF+XYvNkzp9I+RjF6dCuueAv/5pB/GtvtWhBZF/5mA6IDhQome
         phSXggRC5f2bzylePsEAyJKssMbK1pk7eqZPzTFcMOtgDe/aJhrkRdTBTqfuoye1T/QA
         6yD6aYNEU8nqUE5L+PHfkrkC7qJe79zlXaV0nv0gEWL6FQj4yo8WiwUMIz41yszWcwP1
         3CBS4EaOcdUGPmeCdS/ttimg7fEfXp45RtYjCrBXfIMiszHfdslK4YQl/2dD14ZxnI21
         rmtZQ9faBDNKX7vf9ZC+2r6uh4EK0ULuDu2U/IEh58IPgAN4b2FfXBEphNrr2f0JzN70
         Yvsw==
X-Gm-Message-State: AOAM5331i5jwz5OqNRogwX8IMyHWThxnUYZUoKqdRgJtW5vj8jnp3+Ir
        E3t+iWXzIbkmntc9zp5TA0J3Fw==
X-Google-Smtp-Source: ABdhPJzJk5hJcow9IP1RWbN4rBSMsfSX0vDK2NKcesVXQxSYC3clPLa/eYKG6MLuMUviPoyoU5l5VQ==
X-Received: by 2002:a17:906:7e4d:: with SMTP id z13mr4687520ejr.50.1622820982029;
        Fri, 04 Jun 2021 08:36:22 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-250.xnet.hr. [88.207.96.250])
        by smtp.googlemail.com with ESMTPSA id d25sm2909038ejd.59.2021.06.04.08.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 08:36:21 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
        corbet@lwn.net, trivial@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 3/3] MAINTAINERS: Add Delta DPS920AB PSU driver
Date:   Fri,  4 Jun 2021 17:36:12 +0200
Message-Id: <20210604153612.2903839-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604153612.2903839-1-robert.marko@sartura.hr>
References: <20210604153612.2903839-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Delta DPS920AB PSU driver.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop YAML bindings

 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 82d9c2943c34..0707986e9bb1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5105,6 +5105,13 @@ F:	Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
 F:	drivers/gpio/gpio-tn48m.c
 F:	include/dt-bindings/reset/delta,tn48m-reset.h
 
+DELTA DPS920AB PSU DRIVER
+M:	Robert Marko <robert.marko@sartura.hr>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/hwmon/dps920ab.rst
+F:	drivers/hwmon/pmbus/dps920ab.c
+
 DENALI NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.31.1

