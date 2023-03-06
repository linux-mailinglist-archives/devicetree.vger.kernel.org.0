Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FDC96AC902
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 18:02:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbjCFRCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 12:02:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbjCFRCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 12:02:14 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BEA661887
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 09:01:39 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4PVl5T6d07z1S5K4
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 11:53:33 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :x-mailer:message-id:date:subject:to:from; s=dkim; t=1678121613;
         x=1678985614; bh=aZvyOxr+cceertzklNMJveGEzeMKKnPjb24BJXnn514=; b=
        Osj7OUNfhq2tgPjKceu6gVP9NnY9ofaKz9b14wkaIqGfQtYejB7oKDWWmxVqb8Jd
        r6tpWaOLwuJwTMtuePu1DMgw3sTJbgmNkG+Xz4ekHNuBCrrwBq9oWFDtqYGThERg
        hH4HGOT8HQlKbUQX6R//8BBy53Xp290VaggU4xCChhLPm331YDOErLt4gQwcDCDi
        mQIw6VE0+ipTCBEVLrfy7JO/y7hN4xF1KKod+Fh56SpkWuShuRZHy5WAC4HdUvtI
        Aju76BaJj8hu8AGSxoMKYmROSh/alsgDdiLtfCExsKf+hFZXqRzW7UUq3UOIAtj/
        3mnswfI8wl49fhNEvZTC9Q==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id nmZCYzu5jPqY for <devicetree@vger.kernel.org>;
        Mon,  6 Mar 2023 11:53:33 -0500 (EST)
Received: from dorothy.. (unknown [186.105.8.42])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4PVl5D2jH2z1S5Jp;
        Mon,  6 Mar 2023 11:53:19 -0500 (EST)
From:   Lux Aliaga <they@mint.lgbt>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org, keescook@chromium.org,
        tony.luck@intel.com, gpiccoli@igalia.com
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, martin.botka@somainline.org,
        marijn.suijten@somainline.org, Lux Aliaga <they@mint.lgbt>,
        Dhruva Gole <d-gole@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v7 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for SM6125
Date:   Mon,  6 Mar 2023 13:52:41 -0300
Message-Id: <20230306165246.14782-3-they@mint.lgbt>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306165246.14782-1-they@mint.lgbt>
References: <20230306165246.14782-1-they@mint.lgbt>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the QMP UFS PHY compatible for SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Martin Botka <martin.botka@somainline.org>
Acked-by: Dhruva Gole <d-gole@ti.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-=
phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-ph=
y.yaml
index dde86a19f792..a7af57931f32 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yam=
l
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yam=
l
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sm6125-qmp-ufs-phy
=20
   reg:
     maxItems: 1
--=20
2.39.2

