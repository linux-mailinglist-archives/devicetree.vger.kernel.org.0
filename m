Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A08E86A118D
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 21:59:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbjBWU7v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 15:59:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjBWU7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 15:59:50 -0500
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EAB85C162
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 12:59:49 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-536bbef1c5eso223098267b3.9
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 12:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohz7ibnthCjmkK/bN3U7vjBvXHhe/lwMEhzdp9DLnfE=;
        b=WbvFlX320ZPeHHjI9qrDmKxpseWZnbB0LFo0Tgy2z2lvJtrhvb97eIXdT53lbG6snc
         TdJPR5xTBmpVUEqnq4q6mRF5An/8KQs23Sqikhsrxi7tV5WXKwZ0jiOPuJ954UPkGrpk
         MSbQHQ5WxClUkp+h5uV9k+NUWcORvRnSQfn519uO7n5VwGus3A0W/jbGt2YKuUC0JD47
         19HB4uJy50znKKTPOE+WkZiRddkSxmknMAZR+eVclnRtoyHPp5GgRyp0v9AARvquwxaU
         RGxqfiy+ReDwjaTkefpw/ifShrWs1zRG/AY67lTdEFWhPcCXAOuALmhUovczQcqb/Zyb
         b/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohz7ibnthCjmkK/bN3U7vjBvXHhe/lwMEhzdp9DLnfE=;
        b=Z6RaXfp/5AGTwIbuoR8MeWk9fe39jcgxhpBYoypsutFB+hrXls19Thvr6PiSQXVeX7
         P/OtZouLkyCPkQExMlmyfCef3yc/nZpl1MPRXmCKstCe1n28sX8+8BI23juWJ52Iym0u
         16A3QjEoD58tSG15Wc2RHSVJozt3k98GOfqtc/ov+vjhzCt1Vi3xENOZMBvpl/I/D840
         DiPnMWBrGWAJQ23iVtUHrWl9T0bn92LQ25oG94AYCn+MZiim3/H+aFqh7aluZGk/feP7
         fqy9KCAn8+BYhJB7DfwN17uVTZtunxCkYHiE47/wkSKu1k9BObVhgIku/c4Pz5YOcnCq
         +TKw==
X-Gm-Message-State: AO0yUKW3TGjP2ofw05+Rk76QBfsZiPAuqsLoLpYuehlR5H0APbf7HNMa
        gqz6zyiZZpTFHTd8bGoHe91hBqTM0q/N/O9fvPyAog==
X-Google-Smtp-Source: AK7set8+ipO/Zwoq487SWgkmX9GiP1XQ7/puxKDDMGSogWZxeEgQ+93XWZeggEDg9clGRmt+mwM5cYo4Eogy/RgwGio=
X-Received: by 2002:a81:b606:0:b0:52e:c79a:cda with SMTP id
 u6-20020a81b606000000b0052ec79a0cdamr2943098ywh.10.1677185988446; Thu, 23 Feb
 2023 12:59:48 -0800 (PST)
MIME-Version: 1.0
References: <20221226123630.6515-1-pali@kernel.org> <20221226123630.6515-2-pali@kernel.org>
 <Y9OycfvJEZ3tX/xm@google.com> <Y/d2vNUeuQTwQ2VG@google.com> <20230223164833.bsaqwgevphnsenal@pali>
In-Reply-To: <20230223164833.bsaqwgevphnsenal@pali>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Feb 2023 21:59:37 +0100
Message-ID: <CACRpkda8QQZrUkcKKvQ1z1u9X-uOrL-VAVgfkrgU3E+ihJ-YDA@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/8] dt-bindings: leds: register-bit-led: Add
 active-low property
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Lee Jones <lee@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        soc@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 5:48 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:
> On Thursday 23 February 2023 14:22:52 Lee Jones wrote:
> > On Fri, 27 Jan 2023, Lee Jones wrote:
> >
> > > On Mon, 26 Dec 2022, Pali Roh=C3=A1r wrote:
> > >
> > > > Allow to define inverted logic (0 - enable LED, 1 - disable LED) vi=
a
> > > > active-low property.
> > > >
> > > > Signed-off-by: Pali Roh=C3=A1r <pali@kernel.org>
> > > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/leds/register-bit-led.yaml | 5 +=
++++
> > > >  1 file changed, 5 insertions(+)
> > >
> > > Needs a DT Ack (now Cc:ed)
> >
> > I can't do anything with this set until we have a DT Ack.
> >
> > If you don't receive one soon, I'd suggest resending the set again with
> > all of the DT people on Cc that it should have been sent to in the firs=
t
> > place.
>
> (Re)Sending one email multiple times is against email etiquette,
> moreover it is spam technique and reason for marking sender on the
> blacklist.

No problem on the kernel mailing lists actually, we love to mail
bomb each other here. Yeah maybe we are a bit weird :/

> Moreover I have already sent it more than one time. DT people are known
> to not respond to patches and pull requests and I have no motivation to
> send reminder emails for them for more than half of year.
>
> So I would suggest to not send emails to people who just do not want to
> receive or read emails. It is logical reaction.
>
> This patch is here for more than 6 months, so I do not see reason why to
> wait for Godot. Rather move forward than stepping at the same position.

I understand that it is annoying.

In my experience Krzysztof and Rob (now added on To) are usually
quite responsive and helpful, so something must have made them
miss it I think.

As subsystem maintainer, if the DT reviewers haven't said anything
in ~2 weeks I tend to sanity check the binding as best I can and then
merge it. The bigger and more complex it is the more hesitant I get to
do this...

Yours,
Linus Walleij
