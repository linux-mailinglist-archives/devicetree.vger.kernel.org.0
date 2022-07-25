Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0315580328
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 18:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235750AbiGYQy3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 12:54:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235158AbiGYQy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 12:54:28 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AA11D327
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:54:28 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id v185so9241551ioe.11
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HvrUZBm5LsKei4fIZMwkQ+fL7k8/v8AK47ayvjQgN40=;
        b=P15865NysUnTLmnqK1OoUgYSPe9uvPN4l4nqp/RKL2+Pt70R4p6l4ZWZOWYuePoxLu
         7cAI/BzETvBuXcxOvrr652runSRgF3hWaW314qAUVudbjBzVzncZV2KDsxEHi1Gv1nFK
         FCO93vsPX+rPZKcuGYmNELyOW5OYVEDScT6l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HvrUZBm5LsKei4fIZMwkQ+fL7k8/v8AK47ayvjQgN40=;
        b=JK47pJ1rIkX7of9+piPE+CocWmm03PomBBgOsBOy7YMIozZBVpaDBCj22f4+OECKAO
         T4FGyvBw0JmQ86G1Kb/eI5Tg9SQTKDYgk0B9OWez6mNMjaEvgpMeI3Fg1+QLFxdzZ7VS
         U7xAku7ykhLLySDsvVw2N2Sm/A1FgbwTqNuakdYUNO3lwsJcIWhVBMWhfEZvom0baT0v
         Cyuk4FwcqO1T5IeZE687UeI5szhP7g70XWEAW8slhdZ1gvgoCtziF47vWLJhj03CwOAb
         oPkLSSCg+q6nJc8s/PLhaxxfkpQTLvmoX1sbu243B6O2LR/3Jx+4wJlmnHGJugcp46B9
         GoUQ==
X-Gm-Message-State: AJIora85k3l3Mp4Xf0zeSZxLDuw5STiVvfOeaZJwSFm2LtzOI+GZGPWn
        R0nwLTiMkZkLbEZhx8eI5w7JWx/JWSfBznxV
X-Google-Smtp-Source: AGRyM1vAtruUeXUlnafUbXSj3MX46/o/O64gRkcNYR68iLKe7blQn9zLfhjsJz6A9yx2jXB6snwqJQ==
X-Received: by 2002:a02:3f6e:0:b0:33e:fcaa:ee4a with SMTP id c46-20020a023f6e000000b0033efcaaee4amr5456531jaf.79.1658768067365;
        Mon, 25 Jul 2022 09:54:27 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com. [209.85.166.52])
        by smtp.gmail.com with ESMTPSA id i9-20020a02ca09000000b00341523a2a32sm5592901jak.122.2022.07.25.09.54.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 09:54:26 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id y197so8421306iof.12
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:54:25 -0700 (PDT)
X-Received: by 2002:a6b:5f0d:0:b0:67b:da10:933e with SMTP id
 t13-20020a6b5f0d000000b0067bda10933emr4535654iob.56.1658768065455; Mon, 25
 Jul 2022 09:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220723090942.1637676-1-dmitry.baryshkov@linaro.org>
 <b1aafb00-f00a-2621-ad51-fb2f7491dace@linaro.org> <CAA8EJpp_tSCR3CLGSD_qq62MzjVQOYGspY345aNfNSu1tMM=Vw@mail.gmail.com>
 <CAD=FV=WGtDMmB08py8D6jc0cv3xGsn5Rfc0MObQbEV=CiisBYg@mail.gmail.com> <76defcb3-8566-286a-d953-54c4a2b04782@linaro.org>
In-Reply-To: <76defcb3-8566-286a-d953-54c4a2b04782@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 25 Jul 2022 09:54:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XhYD0U=FAaGV0aLJhZ4LrULXrLptDV7=D8A91Kx=Qkgg@mail.gmail.com>
Message-ID: <CAD=FV=XhYD0U=FAaGV0aLJhZ4LrULXrLptDV7=D8A91Kx=Qkgg@mail.gmail.com>
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

On Mon, Jul 25, 2022 at 9:41 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 25/07/2022 18:25, Doug Anderson wrote:
> > Let's look specifically at the device tree file for the LTE board. One
> > way to look at it is that the dts for the LTE board should have
> > compatibles:
> >   compatible = "lte", "wifi-only"
> >
> > The above matches the normal device tree mentality. It says: "hey, if
> > you've got a lte driver for this board then use it; otherwise use the
> > wifi-only driver".
> >
> > However, the above is actually broken for the bootloader use case. The
> > bootloader is trying to pick a device tree and, to the bootloader, the
> > above says "you can use this dts for either an lte board or a
> > wifi-only board". That's bad. If the bootloader picks this device tree
> > for a wifi-only board then the OS will try to initialize lte and
> > things will crash. To go further, if you think about it things
> > actually work fine if the wifi-only device tree says it's compatible
> > with the LTE board. This is why I say it's opposite... ;-)
>
> This is not specific to "bootloaders" but your specific implementation
> of entire chain. How you described it, you have dependent pieces -
> user-space must use the same DTB as bootloader chosen, but bootloader
> makes different choices than user-space. It's perfectly fine to make
> these choices different, but then user-space should not depend on
> something which was/was not initialized in bootloader.

I think there's a misunderstanding here.

Currently the ChromeOS bootloader doesn't use the device tree to
control its flow at all. ...but the ChromeOS bootloader is in charge
of picking the device tree to give to the kernel.

Specifically I'm not aware of any mechanism in the kernel where you
can give it a pile of device tree files and have it pick the right
one. I believe that the official ABI says that it's up to the
bootloader to provide the device tree to the kernel. This is right out
of `Documentation/arm64/booting.rst`

A FIT image is, as far as I'm aware, a standard way to bundle a kernel
together with many device trees. The idea here is that the bootloader
should grab the kernel out and whichever device tree it decides is the
right one. It should then boot the kernel and give it the correct
device tree.

-Doug
