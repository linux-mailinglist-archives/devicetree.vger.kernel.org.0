Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2BD5EBCBF
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 10:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231643AbiI0IH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 04:07:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbiI0IHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 04:07:31 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 848AD115A51
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 01:01:58 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id d12-20020a05600c3acc00b003b4c12e47f3so4959880wms.4
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 01:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=wPGAhdd0/cVSzg/VD0f276D5LseQyNwXzj19lsEfYlU=;
        b=0vxLZEGja3Z/vABzdvDHqbhHIpXhhJzdAnPiiYDz7Evr0FarEc6VZtXmUGNDadiRlF
         Pd5rc+dt+crkZUBayKcBU6gLWM7C5vJrVYSMzYpaFDengcOQOWJnyDK+2Qp+nRHl800L
         lrlJOQ9Ey4hzdsmiMaLY370jgWZOHhVhwDlXttSQUKIMRr0VhK/W8d6tzSQ4cWK/e9P6
         rZfaHm8+PhuEDEYWpHOr3QGdx+g4rvF7+OEDAUdsmh64i9ZcAAFw3RqCVAMaPJbiXRZD
         NvUZgoLTYLTKC2Zrk5Erx8Nr3OmVyFrN/+uQRSTAq0t4srB0sG6XfjDo6VLQK3ah2dqn
         AZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=wPGAhdd0/cVSzg/VD0f276D5LseQyNwXzj19lsEfYlU=;
        b=ftn5NyH3htwaIOIsY0vHPSx0fqSVjENmz93NaDutYJRLQ06IANUzKZI3PlHgWxlx0a
         smy4SIDyOGt+lopsXQldn9tiHmBcBKPqAPTBDemD7jp0JwCaq+Q3mtN4ljLsPvBiT7ZG
         CpVDWEjIdrHjCA0tcp8bCfxmQ5nx0IVjbCGUDfBL/lWJQLqNxo2FNQQqvcz9q1/H+fWr
         bqovRG2Dz16LRGGNJIzRfMYf3YWxcb5EyRnUU8sLOlvycD/MG+udX2JM6Gaisr+rcmTz
         zeNITsteKus0FAv95x4YuB1EK/iq3kV3F7rJFKeMAo3zAaaqSwnVy/cO5nrlzouL70+h
         4lNA==
X-Gm-Message-State: ACrzQf31jLMC6AuhvrxngHJDruddxE70IPcRFds/HsRq2a4EuPK1HoJR
        WUPWj9FeSwgSTnIHg6uQJQapEg==
X-Google-Smtp-Source: AMsMyM5z40kZ9WpI9Hrvz83bGhzPKvE5thgsJk4hmPydLZ463Byz6OMkecVmVm1d/vWNJef245sRew==
X-Received: by 2002:a05:600c:410d:b0:3b4:9454:f894 with SMTP id j13-20020a05600c410d00b003b49454f894mr1567838wmi.111.1664265669754;
        Tue, 27 Sep 2022 01:01:09 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:09 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 3/5] MAINTAINERS: add new dt-binding doc to the right entry
Date:   Tue, 27 Sep 2022 08:00:46 +0000
Message-Id: <20220927080048.3151911-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip crypto driver have a new file to be added.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fffc36ee3c99..2d9c95ae44e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17712,6 +17712,7 @@ M:	Corentin Labbe <clabbe@baylibre.com>
 L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 F:	drivers/crypto/rockchip/
 
 ROCKCHIP I2S TDM DRIVER
-- 
2.35.1

