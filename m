Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 598E57C0DC
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbfGaMOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:14:31 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:37807 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729116AbfGaMOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:14:20 -0400
Received: by mail-wm1-f68.google.com with SMTP id f17so59590574wme.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 05:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
        b=kzR+HTfyhqOF5B0psynwHitDS5M5lgyvesQmRWyJVlV9jqMOaUnE+AVFRXp1M4H1Yu
         xn4FMMwB3LiyZTWnm4rZ0nOG2r4OZqBi18gRFUqxrC9weYcDY1E0FavjRHhW5pTtUjuu
         gxUa5C1VfZtk9MXIbl82EBNGyUinA5CXVo/4O4u9V33NHCjscxUt0eSYo2B6krLA3bk1
         vKc85SttiGAvhvj2dTxKNq2vUcVJzUvA8dKoZlBzDKrMIJZL7WArbqHaQSRLTi/lwxCi
         m7RAxchFhPRZBW/pEkGuLftOLhfeEP3DBP283XWvwLO7iAb1GllGbdMntPm9eOZWUx1o
         hrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/dy6tDwrDZyQwCbBNtI3rvHog6QhVWeb1hPHlqbhReg=;
        b=io66ZH5HQOcO3r2lMLc6Few282b7qViMYDr8OhFD/5Z87LciUq1l2vRt4gRbE7GcDi
         E6iVF2h3wyLlsQxQtl9fM5/zUZdgpYhExsjy7NIiRCUgMBTxW01zokc9vG8Wcgsil1zF
         ol97vSJHhIxbrAOraKxx1oCw4/0mJlElNueUYwgVeSyqm9uzi4v61upfEqfyzfQ9uybE
         whFS1RFviqUR5sF4s4VKREpIp9o1riTMIPIkhTaU7k5Fvpr6i399n0rHS66ZCsIu5srW
         7rXKf8tV4YkY73hY2rX4XdCO7SUDCZA29RXXpP/rCuw8zcGdnZT7QMx4Np3ed8R4S/IM
         t5qw==
X-Gm-Message-State: APjAAAUJ/Uiv8RLg0L2UNy+TEl/fstYV970fMwo0mHODL3B88+3oXiRt
        CQkuA9zOZ/LcxkrtF/6uCRGuOA==
X-Google-Smtp-Source: APXvYqwiXLefKrRh2int86J1ClmPTnKB6ds2eofOnlZxzgE2XsT6NJ7qlB851jUxzNz+12Fsd6Bh7w==
X-Received: by 2002:a1c:3587:: with SMTP id c129mr114572270wma.90.1564575259044;
        Wed, 31 Jul 2019 05:14:19 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a64sm3613713wmf.1.2019.07.31.05.14.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 05:14:18 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Wed, 31 Jul 2019 14:14:09 +0200
Message-Id: <20190731121409.17285-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731121409.17285-1-glaroque@baylibre.com>
References: <20190731121409.17285-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer for Amlogic Thermal driver.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb2b12f75c37..299f27d11058 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15910,6 +15910,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL DRIVER FOR AMLOGIC SOCS
+M:	Guillaume La Roque <glaroque@baylibre.com>
+L:	linux-pm@vger.kernel.org
+L:	linux-amlogic@lists.infradead.org
+W:	http://linux-meson.com/
+S:	Supported
+F:	drivers/thermal/amlogic_thermal.c
+F:	Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+
 THINKPAD ACPI EXTRAS DRIVER
 M:	Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
 L:	ibm-acpi-devel@lists.sourceforge.net
-- 
2.17.1

