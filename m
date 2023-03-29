Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBAC26CD6C8
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 11:46:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230512AbjC2Jqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 05:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230508AbjC2Jqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 05:46:38 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F39D71736
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 02:46:35 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id p15so18506009ybl.9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 02:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680083195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=29yP5h60lzQ9egSpTFTbdlo7eAPDEAXWr32KHBglSMs=;
        b=brgqN9+UwXyVawMk0f5rX96beQUS10XnlpZhRCiTME2FUCgGPcKiim8oen7O1dKlL/
         yBhTiT/aeW6Zjte3Gpg0xWJTjPx/frs81Luaa6fF5YgZ070kk97WS1y8z0RlUvJZs9vW
         y8nfBagUpIImsEYWr4bMoEYpEZBbREXj3fYQaTDwAtLgulKRXwGhrjx7aIurRh/3C12q
         3nNbKQhzgNhfoYe+deAUOLdpEsQ9kaCnIV5MAQCR9DQoCREbSXEXIgPVIb7a5zlsTgre
         jUwGSzv1ALl/rmj5O0GOR6c6MkS3yBtM6jwUTS3fag70jS6OQM3hrQzpA6iRA/Jufe9G
         6R6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680083195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=29yP5h60lzQ9egSpTFTbdlo7eAPDEAXWr32KHBglSMs=;
        b=Nsa56r9zIJVLA5pZo8frKWcj6PZ6iDEbnMDsJ+wPonBO5a/3EFoCDCtv+GUPnmVsxB
         IzvwFNTLAyhXoOXUYZkicmCm/XTvuGdShepK2ORgNb1TcxWiymIApG4Q7YQ3kjGhoeyv
         7cam/0kqcWvwZoP0k/M512cXOjcFetmOq1QKANbyhp31ONIPdZ5BpYYG4FTcA/QuectZ
         snpbeaoCviPOoVn0EEoWCCczE34+WitzdlAYYm6iuUBneWDVH8ZboGa3nD9K6S2HhCvf
         soqJWdw+ByW53suHlSva+vT3sQtXAHysCh5HkQaBlW431HQYn+4nbLpu/w1Q5YWlJiGf
         bz2A==
X-Gm-Message-State: AAQBX9e8PyewK/LugNILy4a6wvlCRKVPvt4nsoY4EUgzy8VZGCC2v1Ov
        /Bebcju8z4l9KlSgxDMdl1rh7MFgJ3XRCZ7sVyV/jA==
X-Google-Smtp-Source: AKy350Z1Ta2rwN3XbL2zTMze2j2pM+kqkv5YioDEr56Tznyh/jGgGLFPF5CnnxhxzbefWOUwN+njGklRlyHFu1tyu4c=
X-Received: by 2002:a05:6902:70a:b0:b6e:361a:c86 with SMTP id
 k10-20020a056902070a00b00b6e361a0c86mr9993544ybt.3.1680083194908; Wed, 29 Mar
 2023 02:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230324073813.22158-1-krzysztof.kozlowski@linaro.org> <880c0932-117f-61cd-dd97-c36076869c3b@linaro.org>
In-Reply-To: <880c0932-117f-61cd-dd97-c36076869c3b@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 29 Mar 2023 11:45:59 +0200
Message-ID: <CAPDyKFrnEwkS5p+vQ0htYTBLaZ8iFPnV0kckf6F65cacBB2k4w@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: qcom: sm8250: drop incorrect domain idle
 states properties
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 Mar 2023 at 00:51, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 24/03/2023 09:38, Krzysztof Kozlowski wrote:
> > Domain idle states do not use 'idle-state-name' and 'local-timer-stop':
> >
> >    sm8250-hdk.dtb: domain-idle-states: cluster-sleep-0: 'idle-state-name', 'local-timer-stop' do not match any of the regexes: 'pinctrl-[0-9]+'
> >
> > Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Link: https://lore.kernel.org/all/20230323-topic-sm8450-upstream-dt-bindings-fixes-v1-4-3ead1e418fe4@linaro.org/
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 --
> >   1 file changed, 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > index 79d67b466856..9cf2de87c632 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > @@ -354,12 +354,10 @@ BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
> >               domain-idle-states {
> >                       CLUSTER_SLEEP_0: cluster-sleep-0 {
> >                               compatible = "domain-idle-state";
> > -                             idle-state-name = "cluster-llcc-off";
> >                               arm,psci-suspend-param = <0x4100c244>;
> >                               entry-latency-us = <3264>;
> >                               exit-latency-us = <6562>;
> >                               min-residency-us = <9987>;
> > -                             local-timer-stop;
>
> Hmm, so we support setting the broadcast timer when using plain PSCI
> idle states, but not when using the domain-based idle states.
>
> Ulf, Rafael, Daniel, is that an omission for the domain-based idle
> support? Or is it handled in some other way?

I am not sure that we need a DT binding specifically for this, or do we?

So far, the timer is managed from platform specific code. For some
Qcom based platforms, the timer should be managed in
rpmh_rsc_write_next_wakeup(), which makes use of
dev_pm_genpd_get_next_hrtimer().

[...]

Kind regards
Uffe
