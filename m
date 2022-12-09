Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC9F564875D
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 18:10:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbiLIRKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 12:10:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbiLIRJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 12:09:54 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC99286C5
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 09:09:34 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id m18so12963719eji.5
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 09:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NXbFEB1xKk4N48FcslTMhY6JVh3nMLyk4J4qoIMRvnE=;
        b=nUmD78MQ7NnK3IqCVJDUrdNthqq8xbLAX87n4IQsS384SzBm/UB+io7PLK0DDRodk5
         z7o04SMoI/orbl8rDMTFvF6SuE574vHt4H2xj02QeYta2t/AzsrIeRZ8UKjyXS2DKdsQ
         ANcCzBzXauN0otQHC6aH2BnFLuAGVKDZpXmAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXbFEB1xKk4N48FcslTMhY6JVh3nMLyk4J4qoIMRvnE=;
        b=Dg4rl3DpSrz1/Z/AOf/XpgzA97ox2AseFETtpq3bIUL84eQKi7vYeD/k3rg0w3uU3F
         geYv6QhoY/YddYjOLwSxuwTGFbhCeopEVKYgUOycgzXgXriQPsF3zpJxaASdvZbEU/NO
         c6WR5kOSlrPm6gdOlm/5G5XadNupQrsLW22r5qCogJLHtoh+6uSDr99zhqcG7TDEPmQD
         avcPZXyqCvAPlWyKQTuHgbcDM9msv4laOKBnLipH0n2CcGb5At7VSr5r+KvwPWCVAKkR
         O04nwALet7jd2Td5SpsXUsSkwho2wgaeqDq3NsCb7SXk169Qx4bTfL5cdFEx6niCqFDO
         k/UA==
X-Gm-Message-State: ANoB5plRlTxqBTi6sBKiqZYJThubvo585Ny1jHXZJ7iPHgZgdCUKUwNr
        n1GZnRXLqTyRnsNdfPVo9Qwnbo4++sJ6u6tqjO8=
X-Google-Smtp-Source: AA0mqf6z8vepEdNdTGkXZ57/L9Tol1KwT0lekfsAxbNhbnAy5VZ1x7NMmay/sZdks6x58cIwG71PPA==
X-Received: by 2002:a17:906:37ce:b0:7c1:41bb:70ac with SMTP id o14-20020a17090637ce00b007c141bb70acmr2155757ejc.64.1670605773104;
        Fri, 09 Dec 2022 09:09:33 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id b2-20020a17090630c200b007b839689adesm120971ejb.166.2022.12.09.09.09.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 09:09:32 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id h7so5836433wrs.6
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 09:09:31 -0800 (PST)
X-Received: by 2002:a5d:4943:0:b0:242:3ca3:b7bd with SMTP id
 r3-20020a5d4943000000b002423ca3b7bdmr18075619wrs.583.1670605771352; Fri, 09
 Dec 2022 09:09:31 -0800 (PST)
MIME-Version: 1.0
References: <20221209020612.1303267-1-dianders@chromium.org> <20221208180603.v2.4.Id132522bda31fd97684cb076a44a0907cd28097d@changeid>
In-Reply-To: <20221208180603.v2.4.Id132522bda31fd97684cb076a44a0907cd28097d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 9 Dec 2022 09:09:19 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WnjpOSvQ88gQJDJ5HFipBU5K5JRApRjZ0QYhi9AkYOTQ@mail.gmail.com>
Message-ID: <CAD=FV=WnjpOSvQ88gQJDJ5HFipBU5K5JRApRjZ0QYhi9AkYOTQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sc7180: Add pazquel360 touschreen
To:     Bjorn Andersson <andersson@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, mka@chromium.org,
        Yunlong Jia <ecs.beijing2022@gmail.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-input@vger.kernel.org, swboyd@chromium.org,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Thu, Dec 8, 2022 at 6:06 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> The touchscreen was supposed to have been added when pazquel360 first
> was added upstream but was missed. Add it now.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> (no changes since v1)
>
>  .../dts/qcom/sc7180-trogdor-pazquel360.dtsi   | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi
> index 5702325d0c7b..54b89def8402 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi
> @@ -14,6 +14,27 @@ &alc5682 {
>         realtek,dmic-clk-rate-hz = <2048000>;
>  };
>
> +ap_ts_pen_1v8: &i2c4 {
> +       status = "okay";
> +       clock-frequency = <400000>;
> +
> +       ap_ts: touchscreen@10 {
> +               compatible = "elan,ekth3915", "elan,ekth3500";
> +               reg = <0x10>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&ts_int_l>, <&ts_reset_l>;
> +
> +               interrupt-parent = <&tlmm>;
> +               interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
> +
> +               hid-descr-addr = <0x0001>;

I happened to re-read this and did a facepalm here. The
'hid-descr-addr' doesn't belong here at all (it's for a totally
different type of touchscreen), but it was there in our downstream
branch (incorrectly) and I just copied it over. I even had noticed it
before, but forgot it yesterday when posting this series.

Just to get things out of the way, I'll post a v3 now. Sorry for the noise.

-Doug
