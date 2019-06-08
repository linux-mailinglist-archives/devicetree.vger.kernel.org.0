Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25CB639B35
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 07:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730754AbfFHFFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 01:05:00 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37722 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730542AbfFHFE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 01:04:57 -0400
Received: by mail-pl1-f193.google.com with SMTP id bh12so1583700plb.4
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 22:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7JHMxvIq1jsW2qWML7iET1ggCLWTMelSL100NyRTudI=;
        b=EDHJtD4g8m8NgywjVghSqy+PL2KBFW+vEhsLk+5399uhepYp6Kcj7W9M5c+hBaLixK
         h0g9ZHCNugDtJttP0mUwBtaOU55XtJ/Ep7K+YYQNJGk8HzR2PcXO5ASWe0RuewbKN0PE
         o2eE00inVhPttmqsymXxsGYTKBOuUjjPzRmp/sny5NEFNgUuSbufcRhMjtwTookZaOrn
         fi5AoxdioRxYHyt8m5XdjZ4N99zqXxCnXhWWrQOK7WxKDLAWZNdd5nuOVDCDFn8LHVEs
         GEQLMXROaepbpCAegsCIEv7p2BmrG3jKvhZjLPukkA9lamgDOYtf2C6vPYEJ3Tfd8i8n
         ZJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7JHMxvIq1jsW2qWML7iET1ggCLWTMelSL100NyRTudI=;
        b=IRZxoVUu/VMGTsYYo+3MErVBM0IN3qtCu0g3yCyoMKc+kmpMRE0nwHypNoqMEQQGp6
         W+cthCylVNH3iTUeOQ0ufnC09x4KgfzufPlwOxfsKSR6W0fvRxp4d52xKvZ1iggxCTYT
         vCis7OTJSw5jQrVlOlUUi07AL54F1zFUpcgKy1xIV0Vfr7cPsSjtZvX0NaNPNnrM53IW
         Viuo9OkbxRfcXiAYDRX9X6kCxN6NS8Izw4HwHGfthHqW4G3Uqpi+yeqL/NdW5pP7GOeO
         NGmy7Szvu03URdwio8J/lq4Hxvz2U4CJ++omLaSH6dkz1eAMcoVhRfFp/YTJSsgDdSo8
         tS3g==
X-Gm-Message-State: APjAAAWYICahFXe2keIe+CBkfgMpyRnEj+Pur5W0E2Bk2MWVCCskpRTz
        OYM76WXcwOyyJVEwgVa1SfKGyA==
X-Google-Smtp-Source: APXvYqyAHw1AV05o3p032VHhbyghs7+weXTqVDC+E/50Yqk2YdvccJr8yaM4fMNzlvhMVl17Ezvqqw==
X-Received: by 2002:a17:902:b611:: with SMTP id b17mr6065542pls.261.1559970296912;
        Fri, 07 Jun 2019 22:04:56 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b8sm4522482pff.20.2019.06.07.22.04.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Jun 2019 22:04:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Pedro Sousa <pedrom.sousa@synopsys.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: qcom: sdm845-mtp: Specify UFS device-reset GPIO
Date:   Fri,  7 Jun 2019 22:04:50 -0700
Message-Id: <20190608050450.12056-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190608050450.12056-1-bjorn.andersson@linaro.org>
References: <20190608050450.12056-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify the UFS device-reset gpio, so that the controller will issue a
reset of the UFS device.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- None

 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 80189807b4e5..441045847e9f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -467,6 +467,8 @@
 &ufs_mem_hc {
 	status = "okay";
 
+	device-reset-gpios = <&tlmm 150 GPIO_ACTIVE_LOW>;
+
 	vcc-supply = <&vreg_l20a_2p95>;
 	vcc-max-microamp = <600000>;
 };
-- 
2.18.0

