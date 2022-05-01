Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C50551676B
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 21:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353802AbiEATaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 15:30:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353832AbiEATaH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 15:30:07 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFCE82E9FD
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 12:26:38 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t6so17243591wra.4
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 12:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AwbBgF2BBmn2/d5GaBoLnqmBoCcWn7LCRN6pKIxnqBg=;
        b=5Tmp/7ZCksQfQfYzi1RBTW83DljZezcq0OcxLFdDEygvSFIlH+qCeZR2eKH7Vem1Qd
         Jm1an2hVugwVK8XRpETiqSvFEfKJG5518qrxStFhIhvz+PsJEvvwC1NbbRto2q4O6jF1
         1EvtFiBotHydVmKpUv/NYsOHm9rFl+2vtAHgkoR2Rcy2+uB3C9pk1UNeIQN9AzY+0s35
         foCr2ISHskiY1ff8Bj7BLsh8i8Q4JRXdabTaLA5ewAqKBe4xCuJFtZXTnBflwgmAiFHp
         fnhN4GN0UFhbSMwweTuibOnyQGagX5T9HoQ/pFRHFdGJjUmsCbYqg1lg9pSgSC5lOXza
         SMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AwbBgF2BBmn2/d5GaBoLnqmBoCcWn7LCRN6pKIxnqBg=;
        b=ToDCId7Gon4TaBBR9Px58BI5scYsoxg8n+vT8bXslWL+1aQZq1ybGesNPWhOsQj22Z
         zsrKgLJh6quoKaudLPCBH40mtMF3r5YsLyOsAFo+Bq5AGpKORLzyBDHiQ3tYbMlvznhj
         5+8uQ57RwedkE6K/MwtUwWW1vAD52tdHf2FiU4gVolCEoKPqFbs/YgOOPm4fTxp/qIDj
         nRT9fQVFqPk0bxdD3X7A/S3nylP2RlVxvJEyCGMVTQ4l0POrNHPslnSaS+OymQ4TSZl2
         17Jk9eCxZAnEMowQUPiwu5HjVv0lObtRQIXzh5HGzjea0NijGpqjxqathO8p3EyqKMjc
         e0PA==
X-Gm-Message-State: AOAM533UqVnkGob11nZQy3kudh3A5hb+w6seRIUoJ1+w+5zVIdPQqvcc
        6vY19Afg6/4k3yPEK97caFJiSw==
X-Google-Smtp-Source: ABdhPJyEezBHT102gjya0WaiBuQc9VkqGSxGDbobxFzp1NmbTTgUdU8zC5QFP8x+mu0WwhtpG5KvEA==
X-Received: by 2002:adf:f350:0:b0:20a:dfc8:f8bf with SMTP id e16-20020adff350000000b0020adfc8f8bfmr7181943wrp.377.1651433197294;
        Sun, 01 May 2022 12:26:37 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id i14-20020adfa50e000000b0020c5253d8c6sm6448105wrb.18.2022.05.01.12.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 12:26:36 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 7/8] dt-bindings: riscv: microchip: add polarberry compatible string
Date:   Sun,  1 May 2022 20:25:58 +0100
Message-Id: <20220501192557.2631936-8-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220501192557.2631936-1-mail@conchuod.ie>
References: <20220501192557.2631936-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add a binding for the Sundance Polarberry board.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/microchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/microchip.yaml b/Documentation/devicetree/bindings/riscv/microchip.yaml
index 7a1f883a39b5..3ac611689441 100644
--- a/Documentation/devicetree/bindings/riscv/microchip.yaml
+++ b/Documentation/devicetree/bindings/riscv/microchip.yaml
@@ -21,6 +21,7 @@ properties:
       - enum:
           - microchip,mpfs-icicle-kit
           - microchip,mpfs-icicle-reference-rtlv2203
+          - sundance,polarberry
       - const: microchip,mpfs
 
 
-- 
2.36.0

