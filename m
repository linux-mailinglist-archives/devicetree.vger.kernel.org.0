Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 127E15A03D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 00:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiHXWPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 18:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbiHXWPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 18:15:31 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288E45F112
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:15:30 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id w19so36166630ejc.7
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 15:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=/cPHAdCCNaQBFlBBmgZ0SdLGba6MV6/rpZfVKVWi64s=;
        b=NxT9+c6QyzGlDtJUPhR0M6hhhJlWnVUgS0hI+3EtCo6C3SG0OhneD3BhxLEtqMEX86
         LmGkkKL3W6Lt4hvI3wtV8Wb43PWpnNUDpslPEE2CwlgQSouiIQqiJmR3/IfXgh3IQ2Sn
         x1JXJFGrRZQWkp87pW/lXJ1p+Y0ShZj1RNLE3f+p8lcKDJ6l3J/WrGyGeVqnhovFE5mt
         vTOJFgc2RQZPKdU4HrIdYGcYCqqjNp/+XJrRkXfxGerHkUBNAm4oZ82mmhE5aCLbzjod
         AtUYFxZhYlSA4LSKPIp/f78JRtRzpSI9hD6L2Nrg9Fn7SV4XIsHZ6KYuB/Y/jh2fF53D
         ffzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=/cPHAdCCNaQBFlBBmgZ0SdLGba6MV6/rpZfVKVWi64s=;
        b=qyb8t1qVZvYHWmNjHg/bSsrs0devtu1QtotPP/1pixS7OZX57nl9Dk41Wlb+Gq+GAN
         KEN1v+tBTJwDRycSaWW6T4EqVov8oGICbc810+t7J26Yz9e+7oTT/xaN1yVFkGUN532E
         h0gmnFQwhEcXBzFY37jb/dQm72kVpvLU2ARXSa6G5HhGYbr/GR6D5H2MUp5GAey958Nr
         wbx+dK3cTI2IP3zNuhxkjHuMthuSQ2bPv7D2d2QFrCGSrC72ENlKIDu3U8QhqYqKu8Oq
         4vXBi6tf8U/NKLycuNOqvF3be5WuPx79n28D/wobkqQUcUOIGDkfo6gB5pSiQhWmAXBv
         vL/w==
X-Gm-Message-State: ACgBeo0OiZ7JYRFZ8D11ZhgcmP4IBj+PDQkcDE6r9+yXJ5uGrjQJaOC8
        OiOKizP5PcbfqeTYUNqKVsb1XNsPz232fQqhjG8MEn08KzOfzQ==
X-Google-Smtp-Source: AA6agR4bdBRbq5WDsrQVj02D97Y0yWm5HeOZFqGCZuPefy2yzN3szFnVG1CF48QG25doilngwBuIt15AuqS0X98yQRg=
X-Received: by 2002:a17:906:478f:b0:73d:7919:b23 with SMTP id
 cw15-20020a170906478f00b0073d79190b23mr575867ejc.690.1661379328512; Wed, 24
 Aug 2022 15:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220312113853.63446-1-singh.kuldeep87k@gmail.com>
 <20220312113853.63446-2-singh.kuldeep87k@gmail.com> <CACRpkdafQ4G=a1E=G6GK3W2zAD4Nh96GiQiYbYkn4ctVu3c04w@mail.gmail.com>
 <CAL_JsqJ2p+4R=-HcKJ=UdXFcATrZgwwpfRnJES+-bHxRohorHA@mail.gmail.com> <20220815173000.GA45630@9a2d8922b8f1>
In-Reply-To: <20220815173000.GA45630@9a2d8922b8f1>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Aug 2022 00:15:17 +0200
Message-ID: <CACRpkdY2_SC0o-h19+kViBpgMSoBBm_gWv8DqYdzo_h=dOj-6w@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: integratorap: Update spi node properties
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 15, 2022 at 7:30 PM Kuldeep Singh
<singh.kuldeep87k@gmail.com> wrote:
>
> > > This and patches 2, 3/4 applied to the versatile DTS branch.
> >
> > What happened to this?
>
> Thanks Rob for pointing this out, I lost track for these changes.
> I just noticed Linus applied ste-dbx change only and skipped others(integrator,
> realview, versatile).
>
> These patches fix clock-name as per pl022 binding which causes no harm.
> Linus, Any reason to skip others?

I just forgot to send them. I'll fix.

Yours,
Linus Walleij
