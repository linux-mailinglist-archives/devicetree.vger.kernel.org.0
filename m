Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C61E52F415
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 21:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353362AbiETT6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 15:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351687AbiETT6H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 15:58:07 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C5FB19C397
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 12:58:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id rs12so5760194ejb.13
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 12:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=91hRve8uPKHyD7cyqNThpoM05puNaYd3DvR3HzXYuko=;
        b=lpqvBoM6Gr/2Au3IjwUDRf3AW+vRv/AgjUKjUMpr2Tw/h+UWoftPNUSJ2yRY2vUkKR
         yJTMS6AqC12+s4S/tRChmy7WAqYdVjWFuZnKS4oknUkTe1hU6PWku2CFzVRkEtgOLWeo
         /48NID9BaVY3CXLyUDP/zbnXK78bYQY8hNCEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=91hRve8uPKHyD7cyqNThpoM05puNaYd3DvR3HzXYuko=;
        b=Zr/o8+hgHzFjKFseRi2SuG3UbHvhSNZhCkMVKWEIonXZWQYEMn8YNckwa+rI/Sl1fh
         leshBgAKWV44Tll2WMHeQKokvhX8k9/6GTD+19gEDXxnwx1eUdQWfhFOh4KYn06oKZnC
         PzouAIa6CsK6sHwgqSp9qUL9V5fd2MeFw+Yym4TeuxuFhzfvifttR78PK0nZ8eWI5VHT
         OTOJzLHlO5Ff1k4mfkwXkDZmjhMAKdwb56spsiG2sGS2BQndETMuW9T1DzZmFyGR1XPX
         CLhA0cJeVQT4FWII44004kx67spgCAzHdA7HzS33a31dmAUZzr660tf+mJV5YwJMjvAX
         mQyQ==
X-Gm-Message-State: AOAM5323UBkHP4HTyQZAFDLnCiNrL+5h1bCBF7lfAHK2nU8kCIE4ULL0
        eIKROIjb6J+snAyyKXhLkP38VAOSyqgIjyMsg0c=
X-Google-Smtp-Source: ABdhPJzBelZHUYr9DmwjXgObrv0HmnGAc2KMPWlIruuWOOOSZoFSfs0o7fXlPwgNJjRj7lrYTyp1vA==
X-Received: by 2002:a17:907:7207:b0:6f4:43df:abff with SMTP id dr7-20020a170907720700b006f443dfabffmr9898014ejc.681.1653076684612;
        Fri, 20 May 2022 12:58:04 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id en22-20020a17090728d600b006f3ef214df9sm3453174ejc.95.2022.05.20.12.58.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 12:58:03 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id bg25so5060535wmb.4
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 12:58:03 -0700 (PDT)
X-Received: by 2002:a05:600c:acf:b0:397:345f:fe10 with SMTP id
 c15-20020a05600c0acf00b00397345ffe10mr6514763wmr.15.1653076683048; Fri, 20
 May 2022 12:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220520124834.1.I7c51c6255bb53086a82c5b3f4fafffcc5ccbc4ae@changeid>
In-Reply-To: <20220520124834.1.I7c51c6255bb53086a82c5b3f4fafffcc5ccbc4ae@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 12:57:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X4GBLoTuOcHetAFXWLQKFF0yn=E5yv0ExTg8Mwrw1iUw@mail.gmail.com>
Message-ID: <CAD=FV=X4GBLoTuOcHetAFXWLQKFF0yn=E5yv0ExTg8Mwrw1iUw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Enable keyboard backlight for villager
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 20, 2022 at 12:48 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Villager has a backlit keyboard, enable support for the backlight.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts | 8 ++++++++
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi            | 2 +-
>  2 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> index d3d6ffad4eff..b6a6a1454883 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> @@ -58,6 +58,10 @@ &ap_sar_sensor1 {
>         status = "okay";
>  };
>
> +&keyboard_backlight {
> +       status = "okay";
> +};

Instead of doing this, can you just get rid of the status = "disabled"
in herobrine.dtsi? I don't think there's any benefit to having two
levels of "disabled" in the herobrine device tree.
