Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E553B338ADB
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:02:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233373AbhCLLBt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:01:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233614AbhCLLBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:01:36 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1917EC061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:01:36 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id a1so6191083ljp.2
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTSJzGg5C3YvDG/elX+hgVickgHM+YRDeQoHFIRAt4c=;
        b=I5wrjY1ytzU7XHB44PENnR6R+dSzIEOTjiPgg/Kc7S3jf2DPw+TiGRJqV33d4RDEpH
         FU3WpwwVzDKooNvVy9TL/himB0tzO1fVyupbYqBGtpC8W7KihD09dzAqBAJSKfWOt8V+
         CealTL0g+WIJouenfAeaGgkRhOicruzZsN2vQUJfSyTO0ZflIp74R1C7F2UQ0xyCXvjJ
         LE3DRziJXOJODo++i/bSu6Ki9Q77g80MjN9AjKTXy/UgDVIh7G2pVm/ZdktEiVL5Pgk7
         e+0TAjUWfF6FRl/Y2nrkvrFIWvs7xaB2RcewliwV70agfg2pZ/u/z6jFgBakd5pqFH9C
         JEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTSJzGg5C3YvDG/elX+hgVickgHM+YRDeQoHFIRAt4c=;
        b=S2rZ8GIsDYtlD+ahp7le9hAESZARrIR+bQmNCnp318L11oNf18qUIzuIkhiCov97ov
         EOLqgLIDU5GvkcxW3/VaCJAdfhyFWJsB9l8tJzVIEh9TfUJ7hxA6/hKpzZvU6+DULNll
         n5fYav7AZCXkApVF6G5qbmrmEKSQn3XwRX06uW+Ok1Z/gv4gMRjYP4eZuuPvTHlEy96j
         +T7e9jIcZ3ixgkJ78heFpNZwYOp4wSQsv5ravNosa85j+EboL/2rrDzMxoxXnZtposaC
         HQ0THRUv+WN1tS6trbKvverjGlkYBRlMCOv3rf6mMzg2kE+NT7epd9LtuQmK4ycS4k0K
         XruQ==
X-Gm-Message-State: AOAM531AYwapDWvPx09/+g5iGEvcc7ydRUZyq1egWBrCOkR3NJKkRjkQ
        5PTGO7asDoBn3XP2HWfGCw4=
X-Google-Smtp-Source: ABdhPJzREZswpNyp9z2yyRXXzufMBnoidZs7G8gD3tt7IBn+R1aWWHmfvpNL8WzPDyckJZm7Gs989w==
X-Received: by 2002:a2e:9857:: with SMTP id e23mr2123898ljj.78.1615546894459;
        Fri, 12 Mar 2021 03:01:34 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q16sm1685325lfm.35.2021.03.12.03.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:01:33 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: set Asus GT-AC5300 port 7 PHY mode
Date:   Fri, 12 Mar 2021 12:01:20 +0100
Message-Id: <20210312110120.12743-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Port 7 is connected to the external BCM53134S switch using RGMII.

Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index 7240a9ee9812..b049a12a4133 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -82,6 +82,7 @@ port@3 {
 	port@7 {
 		label = "sw";
 		reg = <7>;
+		phy-mode = "rgmii";
 
 		fixed-link {
 			speed = <1000>;
-- 
2.26.2

