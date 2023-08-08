Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A373773FE2
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233043AbjHHQyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:54:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232916AbjHHQx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:53:58 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABBD04FB20
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:58:52 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b9c55e0fbeso90259011fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691510326; x=1692115126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bKnU9SGNhRXh7JQMi9LxA4Fhq6dBeuKxy6dhRmxZasE=;
        b=kmLOdzq9sT+s6HwqOhVief/NAiEMEbQi9uyFH1beFOwKHkp9U7K+2mZmKRudLaPjSA
         CCs4WPidseKlEG4jYj/9ULGy4c+xZZcolMaZaCvklCx+JjY5Dc8sb36TRIg2tgg5rKW4
         2EwzCcg7i/Qcx6CfxWf7+F1Y8sT4AWT91Bze1eoqH6MTBDZBxdzTTWhxXRuruy2hnn3d
         D7DFeffY/7H3j3jRwH+GSo0TdNxI6cjS6Vg+VnaH8M9oMi+36QkqDWf0+55cH6OWeAGb
         rlr7mGitiFpvnko+ha5QxdisCUrbNQCoQg494BctxnzVtHasQVCKRIheyZ6NA8BMTiBA
         +6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510326; x=1692115126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bKnU9SGNhRXh7JQMi9LxA4Fhq6dBeuKxy6dhRmxZasE=;
        b=Szj5bbalquwy+CCc1gTM6/zFrHjqtjTQwjvesA2oo4mKg0WZ+RRiWzWBgZJG7clOZU
         UtNg7bBqY7pPVASmnkjVbyww1cKpKPqK7n2ROwsLpx6mUuNUS59qMzUZ3BStMK5cMDoY
         qNQCCYO/3EUqSpz5+e/iLNfUawRz5DHvadwICwc0j5L34HprQg2UOwsFunnGIqWq6FcO
         XeGb2QV0QMlBIMUtBP+gYd21TBABjN8FOYV/1BwIKJ6giKhT7kb7iFfk8DcCD7SZldIT
         KgT3ss5jb6dg8TgnwRWHKJNs+Mcvxxs652FbPjzsJnElULXw6HrjNKgG7hJ3x2BWlZqX
         rX0g==
X-Gm-Message-State: AOJu0YwhNqY9h3S9u4xDi7z6rMEn72ffnk2f2rtT3mnzbW2vgCFO0px0
        uMdsc+ESbwMc+ACOgOruv+Nrne4rPu4FEPr7lGwwruSp9+sjAn0Yjlc+WA==
X-Google-Smtp-Source: AGHT+IElsjRa0J9HS7/2fBL75dvvl+iEtaAG/dD+slb4YkABigiWTNAI/wFojzqI+f99ltDUHAchU06wTWaLFbBWBQc=
X-Received: by 2002:a2e:a0cc:0:b0:2b9:b066:66a4 with SMTP id
 f12-20020a2ea0cc000000b002b9b06666a4mr9299821ljm.4.1691497023708; Tue, 08 Aug
 2023 05:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230807193507.6488-1-brgl@bgdev.pl> <20230807193507.6488-6-brgl@bgdev.pl>
 <siqiyihftz3musfjulpcqunhgi7npftumrfwfyh2pqnlx6zeb7@rrpwmkvjshfb>
 <da679b5e-6712-4849-b29c-6aa42022abc4@lunn.ch> <ld2j4llgfba6j43gesqxs6wz2baucka5scbj4nef5ehbex2cmt@d4dxsqp2vuoj>
In-Reply-To: <ld2j4llgfba6j43gesqxs6wz2baucka5scbj4nef5ehbex2cmt@d4dxsqp2vuoj>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 8 Aug 2023 14:16:50 +0200
Message-ID: <CAMRc=MdLky5sUbdFGFc+as906kr-J_XDmKmYtBBCHvETvqtAQA@mail.gmail.com>
Subject: Re: [PATCH 5/9] arm64: dts: qcom: sa8775p-ride: move the reset-gpios
 property of the PHY
To:     Andrew Halaney <ahalaney@redhat.com>
Cc:     Andrew Lunn <andrew@lunn.ch>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
        DKIM_SIGNED,DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 8, 2023 at 12:27=E2=80=AFAM Andrew Halaney <ahalaney@redhat.com=
> wrote:
>
> On Mon, Aug 07, 2023 at 11:51:40PM +0200, Andrew Lunn wrote:
> > > > I have proposed a solution for this problem in 2020 but it never go=
t
> > > > upstream. Now we have a workaround in place which allows us to hard=
-code
> > > > the PHY id in the compatible property, thus skipping the ID scannin=
g).
> > >
> > > nitpicky, but I think that already existed at that time :D
> >
> > Yes, it has been there are long long time. It is however only in the
> > last 5 years of so has it been seen as a solution to the chicken egg
> > problem.
> >
> > > >           sgmii_phy: phy@8 {
> > > > +                 compatible =3D "ethernet-phy-id0141.0dd4";
> > > >                   reg =3D <0x8>;
> > > >                   device_type =3D "ethernet-phy";
> > > > +                 reset-gpios =3D <&pmm8654au_2_gpios 8 GPIO_ACTIVE=
_LOW>;
> > > > +                 reset-deassert-us =3D <70000>;
> > >
> > > Doesn't this need reset-assert-us?
> >
> > If i remember correctly, there is a default value if DT does not
> > provide one.
> >
>
> I've been trying to make sure I view devicetree properties as an OS
> agnostic ABI lately, with that in mind...
>
> The dt-binding says this for ethernet-phy:
>
>   reset-assert-us:
>     description:
>       Delay after the reset was asserted in microseconds. If this
>       property is missing the delay will be skipped.
>
> If the hardware needs a delay I think we should encode it based on that
> description, else we risk it starting to look like a unit impulse!
>

Please note that the mdio-level delay properties are not the same as
the ones on the PHY levels.

reset-delay-us - this is the delay BEFORE *DEASSERTING* the reset line
reset-post-delay-us - this is the delay AFTER *DEASSERTING* the reset line

On PHY level we have:

reset-assert-us - AFTER *ASSERTING*
reset-deassert-us - AFTER *DEASSERTING*

There never has been any reset-assert delay on that line before. It
doesn't look like we need a delay BEFORE deasserting the line, do we?

Bart
