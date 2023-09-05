Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43C1D792CE3
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237035AbjIER5k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 13:57:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238431AbjIER5U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 13:57:20 -0400
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C92EE6580
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 10:52:20 -0700 (PDT)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-99c3c8adb27so424129066b.1
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 10:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693935946; x=1694540746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDCWmN0mPD6hCatLBKjMrDlxIVWIUgJK7MJJd+ho5Vc=;
        b=yO8nmYxcbU+TYoE7RhGDEeDPLmMBEaz5LCtiYScL/t/ojpt/SqnCt8LVMG86UyTAJw
         YSgO0e6Qb13JKrMRt0FK3/OMTh5XOo3tCxvfINDq6KJJRh0PU50dnSgLcRrFosAJpn16
         xo6scRFXhXSE6d6TlMfqfGF38dgzFqUYW+2xbomqRYAezEUEjxy7bU2dQCgPTPmoZrDo
         /0CLG8rrhGRfGnX72vEReUu2yBuDiw2IrNfrysJfclNysmuTAuAXTTdWRcAHZjv+46CC
         sIX21VJXUtTNWgmDFDFY3l1Np6bUu223UYb35JsTAA9fM1fTKmO9l702mWnt91p1FYz/
         i2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693935946; x=1694540746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDCWmN0mPD6hCatLBKjMrDlxIVWIUgJK7MJJd+ho5Vc=;
        b=UEW3zw6pnGy94tgaAp7t9H2nu2whrZP64DX9zwgoLjDXjzd/uZqYOI3u6Wxofz8bDT
         SpOWpNAlYuy2vJ7cnacAr1+D5QMnPpPVQqCS63FZ2syEkbSG2XWVblDZlnK3ujkurQ7j
         ziMtHGsEQ+f/J14o4B7/TszxLErTXCztzP8B9dekBAfEp+4a9oQjKyBVDmIe8cILc4QT
         zx75lXRWcBOZj0IziIIB5PCHMelm2jbI0rP7XPksO1Q/rH/ob8aMm/f40NPQquJzNjOU
         9FB8JIh9JcaFUomi1KPnpktN+MoeoMXy81DvpgqcxCu6U6JKqvdzPrTdKQrM+0vxylNa
         oBtg==
X-Gm-Message-State: AOJu0YyM/9kQ531hc7l7yi7eW8jIOZ+txA8QVoBrOjOHJ0uATSxbZEyB
        QJ3W9tgl7+8tgL9R7Fb65inlAS9azhODSAJAfN8=
X-Google-Smtp-Source: AGHT+IHP6OBBOhp2XqNXHnK7pnzjbPCbx0swl8k5IRAOAeEg9BeQC0c2Z0DhbmOKSgrSC4rz+j6yMQ==
X-Received: by 2002:a17:907:2cd8:b0:9a2:2635:dab6 with SMTP id hg24-20020a1709072cd800b009a22635dab6mr235384ejc.47.1693930781780;
        Tue, 05 Sep 2023 09:19:41 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 12/12] arm64: dts: qcom: sm4250-billie2: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:20 +0200
Message-Id: <20230905161920.252013-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm UFS phy switched from dedicated driver to QMP phy driver.
Eventually the old driver was removed in commit 02dca8c981b5 ("phy:
qcom: remove ufs qmp phy driver").  The original driver and its binding
used vddp-ref-clk regulator supply, but the new one did not and left the
supply unused.

The Qualcomm UFS phy bindings were also migrated to newer ones and
dropped support for vddp-ref-clk regulator in commit dc5cb63592bd
("dt-bindings: phy: migrate QMP UFS PHY bindings to
qcom,sc8280xp-qmp-ufs-phy.yaml").

It turns out that this regulator, although with inaccurate name
vddp-ref-clk, is actually needed to provide supply for VDD_PX10 (or
similar, depending on the SoC) used by UFS controller.

Bring back handling of this supply by using more appropriate regulator -
UFS controller host supply.  This also fixes dtbs_check warning:

  sm4250-oneplus-billie2.dtb: phy@4807000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index 75951fd439df..2c7a12983dae 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -225,13 +225,13 @@ &ufs_mem_hc {
 	vcc-max-microamp = <600000>;
 	vccq2-supply = <&vreg_l11a>;
 	vccq2-max-microamp = <600000>;
+	vdd-hba-supply = <&vreg_l18a>;
 	status = "okay";
 };
 
 &ufs_mem_phy {
 	vdda-phy-supply = <&vreg_l4a>;
 	vdda-pll-supply = <&vreg_l12a>;
-	vddp-ref-clk-supply = <&vreg_l18a>;
 	status = "okay";
 };
 
-- 
2.34.1

