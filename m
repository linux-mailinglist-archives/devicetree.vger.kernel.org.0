Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8FD629ED5
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 17:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238516AbiKOQUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 11:20:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238596AbiKOQTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 11:19:50 -0500
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 377502018C
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:19:49 -0800 (PST)
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound45-84.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 15 Nov 2022 16:19:46 +0000
Received: by mail-pf1-f199.google.com with SMTP id x8-20020aa79568000000b0056dd717e051so8030856pfq.11
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/AKk/iHxlRyPsei0kf0ul5R2X5r1GkRebYS9OplFI6w=;
        b=R/Ch57dNpGhLRTiFS/EDyZXyBSMFfT/2wuO4XuDBUMj61Zk0a9fcYJYOtUeC02otPm
         LEBoaK+dbqptFwrnytjx12SG0DdyFJQEKFpiiH932OEFd3wVvlOfs8lD03Tw0rhjXOiz
         Ps6DLRwQsaboHtWg5qhnYLpHBuunTQZRqg5IA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/AKk/iHxlRyPsei0kf0ul5R2X5r1GkRebYS9OplFI6w=;
        b=wY91FgZExmUZRTyKnQI6jadvuTfXVHJAnsMaD4wyVw6D/JbHj6tIuExY6T3KELe9ae
         rS2JTJ0rwtNN3L95+71oqXp9DnPtQWkr00l/XKbQk8MJu9dsmceOV3Bbc+07D1hm1KZ5
         vSq2siDs7njezXpF+Mx6/io1Mbc5JXeNxdMJ5YEbhByFFbfCMVyJ8cL0rwlKcz064xEi
         wWPKCMtKt5sRQNdxwAOUDQtlhE6+N6N0DC5s3kYQ2U38MQsECfq4HFo5uVmEydor+Htj
         6eyZ6Yxo8YyYYYkfskUM9aFEGmctX/3ow6jRMjlcgUNNR2msqBXw18jY/1AjbkK+WDL/
         CDGw==
X-Gm-Message-State: ANoB5pkB8NM5Ws7S6vKNqzxTD1mHTs1R9StEYeDtTucWWp3YuvWZ8Cmh
        iRR4f02fDKxvjZpTVMYNixWatOpVnEwgqmLMrfAj43+NFccgT8gljTd+WM3nLKP0GyLdmwhsKft
        UworWKF7bs2cMYmkBrJ1Ei6lLM8cU5Rhca9g+9nqct1qUSqRjzFsMvwWkJg==
X-Received: by 2002:a63:550b:0:b0:46a:f665:ed96 with SMTP id j11-20020a63550b000000b0046af665ed96mr16442928pgb.486.1668527437371;
        Tue, 15 Nov 2022 07:50:37 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7nanjVbNOu0c9YMBYkuDrnfggk1H1OIyW4wrG8UFQdPwfUgwaY+3oyRu/o2ccWOpZ7VzuQYA==
X-Received: by 2002:a63:550b:0:b0:46a:f665:ed96 with SMTP id j11-20020a63550b000000b0046af665ed96mr16442903pgb.486.1668527437033;
        Tue, 15 Nov 2022 07:50:37 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090264c100b00178b6ccc8a0sm10018478pli.51.2022.11.15.07.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 07:50:36 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 0/3] AM68 SK: Add initial support
Date:   Tue, 15 Nov 2022 21:18:29 +0530
Message-Id: <20221115154832.19759-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1668529186-311604-5610-3262-1
X-BESS-VER: 2019.1_20221114.2026
X-BESS-Apparent-Source-IP: 209.85.210.199
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244168 [from 
        cloudscan14-111.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Hi,
This series of patches add support for AM68 Starter kit(SK). AM68 SK
is a low cost, small form factor board designed for TI’s J721S2/AM68 SoC.

Refer below link to J721S2/AM68 Technical Reference Manual for further details: 
http://www.ti.com/lit/pdf/spruj28

Design files can be referrred from https://www.ti.com/lit/zip/SPRR463

Changes in  V3:
Addressed all the review comments and the changes are captured in seperate patches.
 - Removed the unused nodes that are disabled by default.
 - Updated the gpio regulator node: gpio-regulator-tlv to "regulator-tlv".

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-1-sinthu.raja@ti.com/t/#mbe43b02221733bb6eb06b203359e90ec08406afc
V2: https://lore.kernel.org/lkml/20221107123852.8063-1-sinthu.raja@ti.com/

Sinthu Raja (3):
  dt-bindings: arm: ti: Add binding for AM68 SK
  arm64: dts: ti: Add initial support for AM68 SK System on Module
  arm64: dts: ti: k3-am68-sk: Add support for AM68 SK base board

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 335 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi    |  31 ++
 4 files changed, 369 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

-- 
2.36.1

