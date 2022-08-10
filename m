Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA34558EAF3
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 13:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231797AbiHJLLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 07:11:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231869AbiHJLKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 07:10:34 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0768755095
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:10:29 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id u6so10378828ljk.8
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=M3G8e2FIlBaCklDHFSeFRqSdak+uMwxwms29q5ih7C8=;
        b=A7zYLbrc5RGxqwo1JkCad2FtMUeL8CvQutSj0ksN89vrAADbJJ6bMtEP/w9OG3+CvS
         YO2DDJzEzUbbRChBuRe8jVKylxTe1Hy2G+R72N7zrRaB9P23wQN5xOkEcHrkn3CfotaW
         Z4hApAR+Lz7NbNZwKGtPkB0FRxitJlP11uWtDFIReltY+WlxPkI/Ytpx35RHvJpZHo55
         s67rIi75E3lK1yrDxpRVkze5ZcKXYDZ+cO14wGD3dOocNr3aLw7y2j/lF8ZkM1KLnBQo
         1r0kPyzZmz+23LUxPpz+jk7bBy3+91ChLY+p8KKZA2OKIpq8iOTD7p0C+iN2DT7zXog9
         rgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=M3G8e2FIlBaCklDHFSeFRqSdak+uMwxwms29q5ih7C8=;
        b=tcPIieDONQ/b2hzozEpy6uNFWEyma0qCLr3AvrcEXxJyfuoq8LgiaGF34y/JVCYpgw
         sdQjq4tmqRC0AxcK4VSI1FKW7/Nfp8ApIEJpcx9p4ojMqbMi1bnKaZ5y4ziFBdCaqMsk
         xN9Z+1iF5/+mLFRNQgLP4F3ENu09fEzbBp/hMXqW8NkMfPOMRE21Gr2ENC1vhC+iGPJL
         j/qKk63wMWg2Q/hfA/1xUbvuj82kuarsgvTX1dHqoHtzM8yijoom23s5/GIVqi4SySoU
         l++dC66kvFXRsG7mZmtV4iKzeXBdNtbCrcRscq0g48aF7DWOdn7Qp1Hw5BfBveA1CbS1
         8MmA==
X-Gm-Message-State: ACgBeo3VdvSFrloprz8htoxwCAIuKkv12W0fK7SLVH8mOsKUmN+a4x65
        i0iHj9NsVarTBUTe4pkFLZKI5A==
X-Google-Smtp-Source: AA6agR5o7dD2+6UQlcALSZjCL26I0VB9RF1+k/GkhhhbeRpi0xOju51tpXJ//mqmACuRupNCStXrcA==
X-Received: by 2002:a2e:6a08:0:b0:25e:71dc:8d6a with SMTP id f8-20020a2e6a08000000b0025e71dc8d6amr8272378ljc.262.1660129826943;
        Wed, 10 Aug 2022 04:10:26 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id w10-20020a2e958a000000b0025e6e5a5e75sm363851ljh.117.2022.08.10.04.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 04:10:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: integratorap: align SPI node name with dtschema
Date:   Wed, 10 Aug 2022 14:10:23 +0300
Message-Id: <20220810111023.280908-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern:

  ssp@300000: $nodename:0: 'ssp@300000' does not match '^spi(@.*|-[0-9a-f])*$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/integratorap-im-pd1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/integratorap-im-pd1.dts b/arch/arm/boot/dts/integratorap-im-pd1.dts
index d47bfb66d069..c4a792b2c86b 100644
--- a/arch/arm/boot/dts/integratorap-im-pd1.dts
+++ b/arch/arm/boot/dts/integratorap-im-pd1.dts
@@ -178,7 +178,7 @@ uart@200000 {
 		clock-names = "uartclk", "apb_pclk";
 	};
 
-	ssp@300000 {
+	spi@300000 {
 		compatible = "arm,pl022", "arm,primecell";
 		reg = <0x00300000 0x1000>;
 		interrupts-extended = <&impd1_vic 3>;
-- 
2.34.1

