Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55DD8716A36
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 18:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232977AbjE3Q6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 12:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233001AbjE3Q6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 12:58:18 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FAFCBE
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:58:15 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-33b22221da6so4940205ab.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685465894; x=1688057894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQLTtDtW2MQvZzbg1+YtroMwuASMRT+NGV7h3iEinfc=;
        b=jKXOLdmMGDtcuMnS0qzDKS4DqEurX+SoZtJ3H1yf0l6aQMdvReO4ODlE4ao1iQ1Ahc
         Ey4z8uk9iBlbNnn5/qLiK8PRmKnJiFfjnvrEzGq1kumQ3cuTGdWI+FB90ofY07NuJYqj
         uweY7TVrJ7OrjBo3OVNl30ZzLxzwvTg1ciz1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685465894; x=1688057894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQLTtDtW2MQvZzbg1+YtroMwuASMRT+NGV7h3iEinfc=;
        b=kD0zxR9h05NLU/Sb2t555MMbveCyriJ72qpjffKbUTcrg9uJ2TaQ0PNx/mo4/YRTdy
         BcubT3IEeabvWL4MvMk4Nc56pDMnOcK7aTEUWbEbv87n3KHcsU9LFdsYAp669x9opV0Q
         b+HXO+CNuTDbDRaFv2oqV/skgYF4JakQDOvtawc/x4f/DzOjmHGh+ICa1Cpx43YRj4ab
         AaKTD+L2UMJS6COI4d+O2eHla/S+q7EuW8tKhYTKQG7ZKZaZX6WvpE5vXcuV4Fa7a0Xf
         k1wLTKND2gJ0PGfar4wPHpWoADXU2eFfz9q9FMWuraUK3qoSzfWMIhGB2I4agWk1C+YI
         ZYYQ==
X-Gm-Message-State: AC+VfDy4hF9gwU/6NvB45AHZlspeCT60DyMRQLT5pETpXuS/aj28agBG
        4fAkMKIHFaAQX7KxZBt4sOOATwTXZMfoHdn7d1E=
X-Google-Smtp-Source: ACHHUZ7tU8EEG1c2dB2JX2cEMevJ7WDInHoo0EEd8w5frWm1hpD6lFAzno5oQvsPfv81M1S71mhy5A==
X-Received: by 2002:a92:d08b:0:b0:32b:12ee:3f0b with SMTP id h11-20020a92d08b000000b0032b12ee3f0bmr129047ilh.9.1685465894173;
        Tue, 30 May 2023 09:58:14 -0700 (PDT)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com. [209.85.166.178])
        by smtp.gmail.com with ESMTPSA id b10-20020a92c14a000000b00338460ef47bsm2499252ilh.73.2023.05.30.09.58.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 09:58:13 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-33b7f217dd0so5925ab.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 09:58:13 -0700 (PDT)
X-Received: by 2002:a05:6e02:b24:b0:338:9f6a:d546 with SMTP id
 e4-20020a056e020b2400b003389f6ad546mr181095ilu.20.1685465893122; Tue, 30 May
 2023 09:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=VYfPSwar2AXBxB3vX0dV1kjQ5bZMxsEBFhUnMNRXbBCw@mail.gmail.com>
 <20230520050649.2494497-1-yangcong5@huaqin.corp-partner.google.com>
 <20230520050649.2494497-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=Wm_SK0V6WJUkuvu8yFfiP60JBuOdw9cy=0Ck2Jbn-X2A@mail.gmail.com> <bd19f71b-59ee-80e7-9ff1-1cc26ecc49a7@kernel.org>
In-Reply-To: <bd19f71b-59ee-80e7-9ff1-1cc26ecc49a7@kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 30 May 2023 09:58:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WaVXUr8=4MrZQgA7t=yUBDt-iMvOFSeWhsKZ8XHJAREA@mail.gmail.com>
Message-ID: <CAD=FV=WaVXUr8=4MrZQgA7t=yUBDt-iMvOFSeWhsKZ8XHJAREA@mail.gmail.com>
Subject: Re: [v2 2/2] dt-bindings: input: touchscreen: Add ilitek 9882T
 touchscreen chip
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        benjamin.tissoires@redhat.com, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com, hsinyi@google.com, jikos@kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 30, 2023 at 4:56=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 22/05/2023 17:33, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, May 19, 2023 at 10:07=E2=80=AFPM Cong Yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> >>
> >> Add an ilitek touch screen chip ili9882t.
> >>
> >> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> >> ---
> >>  .../devicetree/bindings/input/elan,ekth6915.yaml         | 9 +++++++-=
-
> >>  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > I'm curious about the DT maintainers opinion here. Should this be a
> > new bindings file, or should it be together in the elan file. If
> > nothing else, I think the secondary voltage rail name is wrong. I took
> > a quick peek at a datasheet I found and I don't even see a 3.3V rail
> > going to the ili9882t. That makes it weird to reuse "vcc33-supply" for
> > a second supply...
>
> It's easier if they are CCed...

Crud. I just assumed and didn't check the CC list. Cong: can you
resend and make sure you're CCing the people that get_maintainers
points at. One way to find that would be:

./scripts/get_maintainer.pl -f
Documentation/devicetree/bindings/input/elan,ekth6915.yaml
