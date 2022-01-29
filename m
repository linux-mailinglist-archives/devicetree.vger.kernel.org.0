Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 215ED4A3139
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:56:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352748AbiA2R4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:56:36 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:58950
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352765AbiA2R40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:56:26 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5CA303F308
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478985;
        bh=LryPbZU3HL9KmZlfDg9bneZraOek6aRqFlYMuXq3mpw=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=MZM0oDP+LxCIdP1K1DhNLTh+e5H/ne9jmX3rhEH6wPn0YW/lpdfERSXjLuVe9uBpS
         /mn8ZLY9EwjHqKXqmvBDv0Bu0R1OdVFE8LxdyAqqcN0Wpt5GMV4Bqs1vlIld7tIH2y
         AjZYYyW6YQMFRhejddY+nikljd3FTw3eqUxaDucOyrdLDScexvkPLJA4UN1oxJjOsB
         tFCv5yVeWiJdQigiWddKsRXI6ec98AbAaa6WGP6NSmCJu62FNgyjT01ln/FjeSNHFL
         eLDJQ5xutHOtDFtqJ+MkaHV9jKXR1CPlgBHkz5Rb4tlvg74Bb2QurQIPFtMmMALGMx
         4hElhZ6PF0mPg==
Received: by mail-ed1-f72.google.com with SMTP id f21-20020a50d555000000b00407a8d03b5fso4655766edj.9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:56:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LryPbZU3HL9KmZlfDg9bneZraOek6aRqFlYMuXq3mpw=;
        b=BY2czT8c5WXldu8QPGKA8LQteNXie+JuOfu1xsUys0XUpKl4awMoFHrVvoXfpZPj82
         uzx6oAH3SwO7JAWEs1yNd5xmWaFeyWVb5dkpBqWUgmeJZI+daK2D5L9+VuvEYmbRXRnj
         UpsbLXAe+2EihFc9JiY104qF04Eh7/GuLWDQ2ZjudCV0l3deEk+t8XiD9zsCJUn0RR+R
         csV5LGkIwd/SdPJIccVEpwDYqBKRronYEdauw440rPQ0q9Rk6opQmtnzBjJj1fFSOfRo
         d/f+qWRzZdas9LjZA9yU5srjQkSjBFdBLXTA4wgdl6gDVcSKbfYFmdOMt80dIOR8ztSj
         TFIQ==
X-Gm-Message-State: AOAM5335KNp5Xhc/RQDHFGNqUns/E0FCb5yaC0lZTmiosBP0UrIHuaor
        bSZ+WMuSdUHeCmXaQc8DbodEhlCRRhh7rbKLC4VAzdsh54GH+WPGNlHfmsQa2fsx1yKAoxLYHcW
        cblBEQWB/vB/HISeNquSYooRa5rsRxfcTr9zIOZw=
X-Received: by 2002:a05:6402:3450:: with SMTP id l16mr13560067edc.225.1643478984185;
        Sat, 29 Jan 2022 09:56:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxTH+NRh1IzmpsqhdmewAwK3hAzmotycMGgQdOxX6eEG5QNIYKiYvc8CndgmQTmEkSScXgNoA==
X-Received: by 2002:a05:6402:3450:: with SMTP id l16mr13560062edc.225.1643478984066;
        Sat, 29 Jan 2022 09:56:24 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id d6sm12676759eds.25.2022.01.29.09.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:56:23 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: juno: align pl330 node name with dtschema
Date:   Sat, 29 Jan 2022 18:56:21 +0100
Message-Id: <20220129175621.299254-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warning:

  dma@7ff00000: $nodename:0: 'dma@7ff00000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 6288e104a089..af499049cb00 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -672,7 +672,7 @@ smmu_usb: iommu@7fb30000 {
 		dma-coherent;
 	};
 
-	dma@7ff00000 {
+	dma-controller@7ff00000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0x7ff00000 0 0x1000>;
 		#dma-cells = <1>;
-- 
2.32.0

