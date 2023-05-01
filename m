Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7804A6F3967
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 22:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232693AbjEAUwO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 16:52:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232625AbjEAUwN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 16:52:13 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C23771FC4
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 13:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682974286;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=MGG0ntCow/QlbibW6t17IUqC8Xi8ZkqGV/oovhxkl0U=;
        b=YvIuHWGPjxaDTy5KHeTYuJbxvqTZqcNJiLTjHc592no7Hj35nG4nbKYX5gh7WWlZrK1quY
        9iOOPs+WUyCc7Gf5TdDfCa6dJTGGFNLTwCenFTh+rjW2BC9runCxl6TbiFKoKwnNmFM7As
        1fVfo2GeBHJQuVTs8R8BzsmWEnrImHE=
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-179-yftmnDOoP9ethMecl4dIjw-1; Mon, 01 May 2023 16:51:25 -0400
X-MC-Unique: yftmnDOoP9ethMecl4dIjw-1
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-18b018b1036so747091fac.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 13:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682974284; x=1685566284;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MGG0ntCow/QlbibW6t17IUqC8Xi8ZkqGV/oovhxkl0U=;
        b=E4ImHy+44WLUQZJikGlm84bEdLWtTXh4u2KPIdHS9jCGAqG+MsiSOowZn8sgYWUFhl
         ls+jRWEk6S8EU1Qb72n/pVBhn5fZATzqYx5C5qgnAjjUCvX9ZtFj21AUNHE12nnoYEHp
         z8fDis/LywRMw10/oCaxxZfl7glEe24krP5rCLGwBRl1yTXp5uR3o8RGYZa+k7GEQYUr
         uXAasx5wvYV0z9X5mmoMhQ3ODzuJ2T87VasG/DX29pwisJfsq2YCF8j8pAH8zFh+Daeq
         Ds0EYk4M1rssJfSVDJFXAqjnKRQKxvFi4RshEmUINHzHP0Q/z/hO2XUUOG8cHHiIslOJ
         YL3g==
X-Gm-Message-State: AC+VfDyHvQtCflsXmh5FgwFtYcfRI5akNr56JKF+I/Obk/3x4PEpy/ZF
        Esw+9koivjRct3vrc6Xatd1vCM8rhHCpF3JwjVScWb29y1MSWwjQvzEcAwVPpXA7budkaA006Yj
        +VtWvua4U1UtlzS/qY4enLRkMxUw0KA==
X-Received: by 2002:a05:6870:5382:b0:177:c0e4:1bd2 with SMTP id h2-20020a056870538200b00177c0e41bd2mr5434446oan.52.1682974284729;
        Mon, 01 May 2023 13:51:24 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4xrt4fm/7NX8qu/7kFtrE4UnLCYzu/sTudSj3ERVNxEHC2BNrlTT3atPqynD+G8W2tFuHDzA==
X-Received: by 2002:a05:6870:5382:b0:177:c0e4:1bd2 with SMTP id h2-20020a056870538200b00177c0e41bd2mr5434437oan.52.1682974284479;
        Mon, 01 May 2023 13:51:24 -0700 (PDT)
Received: from halaney-x13s.attlocal.net ([2600:1700:1ff0:d0e0::22])
        by smtp.gmail.com with ESMTPSA id c10-20020a9d67ca000000b0069f153bb37asm12110130otn.62.2023.05.01.13.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 13:51:24 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v6 0/2] Add EMAC3 support for sa8540p-ride (devicetree bits)
Date:   Mon,  1 May 2023 15:51:03 -0500
Message-Id: <20230501205105.2518373-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a forward port / upstream refactor of code delivered
downstream by Qualcomm over at [0] to enable the DWMAC5 based
implementation called EMAC3 on the sa8540p-ride dev board.

From what I can tell with the board schematic in hand,
as well as the code delivered, the main changes needed are:

    1. A new address space layout for dwmac5/EMAC3 MTL/DMA regs
    2. A new programming sequence required for the EMAC3 base platforms

This series addresses the devicetree changes to support this
hardware bringup.

As requested[1], it has been split up by compile deps / maintainer tree.
The associated v4 of the netdev specific changes can be found at [2],
and is merged.

The clock patch from this series was picked up from v5, leaving just the
devicetree bits here.

Together, they result in the ethernet controller working for
both controllers on this platform.

References:
[0] https://git.codelinaro.org/clo/la/kernel/ark-5.14/-/commit/510235ad02d7f0df478146fb00d7a4ba74821b17
[1] https://lore.kernel.org/netdev/20230320202802.4e7dc54c@kernel.org/
[2] https://lore.kernel.org/netdev/20230411200409.455355-1-ahalaney@redhat.com/T/#t

Older versions:
v5: https://lore.kernel.org/linux-arm-msm/20230413191541.1073027-1-ahalaney@redhat.com/
v4: https://lore.kernel.org/netdev/20230411202009.460650-1-ahalaney@redhat.com/
v3: https://lore.kernel.org/netdev/20230331215804.783439-1-ahalaney@redhat.com/T/#m2f267485d215903494d9572507417793e600b2bf
v2: https://lore.kernel.org/netdev/20230320221617.236323-1-ahalaney@redhat.com/
v1: https://lore.kernel.org/netdev/20230313165620.128463-1-ahalaney@redhat.com/

Thanks,
Andrew

Andrew Halaney (2):
  arm64: dts: qcom: sc8280xp: Add ethernet nodes
  arm64: dts: qcom: sa8540p-ride: Add ethernet nodes

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 238 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi    |  60 ++++++
 2 files changed, 298 insertions(+)

-- 
2.40.0

