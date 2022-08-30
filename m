Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3825A6BB6
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232215AbiH3SEj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232212AbiH3SEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:04:35 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21FE4A8CC1
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:04:19 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p7so5482207lfu.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=VHNhyDjWR9A/L2KQArWKJFSPozuYsj2rLhAic5fPBHM=;
        b=H9b69iNeDQ1BeJSCrOZqtd4BnmuZ18oDReBh6gJgZJYXySluUKiHg4DdXNk75U3kon
         J1oTSNDmTVlavY7iOpzPvlXtKtPRcmTnW/qEXibtk1KspQXi9hMbyHGldyEknowmvc3X
         /Jq0n8hYXhyOt8IqxIwTHPsJoyWTknmkHwlivIBOzshjmQtr0SbizRyXysKrNDcJY5v/
         6lcT5UFitY93Jh0bqWoIRyjh0CdOEFgH7TlJeN5sn5Nz+frMIE71LTEonDt62aGBySbB
         ZOEnE5xSSFWr5DFKXXyoIDgInS23jQqNOPMZftKmEtM7Zvy47QqAFE7Eqe0rFKAHHxe8
         zRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=VHNhyDjWR9A/L2KQArWKJFSPozuYsj2rLhAic5fPBHM=;
        b=DSZz844Y7QxFnUTTgnc1tduNfNl4oESl7OW029I2l9YGce/saoyNFBD/k33Ua2YTD2
         0I+rukzNIx37hIa2+wWWsrbKlm7INw4ajtZIwpc9sFDq7DHULYCBDC3yKFEV74oiXSEW
         2Ay62NHKPTX4VFluWUTicZOj369B3SHbi9pdAPbhnvRLgpNJw+YZtgnWD1ivhtPbHOnO
         pfj6wmvpLQQlcI125Rpot6NY6bHhslFvf9jd66Hv+5qJh2Jk/LB5Kn37385I8lfhf95e
         6cAJCRafGCcQnHbk103zISINrr3viGw7aMfBoFCXiPh/MWfsgxYNG+sV2tyNaMtrLWoS
         Zklg==
X-Gm-Message-State: ACgBeo0DTbBOr4J5sKZkFj05ZADB8Nsx0d8MLSictskJzZNM245C4+N1
        eVIdsHOUXWa7wPOq+BpsMDlrhQ==
X-Google-Smtp-Source: AA6agR6zFuDgqcFCB1gsk7nm5qMNGJaELtyA46D4xb6sigAF9qGR8Na9UhnyMVKON/FRJ7g4jyZ2Eg==
X-Received: by 2002:a05:6512:1529:b0:492:dae4:2d0a with SMTP id bq41-20020a056512152900b00492dae42d0amr7682556lfb.604.1661882656677;
        Tue, 30 Aug 2022 11:04:16 -0700 (PDT)
Received: from krzk-bin.. (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id d35-20020a0565123d2300b00494658234aasm1091590lfv.17.2022.08.30.11.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:04:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH] ARM: dts: armada-xp: align SPI node name with dtschema
Date:   Tue, 30 Aug 2022 21:04:14 +0300
Message-Id: <20220830180414.15729-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
index 87dcb502f72d..0dad95ea26c2 100644
--- a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
+++ b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
@@ -164,7 +164,7 @@ scroll-button {
 		};
 	};
 
-	spi3 {
+	spi-3 {
 		compatible = "spi-gpio";
 		status = "okay";
 		gpio-sck = <&gpio0 25 GPIO_ACTIVE_LOW>;
-- 
2.34.1

