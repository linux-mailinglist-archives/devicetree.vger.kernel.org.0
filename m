Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 654B24123BC
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 20:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378516AbhITS0x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 14:26:53 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51198
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1378524AbhITSYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 14:24:51 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 35CA4402DA
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 18:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632162164;
        bh=iNV8YIDaEW4qGp0wnVLbBOXLJTPhPj64xM2Hg3lf28I=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=GmXQN+cq7lvcGBnGMnPsYOqLco6YW5MunhoDZNpjRkADb3ChbDCy0sQpieH87Zz8G
         XlP7bepWw9UOil4KJZKojsKcNHr8quZ4jqiCnO/aEui3xhgkh/uDJ04vUi+ywOIKOZ
         ay4xpBJbkpQ1PJnivub5Jd68G9A9LTTrBRy2S4p8EfIjJHNv+2qdkKz3rboAT5HUcE
         3+YghCuQL4NBklkY826Jy3LjuI3xHsJqoWobZBF+AWNupyj+aPEQVs8qEv4N/VPkQQ
         D73gtfVOYQyzYQRA+PdQxaajz/pGKGPvGpXjBgcvMVTwhmDQ3mRd36X8LfQbNoRLnv
         6cQ1QmLkNE3bw==
Received: by mail-wr1-f71.google.com with SMTP id x7-20020a5d6507000000b0015dada209b1so6780525wru.15
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iNV8YIDaEW4qGp0wnVLbBOXLJTPhPj64xM2Hg3lf28I=;
        b=poM96G4e6O22hVikBF/UuH4scYI1W7EemZ+nQvhGu7ar/g+bw3NtkyaeGXgTSG3c+b
         z2irYKKMrYpppQiNc9giQoh6EwfYb0Qbj1dlV4L2aViTCm4L4mKm7zQkVYjN/1NM891f
         w+IAsHSJrzuBjNyX+sFkBGjAYjw1v5PDCrpBbo8pdWnFPzrD9mtLmi0KbSNSOIdTbBqB
         faVdChztjH+DU43wey+cELHO5oomRzc640PhwQpsYsFih7Bfye0I2ZVmCcG2+Lm/VFlf
         TffL91gEkI1fGNVxxJHu/9oXco3NN3RaCDpLtljPngzhAAajLbX+lKPigfVXVuTtJOAA
         I4ow==
X-Gm-Message-State: AOAM53126SiP1uIHNZso4VLG5iSTA2aZ9c5sw38v/oM4VD5/oYJ2RBz8
        j/OR0MhljuGWNgas1dCymmSOl/yxTnFPCiXAWP8twQoQCHeCH3pqqPsmjnBu60kobCUj93mH4Nn
        BgLo7QrNHAixJp0r+Gk8iKOlMjJw9DxdocS91Yvg=
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr453302wmi.136.1632162163962;
        Mon, 20 Sep 2021 11:22:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJweHf4asdvcW0kEFMaxBzRg1zABC+FzL51b1RQOd8OrZRd7ue0tSe40wLyfBr30h38/PuoTIw==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr453284wmi.136.1632162163779;
        Mon, 20 Sep 2021 11:22:43 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c14sm11036380wrd.50.2021.09.20.11.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:22:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] ARM: dts: imx6dl-b1x5v2: drop unsupported vcc-supply for MPL3115A2
Date:   Mon, 20 Sep 2021 20:22:27 +0200
Message-Id: <20210920182227.339577-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MPL3115A2 I2C pressure sensor driver does not take a VCC regulator.
The bindings are so far trivial, but the datasheet does not have a VCC
pin.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/imx6dl-b1x5v2.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6dl-b1x5v2.dtsi b/arch/arm/boot/dts/imx6dl-b1x5v2.dtsi
index a326a331508e..f028b6a191df 100644
--- a/arch/arm/boot/dts/imx6dl-b1x5v2.dtsi
+++ b/arch/arm/boot/dts/imx6dl-b1x5v2.dtsi
@@ -47,7 +47,6 @@ &i2c5 {
 	mpl3115a2: pressure-sensor@60 {
 		compatible = "fsl,mpl3115";
 		reg = <0x60>;
-		vcc-supply = <&reg_3v3_acm>;
 
 		/*
 		 * The MPL3115 interrupts are connected to pin 22 and 23
-- 
2.30.2

