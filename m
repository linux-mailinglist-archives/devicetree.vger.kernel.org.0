Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6838255A337
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 23:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbiFXVCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 17:02:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231986AbiFXVCH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 17:02:07 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1215B79297
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 14:02:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id u15so7041477ejc.10
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 14:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Or58d3ZkEn57TFqLS2gsXrc8iLHGrlKLbW8WGHYFJRc=;
        b=hAWheESAndEXKAPbcUiqlEueWvXAeJOuFEGkSwpyB7xj3pkczS6kBS5vMNKLC+N4hl
         fbhuEaZlkv9aPLOglB7zgD6r6ICdBm9a8yhU/IVxiTyr0mJTB3BqtymT1jMS0XFgybXq
         Wef4CYmSGYRxPZYezK9LaBzQifGnobDAuguds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Or58d3ZkEn57TFqLS2gsXrc8iLHGrlKLbW8WGHYFJRc=;
        b=DBdc+4tmlmtSqjUXzWujMZl/rREUcAxzcEBzQTqQk0cnTW/eidEevMdLxrj6rAXs85
         lVQxDnKX1f89GL9dbWBddHh6byho3+nedpo8qkZNsgnSYL1qjWtv9t+BDRbv94+sBdOo
         hbA41EO3oReHERMEAhLAcgxJZBgtwRtB5j8LUgoW0nv3wJx/8i7rX5jLrGq44lkBms4L
         j19jmoy3RxCzVHr7ciEV/mhT8CpuMbL9G/qp9PGoFvsE91Drb/7gzAkf3rxvv2xBK3Fl
         HI+p+gmWR07gJBSsFHLoOUziWnAScvEjyiGNAjipHeUdwEhu49kmfwpFl85Xhu1360ch
         YNtA==
X-Gm-Message-State: AJIora8UTBQanitHcXZd1dgKfRMRH/0oCj4LSPYVkuHUNtDWCyqYWfm7
        NS6XIvA7Xx40UQaSMZjLszN97NqSrnQF7YZv/Bk=
X-Google-Smtp-Source: AGRyM1tPJr4MdKIjGFBH3oskMcrZmN4ihvbYBq3GsHTeDoIp+qPA8q8JeAPVU9NJAkEeNbOHyhrq3g==
X-Received: by 2002:a17:906:1501:b0:715:76d0:862a with SMTP id b1-20020a170906150100b0071576d0862amr843236ejd.681.1656104525451;
        Fri, 24 Jun 2022 14:02:05 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id b7-20020a50e787000000b0042ab4e20543sm2826773edn.48.2022.06.24.14.02.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jun 2022 14:02:04 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id g18so4631365wrb.10
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 14:02:04 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr874128wrr.583.1656104524155; Fri, 24
 Jun 2022 14:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220624185612.35493-1-joebar@chromium.org>
In-Reply-To: <20220624185612.35493-1-joebar@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 24 Jun 2022 14:01:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UbrdqXYaabK0YEyjX0zszxMkU72-4fc10zyPTs_oKG_w@mail.gmail.com>
Message-ID: <CAD=FV=UbrdqXYaabK0YEyjX0zszxMkU72-4fc10zyPTs_oKG_w@mail.gmail.com>
Subject: Re: [PATCH v11 0/5] arm64: dts: qcom: sc7180: Add five new
 trogdor-based boards
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
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

On Fri, Jun 24, 2022 at 11:57 AM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> This series adds five new trogdor-based boards to upstream.
> The patches should be applied *after* applying
> https://lore.kernel.org/all/20220602190621.1646679-1-swboyd@chromium.org/
> (arm64: dts: qcom: Remove duplicate sc7180-trogdor include on lazor/homestar)
>
> The patches do *not* expect
> https://lore.kernel.org/all/20220518172525.3319993-1-swboyd@chromium.org/
> (sc7180-trogdor: Split out keyboard node and describe detachables)
> to be applied.
>
> The compatibles in this series are documented by Doug's series
> https://lore.kernel.org/r/20220520143502.v4.5.Ie8713bc0377672ed8dd71189e66fc0b77226fb85@changeid
>
> Changes in v11:
> - Add 'include sc7180-trogdor.dtsi' to sc7180-trogdor-pazquel-* files.
> - Add 'include sc7180-trogdor.dtsi' to sc7180-trogdor-kingoftown-* files.
> - Restore 'include sc7180.dtsi' to sc7180-trogdor-ti-sn65dsi86.dtsi.

I'm a bit baffled. Why did you add an include of "sc7180.dtsi" to
sc7180-trogdor-ti-sn65dsi86.dtsi? Am I missing something? The way you
have it will cause "sc7180.dtsi" to be included twice. For instance,
let's look at "sc7180-trogdor-coachz-r3.dts". It has:

#include "sc7180-trogdor-coachz.dtsi"

That will in turn cause these includes:

#include "sc7180-trogdor.dtsi"
#include "sc7180-trogdor-ti-sn65dsi86.dtsi"

That will in turn do:

/* From sc7180-trogdor.dtsi */
#include <dt-bindings/gpio/gpio.h>
#include <dt-bindings/input/gpio-keys.h>
#include <dt-bindings/input/input.h>
#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
#include <dt-bindings/sound/sc7180-lpass.h>

#include "sc7180.dtsi"
#include "pm6150.dtsi"
#include "pm6150l.dtsi"

/* From sc7180-trogdor-ti-sn65dsi86.dtsi */
#include "sc7180.dtsi"
#include <dt-bindings/gpio/gpio.h>

...and, as you can see, "sc7180.dtsi" will get included twice. That
will break things since it will undo some of the changes that
sc7180-trogdor.dtsi did. ...and, in fact, I just tried putting your
patches on an sc7180 device that uses the TI bridge chip and it,
unsurprisingly, doesn't boot.

If you just remove that one addition then I think we can finally be
done with this series. I tried that and my device boots.

-Doug
