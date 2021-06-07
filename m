Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A50539DC88
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 14:34:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbhFGMfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 08:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230478AbhFGMfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 08:35:44 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B9BC0617A8
        for <devicetree@vger.kernel.org>; Mon,  7 Jun 2021 05:33:38 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id c10so26331756eja.11
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 05:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2o3lod6/tQHJli1HMNUrlxY009C4XIUm342TOsfm420=;
        b=LRXwdOLxb4x7g7xhsp9PBEKGxP4DmnE5Qj0csPwhaXSmxv4oBBVzcPcnS8wT3iGaEO
         reBH6BO45k7qMLKWgzs/pLiCcDgdH2W2LZB0IG+ELCry1k0wy+vAjTn8fTg4uCP+mNy3
         ywSRgxhypVz0oPAgeX26xLw2pV88b4AvuDhFGeR1t/BVnKoXOuis8k6jB15BVpkNuTss
         KXZrhePsdfvI3i8eVbW08KumrrUiWHePNNTk2ct3uulB1QRtee8ttvNjE+DLYVUWEsS9
         Kku6lMCSXSTlt+L142TDnSU7uNkgPKvZmB3gbD+DzyW4Ovt7F+Q46jSIcDzIZV78rycn
         JSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2o3lod6/tQHJli1HMNUrlxY009C4XIUm342TOsfm420=;
        b=dDz8afnlgJLqu5pANo0nS9LvfVRUzkEwEyCjifo9/TL0hd/bAJvc7qOdshbveYCntQ
         bnHNG6D3D6gnstM9XKfnDgo39ubeaU57FLx67vgxxW30NOV8Tw195FCAzegCFgouB7bC
         zpOfMYQS5kHAIgiKPtzJlngQ/K0NkBlXcFB8ecgxAC5FsdWyjsYjPSaCkKOJhHH/VAje
         rW9qtmro6kJdO5UZmSAr4RVa1OtZxlQ8XpjpK8t3ou5W9TDJP81URtAw0914kcXC3y52
         7sgirAT152ev1I12lvJeo7y0+o7A3XHXfrs1N+epK6hU3RNXIABu9+s+8oZ7XXON3gx1
         Y43g==
X-Gm-Message-State: AOAM530z29gWlOxAtvrq//x1P9I/1F8miv0nTpfOniKT2zx5dmjVmTfD
        ZmvaH79wXAXJGITrZBrTrU0ajw==
X-Google-Smtp-Source: ABdhPJz/Hr+gO9MAPM9PRNPEay7RzqTJpJntQ+xo57MOxVAOjknOseGXUJ6OHBDpV3H6B+Sllz8ylg==
X-Received: by 2002:a17:907:770a:: with SMTP id kw10mr17723655ejc.213.1623069217160;
        Mon, 07 Jun 2021 05:33:37 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id f18sm6471000ejz.119.2021.06.07.05.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 05:33:36 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v6 6/6] MAINTAINERS: Add Delta Networks TN48M CPLD drivers
Date:   Mon,  7 Jun 2021 14:33:17 +0200
Message-Id: <20210607123317.3242031-6-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607123317.3242031-1-robert.marko@sartura.hr>
References: <20210607123317.3242031-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Delta Networks TN48M
CPLD MFD drivers.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Add reset driver documentation

Changes in v2:
* Drop no more existing files

 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9450e052f1b1..82d9c2943c34 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5096,6 +5096,15 @@ W:	https://linuxtv.org
 T:	git git://linuxtv.org/media_tree.git
 F:	drivers/media/platform/sti/delta
 
+DELTA NETWORKS TN48M CPLD DRIVERS
+M:	Robert Marko <robert.marko@sartura.hr>
+S:	Maintained
+F:	Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
+F:	Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
+F:	Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
+F:	drivers/gpio/gpio-tn48m.c
+F:	include/dt-bindings/reset/delta,tn48m-reset.h
+
 DENALI NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.31.1

