Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 458BB7308B0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 21:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236621AbjFNTpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 15:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240610AbjFNTow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 15:44:52 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BF41BD2
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 12:44:30 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9828a7a39d1so69281866b.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 12:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686771869; x=1689363869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqKOuOVAaHAwexq58/iM1zHwSap285S9u8+TVdomW4o=;
        b=fQoHBFqYfj/Dh0kiHIvr0oAwkhjqjMw08CytkcNnvz5ZIXBQHhNaKIeKhiBmbUrSDF
         Fv9gJw77JklHjKkxwqrfxZ4vU89Vtss3LyO55IEBXsmZFLkl/lwVLHIPlv49z05WwDXQ
         P8izwA/ytVa3HTXfiz8Hn8AtZHVkILtYxLGvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686771869; x=1689363869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqKOuOVAaHAwexq58/iM1zHwSap285S9u8+TVdomW4o=;
        b=RytL6ZmSMSKFlmoxWf3c3byx/HUS87lTLa2kjcaazD4A7dyoXg8Jjp/sN4jqO6rmz/
         5uaSK/m2QM1xuXK0RluuVmPlzWU99Lp2rcsjLs1/YooigqbI/8jWx736E34hlyubhd3/
         hkZr9Eg/mOS510Oa3QqYw255vJX1hDe5ksxHz9rAEGkn8Da0X2gg3eazlqqCzOTAxeiT
         SlzryhK5D9+kBmwbRqHObrw/XtblIpjlWueoCVUUAeNJdqLv2u3TPcZI1GoO2nVxUCSE
         eYozYcFA1kRvi0FDOr/0HsietUHAnmzOl8Yy4kndB6Fyw/jyI9rM+Hn0TH+0HBo/WFm7
         qY9A==
X-Gm-Message-State: AC+VfDwMEjpvOixbEsMTYwsTzs35KP2lFqkU6aI3g5QHe0M14trsWY28
        K1phrcUZedtBWVE7UNqzk90FbNmFt4C9zHSznrIUxMbj
X-Google-Smtp-Source: ACHHUZ7Ur54Aolu/eDF0RTibuxFWTuRzKpmuJUSU2KaF4BPCSxjUWtriwaNgOOZTAySh9hpAtR6wuw==
X-Received: by 2002:a17:907:320c:b0:976:8fdd:9046 with SMTP id xg12-20020a170907320c00b009768fdd9046mr15134776ejb.12.1686771868968;
        Wed, 14 Jun 2023 12:44:28 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id bk4-20020a170906b0c400b0096f675ce45csm8378296ejb.182.2023.06.14.12.44.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 12:44:28 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-513ea2990b8so2296a12.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 12:44:28 -0700 (PDT)
X-Received: by 2002:a50:d09c:0:b0:51a:1f15:9ddc with SMTP id
 v28-20020a50d09c000000b0051a1f159ddcmr13160edd.6.1686771868354; Wed, 14 Jun
 2023 12:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230602161246.1855448-1-amit.pundir@linaro.org>
 <358c69ad-fa8a-7386-fe75-92369883ee48@leemhuis.info> <0f6c9dcb-b7f6-fff9-6bed-f4585ea8e487@linaro.org>
In-Reply-To: <0f6c9dcb-b7f6-fff9-6bed-f4585ea8e487@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 14 Jun 2023 12:44:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xt2KYGY15+f+nHxkzKnwhHzw1A7=o+5kgCDWvHDv0DNg@mail.gmail.com>
Message-ID: <CAD=FV=Xt2KYGY15+f+nHxkzKnwhHzw1A7=o+5kgCDWvHDv0DNg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Move LVS regulator nodes up
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux regressions mailing list <regressions@lists.linux.dev>,
        Amit Pundir <amit.pundir@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 14, 2023 at 11:47=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 14/06/2023 20:18, Linux regression tracking (Thorsten Leemhuis) wrote:
> > On 02.06.23 18:12, Amit Pundir wrote:
> >> Move lvs1 and lvs2 regulator nodes up in the rpmh-regulators
> >> list to workaround a boot regression uncovered by the upstream
> >> commit ad44ac082fdf ("regulator: qcom-rpmh: Revert "regulator:
> >> qcom-rpmh: Use PROBE_FORCE_SYNCHRONOUS"").
> >>
> >> Without this fix DB845c fail to boot at times because one of the
> >> lvs1 or lvs2 regulators fail to turn ON in time.
> >
> > /me waves friendly
> >
> > FWIW, as it's not obvious: this...
> >
> >> Link: https://lore.kernel.org/all/CAMi1Hd1avQDcDQf137m2auz2znov4XL8YGr=
LZsw5edb-NtRJRw@mail.gmail.com/
> >
> > ...is a report about a regression. One that we could still solve before
> > 6.4 is out. One I'll likely will point Linus to, unless a fix comes int=
o
> > sight.
> >
> > When I noticed the reluctant replies to this patch I earlier today aske=
d
> > in the thread with the report what the plan forward was:
> > https://lore.kernel.org/all/CAD%3DFV%3DV-h4EUKHCM9UivsFHRsJPY5sAiwXV3a1=
hUX9DUMkkxdg@mail.gmail.com/
> >
> > Dough there replied:
> >
> > ```
> > Of the two proposals made (the revert vs. the reordering of the dts),
> > the reordering of the dts seems better. It only affects the one buggy
> > board (rather than preventing us to move to async probe for everyone)
> > and it also has a chance of actually fixing something (changing the
> > order that regulators probe in rpmh-regulator might legitimately work
> > around the problem). That being said, just like the revert the dts
> > reordering is still just papering over the problem and is fragile /
> > not guaranteed to work forever.
> > ```
> >
> > Papering over obviously is not good, but has anyone a better idea to fi=
x
> > this? Or is "not fixing" for some reason an viable option here?
> >
>
> I understand there is a regression, although kernel is not mainline
> (hash df7443a96851 is unknown) and the only solutions were papering the
> problem. Reverting commit is a temporary workaround. Moving nodes in DTS
> is not acceptable because it hides actual problem and only solves this
> one particular observed problem, while actual issue is still there. It
> would be nice to be able to reproduce it on real mainline with normal
> operating system (not AOSP) - with ramdiks/without/whatever. So far no
> one did it, right?

The worry I have about the revert here is that it will never be able
to be undone and that doesn't seem great long term. I'm all for a
temporary revert to fix a problem while the root cause is understood,
but in this case I have a hard time believing that we'll make more
progress towards a root cause once the revert lands. All the
investigation we've done so far seems to indicate that the revert only
fixes the problem by luck...

I completely agree that moving the nodes in the DTS is a hack and just
hides the problem. However, it also at least limits the workaround to
the one board showing the problem and doesn't mean we're stuck with
synchronous probe for rpmh-regulator for all eternity because nobody
can understand this timing issue on db845c.

-Doug
