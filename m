Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E9F870F75F
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 15:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234191AbjEXNLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 09:11:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235961AbjEXNK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 09:10:59 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CF9BB0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:43 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6af87f54860so37003a34.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684933842; x=1687525842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CplaXtyuRGcpd2sqcudKgjD6yYCXAG3uXLTcyiq6NQA=;
        b=O7xWyDdqV+ZVdGzYqL/4H+YloFVgpTWjWHXhtxlblsFPppN5TSzceYrxGDlqofLECE
         JYBxt1HgyEr3N6LeGR1NFnOk3sCzrkoJFzQwoXiSpiG5FJsn0fpDw+wivvYWY40eBVMI
         dR9nm0w/4AbNoK1M0B6oYE+tEG8MulZ/vNfQtotl601vuSGmwTjDY+drtK7Z0yGknPHM
         l5YlUoBTIJStY2BFnOq11YNTzQ29LjP/gt3yilA1jpfx0jfkG1fn+94TRKKsP9AOkmlf
         M36SnW2oS7jTgfxsWobrnG1e97qbvxgjox48lFUabHHYC1qfwv6Qsn/NdaUN2XfbhagQ
         VPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684933842; x=1687525842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CplaXtyuRGcpd2sqcudKgjD6yYCXAG3uXLTcyiq6NQA=;
        b=h3TXYLdeOqDKnucPPtcISpJRYZzn8WS/axk5KT+diuvAWRu8UjLGdWXorLZHzTd1sQ
         OSU8NYhCD41UVQ4EM6vEJpuxLFVRdXzRbXfO+zSulLjFl/G4bx8fHXyJ929Yh+rkYtAy
         T7SoyLJBTxuI3vKU5DNxhre76/kWxyfou5C4X81ENJScBb8yXYNFFzTpRm4QsQuU4o6M
         g7zxyyx656RksVH6QkLg6CunjWgLj0r6AtksArR4FrMynf4fDrSwrZ+WDUDdjV/1gGUS
         2Fksf1zYodzKAC7WYf2YSe0s871w2NXPDx5bu0YAfAmNp2Nb9DHul/XiBDxPkqVz9klZ
         Aw3Q==
X-Gm-Message-State: AC+VfDygu0LtZhtr5HWGXrXJ4Ch8XIjOVn+el+OwudTxBI0REDb0S1RN
        IR61lK9QUgMSiY2O1GKGrwE=
X-Google-Smtp-Source: ACHHUZ7bBKmafuwP836TV3JeWIe7Gc/RnNUtwRh/gKE8KwQFsuKGajDyl9iunjMOs7jgwrn93bafdw==
X-Received: by 2002:a05:6830:630b:b0:6aa:eec1:5372 with SMTP id cg11-20020a056830630b00b006aaeec15372mr10020479otb.1.1684933842441;
        Wed, 24 May 2023 06:10:42 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id v21-20020a05683011d500b006ab1830d483sm3234546otq.77.2023.05.24.06.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 06:10:41 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 4/4] ARM: dts: imx7d-smegw01: Pass Ethernet aliases
Date:   Wed, 24 May 2023 10:10:08 -0300
Message-Id: <20230524131008.161193-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230524131008.161193-1-festevam@gmail.com>
References: <20230524131008.161193-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Pass Ethernet aliases, so that the bootloader can properly pass MAC address
to Linux.

This fixes the problem of getting a random MAC address for eth1 in Linux.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-smegw01.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-smegw01.dts b/arch/arm/boot/dts/imx7d-smegw01.dts
index 7ec830e4ee05..85b97b5f64e7 100644
--- a/arch/arm/boot/dts/imx7d-smegw01.dts
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -13,6 +13,8 @@ / {
 	compatible = "storopack,imx7d-smegw01", "fsl,imx7d";
 
 	aliases {
+		ethernet0 = &fec1;
+		ethernet1 = &fec2;
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc3;
 		mmc2 = &usdhc2;
-- 
2.34.1

