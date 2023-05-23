Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C07F070DD7E
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 15:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236746AbjEWNcs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 09:32:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbjEWNcr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 09:32:47 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F1DEE9
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:46 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-3383025b9c6so1875795ab.2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684848764; x=1687440764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qO7uVfTZIwTK5eWidHNY3IE4aDCiaYIaf7Mtd0r6B0Y=;
        b=FLPOij7jG/FqckT/mOqWND/Ff99C971pRtQyCW2FhGa2a3UqeC8i+kkVmJQY2xULji
         ErFLtEo+5DUNpqKMpqMhh/avmSXY8ZfifqS01qT1KmxJTbmbyPdJUZcloDwTsQcovQXh
         a7nC0HOWVMo1lhW14UZC3v+DqKURcnsKcu75c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684848764; x=1687440764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qO7uVfTZIwTK5eWidHNY3IE4aDCiaYIaf7Mtd0r6B0Y=;
        b=DMYAcNY93yqzVCkNUCpFn9SqlGtVbIaUxas7bHHOSh0Gp8n4oz/J0xz/KyopaWAzEh
         q6Xmeft76tLlLF9xnNdV4VScVW9kDTOnZzR/4gcVJWxVNkUoTHzd+Wr4tVOV8/auD4Fe
         Mydi/cs4AxmNoRv5SaWCnuVpXufnYPK17FzK+vdC7uBdg1z/nF8Seyt3Adw0PV4pSEQm
         WNr/OruqQFBEcc9qyurhlYxS1YXs06eCygtFsRQ81wUn5/KbyE2CkOlE4gOaSWtcP2h1
         JS8f0bOx3potjkJyTqaQUkzFrULfqkp5f0kv9M3W+V9G7xAHcCctlx4OF3P1xgj91DF0
         6q7Q==
X-Gm-Message-State: AC+VfDxk4OExtDXx1tV0ZJAjp9D+rvW+fa7b6yTzehKtFS1if5JRLZZX
        3glT/UVDC62Z7Cv4OQOYMEj2qdUn2rgGrkxxNd0=
X-Google-Smtp-Source: ACHHUZ6tqWBSjlhx4qGofZVcnT3MFBJXPc+okygXQZLmMZEQzmunGqCGmk355/+eUPu5swd+oRZ83w==
X-Received: by 2002:a92:cb84:0:b0:335:56cb:a3a with SMTP id z4-20020a92cb84000000b0033556cb0a3amr9139541ilo.16.1684848763812;
        Tue, 23 May 2023 06:32:43 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id o8-20020a92dac8000000b003312915e615sm2433299ilq.28.2023.05.23.06.32.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 06:32:42 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-33828a86ee2so168335ab.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:42 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d0f:b0:329:333e:4e79 with SMTP id
 i15-20020a056e021d0f00b00329333e4e79mr252495ila.1.1684848762023; Tue, 23 May
 2023 06:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230427035656.1962698-1-fshao@chromium.org> <CAD=FV=XVubT-ozs7JssBPz+9UcsZb+q0My8Aq6HNs-nFiJnogg@mail.gmail.com>
 <nycvar.YFH.7.76.2305231510270.29760@cbobk.fhfr.pm>
In-Reply-To: <nycvar.YFH.7.76.2305231510270.29760@cbobk.fhfr.pm>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 23 May 2023 06:32:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UyEw5xViGreQb6+cLNLrMcT27ts5P87aR=FEYWNOBM_w@mail.gmail.com>
Message-ID: <CAD=FV=UyEw5xViGreQb6+cLNLrMcT27ts5P87aR=FEYWNOBM_w@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Fix Goodix touchscreen power leakage for MT8186 boards
To:     Jiri Kosina <jikos@kernel.org>
Cc:     Fei Shao <fshao@chromium.org>, Jeff LaBundy <jeff@labundy.com>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Kitt <steve@sk2.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 23, 2023 at 6:11=E2=80=AFAM Jiri Kosina <jikos@kernel.org> wrot=
e:
>
> On Fri, 19 May 2023, Doug Anderson wrote:
>
> > > These changes are based on the series in [1], which modified the
> > > i2c-hid-of-goodix driver and removed the workaround for a power leaka=
ge
> > > issue, so the issue revisits on Mediatek MT8186 boards (Steelix).
> > >
> > > The root cause is that the touchscreen can be powered in different wa=
ys
> > > depending on the hardware designs, and it's not as easy to come up wi=
th
> > > a solution that is both simple and elegant for all the known designs.
> > >
> > > To address the issue, I ended up adding a new boolean property for th=
e
> > > driver so that we can control the power up/down sequence depending on
> > > that.
> > >
> > > Adding a new property might not be the cleanest approach for this, bu=
t
> > > at least the intention would be easy enough to understand, and it
> > > introduces relatively small change to the code and fully preserves th=
e
> > > original control flow.
> > > I hope this is something acceptable, and I'm open to any better
> > > approaches.
> > >
> > > [1] https://lore.kernel.org/all/20230207024816.525938-1-dianders@chro=
mium.org/
> > >
> > > Changes in v4:
> > > - Minor coding style improvement
> > >
> > > Changes in v3:
> > > - In power-down, only skip the GPIO but not the regulator calls if th=
e
> > >   flag is set
> > >
> > > Changes in v2:
> > > - Use a more accurate property name and with "goodix," prefix.
> > > - Do not change the regulator_enable logic during power-up.
> > >
> > > Fei Shao (2):
> > >   dt-bindings: input: goodix: Add "goodix,no-reset-during-suspend"
> > >     property
> > >   HID: i2c-hid: goodix: Add support for "goodix,no-reset-during-suspe=
nd"
> > >     property
> > >
> > >  .../bindings/input/goodix,gt7375p.yaml           |  9 +++++++++
> > >  drivers/hid/i2c-hid/i2c-hid-of-goodix.c          | 16 ++++++++++++++=
+-
> > >  2 files changed, 24 insertions(+), 1 deletion(-)
> >
> > Just double-checking if there is any work needed on this series. I
> > think it's ready to land but I wanted to double-check.
>
> I don't think I've been CCed on the dt-binding part (patch 1/2 I guess).
> Has it been Acked? If so, I will happily take it through hid.git, but
> please send it my way.

Yeah, Rob Acked it:

https://lore.kernel.org/r/168261692866.3205353.5077242811275926416.robh@ker=
nel.org/

Fei: can you repost the series with collected tags and make sure to CC Jiri=
?

Thanks!

-Doug
