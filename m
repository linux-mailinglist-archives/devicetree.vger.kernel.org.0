Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06E136DE5C0
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 22:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjDKUch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 16:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjDKUcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 16:32:36 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D5853584
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 13:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681245112;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=8rS/z80Lu47QxYWJ46HnzDoO2h7E/RInGcHyWg9vKTQ=;
        b=ecHDjXm/xm2BFwVtrnfIT21K4ryWKt1/GVW4+FoLFBqpjwyK0eTfPgUr8tSs2NZCPZY+e/
        GSikiAXYNDqSjlJnFkU4FruH+pmWIadX3eN3ELUc33/MwfXjpir2wGsikLhfQt0GUaIaSb
        m4HhTmPVQMTMLWF6xC8Df6l5lhx/6zs=
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-oX66fPqCOaeqpT3kCZQtWA-1; Tue, 11 Apr 2023 16:31:51 -0400
X-MC-Unique: oX66fPqCOaeqpT3kCZQtWA-1
Received: by mail-ot1-f72.google.com with SMTP id l5-20020a9d7345000000b0069f96cb2758so2558381otk.0
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 13:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681245110;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8rS/z80Lu47QxYWJ46HnzDoO2h7E/RInGcHyWg9vKTQ=;
        b=7ITAInMLlJxOVOR2nKVOmvfXpcsaGnpaeOndo2+iJu6i3SkElVwre/pfaSvRxPh0hE
         OTy1puoOHNmTWD0P3YHAO5Qa70QTZ7fGqzj0acR3o6OfuWhOQ3Rr6Ngytf5LhydymDkz
         1q1dTnMQLLAJZyWn24YoBeAEmclfYnwRTOXtIMCq9NfAfnC542beSkWRQrfw6bx5TWsR
         P4Bk/NLu8YYXUWr+dCwhS2wXbfaGb6YPgRnXmVzW8PHVQiGDN07htLknc16NLQsjQjb8
         0u9KwxvqfnJJUSOhm1KWMlJYaEbM9RLsHdMnuyFK1tRjwoXy6i+twmFALpopNf8lQ6dX
         Y/+A==
X-Gm-Message-State: AAQBX9c50e5pt+ly6PuBl9d45OSUNuvUD+l04E3J3O2JhSi+SiFBUq71
        85qqHIY3092TS4Ui7FirpoPso8ELyk3bQYTduyACNY8ZlGXW3x8M3UN5qvoZdBHpYXtwzjUn/HG
        6aqENrhLG4XUk8iWY/PKVpQ==
X-Received: by 2002:a05:6870:ec8d:b0:17f:fa32:4509 with SMTP id eo13-20020a056870ec8d00b0017ffa324509mr2573841oab.0.1681245110315;
        Tue, 11 Apr 2023 13:31:50 -0700 (PDT)
X-Google-Smtp-Source: AKy350akI6FU8Ez5RoH8LUxzPI+e98pIg0YRV69XXPwsSFk4CCyUry4KMCIeRP3G70jbhzjIfRgOhg==
X-Received: by 2002:a05:6870:ec8d:b0:17f:fa32:4509 with SMTP id eo13-20020a056870ec8d00b0017ffa324509mr2573827oab.0.1681245110100;
        Tue, 11 Apr 2023 13:31:50 -0700 (PDT)
Received: from halaney-x13s.attlocal.net (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id zj18-20020a0568716c9200b00183f77dcdadsm5078029oab.33.2023.04.11.13.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 13:31:49 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH] arm64: dts: qcom: sa8155p-adp: Make compatible the first property
Date:   Tue, 11 Apr 2023 15:31:44 -0500
Message-Id: <20230411203144.471192-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As stated at the below link in another review, compatible is always the
first property.

Follow suit here to avoid copying incorrectly in the future.

Link: https://lore.kernel.org/netdev/20230331215804.783439-1-ahalaney@redhat.com/T/#ma76b4116bbb9e49ee4bcf699e40935d80965b3f3
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 459384ec8f23..8c773b856eb1 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -351,19 +351,18 @@ &ethernet {
 	max-speed = <1000>;
 
 	mdio {
+		compatible = "snps,dwmac-mdio";
 		#address-cells = <0x1>;
 		#size-cells = <0x0>;
 
-		compatible = "snps,dwmac-mdio";
-
 		/* Micrel KSZ9031RNZ PHY */
 		rgmii_phy: phy@7 {
+			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0x7>;
 
 			interrupt-parent = <&tlmm>;
 			interrupts-extended = <&tlmm 124 IRQ_TYPE_EDGE_FALLING>; /* phy intr */
 			device_type = "ethernet-phy";
-			compatible = "ethernet-phy-ieee802.3-c22";
 		};
 	};
 };
-- 
2.39.2

