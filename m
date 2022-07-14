Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4430C575179
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 17:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232300AbiGNPMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 11:12:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiGNPMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 11:12:37 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7330854C87
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 08:12:36 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id t3so2878120edd.0
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 08:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NC4d9/az3rNVuGlvggkx8InNgX//Mm2Q4UOR/vI6npM=;
        b=fLbT2DXU3kmoIKLXDYzkf19dG6ahrTexxP+gO7bZFCbY4HdBL7p2Qb1Hxxd/PdpJBK
         IIs7EJ+6FUDuDXWiay+ss+SROxu00zbvAEpaHF/wuOWiz05VoxAogq4XLwHJTIq3yrDX
         AMfryvcN5ozCWjqIIwOoCi2KTp00umnag7dXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NC4d9/az3rNVuGlvggkx8InNgX//Mm2Q4UOR/vI6npM=;
        b=LJLufn74uURW2rMqlBhBCwQ/mN/jsJKIxALapYYKuUYP4F8dAPUcM/caLM5IN8I7TT
         aNaTIf1RtjGmPeeZsNVyMbQrjOOYCJsxJTciSpdwgmXOcn33WhCVIZAHiHwkTz8z0ZaU
         TbXaq+YK/D0PHTaUW3hO+3ORMg3ICshXjSNGLphwj+jWjxhVbTmAcOEAqmBbCJYfHgcM
         toKog1b3ZbEqu2WM50LHzUYCDbS7buZ6oNN1Bz0TjoEuipsKhNWVe241dXqgZUwI+UAD
         /srJRMTeHRsg6grjutk4LKDw09pwV+i2We8Tl8RPHZAmCTtOdPpk60c7JkWvONyxWQPl
         cqNA==
X-Gm-Message-State: AJIora/+n/yM9kn5XcnDKdEuCo/U6a3VB8FbjyoYr4RBFBgb+MNlOrMV
        QSsGrjPHDXI1XVBkXmewzw0rhUB3Q5HmvfTf
X-Google-Smtp-Source: AGRyM1vg2HuAfySHOArCvf+yH5z60aVhmUKQnKDdbweMR5loiuad+oArXsRibEMmJqMFaBc5XT/YIg==
X-Received: by 2002:a05:6402:16:b0:43a:f435:5d07 with SMTP id d22-20020a056402001600b0043af4355d07mr13272512edu.420.1657811554936;
        Thu, 14 Jul 2022 08:12:34 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id cw21-20020a170906c79500b00722fc0779e3sm803840ejb.85.2022.07.14.08.12.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 08:12:34 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id b6so713880wmq.5
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 08:12:34 -0700 (PDT)
X-Received: by 2002:a05:600c:1f0e:b0:3a3:52f:ac7d with SMTP id
 bd14-20020a05600c1f0e00b003a3052fac7dmr2330912wmb.53.1657811554069; Thu, 14
 Jul 2022 08:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220714061151.2126288-1-judyhsiao@chromium.org> <20220714061151.2126288-4-judyhsiao@chromium.org>
In-Reply-To: <20220714061151.2126288-4-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Jul 2022 08:12:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WrfbvFGB+3iW1KgYB-csxkW4=WcTKTe-H63HU2Bq9Riw@mail.gmail.com>
Message-ID: <CAD=FV=WrfbvFGB+3iW1KgYB-csxkW4=WcTKTe-H63HU2Bq9Riw@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: sc7280: include
 sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Jimmy Chen <jinghung.chen3@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 13, 2022 at 11:12 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Include sc7280-herobrine-audio-rt5682.dtsi in villager and herobrine-r1 as
> these boards use rt5682 codec.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts  | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> index c1647a85a371..98280436813d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>
>  #include "sc7280-herobrine.dtsi"
> +#include "sc7280-herobrine-audio-rt5682.dtsi"
>
>  / {
>         model = "Google Herobrine (rev1+)";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> index cbd8a2d1ef2a..077c58c93a65 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>
>  #include "sc7280-herobrine.dtsi"
> +#include "sc7280-herobrine-audio-rt5682.dtsi"

Hmmm, I suspect that this is going to conflict with Jimmy's patch [1]
since after Jimmy's patch then villager-r1 just includes villager-r0
and then adds the _other_ audio include. The net result of that will
be that the "-r1" file will end up including both audio solutions and
I'm not sure that plays well together.

I suspect that what you'll want to do is:

1. Move most of the existing "sc7280-herobrine-villager-r0.dts" into a
new file "sc7280-herobrine-villager.dtsi".

2. Make a new "sc7280-herobrine-villager-r0.dts" that includes the
dtsi and then the audio bit. This would also have the top-level
"model" and "compatible".

3. For simplicity sake, maybe you should add
"sc7280-herobrine-villager-r1.dts" in your patch series. Then Jimmy's
cover letter can document that his patch series is based atop yours
and his patch series can just focus on the LTE bits. If you do this,
then your patch series will also need a patch to add to the board
bindings file (Documentation/devicetree/bindings/arm/qcom.yaml), so
you'll need a patch that's part of Jimmy's patch #1.

Does that all make sense?

[1] https://lore.kernel.org/r/SG2PR03MB50066EA3AE8F8E98B67C920BCC889@SG2PR03MB5006.apcprd03.prod.outlook.com/
