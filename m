Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AED452FA91
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 12:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349861AbiEUKLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 06:11:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242374AbiEUKLD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 06:11:03 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB2230F5E
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 03:10:59 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id bq30so18093173lfb.3
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 03:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
        b=jmYcmHBDc9fD7fMjnX/OCB5Era38eSDBSyPvxPxWFK6XXO3Cp4mOwlwjfT2gg1z5R9
         /ItstLkOEd6p/toV10X9P3Ee2bd9mQBdHUKDgfspCFEIqTxaAUFHNjpzhGa2xAhuorsC
         JeIBZrLBnVMCUGnunpqvStpPyJ9CiYFpRQ6GSBNARHJUOdZ++E5Ao8QPQnQ6IPbIgi8x
         /fc/JmpgUE1epg0IAl6oQxl8C0ZXowu2iXiwaMtfxqwOY7qYDnhymceoRvIGL7svmQ2h
         2nsBBv97+e8zTYbIkts3xDqPrujIFfofQGc7saYL5Y46/FUkx12BkbLlK3zMYzmNHr8i
         5FsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=SvKsWt9LONNBbmyn76CUaIRFpx6XrGejj9uupqUqu0c=;
        b=m3mIyeuZDs332xEoGh4BuOnpC+xWVorilvuSDXVAX/u8JOyAH8i6sWhdeNVysMaw+e
         2njbtFKE3l5lM92huNtvA1hGlLErSlthGz+lbkoXROTofmbOkMePZ/Kz3rWlUFpiLWO1
         oUMstc3/z7aMMeAqMsFON9ONscu9KLukzw6gHTn1ZSWr80cpQOaoTwl9bW2EvsFm/nHj
         L1LR63qMPFx+zzB6oFp798HuFSKa18smTwoa5TnktK+drX0bc8e8WS1aqG8cPYVNy6Yp
         ikGPGB9kbfRjGeKdl4CIjCfqQZcfufO01kaldqA5Cp8QsMcqYKhInKoof4l8eDVQQQrQ
         behA==
X-Gm-Message-State: AOAM532EkL+0L1OvIpmYUxgj0NJvw4zot2D0/hUmAoWkQ6CxbDKMtVH2
        WRag3/Mf3BFqh3h/0qnAZG2KNq93jHRPoU/50Ww=
X-Google-Smtp-Source: ABdhPJxC34aQ8YDy4Z6RVScJJo6H4DBy+iH5x4eAhhhHLCzCBVwc+zcSnGLcXaqp+26XgzVhqwR0xOHh7sIO68aRw2Y=
X-Received: by 2002:a05:6512:2312:b0:472:5de2:ddf0 with SMTP id
 o18-20020a056512231200b004725de2ddf0mr9503175lfu.134.1653127857477; Sat, 21
 May 2022 03:10:57 -0700 (PDT)
MIME-Version: 1.0
Sender: zanbuida3@gmail.com
Received: by 2002:a05:6512:2f4:0:0:0:0 with HTTP; Sat, 21 May 2022 03:10:56
 -0700 (PDT)
From:   zanda vermaelen <zandavermaelen2@gmail.com>
Date:   Sat, 21 May 2022 12:10:56 +0200
X-Google-Sender-Auth: iE5N-s93Ni_p8-mNfIzFHIs1dps
Message-ID: <CALQADQBBDwtE4CqShiGfLaZTwKm5vYJsbtupcDaT94aU9WDxpg@mail.gmail.com>
Subject: hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I haven't gotten a reply from u after my last email
