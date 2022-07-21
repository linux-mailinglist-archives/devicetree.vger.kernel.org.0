Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69BF457D472
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 21:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231970AbiGUT6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 15:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbiGUT6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 15:58:37 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8379D6371
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:58:36 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ss3so4910425ejc.11
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mHKWUmFgUfuZc36J9hbJA8Kke1gZwOYkNn4MmRRQ64Q=;
        b=beAHVgvfeXkhJLLqR7EMnPg46bA2u+iFLwngja2Te+ki3gsPMJlt+qGKCn63WN9SLp
         1XWqRoiVTca7Vy9/skOyyqzKasfEB7HFvZsfS6SAcEzZf6jVN4Yu1IcuE4qWWnMHFjBC
         fPVcDvyptwdijAuWxXrvk1ONHaad+BKsTmbTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mHKWUmFgUfuZc36J9hbJA8Kke1gZwOYkNn4MmRRQ64Q=;
        b=P6UShti/arZDDeOttZMtQltwr5SGDM0onJNFVtwu6tRj2YYHLjHQi3vjvNgxpqjPBu
         VHEX+w3SA+0JOoOJLM9P7WqcM8VyDbFkF1YrNGX4Co4ZHyWkEE5awV87KH9kGl0WNqfB
         RJMG63L4coXal+v4J0HARHy/jfB+S1tKm2ZKTFzn3iOph8FaO3/WvqbmRZjLmb7HfJ6L
         r31slgNkL5kMV9p7MH2BIoJEj2nrLSgqZC6349g7zZx3qVHsV2UvsRoBwA8fSDsi81D7
         +YYbfn3PPc4+PRz5d3iLJI1cK8QmGCvpPVW0Sa8Oxfii9lIRJTvM6W9PqFHA5abQbqJW
         4JOg==
X-Gm-Message-State: AJIora9RcZGiY1XomuwtsgQarvWSdBugiO1MpoMsECHV5FieEx9rWl3b
        iKTF/Fwhe1p4ZxwPujeMxNKIs+6BR3+oJR7c5rU=
X-Google-Smtp-Source: AGRyM1tn6r0d3ssenLXQQG0cGSzIVzItLqR5SmxD/loSmiSfRfqqfpO8GKhRcy7YwReheALfD3Iuqg==
X-Received: by 2002:a17:907:9613:b0:72b:68df:8ada with SMTP id gb19-20020a170907961300b0072b68df8adamr173991ejc.31.1658433514679;
        Thu, 21 Jul 2022 12:58:34 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id ku8-20020a170907788800b007262a5e2204sm1152915ejc.153.2022.07.21.12.58.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 12:58:34 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id bk26so3743458wrb.11
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:58:33 -0700 (PDT)
X-Received: by 2002:a05:6000:2c9:b0:21d:bd7d:3af6 with SMTP id
 o9-20020a05600002c900b0021dbd7d3af6mr34835wry.405.1658433513568; Thu, 21 Jul
 2022 12:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220718073104.146985-1-jinghung.chen3@hotmail.com> <SG2PR03MB5006A2ADC6ED22199D8C88D9CC8C9@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB5006A2ADC6ED22199D8C88D9CC8C9@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 21 Jul 2022 12:58:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WTe0ArnF2U43Nmy8Ri-CnqMCssVGcWiPUiLaHzS8zVUQ@mail.gmail.com>
Message-ID: <CAD=FV=WTe0ArnF2U43Nmy8Ri-CnqMCssVGcWiPUiLaHzS8zVUQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: Add LTE SKUs for sc7280-villager family
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 18, 2022 at 12:31 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds LTE skus for villager device tree files.
>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> ---
>
> Changes in v6:
> - Remove v5 accidentally added sc7280-herobrine-herobrine-r1-lte.dts
>
> Changes in v5:
> - Reorder '.dtb' in Makefile
> - Put the "interconnects" line back
>
> Changes in v4:
> - Reorder 'status' last
>
>  arch/arm64/boot/dts/qcom/Makefile               |  2 ++
>  .../boot/dts/qcom/sc7280-chrome-common.dtsi     | 11 -----------
>  .../boot/dts/qcom/sc7280-herobrine-crd.dts      |  1 +
>  .../dts/qcom/sc7280-herobrine-herobrine-r1.dts  |  1 +
>  .../boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi | 17 +++++++++++++++++
>  .../qcom/sc7280-herobrine-villager-r0-lte.dts   | 14 ++++++++++++++
>  .../qcom/sc7280-herobrine-villager-r1-lte.dts   | 14 ++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts         |  1 +
>  8 files changed, 50 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 7e6a4d7ef3266..bd43d984f69fc 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -103,7 +103,9 @@ dtb-$(CONFIG_ARCH_QCOM)     += sc7180-trogdor-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-herobrine-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r0.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r0-lte.dtb
>  dtb-$(CONFIG_ARCG_QCOM)        += sc7280-herobrine-villager-r1.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r1-lte.dtb

Whoops! Looks like you'll need a v7. There's a subtle typo above.
"ARCH" doesn't end with a "G".

-Doug
