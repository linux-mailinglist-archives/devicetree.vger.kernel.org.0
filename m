Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 730EC58029F
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 18:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236008AbiGYQ0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 12:26:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235811AbiGYQ0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 12:26:14 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E50D01CB25
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:26:12 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id z15so2843841edc.7
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BKMD1YBo44YlzcJ9QE2zrzpbIaxCc/TAf9V9qHqQOvw=;
        b=F9lDQa+81z5tkjYiCn1qIT+EsVOLDggj+qMX5UMXGi+OxJdNEU2CfxgEwPwgoLnFwq
         oAifVzPsB7a6G3aWk+YgZRZqD672jV3kdrmxt+yWFM4GOLL2NDjfYQu+iR8pR66OhNIm
         7aC/Q9DvT4XaM1LNe4/riwt47oN8PWBS/jt+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BKMD1YBo44YlzcJ9QE2zrzpbIaxCc/TAf9V9qHqQOvw=;
        b=7tcR1/cHH4wic5xRBZNeKGRK+8cdwsXHy+JpdqqMvHZBntjaCjcLn5f0/0o2ABquI8
         vZgsoG9hGMdrGWXL1+8Z1dS9FudfLZbTjKjdANt/yx0WSvSqa6SBHgMBHxZVzNXmsazG
         jB7McXeTvZ4QfBCLcwgxkXlquYKAEO1ixBcem0T5IbmKrkwAMU4PsdwNpCZtL1gZfcSv
         dbSEwuJNKodeJO2TA9GVFFbciCX6HL8n1SI56NkwsqxAr9RbKUVPKOcwwwntHyTilQCC
         XE/vh+udtgrvdetSRrdlsoYH1XK46ANlCFVc0PMg7Zt8xKk90bjNQ5BXl3s37LY71MHL
         Ufvg==
X-Gm-Message-State: AJIora+cA9xam+l5Q+W7VlEYXyddebh1iem2qaPaq0uuW8pdcCRb5dVi
        8mW52kRL/mQjv8ingQHff/hx7IiZh1OIfLEE
X-Google-Smtp-Source: AGRyM1ueZe1mbZamvRz5vp3VmORafljj7r8Uzqwxwzj/txiZ5xqF+YwvhAdsmtiR5Fk0MHrETsZ/gg==
X-Received: by 2002:a05:6402:4504:b0:43b:4ec7:2ec1 with SMTP id ez4-20020a056402450400b0043b4ec72ec1mr13985192edb.7.1658766371318;
        Mon, 25 Jul 2022 09:26:11 -0700 (PDT)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id w7-20020aa7dcc7000000b0043a83f77b59sm7332476edu.48.2022.07.25.09.26.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 09:26:09 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id q18so6309014wrx.8
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:26:09 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr8320426wrr.617.1658766368952; Mon, 25
 Jul 2022 09:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220723090942.1637676-1-dmitry.baryshkov@linaro.org>
 <b1aafb00-f00a-2621-ad51-fb2f7491dace@linaro.org> <CAA8EJpp_tSCR3CLGSD_qq62MzjVQOYGspY345aNfNSu1tMM=Vw@mail.gmail.com>
In-Reply-To: <CAA8EJpp_tSCR3CLGSD_qq62MzjVQOYGspY345aNfNSu1tMM=Vw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 25 Jul 2022 09:25:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WGtDMmB08py8D6jc0cv3xGsn5Rfc0MObQbEV=CiisBYg@mail.gmail.com>
Message-ID: <CAD=FV=WGtDMmB08py8D6jc0cv3xGsn5Rfc0MObQbEV=CiisBYg@mail.gmail.com>
Subject: Re: [PATCH 0/3] dt-bindings: arm: qcom: define schema, not devices
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Jul 23, 2022 at 3:51 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 23 Jul 2022 at 20:48, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 23/07/2022 11:09, Dmitry Baryshkov wrote:
> > > Describing each compatible board in DT schema seems wrong to me. It
> > > means that each new board is incompatible by default, until added to the DT
> > > schema.
>
> s/incompatible/non-valid/
>
> >
> > The bindings do not document something because it is or it is no
> > compatible. They document the compatible. Your patch essentially removes
> > the documentation, so there is no point in having compatibles in board
> > at all...
>
> I do not quite agree here. Please correct me if I'm wrong.
> Schema defines which DT files are correct and which are not. Which
> properties are required, which values are valid, etc. So far so good.
> For the device nodes it declares (or is willing to declare) all
> possible compatibility strings. There is a sensible number of on-chip
> IP blocks, external chips, etc. Each and every new chip (or new IP
> block) we are going to have a yaml file describing its usage. Perfect.
> For the machine compatibility lists the arm,qcom schema declares which
> machine compat strings are valid. And this looks like a problem. Now
> for the DT to be fully valid against DT schema, we have to define its
> machine compat string.
> For each and every phone/sbc/evb we have to name it in schema. I think
> this is an overkill. It feels like we are putting DT information
> (mapping form machine compat to SoC) into the DT schema.
> For qcs404 we already have a schema which uses three items: {},
> qcom,qcs404-evb, qcom,qcs404. This sounds like a perfect idea to me.
> We allow any board, created by Qualcomm, Google or any other random
> vendor, named Foo, Bar or Baz, as long as it declares that it is
> compatible with qcom,qcs404-evb.

