Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9591555AD95
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233742AbiFYX3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233733AbiFYX3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:29:52 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 384F512D3C
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:29:51 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-318889e6a2cso54978837b3.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2UYyw8IG/FSt87W5iD6mQ31cHerUlAdMQ2QniI7HaAw=;
        b=bGT/TUEUIpH/AtdebSxmJ90TAfkQSd5kFWTqQIidw52LzjG7TQSh0LmTr2M8mryZpa
         dGDR7p7mKGOLP+jUBtsAobfG+gjaGBMYy6u4KifpmeUq/mAnnidrag9RiSfpKf3IHV0Q
         meU7rUE8Nmg6DVaHqy9xL6OSlmRZP6KypCnme5MDO4NbN+dnT1aU86HLbYxINAPSxBoc
         6OOQRXBG5VuWnmbGnijns/2ZtczdgXYguIFInZMXBPJi5NGI9Wr+AbDPobhgkeusfb97
         ruYf6ClPDIKU0V+FiCw4lc8kHR7WuVl/cJSG74pS0RHRpcWMXsHAk7q4lpOsMq4zFvcI
         mTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2UYyw8IG/FSt87W5iD6mQ31cHerUlAdMQ2QniI7HaAw=;
        b=RtjqkzSkb0zrTI3QSqIM/2TSM4XWl7RQUF/6apMdxcDti1tqRNywyOpEKur0glIrZG
         8OVxJY15UtMSwpJEFE2EW15BbbA/mxitsUAZW38519/ELOUWJf5YvMOMuWGubr7oVvv7
         NbxLp0fynerSsU/nOZ8iN1g+UGlvah6S1gR5l3h6Nq5lmZMwSH6ZnukmjkU1TmQpg9hC
         CTd9gVBpLWjp2+KbrhV+a/O2p6drcMHHpDz3dPF0lg1OJFhi9sdRTg/JiXCMghoDtrwa
         Dqmswkb95XLNi5k6gv9KOP8/xzr7vFWKgLyALfVyQlnOjYpohM2Hs3Y3tcY7tjhehySj
         yr/Q==
X-Gm-Message-State: AJIora8zvCv2S3Oe+wRvpW38W/ddSYu5LW5HVLabhzlERkNkEu2dKxIn
        87G0VOOkNuABVurvN4GCNndnu84x+GvMm1nhC2eG6A==
X-Google-Smtp-Source: AGRyM1vpTcWtObITT3ftjiLLwTgIpKRXuKXwH1aFHV+d73Jv0wSLTLduzlvcKGSgo4TsXq453J4pwkW3b/dg+4gpDKc=
X-Received: by 2002:a81:71c6:0:b0:318:38d5:37f3 with SMTP id
 m189-20020a8171c6000000b0031838d537f3mr7041733ywc.268.1656199790486; Sat, 25
 Jun 2022 16:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220616060915.48325-1-samuel@sholland.org> <20220616060915.48325-4-samuel@sholland.org>
In-Reply-To: <20220616060915.48325-4-samuel@sholland.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 26 Jun 2022 01:29:39 +0200
Message-ID: <CACRpkdb8Sh+_HMxd11FTS2S0Yjqn-RQhn0w=689Y-+4-6YP_BA@mail.gmail.com>
Subject: Re: [PATCH 3/4] pinctrl: axp209: Support the AXP221/AXP223/AXP809 variant
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, Lee Jones <lee.jones@linaro.org>,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 16, 2022 at 8:09 AM Samuel Holland <samuel@sholland.org> wrote:

> These PMICs each have 2 GPIOs with the same register layout as AXP813,
> but without an ADC function. They all fall back to the AXP221 compatible
> string, so only that one needs to be listed in the driver.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
