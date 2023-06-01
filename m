Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605D271A2DD
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:40:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234682AbjFAPkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233324AbjFAPkl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:40:41 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E23FB
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:40:39 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-77483f80522so41696739f.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685634037; x=1688226037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZ+EiS+GQTo9AhoMTu3o3MEzgb5CpypJEioCqg0kvwY=;
        b=UTkRqJo0Wj4knlKaUex/Cap//53fzpgP56q4rA7GaxW+D/nu/4UyeKpvkUp+T3J0dJ
         OzICJ5bg9GEsdoMyc+lBss8fhyrTgxmqtOmud4evF09D2QcRcYn4y+9yXVDDCL/U3E1E
         mrfja0alv/GnAkPR1qgSawDqBF4XPHOmeDK90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634037; x=1688226037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZ+EiS+GQTo9AhoMTu3o3MEzgb5CpypJEioCqg0kvwY=;
        b=DnolW7JetOtLdy+MQbYeI5rj1B/pDaFzRmRJ5vTyK19KgYcVZk4mOTx0AS7XW6TN29
         qfRpm4QKwY6UJo3JDYgpa+AL4bGrXZY6Ivj158cSuxZdIz9SbvobXHMVrrDxzuCVOP/T
         Kix053snUger0ID3OLHHbQdq72aZbz5mQYyW01OE7Fk/HBjAYm4ZAMKQ2IyIE/BPYHyd
         gZ1rMmfwHdw23RrVQvO7hoVag8WW8yxhEBhb1b7+DIej0h2xWMBLRnIzumzzBSS51UZR
         iZ3CKIDgpOvifi0F+TvLyAksYCovWEAkqrKoXEQT2owUmRQkkwZbbez9kUmGCxgKCGRV
         l3nw==
X-Gm-Message-State: AC+VfDzDE8k+Yq+JV7c/XtJx2Nd2azDL5iC/sXsaT5Ivz4G1fqy3od0b
        25WR9JahGGO60dUHXG1GUH2Twor2hbfekSt50ss=
X-Google-Smtp-Source: ACHHUZ42aAO8l29M6SrMxkTqUFzV4K+iGDTk0HaqdEfDBWX9FAjSQlIQjQYbC/gsoCC1piDxYbIVeg==
X-Received: by 2002:a5e:8f05:0:b0:774:7cf6:d350 with SMTP id c5-20020a5e8f05000000b007747cf6d350mr7256199iok.7.1685634037136;
        Thu, 01 Jun 2023 08:40:37 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id v12-20020a05663812cc00b0040b1ecc3ec4sm2351778jas.11.2023.06.01.08.40.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 08:40:35 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-33bf12b5fb5so128385ab.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:40:35 -0700 (PDT)
X-Received: by 2002:a05:6e02:180c:b0:33b:3d94:afb5 with SMTP id
 a12-20020a056e02180c00b0033b3d94afb5mr191613ilv.25.1685634034756; Thu, 01 Jun
 2023 08:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=VYfPSwar2AXBxB3vX0dV1kjQ5bZMxsEBFhUnMNRXbBCw@mail.gmail.com>
 <20230520050649.2494497-1-yangcong5@huaqin.corp-partner.google.com>
 <20230520050649.2494497-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=Wm_SK0V6WJUkuvu8yFfiP60JBuOdw9cy=0Ck2Jbn-X2A@mail.gmail.com>
 <bd19f71b-59ee-80e7-9ff1-1cc26ecc49a7@kernel.org> <CAD=FV=WaVXUr8=4MrZQgA7t=yUBDt-iMvOFSeWhsKZ8XHJAREA@mail.gmail.com>
 <CAHwB_N+ZpCAYftCLRwyNo2wCca+JHfGJc0_rJ=jwJcU0mbG=Dw@mail.gmail.com>
In-Reply-To: <CAHwB_N+ZpCAYftCLRwyNo2wCca+JHfGJc0_rJ=jwJcU0mbG=Dw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 1 Jun 2023 08:40:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XBwZmJUVKqX5XOrgJB-VYPgJP=HKr+DoFRFu3C3tGq2w@mail.gmail.com>
Message-ID: <CAD=FV=XBwZmJUVKqX5XOrgJB-VYPgJP=HKr+DoFRFu3C3tGq2w@mail.gmail.com>
Subject: Re: [v2 2/2] dt-bindings: input: touchscreen: Add ilitek 9882T
 touchscreen chip
To:     cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        benjamin.tissoires@redhat.com, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com, hsinyi@google.com, jikos@kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 31, 2023 at 8:06=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Thanks, I'll keep an eye on that next time. This patch can be discarded,.=
After adding this series https://lore.kernel.org/r/20230523193017.4109557-1=
-dianders@chromium.org=EF=BC=8C

Thanks! I'll see if I can give that series a spin soon and then see
how we can make progress to getting it landed.


> using ekth6915  also can meet my needs.

Even if using ekth6915 can meet your needs, it's still better to
actually add the right compatible string. Putting in the device tree
that you have an "elan6915" and that you're providing "vcc33" isn't
the best when you actually have a different touchscreen and are
providing a very different voltage. Adding the proper bindings is
definitely preferred.


> On Wed, May 31, 2023 at 12:58=E2=80=AFAM Doug Anderson <dianders@chromium=
.org> wrote:
>>
>> Hi,
>>
>> On Tue, May 30, 2023 at 4:56=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
>> >
>> > On 22/05/2023 17:33, Doug Anderson wrote:
>> > > Hi,
>> > >
>> > > On Fri, May 19, 2023 at 10:07=E2=80=AFPM Cong Yang
>> > > <yangcong5@huaqin.corp-partner.google.com> wrote:
>> > >>
>> > >> Add an ilitek touch screen chip ili9882t.
>> > >>
>> > >> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
>> > >> ---
>> > >>  .../devicetree/bindings/input/elan,ekth6915.yaml         | 9 +++++=
++--
>> > >>  1 file changed, 7 insertions(+), 2 deletions(-)
>> > >
>> > > I'm curious about the DT maintainers opinion here. Should this be a
>> > > new bindings file, or should it be together in the elan file. If
>> > > nothing else, I think the secondary voltage rail name is wrong. I to=
ok
>> > > a quick peek at a datasheet I found and I don't even see a 3.3V rail
>> > > going to the ili9882t. That makes it weird to reuse "vcc33-supply" f=
or
>> > > a second supply...
>> >
>> > It's easier if they are CCed...
>>
>> Crud. I just assumed and didn't check the CC list. Cong: can you
>> resend and make sure you're CCing the people that get_maintainers
>> points at. One way to find that would be:
>>
>> ./scripts/get_maintainer.pl -f
>> Documentation/devicetree/bindings/input/elan,ekth6915.yaml
