Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09F4223073F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 12:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728670AbgG1KEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 06:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728648AbgG1KD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 06:03:57 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16B9FC0619D2
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:57 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id k4so9615979pld.12
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TqL6Hf6c4QekoFaLOlZu1oX0uTrAmJv+cvAaJuBUQvY=;
        b=Wv+dkdLgt5GaTHUTC/zxSY0/FqradzfyAopvOn1bQ1JvKPgFGgUAds2ZLqfsUngRTK
         1MXSX/omDXR6Qeo+mkRGjd3WqRMSDLnwV+r3o/s07aaiTR4sln2PkDtwTYPf3QolzgHS
         2wb2lh8g3wPmHx57IMN/erWNWw8kt73tMJOvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TqL6Hf6c4QekoFaLOlZu1oX0uTrAmJv+cvAaJuBUQvY=;
        b=ZNU4h03O1OGDP04Couqds57EStoQi1X4KRaH/HzLaVxWbQIBnNExzYt9tiv2aBUFa0
         6R9psw8+gwaNmyUA+Rxs4cBS9OK6sk6NQVF3lLH0nx7Bf3P1lSg+1Lhm95YV1IpGGbYI
         2iEYCBsk8JE+qdZyLDdS4O53W3/Q2oub+5P3bJItlqW4SCzhi9LUD1f8jZOyjrXMXynK
         64QNIEsh2V377CW9aONpEzB/R4BVyJJCS8hPFDwP98laaXZpoIqdzN2Ft72fVIcu6rHu
         S/o6E2VkOOZjH9UA6fLPw3+AXH68ZPvygCIQWaYoNaOsiDs98VCMG99RSRiJ3jURG1E5
         SwEA==
X-Gm-Message-State: AOAM533Js3p/Ua5blDXDyl1nlgkKZDbR/giPc4WM67jrQ22KmAq30Ldx
        MI6s5wiYC4c+Syl0LufdXYtyaA==
X-Google-Smtp-Source: ABdhPJwIMReWpM39kk9lbKtgYuSrVGQ0fXaPXcyqtWpE61ZnhacKeju0jsGrkiCHXZ05muiy3/Sn4A==
X-Received: by 2002:a17:90b:f16:: with SMTP id br22mr3914793pjb.170.1595930636601;
        Tue, 28 Jul 2020 03:03:56 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id u66sm17779018pfb.191.2020.07.28.03.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 03:03:56 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 9/9] ARM: mstar: Add reboot support
Date:   Tue, 28 Jul 2020 19:03:21 +0900
Message-Id: <20200728100321.1691745-10-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728100321.1691745-1-daniel@0x0f.com>
References: <20200728100321.1691745-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MStar v7 SoCs support reset by writing a magic value to a register
in the "pmsleep" area.

This adds a node for using the syscon reboot driver to trigger a reset.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index bb7fb3e689a7..c7458c67c4df 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -78,6 +78,13 @@ pmsleep: syscon@1c00 {
 				reg = <0x1c00 0x100>;
 			};
 
+			reboot {
+				compatible = "syscon-reboot";
+				regmap = <&pmsleep>;
+				offset = <0xb8>;
+				mask = <0x79>;
+			};
+
 			l3bridge: l3bridge@204400 {
 				compatible = "mstar,l3bridge";
 				reg = <0x204400 0x200>;
-- 
2.27.0

