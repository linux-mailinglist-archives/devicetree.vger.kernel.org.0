Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA8904B561D
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:27:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243769AbiBNQ1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:27:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236773AbiBNQ1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:27:19 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A1A6C73
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:27:11 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id n5so12720634ilk.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y/lXxznWJk6t4L5VwAqaMS0+NBIKS0zk3kQAGJ/1b/k=;
        b=JZLXUfRWra54tioTiu2lrYxDJmGtcUX8NNdySo/F7BWBvDruBVnf1bOydWNgXOogN5
         Iz7arnCufrG1kJ9V7DcoDSRxMCbNRVV3btf8XwNiGUJYm3d1E2eS92/RlK7bOd1VQe5G
         IQJLzFRnqEVjliOJs+NOd9nwMMPcEvNaZXjNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y/lXxznWJk6t4L5VwAqaMS0+NBIKS0zk3kQAGJ/1b/k=;
        b=5Jx6631ZN+gJCbCtfkMrdgLkpsKBzmL8i0ms1KYP0vrA5j4lXOn7SVTDI5E+p3/gpN
         NpQY66A9X7U7ELVYXUSU9qkrZnTqIKHfkurI6vCbTNtvxAt5Q+sSpz+8KUZBnsZF7Yyd
         RdP0P1LRFrSafqu5NXoF2JVfFp6GftigSRnIub5diODnEwJBbCiNdpWAccdhqTVt4PSx
         zJfZObwZ1aoLwkDJTZ90SJOmZyGE9kRCzspUVJKMJU3ffawYJCSwkAhrtJTNQhchcMoz
         ygborZFHksLEZDNdgWsoTPCJG93OUQhYJgGEyIaSEKQc/XF/eTZc7uViQL2q5BpjtQ5E
         2utw==
X-Gm-Message-State: AOAM533j0vxQzjFPiWsWHs5BvlZTAg0hnZhxiLsfvC7yM+VhiqDxmX35
        JU3WwUl7m8Zw3KhYAWID+hd9WWw0I5TLvg==
X-Google-Smtp-Source: ABdhPJya16FY/NmtGYfpLWf4a03EGbSX1BPQK1DrhTm1INr+5olB5POptEvzEAKShVbDil2rrZ2V6w==
X-Received: by 2002:a92:c26b:: with SMTP id h11mr113826ild.197.1644856030306;
        Mon, 14 Feb 2022 08:27:10 -0800 (PST)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id w10sm20646914iow.44.2022.02.14.08.27.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 08:27:10 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id c188so20485617iof.6
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:27:10 -0800 (PST)
X-Received: by 2002:a05:6e02:19cf:: with SMTP id r15mr119973ill.180.1644855716786;
 Mon, 14 Feb 2022 08:21:56 -0800 (PST)
MIME-Version: 1.0
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com> <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214081916.162014-4-krzysztof.kozlowski@canonical.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 14 Feb 2022 08:21:45 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VNarYKq8cZVqWfFKccTqxH46Wmm8Tr979EVsiAoOnT_g@mail.gmail.com>
Message-ID: <CAD=FV=VNarYKq8cZVqWfFKccTqxH46Wmm8Tr979EVsiAoOnT_g@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: align Google CROS EC PWM node name
 with dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, chrome-platform@lists.linux.dev,
        LKML <linux-kernel@vger.kernel.org>,
        linux-pwm <linux-pwm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Feb 14, 2022 at 12:20 AM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> dtschema expects PWM node name to be a generic "pwm".  This also matches
> Devicetree specification requirements about generic node names.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi               | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi             | 2 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi             | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi                 | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
