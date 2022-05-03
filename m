Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB2CF5188A5
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:33:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238599AbiECPhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 11:37:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238591AbiECPhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 11:37:14 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A2392CE1A
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:33:40 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id o5so9970340ils.11
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gvRzGHxzShcbzeb9SvoZt+wpZS+HlwfYAw4KbiIeK9c=;
        b=Fz56/UjZT+JA/KlltkVjMTZpS/FLpEs3AL3ljnlrpQHHY8+55+WJNjdp1tMejkjHtc
         B8bI1ZlgayDQbuYu5iZLJSRFBB2pY9+H7DO4/ATwr+KUcTZQZCqEWxgTxYkvcEzjxUGV
         eRNBrmVcR84f7wLKt6jRx6+49iSe6XvmpqhR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gvRzGHxzShcbzeb9SvoZt+wpZS+HlwfYAw4KbiIeK9c=;
        b=7jkxjtW1ls2yOe1y+vIxxnoReZLKLDOS/H7NbTwSfcL8e4Mqq+SgdahwZJUlzN0uyh
         JYEwCoAKAyveZ6+RJFtqgxZ/OuJke16ZMNwKe4Vzcaamj+jI2vT1kvOr/6wcmmAMeEXv
         84FXPE5ET7EH/ZwgWbZ/ibcYGDamB0koyarhLUoxsRo5Aa7oEQa2F0zV76HO6pEyjazO
         YxvX4VeEBy/oA1dmgYVGvbVVwwSMl7z/7AUBKKI/hY9l5O2eefEGR/MqTEsv96rdil6J
         e0DfChLmotNBho9YuvtrFdal5tPYghzFkGLHX5WaljAIv2HQFT44F9j1A4EaaO3A7n7E
         KE9Q==
X-Gm-Message-State: AOAM530Z87IacDE9tZMj+9Oqm98lzu9UmM5yrWKy6FTZIA+h95XAdO6o
        nTtjEqcJQ8GVUlKURwF8bzkOj+UZJUSEvrdJ
X-Google-Smtp-Source: ABdhPJwWY26hZIZrcSefEoo/n03AGfU0RMu6DPImgE84QjdPGSIpTtymPN098XC+lQjkoxYarRk4rw==
X-Received: by 2002:a05:6e02:19cf:b0:2cf:275:1284 with SMTP id r15-20020a056e0219cf00b002cf02751284mr5669631ill.175.1651592019776;
        Tue, 03 May 2022 08:33:39 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id d29-20020a023f1d000000b0032b3a781789sm3937642jaa.77.2022.05.03.08.33.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:33:39 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id e3so15606967ios.6
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:33:39 -0700 (PDT)
X-Received: by 2002:a05:6638:35a0:b0:32a:8f99:fa03 with SMTP id
 v32-20020a05663835a000b0032a8f99fa03mr7388950jal.8.1651592017817; Tue, 03 May
 2022 08:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220428094043.v23.1.I7a1a6448d50bdd38e6082204a9818c59cc7a9bfd@changeid>
In-Reply-To: <20220428094043.v23.1.I7a1a6448d50bdd38e6082204a9818c59cc7a9bfd@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 3 May 2022 08:33:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VVVRj=FeW0dkPs+KGD_x=Xc+Vy9GiMsqZzW6OSirnuQw@mail.gmail.com>
Message-ID: <CAD=FV=VVVRj=FeW0dkPs+KGD_x=Xc+Vy9GiMsqZzW6OSirnuQw@mail.gmail.com>
Subject: Re: [PATCH v23 1/2] arm64: dts: qcom: sc7180-trogdor: Add nodes for
 onboard USB hub
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 28, 2022 at 9:41 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add nodes for the onboard USB hub on trogdor devices. Remove the
> 'always-on' property from the hub regulator, since the regulator
> is now managed by the onboard_usb_hub driver.
>
> For anyone using trogdor-based devices on Linux, it should be
> noted that this requires "CONFIG_USB_ONBOARD_HUB=y".
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
> Depends on "usb: misc: Add onboard_usb_hub driver" [1] which landed in
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-testing

Looks like this got reverted again. :( So the dts changes definitely
need to be put on hold until it gets sorted out...

-Doug
