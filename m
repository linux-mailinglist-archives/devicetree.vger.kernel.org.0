Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 511DA4A3AA5
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 23:03:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbiA3WDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jan 2022 17:03:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237664AbiA3WDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jan 2022 17:03:33 -0500
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95B4AC061714
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:32 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id y17so9980634qtx.9
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6qiePQaFCn1ZGPCNmG2bQohlbkcHJHVngAid2qwzesM=;
        b=XOquuE6+leFupXRFTrasECGzeQsYzTYPp3l4osaT5HiTo6neKNQp6wwKb1xG9FW+YE
         FHvQcgfmeHmuqfXuUAqMKMsS3Qe8MNRSliJ0Ddmr7SwAfNtnFWeNXfXTA2CIdt8CYdQ4
         bkDvIDL/tLDNb2oCGYTZHbRnNlzJ/+psTq7Rzkltr70MHCjk+Du4zPuvq1XRi1HIyUjj
         9MbvgnqQ9Ryb3AM8DYPCukpYRZWii5r/ye64Yw7P1B1n71Hajew0Qno4YWy6Igx+sKUC
         Kj1X3nW3ca/TOc7Bwdm5foMCwc4i1jHlQa+WAOyye8QZxxCia/kGvU46XeD6+CBViuhC
         hdbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6qiePQaFCn1ZGPCNmG2bQohlbkcHJHVngAid2qwzesM=;
        b=cxhw2yu9UutGUzexAkRZT/2TcGO9ND+sX5olQ4RgVNfKqp+njYHa6co5hDhZzLNa93
         KmDGggobmPpMvl/ve4hSFbB5xj1rSyuxsht+1Z1kIns1cA1nqzUaNEleHRQomfkO0DQV
         BvTEFhMH94bWK96FxlEJ43KpgD0klagLPzhUqUYZ1mzI1ZalP2pkKfsmtMDnYLEJtKdQ
         5xHfZu5hVNgc7NEQe8AhTg6M9MglWk3x7wbn+rHF3e2vex6K87jC1sId0+a/RP0FDIU/
         XBOhlvcjK/m/+qvIs4JcE7NWQR3SgEzskLpJQF/+9bIxrrRsDZYaz7RBQESjesf7Gl6f
         criA==
X-Gm-Message-State: AOAM533fcXGcmZEEyVKFfnaYVhpzfUGoLfHTNp7m1Cz8mWzsk72X73Sd
        Bo/q5mHDIH0/vqkDzJUqVakLqIHZaJQ=
X-Google-Smtp-Source: ABdhPJxMJhxrMrTxwGFCEmXjNwICsOJcPiNWFbd5jxVwXQ71fDUJraFuqlS2DMNlQEn/sqwTs72a8Q==
X-Received: by 2002:a05:622a:118b:: with SMTP id m11mr2448324qtk.96.1643580211596;
        Sun, 30 Jan 2022 14:03:31 -0800 (PST)
Received: from jesse-desktop.jtp-bos.lab (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id h12sm7556651qkp.129.2022.01.30.14.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jan 2022 14:03:31 -0800 (PST)
From:   Jesse Taube <mr.bossman075@gmail.com>
X-Google-Original-From: Jesse Taube <Mr.Bossman075@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, Mr.Bossman075@gmail.com,
        andre.przywara@arm.com, linux-sunxi@lists.linux.dev,
        mripard@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] ARM: dts: suniv: Enable mmc for f1c100s.
Date:   Sun, 30 Jan 2022 17:03:25 -0500
Message-Id: <20220130220325.1983918-4-Mr.Bossman075@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable mmc0 in f1c100s-licheepi-nano device tree.

Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
---
V1 -> V2:
* New patch
---
 arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
index a1154e6c7cb5..c856a6a20dc8 100644
--- a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
+++ b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
@@ -24,3 +24,9 @@ &uart0 {
 	pinctrl-0 = <&uart0_pe_pins>;
 	status = "okay";
 };
+
+&mmc0 {
+	bus-width = <4>;
+	broken-cd;
+	status = "okay";
+};
-- 
2.34.1

