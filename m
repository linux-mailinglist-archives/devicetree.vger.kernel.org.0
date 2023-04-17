Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D94C66E41AE
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:56:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230514AbjDQHz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbjDQHz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:55:57 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 526753A80
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:55:55 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2a8a77f2e6fso11265201fa.3
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681718153; x=1684310153;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=szDgWnNXTe804j/JNxSmhLFRIKCdtPV3/vRqisoeX9c=;
        b=LvVKMQo0ZcjqPQ6Gv9LgJOZBLKBUFlPI1lR+IDNZ7qFT83T2c32tlELFoqukViJReg
         h40mUna8ViUXKrdPetxT4x7KTK6OKkQkH7O/KwVO20GXvIrVfHySylcaHt3Qt9X6jDb3
         CRWtVwGHiPFi6PLqAFasvlZzARJUcPChnNXOioktG4jjJSVIpwClTcVAMLQuvjf4Qio6
         vMUgTx1o9SThe2DJMNGAY7CwX0MGB6KQ/tualpZEjVv5RxtEW2Gh/1MWQCGRW3KOnv/y
         J+4awPWN9fWOIVZB/iYUpeWp6nLe5F4ccdUG9dfRouxCXY5cvpfGd2gPexBvrk9wRZls
         d/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681718153; x=1684310153;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=szDgWnNXTe804j/JNxSmhLFRIKCdtPV3/vRqisoeX9c=;
        b=VA3sNC4ns19JUFcFHnYV+XQrKNn3aMZU/90GWiHuvH7IAVv2ifNbVnH8N428It5hAU
         1n8I20SOUVbxHg67d6SR+HjUa0dDE4vp6CDeS/1IVI3dQjz3OcHjDwxCNo3qEFMcszCW
         jYCBpii9QSS/fUGYTEM70zcV8C19iLDzJhrytpWZcmLUSW1oVEkuIRSjjjD9ybxkram7
         K0UAeB6Axo4HtD229teor+47+WajgTTb/VmX/rhIeecKsoEfDF5pM7ABFD48dnIXppYl
         IE4DSPqyAg+i6biISdNqmbkg3AU1ZArVPOlA0kWjoZSTafw83T4CXMKwmRyTw9kWmR4N
         qFDg==
X-Gm-Message-State: AAQBX9dkH/2OORlvxffgWVWDYcp26aOcl7QWEJEk4oD0HqHvNxT6Ch+v
        hd5QySS3/9It3yjcBpFR0uakNCwktVNylktwqYk=
X-Google-Smtp-Source: AKy350bxKxiJ+X3xWZwdd/5NcA77GB/WTpRM81E4cNVaHfUBam4rBOX/R+P6WLrzmiY7HUNuEApunQ==
X-Received: by 2002:ac2:5a08:0:b0:4b5:649a:9105 with SMTP id q8-20020ac25a08000000b004b5649a9105mr1659136lfn.65.1681718153313;
        Mon, 17 Apr 2023 00:55:53 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id p2-20020a19f002000000b004eb274b3a43sm1952547lfc.134.2023.04.17.00.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 00:55:52 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/7] DMA40 SRAM refactoring and cleanup
Date:   Mon, 17 Apr 2023 09:55:45 +0200
Message-Id: <20230417-ux500-dma40-cleanup-v1-0-b26324956e47@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIL7PGQC/x2NQQqDMBAAvyJ77sLGRlr7ldLDJtnUhZpKUosg/
 t3ocRiGWaFIVinwaFbI8tei31TBXBrwA6e3oIbK0FJ7JWtuOC8dEYaRLaH/CKd5wig23kPvTO8
 7qKXjIugyJz8c7cjlJ/kQU5aoy7l7vrZtB0KRJRp+AAAA
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I started out by augmenting the STE DMA40 driver to get
its LCPA SRAM memory from a proper SRAM handle in the
device tree instead of as a reg cell, and then I saw
that the driver was in a bit of sad state so I did a bit
of cleanups on top.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (7):
      dt-bindings: dma: dma40: Prefer to pass sram through phandle
      dmaengine: ste_dma40: Get LCPA SRAM from SRAM node
      dmaengine: ste_dma40: Add dev helper variable
      dmaengine: ste_dma40: Remove platform data
      dmaengine: ste_dma40: Pass dev to OF function
      dmaengine: ste_dma40: Use managed resources
      dmaengine: ste_dma40: Return error codes properly

 .../devicetree/bindings/dma/stericsson,dma40.yaml  |  35 ++-
 drivers/dma/Kconfig                                |   1 +
 drivers/dma/ste_dma40.c                            | 336 +++++++++------------
 .../dma-ste-dma40.h => drivers/dma/ste_dma40.h     | 101 +------
 drivers/dma/ste_dma40_ll.c                         |   3 +-
 5 files changed, 182 insertions(+), 294 deletions(-)
---
base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
change-id: 20230417-ux500-dma40-cleanup-fe4f8d9b19c5

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

