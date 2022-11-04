Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6EB461909C
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 07:03:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbiKDGDO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 02:03:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiKDGDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 02:03:12 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB712117A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 23:03:11 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d24so3994329pls.4
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 23:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ny14B6KlAe56RF9kWIk6DLDgrchIrYGi8bnqimW6jNE=;
        b=WKD+m9Ui3aSvrITuTnmo9GmAmWwgR2N9XBdnz8qho3kqZsKmtHhiNoK60wzHy0Foln
         Q6e3woyi1S/zE2zh4ubE+AfWgTjqSljZXvoMi9tW7fvfjDjVtJGgnqSnP3XY0gVJhgYY
         ZRWYjUcK5cPJXSIsFqlXWx5X4M4w43diEkoPtZ37Xjb+OLXIbOP8Wewe3tmqlz4G+xpV
         wnyXfU3e1l53VZxPLP46UfTwfzmPiM14vk0wmRYPYnvmXlSaogpTdJn5U0cZmGPmTkPL
         gBJoCRE1yW1eImbBivPRfVcwkKWlGHegybRiOpPOdGQK+PtX4iiC1XWPQ2F8b/xVGjMN
         zHAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ny14B6KlAe56RF9kWIk6DLDgrchIrYGi8bnqimW6jNE=;
        b=axUlS9ajgyxulVuc825iCIHVnQBA4Q1N9xKvT0ioxxizl/Hth8DCj/J9FWbg4cPKux
         G9YHiGFFxewmZfiDmdweDaM4FCnHoaD2sIdribt66UHNZgetX1UCYqD+EJj43bVSp6r0
         HFx3rab1T3Mqu7zx4w292rUipNsh/TIgj3qnqXF8XcVAQeTtgzUWGVv+t62QkyOFNZwk
         pgob+wcQevatuRKCsJljQK/q2oR7XhbhgV3nrENZGCYcun6k8ux8EYqnOa7VwZjqsORX
         am/bMqKvCgrke7dHWWgso50KPuf8I14wy7bX6lcOwl+IGvzaZUG1Oz17KD+mc38FdUcq
         WyYA==
X-Gm-Message-State: ACrzQf1hXs3M1AqPBeqDwPQcAkj2Ib8vxvZK1VE3b5QDUi6ZXzJhQwx8
        r/YNxFC+gfWzRZv6kZ3tRyZ+0A==
X-Google-Smtp-Source: AMsMyM4gxgvR0YXa+wNLREj3kBlJSR2N3mfUaU1dcmn+RNqQBB8qbDaOae0cq300NfOmTfUyaYk98w==
X-Received: by 2002:a17:902:ce0f:b0:187:640:42f with SMTP id k15-20020a170902ce0f00b001870640042fmr32613868plg.115.1667541791209;
        Thu, 03 Nov 2022 23:03:11 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id f15-20020a170902684f00b00186bc66d2cbsm1727180pln.73.2022.11.03.23.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 23:03:10 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, andrew@lunn.ch, kuba@kernel.org,
        michal.simek@xilinx.com, radhey.shyam.pandey@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        pabeni@redhat.com, edumazet@google.com, andy.chiu@sifive.com,
        greentime.hu@sifive.com
Subject: [PATCH v3 net-next 0/3] net: axienet: Use a DT property to configure frequency of the MDIO bus
Date:   Fri,  4 Nov 2022 14:03:02 +0800
Message-Id: <20221104060305.1025215-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some FPGA platforms have to set frequency of the MDIO bus lower than 2.5
MHz. Thus, we use a DT property, which is "clock-frequency", to work
with it at boot time. The default 2.5 MHz would be set if the property
is not pressent. Also, factor out mdio enable/disable functions due to
the api change since 253761a0e61b7.

Changelog:
--- v3 ---
1. Fix coding style, and make probing of the driver fail if MDC overflow
--- v2 ---
1. Use clock-frequency, as defined in mdio.yaml, to configure MDIO
   clock.
2. Only print out frequency if it is set to a non-standard value.
3. Reduce the scope of axienet_mdio_enable and remove
   axienet_mdio_disable because no one really uses it anymore.

Andy Chiu (3):
  net: axienet: Unexport and remove unused mdio functions
  net: axienet: set mdio clock according to bus-frequency
  dt-bindings: describe the support of "clock-frequency" in mdio

 .../bindings/net/xilinx_axienet.txt           |  2 +
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  2 -
 .../net/ethernet/xilinx/xilinx_axienet_mdio.c | 57 +++++++++++--------
 3 files changed, 34 insertions(+), 27 deletions(-)

-- 
2.36.0

