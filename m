Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9E9512453
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 23:07:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237410AbiD0VKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 17:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238010AbiD0VKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 17:10:13 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D32D95DE56
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:06:18 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id bv19so5801416ejb.6
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jjauEsEHj5sd6R0bf8PubRvrJywSXsRV0wPk6pUL5dM=;
        b=lqj+aRvM9wHKgYPNZJHCdMN7jqtNcF8wOkGevnc9WIDv+1Uh+iBIxocTBII9pBiT8a
         GJyn1HWGPh1cAam7gj83EA9YuXCRZZ8IbQ8zjznfC4RczXzNk7R60uGz78vmDBA9KdIj
         fq78Fg9uk9GVx2GI4ERJEBWCUC+hso/XqgVjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jjauEsEHj5sd6R0bf8PubRvrJywSXsRV0wPk6pUL5dM=;
        b=zI2/X9o4nopB7W6jCU1462ZT47u6tULqGS8gva+XUXRX8HHnYsGXYl8EGiItsehpMk
         YF6Y5fhsvRKlN173MC9xCBQTdHMQaIEBR93WgvomtSDLQcT+wXQ/487RbexLQgLsObkv
         P8UnjFA3NG28nc2V77GF76EBmimHnVCo2+gXGCzkOOSGIguVt4zvM1+1OzwaLBc+wCjM
         2LGkgBnIqL0Yop8a/XOIWoFJHoNm14aEmBw7rDMOj5f/uiurrporVTa8Kkg08+3dOFrh
         flaOq76eAO66ysJsCJQkB8g0JzuMn2RnlUV/vPkOWYWwnlhtL4yQ97UjWtIAAv6S35ar
         di8w==
X-Gm-Message-State: AOAM533GHRL81QRW3KIVmURnsujuia5sOVRNroh3lt3D1LFBz/tzkHvD
        yJ4IwMOZrMVEw5+d/CwAqujCiva5qCTuHM8X
X-Google-Smtp-Source: ABdhPJyke26SFrpjX8vcC2hU6/oWlFkkg0QwVIFpYYqXYXO9zCG/mjClzyKHLNWj4YgESLBd0c8w1g==
X-Received: by 2002:a17:907:3d91:b0:6df:a01c:f7cd with SMTP id he17-20020a1709073d9100b006dfa01cf7cdmr28529313ejc.255.1651093577194;
        Wed, 27 Apr 2022 14:06:17 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id q8-20020aa7cc08000000b0042617ba637esm203439edt.8.2022.04.27.14.06.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 14:06:15 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id m62so1820242wme.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 14:06:12 -0700 (PDT)
X-Received: by 2002:a05:600c:502b:b0:38f:f7c6:3609 with SMTP id
 n43-20020a05600c502b00b0038ff7c63609mr27998069wmr.15.1651093572373; Wed, 27
 Apr 2022 14:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220426170306.v22.1.I7a1a6448d50bdd38e6082204a9818c59cc7a9bfd@changeid>
 <20220426170306.v22.2.I18481b296484eec47bdc292a31fa46fa8c655ca9@changeid>
In-Reply-To: <20220426170306.v22.2.I18481b296484eec47bdc292a31fa46fa8c655ca9@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 27 Apr 2022 14:06:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UWPG6cZ_dcuXSKuO8ZA34J5TE1OJDxs7B3qn34V6n+eg@mail.gmail.com>
Message-ID: <CAD=FV=UWPG6cZ_dcuXSKuO8ZA34J5TE1OJDxs7B3qn34V6n+eg@mail.gmail.com>
Subject: Re: [PATCH v22 2/2] arm64: dts: qcom: sc7280-herobrine: Add nodes for
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
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Apr 26, 2022 at 5:03 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add nodes for the onboard USB hub on herobrine devices. Remove the
> 'always-on' property from the hub regulator, since the regulator
> is now managed by the onboard_usb_hub driver.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v22:
> - patch added to the series
>
>  .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

Just like on patch #1, I presume it will be moderately annoying if
this lands in the Qualcomm branch before the driver lands in mainline?
I guess very few people have herobrine hardware, so maybe not that big
of a deal...

In any case, I'm happy with:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
