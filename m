Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0734F81D1
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344109AbiDGOgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344041AbiDGOfm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:35:42 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A45DC1BBF48
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:33:26 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id qh7so11192013ejb.11
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6WexuKP2+sDgybtIp4d5+di9H7v3WxWenN1FdjYcEmk=;
        b=y/SG15SEpRCCG8uYeJmXPIv9oAYavis/ItpzS7yLNHAFM5XaLn3QHBwSEUJF76Fljx
         92pFV11kezcROBOnXoPUn+IeOEFyawtfsm+3onlxSnHrxn1hbkL/V2rILaCwpRAnI/47
         /IpC+r5T09f0/F1fwJ0GZBFy16DypolTb61Y26dkfUT9ddK9Ay7vmpheriUCk3wh5D6d
         R+PCulq7AcsKwaTaDucEuQvU+c3vs0SRV8d2Hzp8RJBfH+EMh35leg3hfUUpxjWkNEf4
         u4oPwWrUaRudP6dFhUYRHn9TBlAXuA9XOk9l0MhgVy3URBlVAOpRa3oil7DnhSpx/eMZ
         Jmcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6WexuKP2+sDgybtIp4d5+di9H7v3WxWenN1FdjYcEmk=;
        b=TGw4z4/Rtzf6kKw09jhjZjuRDM9IHkCHfYJLjzLEgc9qgBpX08uTrCEJw59KAzjkj/
         hERCZetGQ86HuslVb/jjMwokhNBXXojXRCIbEeP86y0AO/MS65QQLZbhU90swGRTAbTU
         Gr4N8hl72+P+vMjKVN94//OBq2E92aRaiN1tlJDqdSWGeX5BNBGupltpFi6UlKj2NVON
         5A6za0U9IduaELLsRmLumAWcOAnl8g1MFxls6aNMdi6wu13gmDTjGFbJ30nTobg7zexC
         c70PgEJq7b8uNBGujljttXQTJMp8uKTw9l4hJ0qxng5ZGzmNX604L7CnemQVgdoalNtv
         Z9cw==
X-Gm-Message-State: AOAM531ZlzMsG4tZvzvt6uDJPGwjbGikZv/JEbCTvSL0vUR5GE9eP8T6
        8xkhOZGNmzcOWXWWEHB5IeCrnQ==
X-Google-Smtp-Source: ABdhPJw5zue4iKS/TQaJIGMwSZ6Y7iPPlhdZ+SImZzHszW1qfRZOjpR6siPostuHMy/5BnvEtua0aw==
X-Received: by 2002:a17:907:7e99:b0:6e0:2fed:9789 with SMTP id qb25-20020a1709077e9900b006e02fed9789mr13512644ejc.72.1649342004706;
        Thu, 07 Apr 2022 07:33:24 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id hs12-20020a1709073e8c00b006dfdfdac005sm7653567ejc.174.2022.04.07.07.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:33:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vineet Gupta <vgupta@kernel.org>, devicetree@vger.kernel.org,
        linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARC: dts: align SPI NOR node name with dtschema
Date:   Thu,  7 Apr 2022 16:33:22 +0200
Message-Id: <20220407143322.295696-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and SPI NOR dtschema expects "flash".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arc/boot/dts/hsdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index dcaa44e408ac..f48ba03e9b5e 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -275,7 +275,7 @@ spi0: spi@20000 {
 			cs-gpios = <&creg_gpio 0 GPIO_ACTIVE_LOW>,
 				   <&creg_gpio 1 GPIO_ACTIVE_LOW>;
 
-			spi-flash@0 {
+			flash@0 {
 				compatible = "sst26wf016b", "jedec,spi-nor";
 				reg = <0>;
 				#address-cells = <1>;
-- 
2.32.0

