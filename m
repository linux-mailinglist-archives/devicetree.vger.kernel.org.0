Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3145260E483
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 17:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234566AbiJZPdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 11:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234434AbiJZPdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 11:33:45 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C59FF9737
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 08:33:44 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b12so42187779edd.6
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 08:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mBX4bT2qc6/G5xqtzpd0iJ6M1TPlZmSU/EpcMpqcNzM=;
        b=U51/v2w0f9bh4CquGhgtUghzC0aS52L9CRVebJ48950nhz00QgYxl2FErs8/XE6tG2
         OBjdfDhfhgAkSHEAyO1ezFmEzBbkUizjIm6roRJhDFr0OA8wAHd5rTI7kJab2X70ansT
         Bsq1CJ9EzVqc/g0itDGIwsR57YVOY6EcurqyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mBX4bT2qc6/G5xqtzpd0iJ6M1TPlZmSU/EpcMpqcNzM=;
        b=T5h9ioSvWdbHJxmAQD7pcpeFpMBhVhZrgtez5QPpiP5QKHWy0METrsoR0iL0UfhfS5
         JN1EfxfKsSYZ9ZHsdG5TtyQk+mI59UEvJEIO1nMGBINACMcrhORNe3yX/E8SDvK3aRWR
         1kVhIIQRg+ihbNkm1Byg6xtTA7nH7pcLuH65+IcJTSjZ35HVWes3tHLEs+m1smXl5SNl
         l7PD8gDB2qTh8zm0HiL+tBr1gPRt+XIgDSwEf4M6UiNF7l59hPrOXWIXUm/0ICft02Gp
         SPk2iR8Cd8PuTqs1YF5ERcSW3/WynE91HJKXknfyHO+JYfq4TmdE2vBHnuvAaZdXJopS
         QiHw==
X-Gm-Message-State: ACrzQf08aG7+Ihlm4/Gr4bVwVEEvC5a2zKc0w7WHu9DDk5ZheoqOghNF
        EPr40rFP3/LuLXwv0UNMUSGtugs5bXUQDNOI
X-Google-Smtp-Source: AMsMyM7S2toB7aUeGZPrK20iqR1FqQQOSczsg8iI0kOTemGCcg+Xm4Sx2iGLeTrrY508l49+yGp6MQ==
X-Received: by 2002:a05:6402:b6b:b0:461:b9b2:6d58 with SMTP id cb11-20020a0564020b6b00b00461b9b26d58mr16877574edb.186.1666798422342;
        Wed, 26 Oct 2022 08:33:42 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id sc28-20020a1709078a1c00b0074136cac2e7sm3157177ejc.81.2022.10.26.08.33.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 08:33:41 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id g12so14197513wrs.10
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 08:33:40 -0700 (PDT)
X-Received: by 2002:a05:6000:3c1:b0:236:5779:546d with SMTP id
 b1-20020a05600003c100b002365779546dmr18412470wrg.405.1666798420614; Wed, 26
 Oct 2022 08:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20221020225135.31750-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020225135.31750-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 26 Oct 2022 08:33:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VRgEF=bADEKttmtGqrQ6mDqipGZFRh7JKa5mf4ovF2iA@mail.gmail.com>
Message-ID: <CAD=FV=VRgEF=bADEKttmtGqrQ6mDqipGZFRh7JKa5mf4ovF2iA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] arm64/pinctrl: dt-bindings: qcom: sc7180: convert
 to dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Thu, Oct 20, 2022 at 3:51 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Hi,
>
> Changes since v3
> ================
> 1. Drop bindings patch: applied.
> 2. Rebase.
> 3. Add tags.
>
> Changes since v2
> ================
> 1. New patch: revert of glitch SPI CS workaround
> 2. dt-bindings: Drop entire drive-strength (not needed, brought by common TLMM
>    schema).
> 3. Add tags.
> v2: https://lore.kernel.org/all/20221013184700.87260-1-krzysztof.kozlowski@linaro.org/
>
> Best regards,
> Krzysztof
>
> Krzysztof Kozlowski (3):
>   arm64: dts: qcom: sc7180-trogdor-homestar: fully configure secondary
>     I2S pins
>   arm64: dts: qcom: sc7180: revert "arm64: dts: qcom: sc7180: Avoid
>     glitching SPI CS at bootup on trogdor"
>   arm64: dts: qcom: sc7180: align TLMM pin configuration with DT schema
>
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts       | 236 +++----
>  .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  36 +-
>  .../dts/qcom/sc7180-trogdor-homestar.dtsi     |  41 +-
>  .../dts/qcom/sc7180-trogdor-kingoftown-r0.dts |  16 +-
>  .../dts/qcom/sc7180-trogdor-kingoftown.dtsi   |   8 +-
>  .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  16 +-
>  .../dts/qcom/sc7180-trogdor-mrbland-rev0.dtsi |  25 +-
>  .../boot/dts/qcom/sc7180-trogdor-mrbland.dtsi |  72 +-
>  .../qcom/sc7180-trogdor-parade-ps8640.dtsi    |  32 +-
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |   8 +-
>  .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  14 +-
>  .../qcom/sc7180-trogdor-quackingstick.dtsi    |  56 +-
>  .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |   8 +-
>  .../dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi |  16 +-
>  .../qcom/sc7180-trogdor-wormdingler-rev0.dtsi |  25 +-
>  .../dts/qcom/sc7180-trogdor-wormdingler.dtsi  |  72 +-
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 650 +++++++-----------
>  arch/arm64/boot/dts/qcom/sc7180.dtsi          | 597 ++++++++--------
>  18 files changed, 776 insertions(+), 1152 deletions(-)

I'd love to see this series land sooner rather than later. It'll cause
conflicts with pretty much any other patch to a sc7180 device tree
file, so it'd be nice to get it in the tree. ;-)


-Doug
