Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E003D6618DE
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 20:54:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235375AbjAHTyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 14:54:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233826AbjAHTyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 14:54:13 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16B0ED2F8
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 11:54:10 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4Nqnp93KFmz1S5FM
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 14:54:09 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :x-mailer:message-id:date:subject:to:from; s=dkim; t=1673207648;
         x=1674071649; bh=caIAUgqna42litYKpC2z6cvHI/OhIg4GMMlDOgSjc00=; b=
        CfCGJDRCa+7/BY9LeUZD0G8GMv49hyr22DHNTRSzN1rysP99XfXVOqARYzOwoWIm
        ficm+x6DpotRV8ey3v+FVj/glFPgVEpTBjG279t5d8PASKw+s5q/lgaLlrz4Zupf
        WrjfTZvCFdwsxjH8iDmCtCVFMBK8fgZAiU6qFUNL84x/p+sC/kug02Eh69tPUcjq
        rV5E9d4zcN/nqvc2d1Y07eLa8+zISiHytUh5ZpU0ev15FD5FTgrLPskE81dXkKzU
        sOBJz8mane0lZKnz0bcDzu5QcKWdwnKgyIcSOeu54LZgy1KLSmYcF+Fp0PcRynah
        WokQs1+XXxNaKnjQG6/Aig==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 1CERlacr537j for <devicetree@vger.kernel.org>;
        Sun,  8 Jan 2023 14:54:08 -0500 (EST)
Received: from dorothy.. (unknown [186.105.5.197])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4Nqnp10c1Lz1S59v;
        Sun,  8 Jan 2023 14:54:00 -0500 (EST)
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
        Dhruva Gole <d-gole@ti.com>
Subject: [PATCH v6 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for SM6125
Date:   Sun,  8 Jan 2023 16:53:32 -0300
Message-Id: <20230108195336.388349-3-they@mint.lgbt>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230108195336.388349-1-they@mint.lgbt>
References: <20230108195336.388349-1-they@mint.lgbt>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the QMP UFS PHY compatible for SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
Reviewed-by: Martin Botka <martin.botka@somainline.org>
Acked-by: Dhruva Gole <d-gole@ti.com>
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
2.39.0

