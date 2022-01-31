Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15A214A4828
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 14:31:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378932AbiAaNba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 08:31:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379033AbiAaNbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 08:31:18 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A055CC061741
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 05:31:08 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id d10so43101044eje.10
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 05:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EX1odtfBD4UedrnN227KhfFXE8Bgba6hkIYrQUe1h0c=;
        b=SaRoAOB60fsaYmCYxnDhOhUmgArcJAUmxxaIREj9H0tWnfFrc0K69d6r7xb0n1F0HG
         I1/xGvQFbTXcHKZH7k+qlklRSNjMmT+M+zrH/Ys3GUvpJx/t7nqBrM+MGO9pPqDINgsp
         WL83o3Q3hSFFQ7hv/PuzKhDjwREeLjiIw5FqU22/c2ybPITahRsBuItAtnKPJCw9nTJ+
         kNWoSnBA6iKT0lXxKKYLLN/UQmn/RF+UBZAAl/Raq4yWUioTB2K/u1F54gx6pD2orfVI
         g14WieqToWSe/7bUskYnF2O13Be1jvjncBbsPel3KKQoKXybewEst+VP9HbFKc0DsJjm
         RxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EX1odtfBD4UedrnN227KhfFXE8Bgba6hkIYrQUe1h0c=;
        b=AbmbsdnpmvICme4BRLg/XCcdK+UGF0YuSRkhjPaBEQ1bu56rQqEW/N7nqt0mnUASrA
         Zwz5nPl71rgEiMSw1zeMCRut2tlc086xZ/ay2nSgPyfUcmhVaAj2MO/XqoZKKyz0syMi
         R+Hd8GXHFVTXGdQ6jOPdwDKb6cUebYKtfjRLjpx7FBPpBaZ7elCIlA+EnJchfGYIcBbh
         +1uHSH/FJ24ryy4E9jpjnoCRtX9SHm2lWcY2JpM9GLnJPvKXVmTdpEVJf77eZrjdWivg
         2JWuuD9vIhDXUxiVshiNO0egp6f/Q/FBlIXALgc2bXCOwOIXD6Z1PzIbeRGmtR/cweds
         bBEA==
X-Gm-Message-State: AOAM533qb70gfuzTID33mmd6YP5lfcS5sdaS4hrl5PiyNO2wOHKOMXxW
        zyvxbXg6PVOuVYVYU/UL6pSiWw==
X-Google-Smtp-Source: ABdhPJzW4MoF2pfKGlg67rKihTtzC/z3fiEclnw0I+2kvgjX/tG02DgcGw/9c68+Bz7XbmrgfuECGg==
X-Received: by 2002:a17:906:6a05:: with SMTP id qw5mr17223317ejc.90.1643635867155;
        Mon, 31 Jan 2022 05:31:07 -0800 (PST)
Received: from fedora.robimarko.hr (cpezg-94-253-144-81-cbl.xnet.hr. [94.253.144.81])
        by smtp.googlemail.com with ESMTPSA id c22sm13094334eds.72.2022.01.31.05.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 05:31:06 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, brgl@bgdev.pl, robh+dt@kernel.org,
        lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org,
        skhan@linuxfoundation.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v10 6/6] MAINTAINERS: Add Delta Networks TN48M CPLD drivers
Date:   Mon, 31 Jan 2022 14:30:49 +0100
Message-Id: <20220131133049.77780-7-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220131133049.77780-1-robert.marko@sartura.hr>
References: <20220131133049.77780-1-robert.marko@sartura.hr>
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
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ea3e6c914384..04baac692330 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5488,6 +5488,15 @@ S:	Maintained
 F:	Documentation/hwmon/dps920ab.rst
 F:	drivers/hwmon/pmbus/dps920ab.c
 
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
2.34.1

