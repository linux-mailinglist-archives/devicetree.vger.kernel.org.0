Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714BA64E183
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 20:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbiLOTEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 14:04:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbiLOTEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 14:04:21 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E4E1D319
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 11:04:20 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4NY1qk3V6Zz1S5Ct
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 14:04:18 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:mime-version:x-mailer:message-id:date
        :subject:to:from; s=dkim; t=1671131056; x=1671995057; bh=We5xjhG
        qrFdJQxR93Npt09VH/7a6fXPhQTRN9HYr93I=; b=ffFibo7DEC8eS2TZ+r0Y7v0
        +5GzEnPSaO+2+AfQdh6GzC6Uf/CyeK1KxMJ5Vw82F/oOyI+hqWPHcBfkm35Dq06e
        wNyNmrmRuGT9azGfhpAmVGrEImA9+J61jQqPi77z/INo585T6I1PHHm5A3BcleN/
        CoC3YyEf+x2Co7AjTup/6UY+MloLxBwaRv2SBR/wCGlGnI9k8/8n9EioFuKjw5GI
        4jrAnRE1o/gZN28FfBYNgyk16C2U+wui79E0TUoO2lFxsOV1nZG36XtSkQxIADRq
        rd/gbGnJPKYnPAyBLDniF24hBQH1DiaG2rU0bzNpkC6ovaKryi7h72jVquBXCkw=
        =
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 5tdbkjYVcNFI for <devicetree@vger.kernel.org>;
        Thu, 15 Dec 2022 14:04:16 -0500 (EST)
Received: from dorothy.. (unknown [190.196.92.66])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4NY1qb10q2z1S4yj;
        Thu, 15 Dec 2022 14:04:10 -0500 (EST)
From:   Lux Aliaga <they@mint.lgbt>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lux Aliaga <they@mint.lgbt>, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: ufs: qcom: Add SM6125 compatible string
Date:   Thu, 15 Dec 2022 16:04:01 -0300
Message-Id: <20221215190404.398788-1-they@mint.lgbt>
X-Mailer: git-send-email 2.38.1
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

Document the compatible for UFS found on the SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Docume=
ntation/devicetree/bindings/ufs/qcom,ufs.yaml
index b517d76215e3..42422f3471b3 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
+          - qcom,sm6125-ufshc
           - qcom,sm6350-ufshc
           - qcom,sm8150-ufshc
           - qcom,sm8250-ufshc
@@ -185,6 +186,7 @@ allOf:
           contains:
             enum:
               - qcom,sm6115-ufshc
+              - qcom,sm6125-ufshc
     then:
       properties:
         clocks:
--=20
2.38.1

