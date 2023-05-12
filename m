Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C7D3700A06
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 16:15:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241468AbjELOPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 10:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241274AbjELOPF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 10:15:05 -0400
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11E0A268
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 07:15:02 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-560def4d06dso60599027b3.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 07:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1683900902; x=1686492902;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pngyL4TIzS1CvtXscbyCzirkbVA5epZcre6BdDz2Cu0=;
        b=qhhVHD5EUz8QEdzS65D+tFOdCO3mGVQqdDkwiIO41/w6GP53SZC5Cgdd/8ySrnMp9u
         RMGjvWHNAYjRJoOGnOCu7tBUxru18cegsPab6aakHul2rIgQSVG+sL7xCf8RkYI8wsGM
         ZveQG3IqUWPBbEqGZTHTJ0V1Z0V6mkXuLY+A/XpYb7Hy8VuK5tj+aHKtxkt2FlafmXxG
         sazdsky50gbH7dz7PVWT7RJ9bHa6IFEGbuJYs6Il88+cuFUImCEhjQ9iVi10z22xxXTf
         rCEWSc9EHlXZCPiMbafqZhewdr1b5P/lzdtkS09oTCLFGyenu6maTqlSiiYPLx9lXoxY
         +2Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683900902; x=1686492902;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pngyL4TIzS1CvtXscbyCzirkbVA5epZcre6BdDz2Cu0=;
        b=PPk7RXX4kgmdrzqlaLjR40xd7qB+bujM9lYneigTe01rq33iUpq1olwSBA24GIVd7A
         Tthe3MSXDVElf7yzrcE5jt4VMEVJoeLVIOTr0WMmpIwDi8MtebS2EFXz/eZmiEm69DXa
         Ga5izyXTqkt//3mkAL5bIB85K4SS5KIqX+Qb3pnLZgIg2smHB01R1AVvy+RXY0B/mGZ3
         N/11IXgh4vCAcvHRow+X/8t3OUZYvLuB1YIXfttIbZAvEwMCLB2RxCrM6PKrKiFV5Wez
         ysOZ1Tl0ZGLFzSpmUD0T+5GqZ1iUOeu0FuDUXboPuGMJsdNT/Y6jauSdRecwUUD+53pr
         L6ig==
X-Gm-Message-State: AC+VfDxA3zrHzNJ0/83kSSFKTonXZQvEb8U2JzeAdc0GjhhSaIfOagg7
        t9pYXBUEx9Ts6aAg7ch7kSgn9aYvSPbxWg==
X-Google-Smtp-Source: ACHHUZ6bQ6Sk65PCTKorMoKm7MPeI89i930xkKy/fV7c9iMCGlP2zcfse3/J6cp5XexLBpEttzeyCRbChaym9g==
X-Received: from joychakr.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:6ea])
 (user=joychakr job=sendgmr) by 2002:a81:cf01:0:b0:55d:9f32:6a12 with SMTP id
 u1-20020a81cf01000000b0055d9f326a12mr15117610ywi.0.1683900902158; Fri, 12 May
 2023 07:15:02 -0700 (PDT)
Date:   Fri, 12 May 2023 14:14:39 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230512141445.2026660-1-joychakr@google.com>
Subject: [PATCH v2 0/6] dmaengine: pl330: Updates and logical changes for
 peripheral usecases
From:   Joy Chakraborty <joychakr@google.com>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, manugautam@google.com,
        danielmentz@google.com, sjadavani@google.com,
        Joy Chakraborty <joychakr@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series makes some initial minor and cosmetic changes:
    -Add variables and logic to handle separate source and destination
    AxSize and AxLen.
    -Use __ffs to calculate AxSize for consistency in the driver
    -Use switch-case in prep_slave_sg() for consistency
    -Change args get_burst_len() to remove redundant "len" and add
    burst_size so that it can be used in multiple places.

to majorly enable addition of 2 logical changes in the last 2 patches:
    -Allow transactions towards memory to use the maximum possible
    bus width (AxSize) during a memory to peripheral dma usage or
    vise-versa.
    -Add logic to copy left over data after executing bursts to
    the peripheral in singles instead of bursts.
---
V1->V2 Changes : Remove Quirk logic and update description texts.
---

Joy Chakraborty (6):
  dmaengine: pl330: Separate SRC and DST burst size and len
  dmaengine: pl330: Use FFS to calculate burst size
  dmaengine: pl330: Change if-else to switch-case for consistency
  dmaengine: pl330: Change unused arg "len" from get_burst_len()
  dmaengine: pl330: Optimize AxSize for peripheral usecases
  dmaengine: pl330: Use dma singles for peripheral _dregs

 drivers/dma/pl330.c | 223 ++++++++++++++++++++++++++++++++++++--------
 1 file changed, 185 insertions(+), 38 deletions(-)

-- 
2.40.1.606.ga4b1b128d6-goog

