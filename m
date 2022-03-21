Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32B9C4E2F7F
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 19:00:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350818AbiCUSBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 14:01:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245712AbiCUSBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 14:01:44 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 960A15B3CE
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 11:00:18 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id h13so18845233ede.5
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 11:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wKK/3aJDesbLM5oqz8z5Re8H9WUhRynGrOLLLku81oQ=;
        b=oVT82hMUHADOkzZXY4rLYtvS4f339EjEtv5ia2gPprDg2sXJEpMAhlK9ekc9C9MUGc
         axdEivJ8XKqM+fN/cgPX6dZjTc5Uxs9bA1MCbZchE7C14a0in/MJ+stldWJPPH3n3G9K
         jbZJwxTtYINvEF3P9oFgTtIrLuvfc3TT5f084=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wKK/3aJDesbLM5oqz8z5Re8H9WUhRynGrOLLLku81oQ=;
        b=fX5muP/hFVrn3q97r/OB+MOV9Uw1qlFyhGDYp1xe0+soebE3/3bPE4zMx9kl6GcRn3
         9I/H3IBapXXEtXxiPuwA7s5u/SWjYU6ccll66NbxpGh9h8RJzO4iIhsOBne8Aa1+Kt4b
         2qQTQ+kytiHn3fDNTDELeuQU97QdBOz83ogKXYKF9wdkXSl+Do9sKDPx/qcNmbYe5z7X
         dXhWtwhwDf8QWSBoqbSg0qGaZPZzxiw+qCtw78lWpH2pZSdfuvPAu/Eli5jAIuJN6yXB
         2Vg9gxvCbqBqwBnuPLViKu/2uOEuz3DxzHNtfYXESlhehTPOgvsVJ2jEHGG30T5jlWW0
         Meaw==
X-Gm-Message-State: AOAM532S+d0NMbhp8Ljs3/2NR0vnUQgvOUZHuc3AG2se4FmirFYyiCP7
        /5/mJYVzU/Zu01yRxBcS5Q0iZuNCjcJNdA==
X-Google-Smtp-Source: ABdhPJwTIAxsKIXfyFHveyJMoKkxFmW1Pz1uL0y9WC2bZN9Iw6ytpyB+T59A7762jsEVXvf79P8D9w==
X-Received: by 2002:a05:6402:4396:b0:418:d776:14c1 with SMTP id o22-20020a056402439600b00418d77614c1mr24577207edc.127.1647885616828;
        Mon, 21 Mar 2022 11:00:16 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id c4-20020a170906340400b006d077e850b5sm7189974ejb.23.2022.03.21.11.00.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 11:00:16 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id r64so9039932wmr.4
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 11:00:15 -0700 (PDT)
X-Received: by 2002:a05:600c:4f10:b0:38c:ae36:d305 with SMTP id
 l16-20020a05600c4f1000b0038cae36d305mr278333wmq.34.1647885615421; Mon, 21 Mar
 2022 11:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
 <20220316172814.v1.2.Ib0fbb7e5218201c81a2d064ff13c9bc1b0863212@changeid>
 <c808dc08-09c8-bb08-6656-18dd649af036@quicinc.com> <YjiWXA40Nh0jBPO9@google.com>
In-Reply-To: <YjiWXA40Nh0jBPO9@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 21 Mar 2022 11:00:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WQFbsFQdnUsroCdgKaHfZEyDTdRmvuEaY_ymuBrDt76w@mail.gmail.com>
Message-ID: <CAD=FV=WQFbsFQdnUsroCdgKaHfZEyDTdRmvuEaY_ymuBrDt76w@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: sc7280: Add 'piglin' to the
 crd-r3 compatible strings
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"Hi,

On Mon, Mar 21, 2022 at 8:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Mon, Mar 21, 2022 at 11:14:56AM +0530, Rajendra Nayak wrote:
> >
> > On 3/17/2022 5:58 AM, Matthias Kaehlcke wrote:
> > > With newer bootloader versions the crd-r3 (aka CRD 1.0 and 2.0) is
> > > identified as a 'piglin' board (like the IDP2 board), instead of 'hoglin'
> > > Add the compatible strings 'google,piglin-rev{3,4}'. The hoglin entries
> > > are kept to make sure the board keeps booting with older bootloader
> > > versions.
> >
> > The older bootloaders really look for the google,hoglin-rev3/google,hoglin-rev4
> > compatibles or just google,hoglin? If its just google,hoglin, won;t it pick the
> > crd-rev5+ dtb now?
>
> They look for the -revN compatible, I confirmed that on my CRD 2.0.

Thanks for confirming Matthias! I'll also note that, in general, these
"google,board-revX" type compatible strings are all programmatically
generated. You can see at:

https://chromium.googlesource.com/chromiumos/platform/depthcharge/+/refs/heads/main/src/boot/fit.c#70

...and whenever it's using this normal logic then it has a standard
fallback mechanism in place. On a random board in front of me
depthcharge prints out:

Compat preference: google,lazor-rev3-sku0 google,lazor-rev3
google,lazor-sku0 google,lazor

So it'll first try the very specific verison with rev and sku. Then
just by rev. Then just by sku. ...and if none of those match it'll
pick a device tree that has neither. The "newest" device tree always
has no revision number specified and that way if software doesn't
change but the revision bumps then we have no problem. We only add the
revision info for old boards.

There are a few cases where we add special compatible strings and
these don't match on board/rev. This is fairly uncommon, though. You
might be aware of the special case of adding "qcom,sc7180-idp"
(without rev/sku matching) for "bubs". See:

https://chromium.googlesource.com/chromiumos/platform/depthcharge/+/refs/heads/main/src/board/trogdor/board.c#136


-Doug
