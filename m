Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE435518AB1
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 19:05:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240013AbiECRIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 13:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240012AbiECRIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 13:08:30 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F0B3A733
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 10:04:57 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id y21so20595314edo.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 10:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Llux1569NzUGvGM3wc1L0NoJ1TWRs67+M9td/EKgsS8=;
        b=LBIZ1Il6R7kqdkfddyTa4l2Hq34loocXw88q2ozpDb+FNoLle2ntgRjjOYmvBDiqcv
         ehJRW8h3XriGv4zcW7ht8ELMzUVkzje+ucxEWrXx0Ns+KR4+qyP7gplWOEgE4tHfMPuT
         hzixc1MZztS3X+mrfVVePPPr217PldaQsWh2xiWPqjGWxhlELSmm7ZyNSjQgADLuC8Q5
         iBLzExUBpozpAtPyoJNl/w7zizH3NY2Im+NMWSM3/KvoR+69B/N3NXO4owBTzgK6mM7e
         Sm8wxuQQBSQL1uIOFl/bnY3kATg/nXhM25mO8FcJn5ar2SgbcPR8NTyTtntGYdeqGWCH
         jy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Llux1569NzUGvGM3wc1L0NoJ1TWRs67+M9td/EKgsS8=;
        b=rSlLq2S4r3SOTIisIH9vu+XZBverhmaqLMUWLvvjsPxVxlC2Byab+1RrUz6H2xv3bD
         cbNsiKkX/JnZ9qm78YI9jhF/Os4g9acK5xiGXZDSs/jBr0zBCbZK93LuT4imHDcP3ux1
         1DnC4MKV4ntNIgCjoMBmNh8IaU9NZiytj2EvkifqFqMG3MDpkz/pGRnxOIP2RnEh4GW7
         4G07n5xIfwmUNTudqxANd+fD809L+v9qRWXgW2mBt6Bb2b59FYEk9D+/uN9C81qB0Ex+
         mXD2bTsQf6+d7r6kbKkfbXg00+JezdwwN/uFoWr7I9zYdYXmI4ArUURtoHbPrVGzsELB
         ajZA==
X-Gm-Message-State: AOAM532KABuGJgMXkMyJNx/RV/ZwNBMbw4YRueBLGbyIwKHsBSZ4GXKg
        8hMENvsoQD4oQSH8/JOt8L5XSkieX0U=
X-Google-Smtp-Source: ABdhPJxKBqqN0x1U+bfaO30VulsuCZligPEBUBpZodTWAlJgYqKBg9vEZVhZ1bUipAlT29oxjz4rCg==
X-Received: by 2002:a50:f69c:0:b0:425:c96a:5c09 with SMTP id d28-20020a50f69c000000b00425c96a5c09mr18585026edn.256.1651597496218;
        Tue, 03 May 2022 10:04:56 -0700 (PDT)
Received: from kista.localnet (cpe1-3-76.cable.triera.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r22-20020a056402035600b00425d6c76494sm8028001edw.1.2022.05.03.10.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 May 2022 10:04:55 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Harald Geyer <harald@ccbib.org>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        Torsten Duwe <duwe@suse.de>
Subject: Re: Re: [PATCHv2] arm64: dts: allwinner: teres-i: Add GPIO port regulators
Date:   Tue, 03 May 2022 19:04:54 +0200
Message-ID: <5816655.lOV4Wx5bFT@kista>
In-Reply-To: <ff554e7a-b408-74b0-e4dc-94f244e0b56c@sholland.org>
References: <20220430191009.73946-1-harald@ccbib.org> <ff554e7a-b408-74b0-e4dc-94f244e0b56c@sholland.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne torek, 03. maj 2022 ob 04:01:20 CEST je Samuel Holland napisal(a):
> On 4/30/22 2:10 PM, Harald Geyer wrote:
> > Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.
> > 
> > Signed-off-by: Harald Geyer <harald@ccbib.org>
> 
> Reviewed-by: Samuel Holland <samuel@sholland.org>
> 

Applied to sunxi/dt-for-5.19, thanks!

Best regards,
Jernej


