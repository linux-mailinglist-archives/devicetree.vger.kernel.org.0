Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38DEF54C9D4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 15:31:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244596AbiFONbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 09:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234457AbiFONbN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 09:31:13 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56FA833A17
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 06:31:12 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-31332df12a6so61158987b3.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 06:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VaDlzhe/4P2Kqx2Bwnrxn27JBdo5H/KOFM+Hot3AAmE=;
        b=VjGtmxbDwO5KvtVwDsx0byMAEpIZJFQyb1385NLVlSIaOVXqE4BRBKo0Q+CB1K6clR
         osZqtBgQQ8vtGi+c0v87jnfzT4gXOLYWe5IeLTNQzsEjRjWgU/37rSGtmIIP5/g5pZ2E
         lRlL/CzFxL41AeCMnOPafpbPqgLCEOtcuVtvIwqP0YPBmvflkjGDMv2YXNFYCqNmizpP
         MobXUKMIkpAVxy3trUAjZTIH+cU/LOqCng4dHafCdu9rFFkLByjosnAeyfeNtJtAcOIZ
         49svvBvQUZS1pKEfKA2X8TKUMQsmlN4k+URgZm5RgfnljyrQO5mKlPbajY+LqYncEtnj
         JxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VaDlzhe/4P2Kqx2Bwnrxn27JBdo5H/KOFM+Hot3AAmE=;
        b=fPN/lO0Legc1WLKn0gDcbUO9fEiwWLv9tkraSIMRm4Xs1XsYaaBSQR8mKDerA+iZW0
         JF40t8qMMUc+GdDJW7Nmgnb1RIoQQ4CzJHcKkTs0AlMq+mImD3RZAbUUGYJsvRlO9uJS
         Il63RPSw85Qn5iekp8rWldVwH5AsP1Jvfxx0xx6MmoZAfFY5ZPM/arelIrq3UohwLAOz
         0qW2SST+z5zCdENLmP8Pe2Qn7Z6tSquz5BFegnyNyLE5mTPrl7ZxsXiRm9MpyJQxLupw
         +xaIkGbi7nzdSnASICp6wD/ObZr6Lnxy6Cn8Un6b6BRs6ZHILihpYgdvGepnDPFUB4hu
         FuZg==
X-Gm-Message-State: AJIora9zhx/BWbc+TONa4PV3H26Ge37Egci3ieDXS1fdmqt++Yy/d8hV
        iFD99NiXmHXEv7b9z9kysHCCkUHRYAd+/dN8UAZyOA==
X-Google-Smtp-Source: AGRyM1uhDAk/ild2A1mNKUqVV7KIjDeNtFQGXSjhxjTW8mxcpzZcCXEnXrU9MrIb4NLDnIGXlsp+0mACPztyzwGZO9I=
X-Received: by 2002:a81:6807:0:b0:313:35ba:79da with SMTP id
 d7-20020a816807000000b0031335ba79damr11666091ywc.268.1655299871601; Wed, 15
 Jun 2022 06:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220531221954.160036-1-nfraprado@collabora.com>
In-Reply-To: <20220531221954.160036-1-nfraprado@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 15 Jun 2022 15:31:00 +0200
Message-ID: <CACRpkdYe=qhUvyCw-xKRUihWiaezaEyQdHFhPt2aD6bmkWTpBw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] MT8192 pinctrl properties adjustments
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 1, 2022 at 12:19 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:

> The two patches in this series substitute properties in the mt8192
> pinctrl dt-binding for ones which have a clearer meaning and are more
> standardized. At this point there's no DT using the mt8192 pinctrl
> binding, so if such changes are to be made, they need to happen now.
>
> v1: https://lore.kernel.org/linux-mediatek/20220525155714.1837360-1-nfrap=
rado@collabora.com/
>
> Changes in v2:
> - Dropped Fixes tags
> - Added 'if' blocks to enforce mutual exclusion of properties

This does not apply on the current pinctrl devel branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Ddevel

Could you please rebase onto my branch and resend as v3?

Yours,
Linus Walleij
