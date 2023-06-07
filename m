Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58C1C725985
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 11:08:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239596AbjFGJIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 05:08:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234352AbjFGJHf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 05:07:35 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0C2526AA
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 02:07:00 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-256712e2be3so6110473a91.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 02:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686128820; x=1688720820;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TTpdalqtCpBT/NwoTNyl6O7DvunXs5YAm2ongGgRBJw=;
        b=DXDkfPevfwjc0edifXxFdNpLngA5Bsitn9gV3nuP9WLIqA55+9us1u+CqDkdx0fuem
         K+4yKUgwQ9SzzpcjdRg4prVxZ8TmXOzk4+Yg1tCx4M+BO6NeWfpbmpoK8zN3Tro1Bkp5
         nxNC3hB4Aj/9tO90wJqjTqYvg8YWpoNClAiR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686128820; x=1688720820;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TTpdalqtCpBT/NwoTNyl6O7DvunXs5YAm2ongGgRBJw=;
        b=Kp/JdkkxITxoFv2KycRoQV3d+hcX1D8uAGrZ37Cx4+54OxPhtL4KvzoqDag/35++Ju
         nsNA4yrVvhOvPHR0wjiuSXg865B96F2/e4Gbwnoyer0EaAvvTuPritHVt8W7lXNYs70R
         zldpySg682zIBO23y3OxnPCU2MFNb18MDl4bXof/w74KQaRnulNxprEyG+g6VxUr8VcN
         YjfTOGS6omdQ5hl0IEB0gUIpGmoXy66dX3/22dA5yhISyNiB59e1UsJSgwnENp2YGW6c
         pk3jLxeCtHi8T+A2DPTBabSJZY+Az2+ypntFiDE94L3o6Oi2otgRVuDKv13siAHlrAsB
         bOnw==
X-Gm-Message-State: AC+VfDzwZ4e5D1+EtjErfqjSifE3r+FvUxo07Fbc/3kMugrFJGGsGimj
        qsMCln/bP2DbloTy80LrcR5j5A==
X-Google-Smtp-Source: ACHHUZ6VZYacMCDoBxnVNPrIRYQZUOXjx7NZRAus4oWzskwTQViwej4z93EXTX5fHBxnAHcCeorohg==
X-Received: by 2002:a17:90a:30c:b0:259:476:b318 with SMTP id 12-20020a17090a030c00b002590476b318mr4542787pje.2.1686128820332;
        Wed, 07 Jun 2023 02:07:00 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:443b:29bb:b677:185d])
        by smtp.gmail.com with ESMTPSA id b38-20020a631b66000000b0051eff0a70d7sm8505732pgm.94.2023.06.07.02.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 02:06:59 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 0/4] arm64: dts: mediatek: mt8186: More DVFS nodes
Date:   Wed,  7 Jun 2023 17:06:48 +0800
Message-ID: <20230607090653.2468317-1-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.rc0.172.g3f132b7071-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This adds more of the DVFS stuff at the SoC .dtsi level. This includes
the CCI and GPU.

Please have a look and merge for this cycle if possible.

On another note, I'm still cleaning up the MT6366 regulator's binding.
We shouldn't upstream the boards until the PMIC is ready.

ChenYu

Chen-Yu Tsai (4):
  arm64: dts: mediatek: mt8186: Add CCI node and CCI OPP table
  arm64: dts: mediatek: mt8186: Wire up CPU frequency/voltage scaling
  arm64: dts: mediatek: mt8186: Add GPU speed bin NVMEM cells
  arm64: dts: mediatek: mt8186: Wire up GPU voltage/frequency scaling

 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 538 ++++++++++++++++++++++-
 1 file changed, 537 insertions(+), 1 deletion(-)

-- 
2.41.0.rc0.172.g3f132b7071-goog

