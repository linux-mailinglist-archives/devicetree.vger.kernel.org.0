Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7183760B1B1
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 18:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232035AbiJXQd0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 12:33:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232336AbiJXQcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 12:32:54 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7C6F767A
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:19:49 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v11so6786539wmd.1
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=090t3LiJON2kk6iASQiAtMNlpPlevpv/5QY2UHRV3k4=;
        b=TrbydOn6+MlfdB5ueUhejKJ9fTvRqb782d4b92UrYIPUs5JX+T6gXlwETkqdcT04z+
         lQDQGXaktpTuqB82Es9pcd+7aCm2DqpVAL6ev2iO6x2xMe/QP1NeYdcKgSXg4I8d+bJX
         Log9hOn+sQyj0vqF3svhKBigeHo6ttbILwPvozXvYXGaQ9s6v2eJviF1zQKpG3QN/qqH
         PcGagBXHgDSEyxyyq5E3dUGxmPkHU0uEf5vGIPECblwN9cDHWWCt6CEoOfNX8rrN/3Ew
         6FAprfeGHqpUgY3fg+FAL2XmMApIHodyL5Q1RZjlGnndmgeRBs9PCd2aFkOatfxTkgqM
         M7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=090t3LiJON2kk6iASQiAtMNlpPlevpv/5QY2UHRV3k4=;
        b=zmOX7LHI94KjmJv8fvSwstR6uL9w0leBSS2b7ouo1KtdZ+03r78ZwtLitTxTmKUs/6
         a0iBecBp8/dR0u1RdQDQLxMmqOABtQVHt08YDEssZSkEF3oLNzrOlKjnXDDYx8J7NPOd
         kbMutW3h7h2fJYf7eIs4/hF/2yHXtZD6Nk1FvwRLg8zxoqhDxZ3icj6XD/gukcYtrtjP
         jNWpOIzhIX3gxkOZ/iRPWhfzonLHop+aTnWLXVd2QlwEQhUukxQrhRkIkaQ2k7gX97pu
         tKdHz4nGLN51VCkL0WJRhNSLFPknEIK5auoyYskK1Bb7RaJXF3/ORiy4CLfaqTSltugW
         gITg==
X-Gm-Message-State: ACrzQf0KoeT0ZZ7yV0QVYUV+bM0NklRPwj8ebhORgRpwaldhZdX4vPHV
        DFiz+x1ZXt0y1neGa//2Vv4jFZWZT/TdqbO2
X-Google-Smtp-Source: AMsMyM4z23bQnMwaktqgGV/n/irkd+JIobu7O/lGuCRh5Y+TL+jewkig0EBq1SOJq03bdUMnLIE81A==
X-Received: by 2002:a05:600c:34c5:b0:3c7:b52:3ad3 with SMTP id d5-20020a05600c34c500b003c70b523ad3mr16000432wmq.88.1666617368473;
        Mon, 24 Oct 2022 06:16:08 -0700 (PDT)
Received: from fadwachiby.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id l24-20020a056000023800b00236627c078esm6322307wrz.110.2022.10.24.06.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 06:16:07 -0700 (PDT)
From:   Fadwa CHIBY <fchiby@baylibre.com>
X-Google-Original-From: Fadwa CHIBY
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong . Tao" <zhiyong.tao@mediatek.com>
Cc:     Fadwa CHIBY <fchiby@baylibre.com>, Sen Chu <sen.chu@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/3] mediatek: pwrap: Add mt8365 pwrap support
Date:   Mon, 24 Oct 2022 15:15:40 +0200
Message-Id: <20221024131544.31219-1-fchiby@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fadwa CHIBY <fchiby@baylibre.com>

Hello,

MT8365 requires an extra 2 clocks to be enabled to behave correctly.
This series contains patches adding the support of mt8365 pwrap.

Changes in v2 :
- Rebase on top of linux-next/master
- Link to v1 "https://lore.kernel.org/linux-arm-kernel/20220530135522.762560-1-fparent@baylibre.com/"

Regards,
Fadwa CHIBY

Fabien Parent (3):
  dt-bindings: soc: mediatek: pwrap: add MT8365 SoC bindings
  soc: mediatek: pwrap: add support for sys & tmr clocks
  soc: mediatek: pwrap: add mt8365 SoC support

 .../bindings/soc/mediatek/pwrap.txt           |   3 +
 drivers/soc/mediatek/mtk-pmic-wrap.c          | 114 +++++++++++++++++-
 2 files changed, 113 insertions(+), 4 deletions(-)

-- 
2.25.1

