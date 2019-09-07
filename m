Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8380CAC7B4
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2019 18:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394981AbfIGQvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Sep 2019 12:51:55 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39769 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392733AbfIGQvz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Sep 2019 12:51:55 -0400
Received: by mail-pf1-f194.google.com with SMTP id s12so6555622pfe.6
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2019 09:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NOgs26FQJd+mh+eb+SMpRPr0VcbXm8Xot4tqXkHbFIk=;
        b=Dip9+kTSWTbr6gn3P0yZFOqPtta+hwDN47LPrzX6MDjKBMFBWO9JJdcUbs5Ik9ajZa
         +ixWcapDeBlq+Yr27K6BOXXhfBAxN6Pj6Tt0MwEp//aBhpkVLyssNUhQnMxZlYSAjndW
         ptQMF5lmIUBGklV9ugMRx4tshjIRsOvEHRUv2L1CnJlMDgYemrYgHyizUpEDlwZwD7pl
         quf1Mnb8UwNTmJDOd+ahyX3tHh1y6yeqrhNg2pKkMuzIL5fUmkB3IupGf6yfM4oRNqKZ
         pTsolZ6boiDZCRwvKl5aBdw1M7p707I/QDheZ7VPwKrFLhLrTNjnFmurV8hQAd+rrgE3
         5LtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NOgs26FQJd+mh+eb+SMpRPr0VcbXm8Xot4tqXkHbFIk=;
        b=YGkU2EJt2z42SC7h3ueM5d/deY72czkJUs1qFVHm3Up+oBZr16MDtpd8rGZNQ+MszG
         cb+r2xroxnYbHlqvWzrMDspHqhdkQDijAQbYwlTpb8OSDb+9d7PEpyGiJ71wPrtwzoqa
         A5hXeYxMvjn4cKgfL6L1sj4RBvziZ/E6/xZgK+18SaiZhzlaF2FYUYQdT1GkQcpeED28
         xrCHv/tqdVWekBfeDXcFyzu4zE08SWv+A8uC/FPF2KF0J6q4JNF0FacqtRwyLQI0E0Ag
         03gdiK/U5k2OFHEsVK5z1Q5QIT0tVQaDxqCpPd5NatjzdyO4xP/Gu9Ll2VKflRA9RB1k
         I8Ug==
X-Gm-Message-State: APjAAAWVWrfc5rgTbp60idx9SFruBNmuiq+mKyowkaIDOiRMHEEpvbgd
        Q8ha/kZ+smvo5qWCcxEBcJk=
X-Google-Smtp-Source: APXvYqyXYjonK2Ofr7tH7Sz+4FfHQ0WLG28bw9csjkdeoulwVX7aAU5EopaZVWxckKScZWJ+UM4Skw==
X-Received: by 2002:a63:7e41:: with SMTP id o1mr13657678pgn.212.1567875114780;
        Sat, 07 Sep 2019 09:51:54 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
        by smtp.gmail.com with ESMTPSA id v27sm20028215pgn.76.2019.09.07.09.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2019 09:51:54 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [RFCv1 1/1] arm64: dts: meson: odroid-c2: Enable SCPI DVFS for cpu
Date:   Sat,  7 Sep 2019 16:51:32 +0000
Message-Id: <20190907165132.464-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907165132.464-1-linux.amoon@gmail.com>
References: <20190907165132.464-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable System Control and Power Interface, DVFS for cpu
with setting 1.54 GHz as max freq in the initial SCPI tables
loaded by the BL2, i.e. packed with U-Boot.

Fixes: f7bcd4b6f698 (ARM64: dts: meson-gxbb-odroidc2: Disable SCPI DVFS)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Suggested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
In discuss on other mailing list thread below.
[0] https://lkml.org/lkml/2019/8/30/186

Tested on mainline U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
on archlinux distro.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 6ae9fafe4244..7e822408ba26 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -307,7 +307,7 @@
 };
 
 &scpi_clocks {
-	status = "disabled";
+	status = "okay";
 };
 
 /* SD */
-- 
2.23.0

