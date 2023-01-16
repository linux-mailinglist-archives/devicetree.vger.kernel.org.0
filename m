Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FFFE66B949
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 09:49:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbjAPIt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 03:49:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232097AbjAPIt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 03:49:27 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C61591286C
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:49:24 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id i188so28328087vsi.8
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9sTr6MqALGJwmJjfPYPEonjgpkyKa7ykJkskKcOLsWk=;
        b=xN0HsBRuVS5tnXRE2/5nRcc0Sjbq/htNtt4ZnV0Cx9pS959pEoOXdPsg0WaQ4BqxjX
         Y1UravJcSm5mPjq5Tnn5qMcYlxLTNBim1QVgBSIkIeVas9qv+nyUSejky22C+1qw4gX3
         jIDrQ6y6w785bfC9i8/i5W9z67Ikt538i76ts5jrYHwLRN3WI1WzPhf7A7uGJ1FYOMJC
         AkucKxs+6j6Nvpj9QQp4IJ0N70ee8ZHxNU2NCK3kZ53uxwjuFPWfUItmC7aCjikR4JkV
         Id7IRJ47YRAr9h74X51/9CZx+llgAlk7WobIEMhPEZy3udCw+o1FasqS1BPwguO3AfIX
         VKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sTr6MqALGJwmJjfPYPEonjgpkyKa7ykJkskKcOLsWk=;
        b=VrrvHp7D+C1U9Cw0iw7FCGnFxJqgowmMsvTSAgPT0d3JI2qP9fvVdv9amnM+AlpIIC
         m1T7VTWnevIMmpAUjHT+82cx/DU8CYd3z7nfHzQB0IThwha0owiFUPh6s375I0eaSi6O
         UTLXPrwjkMSGdaHA8gnS0lKopUI9CDsxIGfbJlpx7acJ+oFZrnpyjnslTtCzJklWk8zt
         R+axmfYGW96sa6kEO+qAEpnlMqT52MUl7xkvGv+R4Iikvrq9vQDGl120XCf9z9Vi4MEr
         mr0/bxu7dvv1HHAqkie+IGloWlAZ2ELiZ2YXBHMRvxOnbvU6And2iw0ND8TSllhODNtz
         NgFQ==
X-Gm-Message-State: AFqh2krgWZfU0YkcI2g1hoNbf9uQrEq6DWs58e8YMJUHwcI6ehdaSWBM
        r16hQ4uwjFPWOLxXsQQTd2Oj5SbGpXCuWzr9V9vVTw==
X-Google-Smtp-Source: AMrXdXslgwCOWJ6fvGdSvpkTTbdtzJDfLSm7YY/DjKDgjLWdL7Na7meybpGu/6xdHwIj4BqhSi8K9mp63rgtrP+6X00=
X-Received: by 2002:a67:df09:0:b0:3ce:88b3:d7da with SMTP id
 s9-20020a67df09000000b003ce88b3d7damr8031952vsk.62.1673858963982; Mon, 16 Jan
 2023 00:49:23 -0800 (PST)
MIME-Version: 1.0
References: <20230110014943.2196046-1-chunyan.zhang@unisoc.com> <CAAfSe-uNjzZFTpwRG4h=z=+r7SEmrU0iDU+Q2Wx+X4B91FJHpQ@mail.gmail.com>
In-Reply-To: <CAAfSe-uNjzZFTpwRG4h=z=+r7SEmrU0iDU+Q2Wx+X4B91FJHpQ@mail.gmail.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 16 Jan 2023 09:49:13 +0100
Message-ID: <CAMRc=Mes5CpyAb-SdW9pgLaatccyPN0aSWcr6mBxPVyKMZ5fGw@mail.gmail.com>
Subject: Re: [PATCH V4 0/3] Convert Unisoc GPIO bindings to yaml and add
 support for UMS512
To:     Chunyan Zhang <zhang.lyra@gmail.com>
Cc:     Chunyan Zhang <chunyan.zhang@unisoc.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 16, 2023 at 3:10 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
>
> Hi Bartosz,
>
> Would you please pick this patchset into your tree, if there are no
> more comments?
>
> Thanks,
> Chunyan

Applied, thanks!

Bartosz
