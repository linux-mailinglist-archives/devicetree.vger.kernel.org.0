Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49C5B3E9AD4
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 00:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232438AbhHKWUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 18:20:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232415AbhHKWUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 18:20:55 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED792C0613D5
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 15:20:30 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id n1-20020a9d1e810000b0290514da4485e4so2508991otn.4
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 15:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=aM5pemF/hjXeqJxnJV2c9famIH51MxpG7DrVSw40DgI=;
        b=TSEtzyPQ7rnKwybhlxpAnZoLWZU0GEZ4A8A9dT3JgPttpZFdHdk6D44igcgA+3+7RB
         0qIJjQCBXMYFkYZ2F9UEkMUvqjBaerpIO7TACCTaRTX0xsbvhARRO7GenKvIW3EqpJYJ
         NiO9WQTOEwWqpGOMgJmlIvdnj2OMnJS9t/hpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=aM5pemF/hjXeqJxnJV2c9famIH51MxpG7DrVSw40DgI=;
        b=DsPqhmN4B9Mvx0O/4zFU86kfg2FjMZoCyCc6du2xyg3d+5NIsjjmmrnRg18+5H0DvK
         fnwnrirU2CM5IgUyW88umSByMOZltIsOw0pxc4aMhw5Tg1F8XiWn7UmhNTMDxj0uQB6l
         XaENKjMecHpxjjoE8aSUp13pBOkqXM+czU9SXnNwIXgHEoEzvHQXOTceFBuyBictp45f
         v0Nny4cm0so4ovkxlLh9JJ8d3/feIYiEztCNTGxGYO3cOSs+kHXW7kCJxeBHmXy2Jx4F
         fch1OvoH52Uv0yYDh2NOj/nYF/I5TqAXPu6RrtwC8jOvylLXVSyE53ZkzufTobMmTOn9
         Xc3Q==
X-Gm-Message-State: AOAM531xfexZ4nr+mwoCSS+H7GW7gdg/xLXWCjVltGshyzE5zPGgldUH
        Wbs5hgLV7zxWFT3PSj68tsrhy6KzaNsuApdl+VjpAw==
X-Google-Smtp-Source: ABdhPJxlM5E6UvFsJ5SXlrT4XmymBfGA3kbwPWgC7qKnSZ1DmZLK/zjiuiAwcmwjOmYCunqtLCaq1bfGnpXuuRXb+nM=
X-Received: by 2002:a05:6830:1490:: with SMTP id s16mr920120otq.233.1628720430342;
 Wed, 11 Aug 2021 15:20:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 11 Aug 2021 15:20:29 -0700
MIME-Version: 1.0
In-Reply-To: <CAD=FV=VgwLNiAZKur7PPpB=_mOnZrkBa2cG1DZYsCxQRAd42NA@mail.gmail.com>
References: <20210721080549.28822-1-srivasam@qti.qualcomm.com>
 <20210721080549.28822-3-srivasam@qti.qualcomm.com> <CAE-0n52hdv0ehzQi2si3rPumBiO+=stoU3kkK=0e7fU_5+xUZw@mail.gmail.com>
 <CAD=FV=VgwLNiAZKur7PPpB=_mOnZrkBa2cG1DZYsCxQRAd42NA@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 11 Aug 2021 15:20:29 -0700
Message-ID: <CAE-0n53C9z12zW5C-fZoaPzT8QeNNpvYhVq-M85hwRFeWUMzzQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sc7180-trogdor: Add lpass dai
 link for HDMI
To:     Doug Anderson <dianders@chromium.org>
Cc:     Srinivasa Rao Mandadapu <srivasam@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2021-08-11 15:10:09)
>
> I swear I provided feedback just like that. Yeah, here:
>
> https://lore.kernel.org/r/CAD=FV=W3X8W90vPdrDAymzTKj-J7QPyn4ukaLSOhEkCme3+r_Q@mail.gmail.com
>
> I think the problem is that the wrong patch landed. The one I see that
> landed last week was v4 but I also see v7 of the same patch:
>
> https://lore.kernel.org/r/20210726120910.20335-3-srivasam@codeaurora.org/

Yep. See https://lore.kernel.org/r/20210811194719.856593-1-swboyd@chromium.org