I assume the above was supposed to be "as long as it declares that it
is compatible with qcom-qcs404" since everywhere else you're declaring
that only the SoC compatible is important.

In any case, I would tend to agree that the most useful thing that the
schema here is doing is validating that we didn't have a typo in the
SoC field. I already tried to argue that adding every board into this
yaml file seemed like extra overhead without a lot of benefit but I
finally ceded to do the busy work instead of continuing to argue.

As a side note, at one point Stephen Boyd was on a quest to get the
"SoC" removed from the top-level compatible and moved to the "SoC"
node. I dunno if that's still something he's pursuing.


> To go even further. We now have the qrb5165-rb5.dts, declaring
> compatible = "qcom,qrb5165-rb5", "qcom,sm8250".
> If at some point I add a navigation/communication/whatever mezz on top
> of it. It would make sense to use compatible =
> "qcom,qrb5165-rb5-navi-comm", "qcom,qrb5165-rb5", "qcom,sm8250".
> Adding this to the growing list inside arm,qcom.yaml sounds like a
> nightmare. I can only hope that at some point JSON schema gains
> postfixItems support (as proposed) to be able to change e.g.
> arm,qcom.yaml to list just our qcom,something platforms as possible
> postfixItems for the schema.
>
> Regarding having compatibles in board files at all. I think that they
> are somehow misused nowadays. Instead of declaring that the
> Dragonboard 845c is compatible with "thundercomm,db845c",
> "qcom,sdm845-sbc", "96boards,ce-board", "96boards,iot-board",
> "qcom,sdm845", the DT file declares nearly useless
> "thundercomm,db845c", "qcom,sdm845".

Again a little bit of an aside, but one point I've tried
(unsuccessfully) to make in the past is that, at least for the
ChromeOS bootloader (and presumably anyone else using a FIT image),
the top-level compatible works almost completely opposite of all the
rest of the compatibles.

For most compatible strings, you start with a known device tree file
which declares the compatibles for a peripheral. You then search for a
driver that can handle that peripheral. You start with the first
string and try to find a driver for that. If you can't, you go onto
the second string which is supposed to work, just not as well. Great.

The top level compatible string, at least in the case of ChromeOS, is
used by the bootloader to pick among all the device tree files it has.
That's a critical difference.

Let me try to be concrete. Let's say you have two boards that are
exactly identical but one has LTE components stuffed and one doesn't
(it's WiFi only). It's fine to treat the LTE board as a WiFi-only
board but not OK to treat the WiFi-only board as an LTE board (it'll
crash). The bootloader knows (through its own means) whether you're on
LTE or WiFi-only and is given a pile of device trees.

Let's look specifically at the device tree file for the LTE board. One
way to look at it is that the dts for the LTE board should have
compatibles:
  compatible = "lte", "wifi-only"

The above matches the normal device tree mentality. It says: "hey, if
you've got a lte driver for this board then use it; otherwise use the
wifi-only driver".

However, the above is actually broken for the bootloader use case. The
bootloader is trying to pick a device tree and, to the bootloader, the
above says "you can use this dts for either an lte board or a
wifi-only board". That's bad. If the bootloader picks this device tree
for a wifi-only board then the OS will try to initialize lte and
things will crash. To go further, if you think about it things
actually work fine if the wifi-only device tree says it's compatible
with the LTE board. This is why I say it's opposite... ;-)


> Thus, if we (mostly) use machine compatible array to just define
> Vendor+device name and the underlying Qualcomm SoC, I propose to leave
> just a sensible part (SoC) in DT schema, while allowing any string in
> the first part.
>
> > >Adding support for more and more devices would grow this file
> > > indefinitely. Drop most of individual device-specific compatibility
> > > strings leaving just list of platforms in place. All entries which
> > > differ from two-item string array are left inplace.
>
> --
> With best wishes
> Dmitry
