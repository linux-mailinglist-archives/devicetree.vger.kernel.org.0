Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2011E4FC68F
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 23:15:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350155AbiDKVSH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 17:18:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237746AbiDKVSG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 17:18:06 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88B5E193F0
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 14:15:51 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w18so20014208edi.13
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 14:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u3IPKba47VHgKeeSAVtwOFmES8+Ru1c827vSgPVijTU=;
        b=EOnIBkqU4gAnFTiOCLuuFJuYrgMFSYtiBJzSaGkZhWnqDoH7SY2EVy1Wolr2JY+s1/
         GyAySIrorqGQ2K1QrPWNJOesbKQvhPoaTxKwZNEl5RzrcglL3fjjESgXCExNPX/fI2Ue
         qiSGZ4q5xIUeoA3H9DI8cr5VuAKNL1LKU4xDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u3IPKba47VHgKeeSAVtwOFmES8+Ru1c827vSgPVijTU=;
        b=I15B36iW8Qt9wCzElOXNlTgwer9KXDpuLTToLHxL0lKgSU5i0mCYa4QE8i8UUYSLcG
         tTIafkH6lOqJ/JtTYCr4b/eccL/TogBEvh4ZE1vpFjPo/fFw0+SmEy61riK67eQxBy5a
         8436jK7RZF+8S6RjIIHEButET4pE1E/VPeIuH3qVLmuRGKKwIgoIuXidZf6t41GObTbg
         PaJieTxhNm8oV7eVESSbWrZZ3oJ7ytotVb1ALj/Ft0wnZpOFRGAdmZPclXr0pOrNFRnn
         Qg+9B5Mkyh+HqlayYa2/TTe95m43jJGc3TGmMy3hANUracx/FkJFi901riF88rnz8iBJ
         Tuwg==
X-Gm-Message-State: AOAM5323yYea+UaHKF5BjV1uwHh9RXajGIR8wcVjbOobPNiyfDgmE8Wz
        giiA3jq5LXsogohRoEnbAYxZ0fWMGsnDWrwK
X-Google-Smtp-Source: ABdhPJwtDwMf0txbBvozoxCPUOHjHO22MJJAH3iHWPpL6ijJq8Z2kPjqGom7oyvLIj4X6OqSQ36u3w==
X-Received: by 2002:a05:6402:294e:b0:41c:c191:64bc with SMTP id ed14-20020a056402294e00b0041cc19164bcmr36179602edb.166.1649711749878;
        Mon, 11 Apr 2022 14:15:49 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com. [209.85.128.43])
        by smtp.gmail.com with ESMTPSA id e26-20020a50ec9a000000b004193fe50151sm16135600edr.9.2022.04.11.14.15.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Apr 2022 14:15:49 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id r7so10709367wmq.2
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 14:15:48 -0700 (PDT)
X-Received: by 2002:a05:600c:3ca4:b0:38e:54d0:406d with SMTP id
 bg36-20020a05600c3ca400b0038e54d0406dmr922556wmb.199.1649711748286; Mon, 11
 Apr 2022 14:15:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220411141332.v2.1.I9f06fec63b978699fe62591fec9e5ac31bb3a69d@changeid>
In-Reply-To: <20220411141332.v2.1.I9f06fec63b978699fe62591fec9e5ac31bb3a69d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Apr 2022 14:15:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X8sWD0ktzFLou1m4RSoutj7N22hjCjFVS2xqB_Lnb8KQ@mail.gmail.com>
Message-ID: <CAD=FV=X8sWD0ktzFLou1m4RSoutj7N22hjCjFVS2xqB_Lnb8KQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280-herobrine: Audio codec wants
 1.8V, not 1.62V
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 11, 2022 at 2:14 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> The L2C rail on herobrine boards is intended to go to the audio
> codec. Let's override the 1.62V specified in the qcard.dtsi file to be
> 1.8V.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - Adjust Qcard regulator override section heading
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

...and I somehow forgot to add in from v1:

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
