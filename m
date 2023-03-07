Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FA1C6ADF13
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 13:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjCGMtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 07:49:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229624AbjCGMtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 07:49:13 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72BAA77C92
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:49:12 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id e82so11219395ybh.9
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 04:49:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678193351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XIqvRUKvQi+9JwXJqk6zez0fEefEYHQDHJYoFfFR+A=;
        b=rLt1p1SNjdPluxKsu++nLxNZQwpVEkRtWzWUCcFxSG0c1fQFKSfOGx6QIpKAgezf2s
         5Lv/iA4ARtZr61sN69lXr2Eu0S34rjvmJJiXA5/rv1vDZ7P2GPOovLB9/XDOJFxw9C3M
         oLKQ5mSRFQyfRDikwk8wdHorn+brKP95FY67X9DcHfR4FDmZlZJFM3ZgIbLYcQlkENnn
         bD6d9csZj2pWHorjM2kw/8/6vXWyrTBtwPEOI+JACS9ySb1TWK0F/ikoFUvEIG+dslbl
         j6Sput8UzaDGzRo2UCtGj0ce7yT3aBu8nzgIWZ6OROXseegOxGOfqbJwS4MhMunOo4GW
         g8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678193351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7XIqvRUKvQi+9JwXJqk6zez0fEefEYHQDHJYoFfFR+A=;
        b=T57YQQE/yalRaVDLVxSzJvhhzFY1X9oK+N5wiT7UA7RAk18w+hkLlngI0gV+YhmMUV
         QhHcxqGRl6Zse45EQAqjz2JmCwkInDF8fVn/GWYTasMbwLKXpa/lTmMLn99mNNQnx9/+
         Pg4kxvIHqm01Ywt5G09h+u9UwRwP7a4QMIpAV+TlPtG4AloPt3Y8OqMpJtMJBWBDvQ5i
         rFvi2toxyZklYzjpB2YTdRuvVAdtHSFFa3HqFOdA1PHgzpnlag/3RIPx8zMHwn30QK1t
         JwSyYx0aSTC4JSvUA6bJGYqLe6O8D5YPERpxMXr6GRz1baW9k+kNMWtMSC5Gtm+1nKkH
         XZgg==
X-Gm-Message-State: AO0yUKUOFp4plLylTBoHy2sdDJLzs3u5NvfU2t18qiZoaIRMh2hrW7UP
        unfx/A466iBa/rWoiW1nPQ83ptakM4rizu6NQRUYZA==
X-Google-Smtp-Source: AK7set91EayilxgeJgYG9wtl/O7pFWz++OFEQ6LsxD0etm1zImXNSTs+wbVLlvILysTuMohj7y6VGndYE/7U5GJKapA=
X-Received: by 2002:a05:6902:4f4:b0:a06:5ef5:3a82 with SMTP id
 w20-20020a05690204f400b00a065ef53a82mr6731524ybs.5.1678193351638; Tue, 07 Mar
 2023 04:49:11 -0800 (PST)
MIME-Version: 1.0
References: <20230220023320.3499-1-clin@suse.com> <CACRpkdYknZo3Q7_CeSkOL2XwwAmKERskx24o-toaVy=rs0Yf5Q@mail.gmail.com>
 <ZAZ3JZQ4Tuz5vyH1@surfacebook> <CACRpkdbksZ59ndrRAQpTGa01GTq4c_2EcOQ2mtz1PLjqU8_nug@mail.gmail.com>
 <CAHp75Vf3ve-NdMG6iti-KSs=tGGgGf9tNj=aK7Jofk9233WocQ@mail.gmail.com>
In-Reply-To: <CAHp75Vf3ve-NdMG6iti-KSs=tGGgGf9tNj=aK7Jofk9233WocQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Mar 2023 13:49:00 +0100
Message-ID: <CACRpkdaCZSoem31GmDC97LPYcZqRjkyf=6VGtXdXK0iwrV74qA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add pinctrl support for S32 SoC family
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Chester Lin <clin@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, s32@nxp.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Larisa Grigore <larisa.grigore@nxp.com>,
        Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>,
        Andrei Stefanescu <andrei.stefanescu@nxp.com>,
        Radu Pirea <radu-nicolae.pirea@nxp.com>,
        Matthias Brugger <mbrugger@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 7, 2023 at 10:56 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Tue, Mar 7, 2023 at 11:22=E2=80=AFAM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> > On Tue, Mar 7, 2023 at 12:28 AM <andy.shevchenko@gmail.com> wrote:
>
> ...
>
> > > Can you unpull this?
>
> > If need be.
> >
> > Are there serious issues with the patch set such that they cannot be fi=
xed
> > by add-on patches?
>
> There are a few absent error checks, some error code shadowing, etc.
> I can't tell if these all are serious, but the amount of them is like a d=
ozen.
>
> I reviewed the patch, so you can look into that yourself and decide.

I looked at it and some of the comments are pretty serious and need
addressing ASAP.

However it only affects this hardware so it's not like it's breaking the
world. I generally prefer in-tree development over too many big patch
iterations, it gets more focused.

I think if Chester can follow up with a patch or several addressing the
comments in the next week or two that's fine.

However if we get closer to -rc6 and nothing has happened I would
not be so happy and then I might just revert the driver patch.

Yours,
Linus Walleij
