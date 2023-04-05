Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6FA56D738B
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 06:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236637AbjDEE4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 00:56:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236593AbjDEE4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 00:56:21 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00DE22127
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 21:56:18 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id fi11so14573475edb.10
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 21:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1680670577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UaAvYvt5g6xXavruYf7/xZ5mYZyDGi7n10kqvlr/XQY=;
        b=YmBTz2LL6zsbKvAxNuWuYkm2ASVpLGWRU1Nykv1/CbBACrGHhN9MTCFv+srHqQ7I0C
         ZdgzuR68WHuMjZSZ+R0ieAYsCAQL2dX1Pc/NxK+PshHM9vcV957D/dTG61g1rdTeiqtF
         Aw0BGsOUmHdnPTrXepVUX2H3PbtHY8aLxPyj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680670577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UaAvYvt5g6xXavruYf7/xZ5mYZyDGi7n10kqvlr/XQY=;
        b=TbJi1HyHZI0nNVFj/aUyJ9EjZxcJgU1yBq4fK+CworVDIsAWbMCqOxByYqYN1rWR0B
         7lkhotIb8AgJtNckpUzPQ3F9D2YuIy2gspVGmc/+qIFl6l2HxBcfC0Diyzv65wlePRGL
         3uliEbCydqR+w0uXfFp0cVR+0pobFlsjPQkMD/Rl/p1qU8tqyk6Ttd6+7zSjeMueiHbb
         4p7cq91Y1vFAemMOrcFNNrbgh+Pka3vgO9Z6zZtJLRv2FNn3YrZmdcmYIzhMaPfHoA3l
         vbPNP0T4Kp3IpnemVrDV6RelC7TOFzFjMGf9BkalwMNyyXmg6gUAmebZoLS7b2ADXp3a
         lAKQ==
X-Gm-Message-State: AAQBX9cayByDCaP2GLulnOvLkaNKqPJ5iyjPguwVKikL8CW5YYT9MLhT
        O+T2iyD9zAd6Iw760mwESiW4+grasrc6D8t7qN4=
X-Google-Smtp-Source: AKy350ZlXT+2/CbTi+BHrk0i9bjldcN5n2yS+gUKQt96ZoJPbwZHOUmmTolZYRVNrh/eU4b7rNycV+/k2lCYj/TW8DU=
X-Received: by 2002:a17:906:e41:b0:933:1967:a984 with SMTP id
 q1-20020a1709060e4100b009331967a984mr891245eji.15.1680670577207; Tue, 04 Apr
 2023 21:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230331091501.3800299-1-jk@codeconstruct.com.au>
 <CACPK8XdLpg2H4a2nHo4PokfBc4r3D8MbK2-62jXkPXAq8Q03Rg@mail.gmail.com> <94e941a2895bbb40d7b87acd7de6525b8596b096.camel@codeconstruct.com.au>
In-Reply-To: <94e941a2895bbb40d7b87acd7de6525b8596b096.camel@codeconstruct.com.au>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 5 Apr 2023 04:56:05 +0000
Message-ID: <CACPK8XcPBCppbF8smOsO3csiWoomgheLHcudyNON3QDrwyguOw@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c controller
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 5 Apr 2023 at 04:34, Jeremy Kerr <jk@codeconstruct.com.au> wrote:
>
> Hi Joel,
>
> > Given we have acks on the bindings, I think it's safe to send the
> > device tree changes now so we can merge what you have in the upcoming
> > merge window. If there's changes we can modify or revert.
>
> OK, I'll get those into shape.
>
> There is one dependency on this though, and unfortunately it requires
> solving *two* of the known-hard problems in computer science:
>
> Do we start at i3c0 or i3c1?

I'd vote for i3c0, like we do for ethernet, i2c, spi, etc.

It is annoying that aspeed chooses to start counting at 1, but at
least we would be consistent with other parts of the kernel.

Starting at 1 reminds me of doing matlab assignments at uni, so that's
another reason to avoid it.

>
> [i3c1 would match the schematic...]
>
> Cheers,
>
>
> Jeremy
