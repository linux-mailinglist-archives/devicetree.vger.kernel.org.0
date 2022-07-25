Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2116858035A
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 19:09:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236668AbiGYRJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 13:09:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236106AbiGYRJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 13:09:38 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20511E3DE
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 10:09:37 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id o2so1338881iof.8
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 10:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vOq4nxsOSWnsH+W3WKZ+m9zJ9eDyLu5786zKUGMBrbw=;
        b=KjFuUx3+7qWEq5w3d4XANd4Vg43zUtAcjzW/yDLfVbEGs/X498yKp49ehS1W6dBh3B
         Fn9wfaYRdasEZHVNidjVSdoS9aZ0XqDiVziSpCa1Ozv3IFlg/guQmSbD4+owHwchiGLz
         g6DdM/uFXafprtyBHgs3b8oAx3uHnbxQbKuog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vOq4nxsOSWnsH+W3WKZ+m9zJ9eDyLu5786zKUGMBrbw=;
        b=QdtSKqIINbvt283gbultZ9LtDoXZ2+kVuyw/xqHJaHfG8NT6TdFwKj1ZVfMCSWKHxT
         5mGA2iw+7rt9KrATbMMpDjPgeao/2nB0ewdytmzDIbBoo/y4RddozFHJPL/kiUOHO32y
         HLyV7hQVkIXlShYDSjOdKads1KOFyRK6EJUh9kvkCIiaAz2HBJgCoetvXFCeOgqq7lHi
         B9ksjtrM5etJi2zymhwpIQ2UOSrtK48g/S8C0hP8M+DWdTCdFpOcYVwIQGKcbZf69zB8
         WvJAWx0w6cqdkqbb9fIWY3CSUdvn3jSWzIXvkkpl/5B5xr7pe5ID6+fWU6kpqKyjS2lB
         hKRQ==
X-Gm-Message-State: AJIora9zXqJQB4gkyMtmKsS7pAq/QMZ/wmHVqd13hduStQqP0N6pzDwR
        jx0FuJ1aruZQmbWevyGbgvpBc0LCplkZOfwe
X-Google-Smtp-Source: AGRyM1ujNTiFJ/KPKDMBQN+mXB80tFQoJnRWopz0/ChF4wceZBCSwFdc7V6yDlT9dszIK3BdXiDbbg==
X-Received: by 2002:a05:6602:1493:b0:67c:498f:6297 with SMTP id a19-20020a056602149300b0067c498f6297mr4654671iow.19.1658768977087;
        Mon, 25 Jul 2022 10:09:37 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id z26-20020a027a5a000000b0033c9beb0e19sm5617966jad.22.2022.07.25.10.09.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 10:09:34 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id p81so9306766iod.2
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 10:09:32 -0700 (PDT)
X-Received: by 2002:a05:6638:388e:b0:33c:b603:516 with SMTP id
 b14-20020a056638388e00b0033cb6030516mr5400337jav.133.1658768971903; Mon, 25
 Jul 2022 10:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220723090942.1637676-1-dmitry.baryshkov@linaro.org>
 <b1aafb00-f00a-2621-ad51-fb2f7491dace@linaro.org> <CAA8EJpp_tSCR3CLGSD_qq62MzjVQOYGspY345aNfNSu1tMM=Vw@mail.gmail.com>
 <CAD=FV=WGtDMmB08py8D6jc0cv3xGsn5Rfc0MObQbEV=CiisBYg@mail.gmail.com>
 <76defcb3-8566-286a-d953-54c4a2b04782@linaro.org> <CAD=FV=XhYD0U=FAaGV0aLJhZ4LrULXrLptDV7=D8A91Kx=Qkgg@mail.gmail.com>
 <e3eb02f4-daf7-ed69-001f-72a275819af5@linaro.org>
In-Reply-To: <e3eb02f4-daf7-ed69-001f-72a275819af5@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 25 Jul 2022 10:09:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WYshw8tcDb7dRS-CRdH1q2BOp0g74_qKtvKa1Lzo+mcg@mail.gmail.com>
Message-ID: <CAD=FV=WYshw8tcDb7dRS-CRdH1q2BOp0g74_qKtvKa1Lzo+mcg@mail.gmail.com>
Subject: Re: [PATCH 0/3] dt-bindings: arm: qcom: define schema, not devices
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
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

On Mon, Jul 25, 2022 at 10:08 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 25/07/2022 18:54, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Jul 25, 2022 at 9:41 AM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 25/07/2022 18:25, Doug Anderson wrote:
> >>> Let's look specifically at the device tree file for the LTE board. One
> >>> way to look at it is that the dts for the LTE board should have
> >>> compatibles:
> >>>   compatible = "lte", "wifi-only"
> >>>
> >>> The above matches the normal device tree mentality. It says: "hey, if
> >>> you've got a lte driver for this board then use it; otherwise use the
> >>> wifi-only driver".
> >>>
> >>> However, the above is actually broken for the bootloader use case. The
> >>> bootloader is trying to pick a device tree and, to the bootloader, the
> >>> above says "you can use this dts for either an lte board or a
> >>> wifi-only board". That's bad. If the bootloader picks this device tree
> >>> for a wifi-only board then the OS will try to initialize lte and
> >>> things will crash. To go further, if you think about it things
> >>> actually work fine if the wifi-only device tree says it's compatible
> >>> with the LTE board. This is why I say it's opposite... ;-)
> >>
> >> This is not specific to "bootloaders" but your specific implementation
> >> of entire chain. How you described it, you have dependent pieces -
> >> user-space must use the same DTB as bootloader chosen, but bootloader
> >> makes different choices than user-space. It's perfectly fine to make
> >> these choices different, but then user-space should not depend on
> >> something which was/was not initialized in bootloader.
> >
> > I think there's a misunderstanding here.
> >
> > Currently the ChromeOS bootloader doesn't use the device tree to
> > control its flow at all. ...but the ChromeOS bootloader is in charge
> > of picking the device tree to give to the kernel.
> >
> > Specifically I'm not aware of any mechanism in the kernel where you
> > can give it a pile of device tree files and have it pick the right
> > one. I believe that the official ABI says that it's up to the
> > bootloader to provide the device tree to the kernel. This is right out
> > of `Documentation/arm64/booting.rst`
> >
> > A FIT image is, as far as I'm aware, a standard way to bundle a kernel
> > together with many device trees. The idea here is that the bootloader
> > should grab the kernel out and whichever device tree it decides is the
> > right one. It should then boot the kernel and give it the correct
> > device tree.
>
> So that's the same case if you had a device called "Foo" (google,foo)
> with a Qualcomm sdm845 processor (qcom,sdm845) and have a DTS like:
> "other-company,bar", "qcom,sdm845"
>
> Bootloader on Foo sees "bar", ignores it. Then it sees "qcom,sdm845"
> compatible and is all happy! It loads the DTS and passes to the kernel...
>
> You cannot do that...

The bootloader never falls back to just the SoC name.

-Doug
