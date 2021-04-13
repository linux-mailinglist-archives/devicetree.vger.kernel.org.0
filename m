Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE9BB35E133
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 16:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbhDMORf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 10:17:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbhDMORf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 10:17:35 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05FE1C061574
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 07:17:14 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id z24-20020a1cf4180000b029012463a9027fso8836014wma.5
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 07:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sTPgu2ln3DAEveWEwhH+YqI8CVJ5S7C9xofYCriC2bA=;
        b=SFVvy2bgvPMkwlUk92GOdWjQ+woY7772qpSB6rF+GCQx2UlZR1KsYw77QqbO3yRNyo
         HtPFsc1PlQElXgO1R3/Uqithz1xgqGTt3hgMVce0Ol++7GKdjT0XwQwt1ZRl5h4gwkj3
         c03gXdQateAyQhgIKYAJvVRbr4ImuzlhblCiNwpbPA7T1hV1sj4/MEwGPdvJyfTkTGdy
         3Oz3zI3fIT0URG/G/LtqMATbdMUty+EAzlSV4bMgmPqYSfaCP/xGcY9H4OMeBq4IBp37
         fJYCa+swggOnaTt+y+q2cA6GzC+V/3EvdvR+dCvwAyKWRMygg0KsO8gekHgKOYE2UGkf
         SRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sTPgu2ln3DAEveWEwhH+YqI8CVJ5S7C9xofYCriC2bA=;
        b=WOLS0Rrg6oczGmWYJ6k8PIQT2FoJZNFDO8w45TBVourzgz82nF09ryCsk7H1FBbGDy
         THWeUljrKlu7rNH4qd358G2WGYRMJeVuLN8QdJs2NUeBUP6tiWujbfKckbUBw6+qmGzA
         GWxIR3uLKlGukhq0pY5JL//VN+n62A3/ZiLHEwNXT1ANF6SkRs/Oil75RGPkUvlANxUF
         8I24Kc+OPd9P92yTc50X7PQxMWW5jI7EW9OQyacZ/YHI3l++VONdyudsLKD0yF6n5Qp+
         KJZHJh6U9BXUZCDFMlm4kqg3EzHn8HuxIfW5CFyK86HbX7H3RdEQTdYYUGJPD4qNCmpn
         QIDw==
X-Gm-Message-State: AOAM531vt7mErcBCgyOMo+R1vWuAcvblQWZfNE+cgV6ZDC+hL67xHyCM
        paxp6IFNeS6ZQ/ZXmzCd70c=
X-Google-Smtp-Source: ABdhPJzAKVUOboQWMYXxUQn1mTqBTg7RLNTVO2WgRlp1RA00Ubazj/qOzZ5+JLFsmPwM/a+bVwP83A==
X-Received: by 2002:a1c:7315:: with SMTP id d21mr214702wmb.155.1618323432732;
        Tue, 13 Apr 2021 07:17:12 -0700 (PDT)
Received: from morpheus.home.roving-it.com (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
        by smtp.googlemail.com with ESMTPSA id u8sm5469003wrp.66.2021.04.13.07.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:17:12 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Use only supported PCIe link speed on rk3399
Date:   Tue, 13 Apr 2021 15:17:09 +0100
Message-Id: <20210413141709.845592-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The max link speed supported by the rk3399 is already set in the
rk3399.dtsi file so don't set unsupported link speeds in device
specific DTs. This is the same fix as 642fb27.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 48ed4aaa37f3..476787027e03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -504,7 +504,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	vpcie0v9-supply = <&vcca0v9_s3>;
 	vpcie1v8-supply = <&vcca1v8_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index fb7599f07af4..17ba7c3d9a9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -469,7 +469,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 7257494d2831..bc385ad45a13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -324,7 +324,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
-- 
2.31.1

