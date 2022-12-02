Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 370A063FD4A
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 01:50:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231774AbiLBAul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 19:50:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbiLBAuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 19:50:40 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79621CE416
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 16:50:39 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id s12so4538285edd.5
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 16:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F7pFB+ZvlcrA8R79s7DUy7BFXLwcQol/AYjTA4sACPo=;
        b=L9GHDfR84Id1CY6HR4mg5KxP96kN0GT3UaBgmyWCgrj+17Kj66luUSBTwgx+QJANfU
         ZNWC4ILSyeqj48kxKnBUQ+aN1bUUmji4fvyf/IljruXwv4pDdYOmZCB7zzmNMtXgueIX
         6vd19tOOrS+jBOQKfR1Pa3GlU7MXJlliRINiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F7pFB+ZvlcrA8R79s7DUy7BFXLwcQol/AYjTA4sACPo=;
        b=AQkw7Ih2uYKPJBsbejMCTkzm57zwSuusEuFb8dFVociv/aWv6FZclbozXki36SC+Dp
         y5/dz1WkNVjjbRsW9zRLmfLS7MpeSzd6BlVuOUaZ6hEFc/D62tyyZlRjxYGX94RgYpx4
         roQbMWHJV6UxveEHirhMLWpNZO/iUelp/v3GQllE9eLTbOonp2TAQbdCbEdbLuTChnBW
         LesgsTx2HXruhvnYk3Lr7M8JErVBox/zQiUFly28ajGHCwydDtOq56K4ErxMAG8Jzqk0
         fnfN+TgjsMhO+5V1uB8BUHoWGPdnhCJ8ckoMozygaQHnxXfh525x4uS7KkJcpn00asgy
         /7Fg==
X-Gm-Message-State: ANoB5plpP94ycWgTJmkuXuIiT/+vOnqln7C2CRtTGngPT7ZlPvhD7j4v
        tx0DBxSl0I0hUHDYIVciKuvnRQm5CFTXWfge
X-Google-Smtp-Source: AA0mqf55Bi72MWTjZs8qpTCeDqUYQQiSpE84DvS4kiTTTE8wdCq2CFMo5XgCQ72k50kAI5VVz0HdtQ==
X-Received: by 2002:a05:6402:104b:b0:461:7d1f:1a7b with SMTP id e11-20020a056402104b00b004617d1f1a7bmr43419104edu.400.1669942237882;
        Thu, 01 Dec 2022 16:50:37 -0800 (PST)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id 9-20020a170906318900b007b839689adesm2365959ejy.166.2022.12.01.16.50.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 16:50:36 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id m7-20020a05600c090700b003cf8a105d9eso3087242wmp.5
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 16:50:36 -0800 (PST)
X-Received: by 2002:a7b:c4d8:0:b0:3cf:b0ed:de9d with SMTP id
 g24-20020a7bc4d8000000b003cfb0edde9dmr36726708wmk.188.1669942236049; Thu, 01
 Dec 2022 16:50:36 -0800 (PST)
MIME-Version: 1.0
References: <20221118164201.321147-1-krzysztof.kozlowski@linaro.org> <20221118164201.321147-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118164201.321147-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 1 Dec 2022 16:50:24 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XeaskcBRVRQDoha7Xiv9j57fuvtcSJUeN7HCZSGVJ8uQ@mail.gmail.com>
Message-ID: <CAD=FV=XeaskcBRVRQDoha7Xiv9j57fuvtcSJUeN7HCZSGVJ8uQ@mail.gmail.com>
Subject: Re: [RFT PATCH v2 2/2] arm64: dts: qcom: sdm845: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Fritz Koenig <frkoenig@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Nov 18, 2022 at 8:42 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DT schema expects TLMM pin configuration nodes to be named with
> '-state' suffix and their optional children with '-pins' suffix.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Doug Anderson <dianders@chromium.org>
>
> Tested on Qualcomm RB3. Please kndly test a bit more on other devices.
> This should not have an functional impact.

Added Rob Clark and Fritz who are the only people I know that still do
anything with cheza.


> -       wcd_intr_default: wcd_intr_default {
> +       wcd_intr_default: wcd-intr-default-state {
>                 pins = <54>;

Not new to your patch, but I'm surprised it truly works to use an
integer for a pin? How does it know that 54 is an integer and not a
string???


>  &qup_uart3_default {
> -       pinmux {
> -               pins = "gpio41", "gpio42", "gpio43", "gpio44";
> +       cts-rts-pins {
> +               pins = "gpio41", "gpio42";
>                 function = "qup3";
>         };
>  };

FWIW, I would have expected that the SoC dtsi file would get a "4-pin"
definition (similar to what you did with qup_uart6_4pin) and then we'd
use that here.


>                         qup_uart6_4pin: qup-uart6-4pin-state {
> -
> -                               cts-pins {
> +                               qup_uart6_4pin_cts: cts-pins {
>                                         pins = "gpio45";
>                                         function = "qup6";
> -                                       bias-pull-down;

After your patch, where is the above bias set for cheza, db845c,
oneplus, shift-axolotl, ...?


>                                 };
>
> -                               rts-tx-pins {
> +                               qup_uart6_4pin_rts_tx: rts-tx-pins {
>                                         pins = "gpio46", "gpio47";
>                                         function = "qup6";
> -                                       drive-strength = <2>;
> -                                       bias-disable;

After your patch, where is the above bias / drive-strength set?


>                                 };
>
> -                               rx-pins {
> +                               qup_uart6_4pin_rx: rx-pins {
>                                         pins = "gpio48";
>                                         function = "qup6";
> -                                       bias-pull-up;

After your patch, where is the above bias set?
