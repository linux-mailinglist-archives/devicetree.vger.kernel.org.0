Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03282576376
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 16:14:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235286AbiGOOOB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 10:14:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235004AbiGOOOB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 10:14:01 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E731414026
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:13:59 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id bp15so9212322ejb.6
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gW/a2mOXib1anWeNlYWktVJh3lMiqjsROInCujAz3Rg=;
        b=YNl+MMCxEe3MHxh8BvAkFfag4BqIUEEw/2+ie9AGPk91mgDe9VI8p0TmMWiXp9z/Qh
         1ODz85KrguLaJgJKqIQaCQ/kS/+C0Gu29k9Qr6nyCjdl3TPwtA2K1lX5H6G/xsnMABj9
         nURRSweYZ1b0bNfPesonxURXYfi3BeBMJkpFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gW/a2mOXib1anWeNlYWktVJh3lMiqjsROInCujAz3Rg=;
        b=bWMawX57TSEUnuCFJOCkdpL8xC3nd/MwY+J/++i0CHRmNxaWGOLppD4dtW1rsl1yom
         Hk2mWoR+M1oy3UlZWSBzxlILtYeFuS2PiOiLcaYC+u0E7ELl9Ht+bMf/qboG3hRX3+IE
         i2TpMO4cvpBWJtNKxURd0oOGEn363Yv0Z+c9jgvuTU19kcHMGpM6RRSLKcG1PBrQvhZM
         WkM/mYy5hKoRvlYTc7QGsr6E8vizQ7tvWkM6nc1X+70YPHrGzf7ncAy97satdAhDO2AA
         xU0Z5HSXWBbbQWluomRQIPCOYFwdlhZs1WuQ5rRaY6dhppSrPCyc7pGDzwfUQS9hmd7O
         tvyg==
X-Gm-Message-State: AJIora9RrMr5NA/Y2cL1T/lS3eOkyWENXFhKFqyseYq8gwniEi25x5Pr
        jMeLgmGCHi1vP7u0150mhqTdtXjUCo+QoPKv
X-Google-Smtp-Source: AGRyM1sMb6DNW/7xGF/T4C4EuuDPkjOaFGa4k4Cm7MsVfa/gKUhC3fyju+8byVmIXxD4sWdWIE1NGg==
X-Received: by 2002:a17:907:e8b:b0:72b:811a:1193 with SMTP id ho11-20020a1709070e8b00b0072b811a1193mr14169238ejc.265.1657894438258;
        Fri, 15 Jul 2022 07:13:58 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id a15-20020a1709066d4f00b00715705dd23asm2057004ejt.89.2022.07.15.07.13.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 07:13:57 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id a5so6885501wrx.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 07:13:57 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr12818655wrr.583.1657894437105; Fri, 15
 Jul 2022 07:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220715084442.115021-1-jinghung.chen3@hotmail.com> <SG2PR03MB5006D3E109835FCAD1B01A47CC8B9@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB5006D3E109835FCAD1B01A47CC8B9@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 15 Jul 2022 07:13:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WB4ZjdimA+p0wWfqGKiLo64Vt+hg7C1_bM3hrF2DwAQg@mail.gmail.com>
Message-ID: <CAD=FV=WB4ZjdimA+p0wWfqGKiLo64Vt+hg7C1_bM3hrF2DwAQg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: sc7280: Add herobrine-villager-r1
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Judy Hsiao <judyhsiao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jul 15, 2022 at 1:45 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds sc7280-herobrine-villager-r1.dts for villager device tree files.
> Herobrine-r1 is exactly the same as -r0 except that it uses a
> different audio solution (it uses the same one as the CRD).
>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> ---
>
> Changes in v5:
> -Revise rev0+ to rev0
> -Add -r1 line to the Makefile
>
> Changes in v4:
> -Add this patch
>
>  arch/arm64/boot/dts/qcom/Makefile                  |  1 +
>  .../boot/dts/qcom/sc7280-herobrine-villager-r0.dts |  4 ++--
>  .../boot/dts/qcom/sc7280-herobrine-villager-r1.dts | 14 ++++++++++++++
>  3 files changed, 17 insertions(+), 2 deletions(-)

Other than the unclear race between your series and Judy's patches
[1], this looks good to me now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

[1] https://lore.kernel.org/r/20220714061151.2126288-4-judyhsiao@chromium.org
