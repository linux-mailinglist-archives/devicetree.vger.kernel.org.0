Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4196E5F3D3B
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 09:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbiJDH2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 03:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbiJDH2A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 03:28:00 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711743F328
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 00:27:57 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id m3so17628231eda.12
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 00:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=HuBDebX32mfzckg29ZwF9mNbIAnlovuCTYwf0VzLqrE=;
        b=Fzeqs/j483jGS88AHvGLCGuzS8AbJy6/0P8m10kARA8jstidBxZ4bzVcENt6+M1zFo
         UNxzK+UMMOQRZEU7vyPUVOrpNHPiZs81NMnT1u1UKUPz31TOyPkP53qP6lNkEt6IRxn8
         PenRerr2Ykl10t+rdk7n7jPd6LuB3pSgMbvn1F+ju7w2Wk1vZ+Z9uB69nYh8ig3gX38z
         5+uC12+LuypW3xZdqjEEYxZ495W5ITn3w5GBHAm2QKp/RwMKb7RYenpDgwBzMcKhc5h3
         h+YzVeFf5O3cnm5BpbBd1Ry9BbsRfxTH1fTiVUCGhADnLZCQTh4enizXS87N0B4jin65
         mguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=HuBDebX32mfzckg29ZwF9mNbIAnlovuCTYwf0VzLqrE=;
        b=Nd1EmyH3ux1jOE6+DoxeZj8EZGi8PbYh3lrb0/Xmv9aXvRdqdFHY61DuYVGse6jr6m
         0ljZWT/t+Uhzsan7lLv7cwnX/SLmNLL0V/SdqDEFGji6LrOVLFw25m8FbnGyKAxP1mcZ
         yd+u8nq2UlY4puIws7uXurTEnjoX2XqZDTcVqy/tpiKWrWAOsw3D9PEWPV7/7hAyueRI
         Kuz9FDzI26a430URoEUZNrb+ZqAWjLfNE47wOzpQjBbH/zS0tcA8/ELyFJVSfqpzMiLu
         gqXQV0rOTrCz9tKXfAf8Z1CIi745YEKv5MJcYOZv+62Lj2Bg74uScEm1ZCILwNz2liOb
         r49Q==
X-Gm-Message-State: ACrzQf0SfqwsBhPzi/C0DI9cL0Rih8Lc825xq6P3eaGwIUdyO77yOVKn
        rGLzHepa8bUyfUubpup1ZxBOvSyChF2cHhBgAGqJmA==
X-Google-Smtp-Source: AMsMyM4sBtNhXjRtwL0dNQZSOop/Bu14REIzZN9FWuxp5YkMiJKRDKYeWFdNTxEjDwP2/zmbuF/RFtKb/fbHLia38YM=
X-Received: by 2002:a05:6402:2690:b0:452:3a85:8b28 with SMTP id
 w16-20020a056402269000b004523a858b28mr21767496edd.158.1664868476075; Tue, 04
 Oct 2022 00:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220914071306.3254881-1-s.hauer@pengutronix.de>
 <20220914071306.3254881-2-s.hauer@pengutronix.de> <20220914140310.5ffrnsy63piegdyr@mobilestation>
 <20220922133105.GN986@pengutronix.de> <20220925153002.makz5eijmwzrgqqs@mobilestation>
In-Reply-To: <20220925153002.makz5eijmwzrgqqs@mobilestation>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 09:27:44 +0200
Message-ID: <CACRpkdb_j57++UkP3bPFtkY5BaBkEatTOLoBRtGjEeSB4_gvdg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] gpio: Add gpio latch driver
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 25, 2022 at 5:30 PM Serge Semin <fancer.lancer@gmail.com> wrote:

> I couldn't find any generic ready-to-use DT-property for this case.
> So IMO instead the next properties would work:
> 1. "setup-duration-ns" - data input timing after which the clock input
> can be asserted (Tsu in the hw-manual above).
> 2. "clock-duration-ns" - clock input timing for which the CLK signal
> must be kept asserted so the device would perceive the input
> states, the outputs would be updated and the clock signal could be
> driven back to low (Tw including Th in the hw-manual above).
>
> @Rob, @Linus, any suggestion regarding the properties and their naming?

I think your suggestions look fine!

Yours,
Linus Walleij
