Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD6514C6620
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbiB1Jwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:52:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234559AbiB1Jwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:52:50 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD6056A06D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:52:11 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id f37so20297332lfv.8
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7UFwbPl9f8Py6YXSM3M76a9/bzu6RAMf9a33a60hkrE=;
        b=HNbrQKQwI0pqE0E7k/ljdJUpztN5pv8I0t+rkS1UU+OWUttE+oST6g2tDISp6nkHma
         9LQfBJcjSeKPHup7WkDkmZ9n9eem1pqtb7mKZ+U9OBZX/0CF1occf1aM6dkwyLegF4Vg
         RpNoV9z7IWMP58cw+GWB9pjAQGAuNcclbF8X1vWY+G1CtikshPCJMXFEM1YHOxuPnOGv
         XKBco6nJL3mQKwBLzmBKyNO+9Q3LW6H8Pw3Os2gs8gyZ8U/ZqAbd+WYu5uzsW7VpYtDt
         5rvQ30MajNFF/5heSFKUAaV+Zdp/kZBzi4HjmlN0Ql0tlsL/UTwI+eYmJDW8BaaY1iHh
         vF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7UFwbPl9f8Py6YXSM3M76a9/bzu6RAMf9a33a60hkrE=;
        b=z5x7QnknGownvT+aI5yFn0b5N9B4xIs1FLuW5F/qnuw7R2M8MoagW9zL58CmnwfLJr
         /eC3FASZfLh5JYe/2re2SxjNEJ49k5xnB/O5chkjMmwd/cZJO0biu+O5s1C4Pd5DckCw
         DFNuzb0Nr503DecNbCjc7Ztwwm6CEpr2zyCaSScKRCwt4G2JXFO1N+fG+elrXgvhdtws
         HHlpSejcXuldBy9JtXz70uKylKoKymKZFfVklFOVoJWadV8/i/yPlei9OCqG9ao7pgqh
         P/yvy1Cmm315id+5V8W4R16UQTBGjMDXdBCv9ad92013/u4t5rVCRqqdVXpBtp8V9uCJ
         PpLg==
X-Gm-Message-State: AOAM533AhmEZ0JD8yww2ndJ652nEANLK9ZGHakvecUuEBQ8kj62NtDdz
        He7B1/uqzLyDZvTHOehRSDc=
X-Google-Smtp-Source: ABdhPJyYVr7GFNkr2vgwraQR0M/UyMbtE7GNyjh+t7mYqD9/ZsCgHW+vd7SwJ2Mhr5fTxmOn5btG/A==
X-Received: by 2002:a05:6512:3f09:b0:43a:4463:56f9 with SMTP id y9-20020a0565123f0900b0043a446356f9mr11972531lfa.533.1646041930272;
        Mon, 28 Feb 2022 01:52:10 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id h23-20020ac24d37000000b004436413a26dsm877506lfk.283.2022.02.28.01.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 01:52:09 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Add Ethernet MAC address to Luxul XWR-3150
Date:   Mon, 28 Feb 2022 10:52:07 +0100
Message-Id: <20220228095207.31821-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Luxul XWR-3150 stores MAC as NVRAM variable. Add NVMEM cell for it and
reference it in the Ethernet interface node.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 24ae3c8a3e09..9efcb2424228 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -25,6 +25,9 @@ memory@0 {
 	nvram@1eff0000 {
 		compatible = "brcm,nvram";
 		reg = <0x1eff0000 0x10000>;
+
+		et0macaddr: et0macaddr {
+		};
 	};
 
 	leds {
@@ -72,6 +75,11 @@ restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et0macaddr>;
+	nvmem-cell-names = "mac-address";
+};
+
 &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
-- 
2.34.1

