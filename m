Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F3A05201D2
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 18:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238824AbiEIQEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 12:04:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238713AbiEIQEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 12:04:15 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215EC2A7C0A
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 09:00:20 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id j2so25853730ybu.0
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 09:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=knnW3YdGHU3dQmhoQ/TIt12Wud5O9OTp/LrpDaN4GjM=;
        b=gBo755tMf9Osy5tffBppRj7GfJn4ql1mKymzn97tMmsCY7Ovgg3Kvs3yRy3+4Aalcc
         7KUYzLx4mobr7QA0sQjmav3JM0lT4HGbe90OVpKyYL6B8SqhIMEsUOTQ8KsM8Juyeuoj
         TCRbl+PuQ1y0LWQOfM8m53FgLypONm6ia1cr2XMvW1Y6NxfAOmb49oqvIxGLafkafPj1
         oazllSGRNd9UaEK/q76XMrqpgxNvlTLZIoshpDQmPfdewjNWyw5XGAJdDPu2RrosDaW/
         P1pW1xWg026bNkocIWIl4BBR6IqIgvItap/A6KrxDBotH0mbvIo/KaIyCPpLt0drClE7
         FxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=knnW3YdGHU3dQmhoQ/TIt12Wud5O9OTp/LrpDaN4GjM=;
        b=eJtDR/rlabemZwB6Pt8XEJlR1Od9JGrvIRIFd2px5nB2BOfP2wahu4445DxI4zY/nH
         9f2FKb+K5ctXJrxSNXpxbf5+wgWQ1LDouQtrahtHL8I+KX2w/vP8dzDefbVwdyBzzhqL
         qNY0rtQTJmZsGNS854xAIfmmIAIURFDXjaS/OCVev/mEKQjgVNksifSHb/WNap6pi6QF
         RluIWJfvXveWN8bGGahMSqsk2FwvE1g1G9eVVa6HM4DC66zoqjbhK6+ODLlkeXIJJuim
         XATjZO/cKpPX4Zrf4RJ6jWwhf8ZqSifEbxsGPSWw9Cie9hKh0r6RJXWJSCeoZ0CHLyOk
         mDuA==
X-Gm-Message-State: AOAM532MQIaBfrKrT3BZVO6NZdsiKBAqNM1Ltdrd67i2jMWnFGrUy5P3
        4F3Ald9TiAZRLI09Lxtks96w5TaGjysiLXbVFCs=
X-Google-Smtp-Source: ABdhPJzE0yuDYQajfmjTVe+xPs9zcVxiG4bkyGXxUy+igdOw39M2htAP7fLlOx0fjjDMxhJ38jlzCt8sXC0uyVUM7Aw=
X-Received: by 2002:a05:6902:706:b0:649:daee:ada1 with SMTP id
 k6-20020a056902070600b00649daeeada1mr14322790ybt.366.1652112020072; Mon, 09
 May 2022 09:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de> <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com> <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
In-Reply-To: <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Mon, 9 May 2022 12:00:08 -0400
Message-ID: <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 2:21 PM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
> >>
> >> I think i have this already (pls see L231/L232 in https://pastebin.com/67wu9QrH )
> >
> > I see you have hdmitxm1_cec as the enabled pin. Are you certain it's
> > the m1 pin and not the m0 pin?
>
> It depends on board ver.
> pls look: https://github.com/radxa/kernel/commit/c1d727692e85c0a265913a72e517cf2bd71131ba

If you want to confirm the hardware is configured correctly you can
remove the cec pin from the hdmi node and set up a cec-gpio node.
https://elixir.bootlin.com/linux/v5.18-rc5/source/Documentation/devicetree/bindings/media/cec-gpio.txt

For some reason the board developers decided to make this selectable,
check the location of R90652 and R90653.

>
> >>
> >> Maybe i miss something but adding:
> >>
> >> &usb2phy0_otg {
> >>        phy-supply = <&vcc5v0_usb_host>;
> >>        status = "okay";
> >> };
> >>
> >> breaks working usb3 port0
> >> (so none of usb3 ports are working)
> >
> > Please pass along a full dmesg in this configuration.
>
> Here it is: https://pastebin.com/uArtBLaZ

I have some concerns about the DTS you've built here. For instance how
come you are modifying the power domains?
USB3 is broken because the rock3-a is a rk3568 device and you're
missing combophy0.

>
>
