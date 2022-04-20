Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC9CF509350
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 01:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383060AbiDTXHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 19:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383042AbiDTXHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 19:07:16 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B89061E3EF
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 16:04:28 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-2edbd522c21so34293447b3.13
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 16:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FpEREu4SeXLkngfAouq9cgXQg3g799UvWzvJuLUJPhA=;
        b=NpfBl1JjpPzahZy++ENXUKPXbNVlfYpe5U2cmewY1Ry8JYEZMexFoqnTWEn/2GBPRk
         oXajgHV6HhDCFe6G7hNqA1fGOfZRVIyfl1T26XJgpRr2zDAD5Dd3U82faM1HRsbMB1wF
         aYwTmv5lHGxLEVILkYNe/9XiflvpqQD4gLsJVXselEpLWSH5P6mH1ldqZ+T+GPGsAhqF
         VDntvRllhyhcfPUB0GMyLzGpM5SAIZC928c4HQips6II2RZvovBt4vmakyW86WqaK5sj
         jd06Zybomj8NxLybtBAlvbMoNNZHq5nvGdU0jiwYJrCKFLysgs5rJp+JKcT4iplQfksZ
         l9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FpEREu4SeXLkngfAouq9cgXQg3g799UvWzvJuLUJPhA=;
        b=QyrCSRJFyy11CDuesNcg1KeE609019zyJuKlLDOe2zAMzdK2mPY0bMWh0kiiWHh1V3
         h1n3QyvLJcdAZ2hRu955k/dM/HmXrwbL9VBKKzpN/RsmfRpBaFNGZWt9lvNPURoH3C+F
         5p0Cgxw/WI5DWh1MlwYLXF+tHpSrD3YNQpTROzrP3O9RfIB7LLAHva6cJKBwpHACF5fw
         64eNTZZ7GcS/LALXnh574+i/pxbfBb8zyNtE/O0ttuoz7q57f7SjWSyIASQ64+YBqzg3
         YJ3oe+SWgEQtRyeScf+0sEH20iX/7d0YLpMWTSvrxpNzmEapC0uenjqEOQ3qin+6d0ew
         LCWg==
X-Gm-Message-State: AOAM530GUky1ljGb12HbjdhtivbsqETaKqLuPN6s5tQ27und5Zbo++5f
        Yv+SSUfCn3pfyVnridhRdbUvAN9dUlRyyZ9UWEEXfA==
X-Google-Smtp-Source: ABdhPJwsExULrcGo+zB6QCeXOvGyyhhZONGahcox/I8dMPcIDaw+fNvTnfI0grkCX9NGGPUxkAaaipRC/LQyn5maIAw=
X-Received: by 2002:a0d:e813:0:b0:2ec:1e83:e5f0 with SMTP id
 r19-20020a0de813000000b002ec1e83e5f0mr24226692ywe.151.1650495868004; Wed, 20
 Apr 2022 16:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1649533972.git.sander@svanheule.net> <8d4e0848f233c2c1b98aa141741c61d95cd3843f.1649533972.git.sander@svanheule.net>
In-Reply-To: <8d4e0848f233c2c1b98aa141741c61d95cd3843f.1649533972.git.sander@svanheule.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 21 Apr 2022 01:04:16 +0200
Message-ID: <CACRpkdbSdDAKiFAsHBosdVDpBhWW-Keoq+t8GJ5LsyWjOZwp_g@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] gpio: realtek-otto: Support per-cpu interrupts
To:     Sander Vanheule <sander@svanheule.net>,
        Marc Zyngier <maz@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bert Vermeulen <bert@biot.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 9, 2022 at 9:56 PM Sander Vanheule <sander@svanheule.net> wrote:

> On SoCs with multiple cores, it is possible that the GPIO interrupt
> controller supports assigning specific pins to one or more cores.
>
> IRQ balancing can be performed on a line-by-line basis if the parent
> interrupt is routed to all available cores, which is the default upon
> initialisation.
>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>

That sounds complicated.

Sounds like something the IRQ maintainer (Marc Z) should
have a quick look at.

Yours,
Linus Walleij
