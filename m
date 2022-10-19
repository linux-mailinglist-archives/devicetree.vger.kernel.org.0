Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84248604C47
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 17:53:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231669AbiJSPxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 11:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232725AbiJSPxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 11:53:15 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCD07159976
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:50:25 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id fy4so40924922ejc.5
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oCxur44GiGn0KEf47+NGc2flFZLTxOPMJcgB85rch6w=;
        b=Af1ORI7qLHGJw4ifz/2FBCp+Nq0eizmGhWVnbLOtKaMLO9xPtn7WgrxQFzTVHlGfI1
         2lFZJu+P2cn2W4CKzeUJnS3n2wUNZDghZrIxPpbENfO1w+DMF4ypDyyfQGvc9uuprFoe
         GBgp+bgwLUw6X0CUrZCNNCVIWXh2uD4Y7879s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oCxur44GiGn0KEf47+NGc2flFZLTxOPMJcgB85rch6w=;
        b=oYztoBBev9tSMB+Yoo5YTSD0GLpTJbBL8ltdBKUrvCZbhJjK8V7yXUZo5z2IkdZvCF
         5jPYc4M8/kTtCa/XQMF2BBVfhImNPs6XdqmFtJVm4U4Jyrj15cj1yROMbSFyGDUzI/WL
         OXUZHwPKAiKzPneYh1Qqq1J83IAfw3HqtEZaVI076GibIj3IXR8/K7kHE/+vLpwxhhZT
         +NXgXtphdv1lW2844MrEh5dhEEPOq90pR93NBcy4O60CV7mWpyHwDdDSR+jQi5MYnC++
         McSNsQOtaVHomd4z8DURjsXSA5WnL/b8Q76N+fR8Vn8SSVBfoIH/cJK629aobq4/UdqM
         QcJQ==
X-Gm-Message-State: ACrzQf1vcDyfdyocs95uxZExZsOsViqLdZL4nlZ87M/UWTofn4x8OUhI
        zXJmtIUn7Eai2ZoOzeNppF9PSOm1drQBnWtg
X-Google-Smtp-Source: AMsMyM6ch3GU4fUaTKlzCjNfji7Z1IIz76deRKc3XlNjDgrknZMCw2m23nVUrNIh/Ho19cU5xJDIog==
X-Received: by 2002:a17:907:2ced:b0:78d:ece6:7cad with SMTP id hz13-20020a1709072ced00b0078dece67cadmr7238292ejc.136.1666194529337;
        Wed, 19 Oct 2022 08:48:49 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id g10-20020a1709062daa00b0077d37a5d401sm9161291eji.33.2022.10.19.08.48.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 08:48:48 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id t4so13172169wmj.5
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:48:48 -0700 (PDT)
X-Received: by 2002:a05:600c:19c9:b0:3c2:7fff:a689 with SMTP id
 u9-20020a05600c19c900b003c27fffa689mr27767365wmq.85.1666194527713; Wed, 19
 Oct 2022 08:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20221019001351.1630089-1-krzysztof.kozlowski@linaro.org> <20221019001351.1630089-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019001351.1630089-4-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 19 Oct 2022 08:48:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VsFbei4h_cwhJhReUi8Pk_C-qHu_8iDqfzf_e=C8QnXg@mail.gmail.com>
Message-ID: <CAD=FV=VsFbei4h_cwhJhReUi8Pk_C-qHu_8iDqfzf_e=C8QnXg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sc7180: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 18, 2022 at 5:14 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DT schema expects TLMM pin configuration nodes to be named with
> '-state' suffix and their optional children with '-pins' suffix.
>
> Merge subnodes named 'pinconf' and 'pinmux' into one entry, add function
> where missing (required by bindings for GPIOs) and reorganize overriding
> pins by boards.
>
> Split the SPI and UART configuration into separate nodes
> 1. SPI (MOSI, MISO, SCLK), SPI chip-select, SPI chip-select via GPIO,
> 2. UART per each pin: TX, RX and optional CTS/RTS.
>
> This allows each board to customize them easily without adding any new
> nodes.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Changes since v2:
> 1. Rebase on reverted SPI CS glitch patch.
>
> Changes since v1:
> 1. Split SPI and UART nodes, after discussion with Doug.
>
> Not tested on hardware.
>
> Cc: Doug Anderson <dianders@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts       | 236 +++----
>  .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  36 +-
>  .../dts/qcom/sc7180-trogdor-homestar.dtsi     |  47 +-
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
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 629 +++++++-----------
>  arch/arm64/boot/dts/qcom/sc7180.dtsi          | 597 +++++++++--------
>  18 files changed, 776 insertions(+), 1137 deletions(-)

You probably should send a v4 since this now conflicts with commit
c24c9d53e001 ("arm64: dts: qcom: correct white-space before {"), which
has landed.

In any case, this looks nice to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

FWIW I put this on a sc7180-trogdor-coachz and the device booted up to
the browser. I didn't do massive amounts of tests, but I'm OK with:

Tested-by: Douglas Anderson <dianders@chromium.org>
