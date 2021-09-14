Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBF9B40B482
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 18:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbhINQYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 12:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbhINQYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 12:24:41 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C067CC061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:23:23 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id v2so19770665oie.6
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fo5eTbyUAHMaSsOWQYct0Sbh06FrAn9VAuVuFrAy4Kg=;
        b=civ4NdxLkD2SvEeKXS9/qFJGoTwNILe2x7zlhd2cPN30FYHDT7b7SLu+lxAOpNOjqK
         qw9s+1WyVVDzbOT1n8RK+mw1/09tx2ITRHMqdJ+C1kQHoE6qfWpFblc3vFzmKKnXJVUp
         FDtoc2U7px9ZGus0P9UCniHqHkzm3oNJwEWcfffBipgpNywvqwPIzzid03mGOgfsIfsh
         BcDbk7zuyRvDYF3b7rnfbQRz/QN/RdJrtk5JnBMR5yFsrMgk3qzJrCmkb62NyqmR9mlX
         0lkyUoTi9OHGFiORa2anU10xp6mtIFalbApoXB/MVKJ10vpf/140hrwBB98TVXpDpFQq
         Dgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fo5eTbyUAHMaSsOWQYct0Sbh06FrAn9VAuVuFrAy4Kg=;
        b=5vK+x9e+ZOflYKCYrkPJiCh5a3UL9i7FLhPPAspCNvXoTN9vZDWKmnEswcoPa2yco7
         QLWCq4E0s3u6gDKmWBXj9pFxS8EwjpBIFMz2EGL2D4v/l7r1ZCSJPyU/0cgHIfir+rdz
         xLGgTKHm+WZKGSpnswgruqFlgaHNQ0o2KdAzbZk6EEioCA1xnXFa/0ElIU94FybH5XNa
         wQjzFz+opTNBfFdSij49+3h6xlLJa2464f2xh5Va7q6+BwV9/tS85Ut3sL9VNhJmwmiT
         6qiwKNUyH4XZHvN8NFasbC4Nsu85OPGV2Tu146WPYb3J+E/xD1g8N5pWZK5Gn6afmH46
         rMdA==
X-Gm-Message-State: AOAM533ZwWlU8zTB72R+TtYrM9UhDq7ifHAdQR2B+bAdQxdm5wy46zmb
        asrcJx4eyxCGFLP6KhtBQqmXQg==
X-Google-Smtp-Source: ABdhPJxS+JQL8FT4rErSWjDZ5aKOrGSDsFsVolzZ1IJkj+XOR0Qg8lAS9PbtOZjF93bPUY9ha1HhAw==
X-Received: by 2002:a05:6808:613:: with SMTP id y19mr2069271oih.176.1631636603180;
        Tue, 14 Sep 2021 09:23:23 -0700 (PDT)
Received: from DESKTOP-UL9N8HT.localdomain (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id x198sm2669000ooa.43.2021.09.14.09.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:23:22 -0700 (PDT)
From:   Steev Klimaszewski <steev@kali.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Steev Klimaszewski <steev@kali.org>
Subject: [PATCH] arm64: dts: qcom: c630: add second channel for wifi
Date:   Tue, 14 Sep 2021 11:24:39 -0500
Message-Id: <20210914162439.31113-1-steev@kali.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the Lenovo Yoga C630, the WiFi/BT chip can use both RF
channels/antennas, so add the regulator for it.

Signed-off-by: Steev Klimaszewski <steev@kali.org>
---
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index d7591a4621a2..1b048afd9d90 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -230,6 +230,9 @@ vreg_l22a_2p85: ldo22 {
 		};
 
 		vreg_l23a_3p3: ldo23 {
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vdda_qusb_hs0_3p1:
@@ -724,6 +727,7 @@ &wifi {
 	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
+	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
 
 	qcom,snoc-host-cap-8bit-quirk;
 };
-- 
2.33.0

