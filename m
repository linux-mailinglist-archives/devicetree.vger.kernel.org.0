Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC1A6F6E75
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 16:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbjEDO7O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 10:59:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbjEDO7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 10:59:05 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D367240CF
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 07:58:41 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-b9a7e65b34aso1086435276.0
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 07:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1683212299; x=1685804299;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=kh+X7l0wnMDvF/TGkOMQP9LlIOwSn6D59gdDRBtO04w=;
        b=upwj98xDSG+z3ZBTgmRf8JN4ctdhrE45ySX+bj2bF5e3geD1n0mXpnLvXXhUV1x/qS
         zdbY63BZlopO7XRlrJMsa4KiHebcz2SDaUEVIH2+MA821sARPBGoyAWwNDoLuysb6mXv
         POglCapWgsgi4/bkVKxs/FTjhDvdMlN66veGXP3Ky2AmxPfBQSlnM9hb062vlgFPSzel
         yaQLETIYln/oMt8Qley1yoq6VBzsxAnzbM9E+7QZcroJfmoM1VF2sDetNnnPwFBTvUgV
         OUtqrESKS2fF6FmBfwvCzm4aJBiGMCnC8IO5Su7vmKc5vBBedfeiHiSnyQ+mXAsPVlFs
         pAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683212299; x=1685804299;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kh+X7l0wnMDvF/TGkOMQP9LlIOwSn6D59gdDRBtO04w=;
        b=JferIaj1zh87A6n6zMVb4G18jZ9Z/0DNGPudnDcAssv8rvNQyqYBmK7k8DrFVX/CJn
         GGdZF1hOYdyrmuj/dvSI17S8TGXrB2TBH55HLJxSCTMv6EtztOi9yamD383tkK1NTVHc
         JERuttR3kKkVc455wNVPL8dz2J6bxmEnmSXHfpVTDiD2FZGBbaxkwffJP9JDCyc17Rd/
         BF1BMw6if9aAmrUdsaqhvDDe/PchK9IGJWbq/jKf3VPA/VaWSjrs7VeU7mMiUSgtNfcy
         bx47k4P1a1bOBKPKt1Wq6rjSoXl2iUL2tViGcemFzfV4JZBLZnODzTrlJoTFCJYMqgbW
         zZNw==
X-Gm-Message-State: AC+VfDwm8Wx8BoB0/IeEKxUApr8jEAMbqbIJNernOzteHZ8dReL7CYp1
        fjUBBe4U7E3sF9hDCoRO7q88aqJX9xlm9w==
X-Google-Smtp-Source: ACHHUZ4D2gYAFsxXFCmtvqigfxelkb2cjwMmRyseoshKKOGQB9IOcVCtGTEAwa39qcYpu7jOIFsPZcmxe64apg==
X-Received: from joychakr.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:6ea])
 (user=joychakr job=sendgmr) by 2002:a5b:cc3:0:b0:b9f:14a5:b3b5 with SMTP id
 e3-20020a5b0cc3000000b00b9f14a5b3b5mr68776ybr.6.1683212299226; Thu, 04 May
 2023 07:58:19 -0700 (PDT)
Date:   Thu,  4 May 2023 14:57:34 +0000
In-Reply-To: <20230504145737.286444-1-joychakr@google.com>
Mime-Version: 1.0
References: <20230504145737.286444-1-joychakr@google.com>
X-Mailer: git-send-email 2.40.1.495.gc816e09b53d-goog
Message-ID: <20230504145737.286444-5-joychakr@google.com>
Subject: [PATCH 4/7] dmaengine: pl330: Change unused arg "len" from get_burst_len()
From:   Joy Chakraborty <joychakr@google.com>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
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

Remove unused length argument from get_burst_len() and add burst size as
an argument to allow usage of this function in other places as source and
destination burst sizes are handled separately.

Signed-off-by: Joy Chakraborty <joychakr@google.com>
---
 drivers/dma/pl330.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 746da0bbea92..e5e610c91f18 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -2660,8 +2660,7 @@ __pl330_prep_dma_memcpy(struct dma_pl330_chan *pch, dma_addr_t dst,
 	return desc;
 }
 
-/* Call after fixing burst size */
-static inline int get_burst_len(struct dma_pl330_desc *desc, size_t len)
+static inline int get_burst_len(struct dma_pl330_desc *desc, unsigned int brst_size)
 {
 	struct dma_pl330_chan *pch = desc->pchan;
 	struct pl330_dmac *pl330 = pch->dmac;
@@ -2669,7 +2668,7 @@ static inline int get_burst_len(struct dma_pl330_desc *desc, size_t len)
 
 	burst_len = pl330->pcfg.data_bus_width / 8;
 	burst_len *= pl330->pcfg.data_buf_dep / pl330->pcfg.num_chan;
-	burst_len >>= desc->rqcfg.src_brst_size;
+	burst_len >>= brst_size;
 
 	/* src/dst_burst_len can't be more than 16 */
 	if (burst_len > PL330_MAX_BURST)
@@ -2805,7 +2804,7 @@ pl330_prep_dma_memcpy(struct dma_chan *chan, dma_addr_t dst,
 		burst /= 2;
 
 	desc->rqcfg.src_brst_size = __ffs(burst);
-	desc->rqcfg.src_brst_len = get_burst_len(desc, len);
+	desc->rqcfg.src_brst_len = get_burst_len(desc, desc->rqcfg.src_brst_size);
 	/*
 	 * If burst size is smaller than bus width then make sure we only
 	 * transfer one at a time to avoid a burst stradling an MFIFO entry.
-- 
2.40.1.495.gc816e09b53d-goog

