Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B994555AB16
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 16:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233016AbiFYOpl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 10:45:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232979AbiFYOpi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 10:45:38 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A449140C1
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 07:45:37 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id pk21so10333589ejb.2
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 07:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TL/BmZNGSH0YDu8VnWJmtXrclXOV4slFnYUNd3pBuw4=;
        b=aQIBfwmMXYQv2Dj5sonaawXdulKap1MyHWcEGk2rr1YTsThaBv0VAWvyjc7z60te9e
         4FBP4j18U/sh397iE/kUgdCqG1F5zeZs5vuwO5gaamkmTpqKrecFFboWVL+v23NqegqQ
         ZYYm8NdB4DY/M51y3/91g3JkRt1EzEXelW0T4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TL/BmZNGSH0YDu8VnWJmtXrclXOV4slFnYUNd3pBuw4=;
        b=oATO4r1yz/3kWtxin6CnK+COGBRniY8ox8gADzrjy2w67Fm1eTWyqSOazmP+yUdBPG
         s/hpqGPAfSp2yW8h1I8L05bMEzeVcfDrgQUFLVGnpb8wNiDMrF5BBU0tXmtnYc/NBT/v
         fM52cZRnqK14/RGRj/K/JnCnW8aXNdB9C1yhsY1MVPfa9eiImseEK8XPgg9EB44t1pv5
         m/QzsaAD0vc/TZZf43AxTakYcJhIES1E5ckhqGM34O/eFlxYCyvg4tW1YFG63BShbdMG
         OFO6nQboonI3NUDY2c9GVU4yb4M5LqCxm2O/5WSzk5i31uWMDdrJ92k5e/mLlo5VaiCV
         uTjg==
X-Gm-Message-State: AJIora94S11UQvY7pXhrOJJY6DDTUdvpXpB3bet8VLSb3+RpDiv1+qAq
        MqfMOiQ6bBmvdNd4a7eVF63KNJ0hW1ymW/UY2Ds=
X-Google-Smtp-Source: AGRyM1sIjl4qQ84e1HYVryxj3FvhP2pftcmlOBffve9wxOaaYL7bd276MfHtF3UAacxGi7KeYx3Srg==
X-Received: by 2002:a17:907:a406:b0:726:34db:89ee with SMTP id sg6-20020a170907a40600b0072634db89eemr4294072ejc.540.1656168335473;
        Sat, 25 Jun 2022 07:45:35 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id g16-20020a1709064e5000b007072dc80e06sm2633777ejw.190.2022.06.25.07.45.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jun 2022 07:45:33 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id w17so6885256wrg.7
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 07:45:32 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr3993162wrr.583.1656168332218; Sat, 25
 Jun 2022 07:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220625022716.683664-1-joebar@chromium.org> <20220624192643.v13.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
In-Reply-To: <20220624192643.v13.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Sat, 25 Jun 2022 07:45:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+92d+PvrHENT3g5=hkJ_UaVWHgMHyuvn3erg10DpVAw@mail.gmail.com>
Message-ID: <CAD=FV=X+92d+PvrHENT3g5=hkJ_UaVWHgMHyuvn3erg10DpVAw@mail.gmail.com>
Subject: Re: [PATCH v13 4/5] arm64: dts: qcom: sc7180: Add pazquel dts files
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

On Fri, Jun 24, 2022 at 7:28 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index e55dbaa6dc12..69cd4b3b911b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -11,6 +11,12 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include <dt-bindings/sound/sc7180-lpass.h>
>
> +#ifdef __SC7180_TROGDOR_DTSI__
> +#error "Duplicate include"
> +#else
> +#define __SC7180_TROGDOR_DTSI__
> +#endif
> +

I'm not convinced about the need for this. That being said:

* If you want to try to do something like this, it should be in a
separate patch, probably at the end of the series. Then if people all
love it then it can be applied and if people don't like it then the
series can simply be applied without it.

* IMO if you wanted to pick one file to put this in it'd be
sc7180.dtsi, not sc7180-trogdor.dtsi.

-Doug
