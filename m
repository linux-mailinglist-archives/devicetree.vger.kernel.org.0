Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A5224DBC25
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 02:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349226AbiCQBT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 21:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238435AbiCQBT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 21:19:26 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFA7C1D302
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 18:18:10 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id jq9so3277297qvb.0
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 18:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=B3/Zb6dWqTjucFfwyqJe9d5nv5unSJBHO6UrUJxCnSo=;
        b=bCWEuu9tf6HdTODZwO24DXPmBGMlmBbFJFOh6gUAocW5CCpvt44APDkjwmpkwXdYAd
         In5y4sHoZCoDjCwx/7q6V3Ls4JA9N4pc1gKKNte+Gy6ILNomtmGZmlDy4YeZvagfXNn+
         x45TK7Cu7Ahb/eNxjF5gu/j31YdNrXgLhUIgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=B3/Zb6dWqTjucFfwyqJe9d5nv5unSJBHO6UrUJxCnSo=;
        b=OuAugnR1ni/LjED3NH6pUhYdBenjyaz7lc3vkdm/15RlGc6wtePe2hI9Dr/67nlnr1
         1RfFdpYrnHbTJfqsBpo1cJegIZR4cAcNMNyfHYXp0lWgOv7q/BB0aorwm4d+C9gq/90Q
         ahO8nPMg4PObyZo3u2RrYlljN0CYHY1h0m2DsC0bqFSdpJpiqMOA9ucUMEKKBsLCNWom
         FOap+uIS9dwIsqJng7zdsicYMg4w9l60iBKf42GyxsBCHgdKuqC2t1c8Stb+WhPZR0do
         M55odzq/k9AW2cXQxY/zF0w/7xgbnAnvu+8JATcvklg1soGp2tlCIzHzGkBe1qAVtA6k
         sjcg==
X-Gm-Message-State: AOAM5330iCZNseHMkVOdBZq702NxQalaEWTsXueGXoX/qolMa5f4EL1K
        1dMQxQ51d9f59BUKtJr1HrlPYQULXpyYyWUK/Bc=
X-Google-Smtp-Source: ABdhPJyogCwUsCTWn79Pjurh1J5wIA5vUEldxxZvi4ZqNwaGDwj8gETdwK6oH35IrSdfb2DTy6pr1U6d9b9xX09SztU=
X-Received: by 2002:a05:6214:c67:b0:435:bbb2:5c40 with SMTP id
 t7-20020a0562140c6700b00435bbb25c40mr1778258qvj.21.1647479889902; Wed, 16 Mar
 2022 18:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com> <CACRpkdbFNLLve1-JntNW=eMT9ivZTZHBk-xpwK6w-kE0fczr+g@mail.gmail.com>
In-Reply-To: <CACRpkdbFNLLve1-JntNW=eMT9ivZTZHBk-xpwK6w-kE0fczr+g@mail.gmail.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Thu, 17 Mar 2022 01:17:58 +0000
Message-ID: <CACPK8Xejcvv37uhGUXOTrbXJ=0O17tiDNizo9jtbRqHxyFiLhg@mail.gmail.com>
Subject: Re: [PATCH 0/5] Fix AST2600 quad mode SPI pinmux settings
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Mar 2022 at 01:11, Linus Walleij <linus.walleij@linaro.org> wrot=
e:
>
> On Tue, Mar 8, 2022 at 1:37 AM Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wr=
ote:
>
> > I=E2=80=99m sending this patch series to fix current issues in AST2600 =
pinmux
> > settings while enabling quad mode SPI support.
>
> Patches 2 & 3 applied to the pinctrl tree.
>
> Please funnel the DTS patches through the SoC tree.

Thanks for jumping on this Linus. We're not sure that this is the
correct fix, Andrew is still reviewing (see the comments on patch 3):

 https://lore.kernel.org/linux-arm-kernel/CACRpkdbFNLLve1-JntNW=3DeMT9ivZTZ=
HBk-xpwK6w-kE0fczr+g@mail.gmail.com/T/#m2cdf4f8b55427d6040f5c13eb85dd656f35=
79c48

If you haven't pushed it out then please hold off. If you have, I'll
let Andrew jump in and recommend the best course of action.

>
> Yours,
> Linus Walleij
