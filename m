Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CCAD6F8F70
	for <lists+devicetree@lfdr.de>; Sat,  6 May 2023 08:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjEFGnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 May 2023 02:43:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjEFGnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 May 2023 02:43:04 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A5DB9EFD
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 23:43:01 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50bd875398dso3939178a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 23:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683355380; x=1685947380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CK6Hha4S+ymoMFaX86nTLwUb9e5d5dlAPNIoyxTLm24=;
        b=vaKUAo95kZe1ke86mFL+IhWZKbgxuV99GMcvRIFAvSeBZkN1VF1e2xtYoy8yxDliIe
         RgiqvHSWuY5kzZrsKSk00YQ2GfBxPLBwsrDWw5G9tI2dxHM5fehKtY53GSnfW5JQjezL
         vBd4WhKtVLgNuxrT0lutszhiMQZPCs1lPwa9MWmLdguKHtchzabP8r+EWWISZF68Znc5
         p/uAsonPkNjjoWfQeyXeAnPcLzGTFi6dlDyQFWnuiiGCiBR5LH3VB21MLRFOGCF/DtK9
         Nr/jvL4uEjMynq1YO3xxCueZJBVH0pl2GnLgFX6x6BCdfHEK0dIYO5IN9UEiL1r5Jz38
         aHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683355380; x=1685947380;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CK6Hha4S+ymoMFaX86nTLwUb9e5d5dlAPNIoyxTLm24=;
        b=OEWSrgZidUaF/eUNq2ThtwyQuRwwPtFNrCcyU1ovfMizqDOx9K4BGossgVWgvi1A6f
         ZxMmGwg+RhBxaJ0+AqtnUcefgKMiVX6WzgWx3YdwPAA2lNF1vuAQw9SuUX8UQ91WUz96
         yetofiIBGcNFHe5chJJShtIHvXT6N4c4H9pj1LdcOPmT7Fvn9xccE8P1TFkgOiOBvVo+
         iWDqUOc5m/5qoBeAM9qNQDe/mJWkY8hHkWMmRBN2Md0MSQdp8V7P0dw3Mm15N91LqWHk
         z3aXOo0+cUkfXvWx5Nm1kdx7u7UwAAFmHo3gTfk7kZzh3fWdsVPGMDFnN0PfVQSoNih8
         F9Pg==
X-Gm-Message-State: AC+VfDysA8Yb14+Wfe6B0agKILGNwo9W4IKp2QkaV5TMRCaFGaKV3pQp
        1FLpCF8164tw4ZBZVRM1f1KWvg==
X-Google-Smtp-Source: ACHHUZ5PO0xFJsbtnP2qeemE7wg+ozaEsp+6Y9dZmq4+kpYlxHj598hqmh0/WtyMbmT82N5cplT//A==
X-Received: by 2002:a17:906:eecd:b0:965:8edf:8028 with SMTP id wu13-20020a170906eecd00b009658edf8028mr3329753ejb.42.1683355379759;
        Fri, 05 May 2023 23:42:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:efe5:7c03:a10a:7a40])
        by smtp.gmail.com with ESMTPSA id hx25-20020a170906847900b00965ff04f9f6sm910719ejc.161.2023.05.05.23.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 23:42:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Peng Fan <peng.fan@nxp.com>
Subject: [PATCH] ARM: dts: imx7ulp: add address/size-cells to OCOTP
Date:   Sat,  6 May 2023 08:42:55 +0200
Message-Id: <20230506064255.34290-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The OCOTP node should have address/size-cells so the cells can have unit
address:

  imx7ulp-evk.dtb: efuse@410a6000: '#address-cells' is a required property
  imx7ulp-evk.dtb: efuse@410a6000: '#size-cells' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index f91bf719d4e2..b01ddda7bd9e 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -459,6 +459,8 @@ ocotp: efuse@410a6000 {
 			compatible = "fsl,imx7ulp-ocotp", "syscon";
 			reg = <0x410a6000 0x4000>;
 			clocks = <&scg1 IMX7ULP_CLK_DUMMY>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 		};
 	};
 };
-- 
2.34.1

