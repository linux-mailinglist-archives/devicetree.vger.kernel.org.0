Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5255352F43C
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 22:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348919AbiETUIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 16:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbiETUIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 16:08:13 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E5FF19CEED
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:08:09 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id fd25so12107245edb.3
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hqeP5rdlyT9Ojb1o/Y+c7yG6gWz0o8Ya2ALrWN0i/h4=;
        b=A6tATn1zlH3Ye7b1NXpayU3ySugX53PcyxEpLXWt24vF/to1SKuRlxfJtdLplXWXfq
         A0noXbVj2uPtYxryi/uvbqcqTk9arKbWsQfNmCzY6HfD5gaBDDeHd01OvZk9xwBmCj94
         IDsrT/ihzL2ZJm9QRmpcunQ9T/lHggMYZ7qko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hqeP5rdlyT9Ojb1o/Y+c7yG6gWz0o8Ya2ALrWN0i/h4=;
        b=6x7wDbnULAtofdkSUJeR569aQk9GMuvMg3HZEDJ3d/+toClVJ031ewCjEtlyn2brTz
         6U1+I/EsCariA0f8WeATuzuq1/neE/8AQPTsGTXC5XhnUfdz47fQaIBngWPlpkAb+i9o
         f56rN5ePs+eDSnuTfDFAlF4MUN4I/oZwcF/2ITV9K8McWQMNR5w2bMkGQJ1rcKYNj7QN
         8zpleSM/4bfwJJNS19k4WHgLRnTBDMbhmNAuF7wos1FbiyBBJ7nvEtl7OmF6Gh8l5p5J
         lrRki7FaowcJWc3BT7kp70flCN4iPfLoYZfJwCePYPLxEZhXlvW2rgubMs7bRZ80rzVI
         kzTg==
X-Gm-Message-State: AOAM530eAtsrxWXe7WylMRwezBH5FuPG6T9m9SHGYrZqe1vfpgbfl4tY
        OwiEgQs0onsvSZvxfe+5sx6WsPEvUA257gQZOCU=
X-Google-Smtp-Source: ABdhPJzu/zLHAGRNMrbQuDaVfeVdR+Uei0jGsl3fasyz87J4ri0zUmMvQO3GZw79bgsIv8yqYTujCQ==
X-Received: by 2002:a05:6402:2789:b0:427:bc78:85c9 with SMTP id b9-20020a056402278900b00427bc7885c9mr12857168ede.50.1653077287561;
        Fri, 20 May 2022 13:08:07 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id h23-20020aa7c957000000b00428a42815aasm4724122edt.0.2022.05.20.13.08.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 13:08:06 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id k126so5083774wme.2
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:08:06 -0700 (PDT)
X-Received: by 2002:a05:600c:3c99:b0:392:b49c:7b79 with SMTP id
 bg25-20020a05600c3c9900b00392b49c7b79mr9500680wmb.199.1653077285694; Fri, 20
 May 2022 13:08:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220518155252.1.I176d4254c79cfaafa38cbe36f066f02f819df9b6@changeid>
In-Reply-To: <20220518155252.1.I176d4254c79cfaafa38cbe36f066f02f819df9b6@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 13:07:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+4JhN8EScFDZAiduo6zy7c0pbr6EOJpSo25ctOW-zRA@mail.gmail.com>
Message-ID: <CAD=FV=X+4JhN8EScFDZAiduo6zy7c0pbr6EOJpSo25ctOW-zRA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Enable wifi for Chrome OS boards
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Kevin Lund <kglund@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 18, 2022 at 3:53 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Enable the 'wifi' and 'remoteproc_wpss' nodes for all sc7280
> based Chrome OS boards. Delete the corresponding entries from
> sc7280-idp.dtsi since this file includes sc7280-chrome-common.dtsi.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 13 +++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           | 11 -----------
>  2 files changed, 13 insertions(+), 11 deletions(-)

Looks right to me. You're also adding the firmware-name, but:

* That's in the bindings.

* The name you have there matches what's in the linux-firmware
repository in commit 0d5e9f7e0aa1 ("ath11k: WCN6750 hw1.0: add to
WLAN.MSL.1.0.1-00887-QCAMSLSWPLZ-1")

Hmmm, I guess one question is whether this same firmware would also be
used for other, non-Chrome sc7280 devices. If so then the
firmware-name probably belongs straight in sc7280.dtsi? I suppose that
could always happen in a future change if/when we have other sc7280
devices and it's clear that they're sharing firmware. Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

-Doug
