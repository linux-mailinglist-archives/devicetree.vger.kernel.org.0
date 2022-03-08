Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C08004D22E3
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 21:52:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348205AbiCHUv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 15:51:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350330AbiCHUvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 15:51:22 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 538CB33373
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 12:50:25 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id w3-20020a4ac183000000b0031d806bbd7eso398284oop.13
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 12:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=07/Mk2mSRPnnpQpgFzSH5cZEiz+q3LLuujHq7n3nu5A=;
        b=KHbJzGEeeMAyb2CIStCFirQlLtkUTpRvwtLMjNY9sVufVdQCQF6918bcz6/WQMgpfr
         ZDQZk/n+ABZlIyEy/c+G7FEOCMiUEjc6k4lXSLuWflbJjmoXWVylGC6b/h7/1aaAyL59
         gEU43+hkxXFgMCfkl3XxCylMwB/dxXs0k08C8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=07/Mk2mSRPnnpQpgFzSH5cZEiz+q3LLuujHq7n3nu5A=;
        b=VfmiCzii0AZVhOmw9nXCQeMqzysOjvhh3gXc1JCdBI5kh7gdtQ+Rvi5WeS5nq/aBk7
         9xN4ws523lk2tLTBh0pGfG21QWJJeEgUrqEyFdlnzNwRu674749Q88sQKbjdSbsA2Rxf
         oKgcT1zB621dq3eyKx6hX5ZQ+QjsHOWa8xQEp+rzNSEquNYhLRkPzuaAJFo7eu5o/vxi
         hCXcIXgY5k4GVn5H1/tZ1EmbCx+S50IGkqzdgV5SVwo87zB4EH4urb1Tf6hS5gocvKA2
         EooLaHeDfcL0R1zXV8a9u3Hu8HoPdWy512+1RYt3+jgiX02xq5uuQKdysFWjFOgITn11
         26Ag==
X-Gm-Message-State: AOAM5311xJ2tq4rTgSr0G19mZ9Y4e0Bv610E9NKR9NKjLIU7C7hS/dFg
        UzI64Hugcj8sRwt9A2mzjZCl27rV3Shp5Cld8BXnOA==
X-Google-Smtp-Source: ABdhPJyeIEGjp4wu4+prvM/5vJWOJEne6k+CfpxSdR/ZQubTtI2Y3uQWBjtlKPhKELQekWuo0tfl0JwswwbhoEpsuwU=
X-Received: by 2002:a05:6870:d250:b0:da:b3f:3211 with SMTP id
 h16-20020a056870d25000b000da0b3f3211mr3521199oac.193.1646772624706; Tue, 08
 Mar 2022 12:50:24 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 8 Mar 2022 12:50:24 -0800
MIME-Version: 1.0
In-Reply-To: <7e3d1ff3-f1a0-3a4d-a056-e3dce1a9a28d@quicinc.com>
References: <1645182064-15843-1-git-send-email-quic_c_skakit@quicinc.com>
 <1645182064-15843-6-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n509bg6RzieOtYuUvicU14D7bmgH-u02F1TB+hBZ+xH4CA@mail.gmail.com>
 <42570508-ed62-af26-220e-c776418a722e@quicinc.com> <CAE-0n50J=4qrkR9ycEGxbKVHwm9Om8S2YSJR_Y71_iErR-wAHw@mail.gmail.com>
 <7e3d1ff3-f1a0-3a4d-a056-e3dce1a9a28d@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 8 Mar 2022 12:50:24 -0800
Message-ID: <CAE-0n50iuZY0ju+-ZYG16ab0GVTTn7Z8p3BdZJPTKZ-CSoa-TA@mail.gmail.com>
Subject: Re: [PATCH V7 5/5] arm64: dts: qcom: sc7280: Add pm8008 support for sc7280-idp
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya Kakitapalli <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya Kakitapalli (Temp) (2022-03-07 06:49:31)
>
> On 3/1/2022 2:06 AM, Stephen Boyd wrote:
> > Quoting Satya Priya Kakitapalli (Temp) (2022-02-28 06:25:06)
> >> On 2/19/2022 7:31 AM, Stephen Boyd wrote:
> >>> Quoting Satya Priya (2022-02-18 03:01:03)
> >>>> +               pins =3D "gpio4";
> >>>> +               function =3D "normal";
> >>>> +               bias-disable;
> >>>> +               output-high;
> >>> Is this a reset signal? Should the driver be deasserting the reset wh=
en
> >>> it is ready? That could be the same time the gpio is acquired.
> >>
> >> I didn't get your question exactly.. hope this answers your query
> >>
> >> The pm8008 chip needs this gpio to be toggled , in order to come out o=
f
> >> reset and start any transactions..
> >>
> >> Please let me know if you have more queries
> > Yes that answers it for me. Thanks.
> >
> > This is a reset gpio and should be a DT property like
> >
> >       reset-gpios =3D <&pm8350c_gpios 4 GPIO_ACTIVE_HIGH>
> >
> > in the pm8008 node. When the driver probes it should get the gpio and
> > do any toggling to take it out of reset. It shouldn't be done through
> > pinconf settings.
>
>
> Okay, IIUC,=C2=A0 I have to remove the output-high here and add reset-gpi=
os
> in pm8008 DT node. And then add below code in pm8008 mfd driver probe
>
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 chip->reset_gpio =3D devm_gpiod_get(chip->dev, "reset",
> GPIOD_OUT_HIGH);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (IS_ERR(chip->reset_gpio)) {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(chip->=
dev, "failed to acquire reset
> gpio\n");
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR=
(chip->reset_gpio);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 }
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 gpiod_set_value(chip->reset_gpio, 1);
>
> This is working for me, Please let me know if I'm=C2=A0 missing something=
.
>

Yep looks good to me.
