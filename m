Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 841CF3F868E
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 13:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241905AbhHZLcX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 07:32:23 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39760
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242160AbhHZLcV (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 07:32:21 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A94233F046
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629977493;
        bh=/4+f3V6mfjl/IwRAcPyaEIpUuWCzLFO2MSov0Okxjyw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=r38Ny4xRD0kPYLG937Ce+TwzVRBlr8ToswgYcyq/fM3Pau/IhCvqV5kwxl3oWzVcc
         O5NlN3ERN6UoR/72Sq8qswvqoOXjGoTBnO1l1MoBL+PoJmXYY53viLahA+OVAEGRlK
         u4wKMu7tVt3F5D3zk7tS/Wy8tE/NidpVRgsX2U9XPMTyMkfrClC0GjJS3E8DjZTTjD
         QSVrOiy2V1BqA/+UQUJ0+t+JhknDumULw0yJGlDVjp7UjslGWEMpqeSa2kEIOuhEeo
         1zm2S40o6ZFgYp6kGvfLQLzG2WtADZcQdl5w1+MGdtRhHyzqq/ppw3+nnlq/AA+jjC
         +VU85iamVFHRQ==
Received: by mail-wr1-f70.google.com with SMTP id t15-20020a5d42cf000000b001565f9c9ee8so747151wrr.2
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 04:31:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/4+f3V6mfjl/IwRAcPyaEIpUuWCzLFO2MSov0Okxjyw=;
        b=Mksj/kSYlytldjRClE4ByMNNT87HvTREALAFiuLndvvqr6kO00ths0Yx+eOO0Tb/Qq
         +qGJukQX7LgfZ26FhxoJfN0tQWw6lZVurRI91CIIv2TWRCFEuouZRe8VeItQzfl2Q+qk
         gSwJKK/KHY4CZn97R8euMHkVmgzH/mXrlEjD6+jza0GnwNJSAK5wCQGt+EqCtZkkxgny
         pXBiO6HhvXNVyO2MfykTW6FADVOkmc/Bw1i4uqXCxjwgVHEMfNQ7pE9N/EYCAhhLvMiF
         YKxXDRm81xOZpAY9VaSoAUKI3AivhTBGaJ+u8+uFYVE+Wp5KeRlwbpbj/EGVRb4O3zD+
         N7cA==
X-Gm-Message-State: AOAM530MlJQMK8hFANoD1qCbULehb0hWH+ceZ9ywVIEuNGs8UJHqcf0y
        dKuUCD9eh5zhJAL4jRkSSRo+pWP441J/swgHO6rVN6O5v91+Z6EvlY8Bosnm42z2TahHymSTrRL
        NAmtJDyqCQLE5+5uSar5MUw6qLhMNdRer3Qfd2kY=
X-Received: by 2002:a05:6000:10:: with SMTP id h16mr3378306wrx.24.1629977492393;
        Thu, 26 Aug 2021 04:31:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxRIGILxCoA8dBlrp1p/psmbDQi+gHYZunmUGz5IxhIucSwKL/01jAubKNSedu2x99rwlJGJg==
X-Received: by 2002:a05:6000:10:: with SMTP id h16mr3378293wrx.24.1629977492257;
        Thu, 26 Aug 2021 04:31:32 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.63])
        by smtp.gmail.com with ESMTPSA id k25sm3082494wrd.42.2021.08.26.04.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:31:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Borislav Petkov <bp@alien8.de>, York Sun <york.sun@nxp.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: ls1021a: drop unused big-endian property from DDR controller
Date:   Thu, 26 Aug 2021 13:30:48 +0200
Message-Id: <20210826113049.92962-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826113049.92962-1-krzysztof.kozlowski@canonical.com>
References: <20210826113049.92962-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The big-endian is default setting for DDR controller as expressed in
bindings and such property was never documented for Freescale DDR memory
controller.  The driver also does not parse this property at all.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/ls1021a.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 4fce81422943..0f759bc81239 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -136,7 +136,6 @@ ddr: memory-controller@1080000 {
 			compatible = "fsl,qoriq-memory-controller";
 			reg = <0x0 0x1080000 0x0 0x1000>;
 			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
-			big-endian;
 		};
 
 		gic: interrupt-controller@1400000 {
-- 
2.30.2

