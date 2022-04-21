Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC06509F67
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 14:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231926AbiDUMN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 08:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383347AbiDUMN5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 08:13:57 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5152A2ED6D
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 05:11:05 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w19so8311756lfu.11
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 05:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2qh1sP8uzQryeVgDtsc75uouxg8rbCQSDajPwRRmCQo=;
        b=Z0INWc9lxyV6HU2uh2mPeBqK0yli23uZv/u24ByX5vg6Pu4bhQ7AzrEPCeUdwAodwC
         pC+3TIzpU57+5m5qC3ebKzY93Rycc2+gHYqhtruCTqoWutODQzVzIEOhd2YfqeK6yqIF
         Xu6b4XHkcJ32Hm1srnlpzDf1g2t+aZDF2WSNHDuPjSJZbdfU1LuzRzn0LYl8gaxoraZ/
         gVFgo5J3mpWveMo2GKV02uNZfN3GI7ia3OBZjgXqrR8oRDkqaHkPNZ/XW+zCLqPWsFg9
         Wz/2JXeM+6hz5hvpyqD6hZJqcc7QVRa76tne8gXABci2GCSjRBFoRffN6oTU6BDV/wBP
         dmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2qh1sP8uzQryeVgDtsc75uouxg8rbCQSDajPwRRmCQo=;
        b=mDXAkSwvu05+yY49US8khFJ9yGzOkk4Qnw0bjlqucljQdVKKd6oeDSTCDoYbmTACkU
         CIOjV3wzpzYCvtJD7Ym3kShEiDDaAWlj0WhFWEoKgNqrakPHLJagOapYdYrdfgaHsFYI
         EZzDyrqvYbFRp5dhjRTarUNg5Ef3oEtMM/FtCQg3IbArYdLD5bKcsG6UOEJlELt6uoSn
         xiB08vn7JOQJeZoJOs+q24YicBoanYMh7kYAyA29/4n4VkZ0E+XDNatKxoRG61TnKxIG
         h4q+sf9UqdddA26fUQ7FwdpYSXfVvZ4M4yjPxtpwTv20vKrOkCZ1HvHGMtomlD41qWxQ
         kzWQ==
X-Gm-Message-State: AOAM532L9fNb+nExJ9rfYmxnFlyus1RRD6ErI3rZ/0W5FE+iOVH7O8H/
        E8Bl9Slwo0a62UNFnf+U7e+msL1hlAQOT4wz48RIZg==
X-Google-Smtp-Source: ABdhPJxiF6HE3qtyySBVgBeLZFZb4229Fdfv3WYeASID+W6jtiE1O7ThlV69sO3NVsaNvqCnkYIoYFyNgU7zcMkUyh0=
X-Received: by 2002:ac2:4e98:0:b0:448:3039:d170 with SMTP id
 o24-20020ac24e98000000b004483039d170mr19385452lfr.233.1650543063540; Thu, 21
 Apr 2022 05:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220418102040.4993-1-a-govindraju@ti.com> <20220418102040.4993-2-a-govindraju@ti.com>
In-Reply-To: <20220418102040.4993-2-a-govindraju@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 21 Apr 2022 14:10:27 +0200
Message-ID: <CAPDyKFrHi3-7FMfwRP5rtjSbTOnw73FvU5ZAz=eC8-XqQZYpsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sdhci-am654: Add flag to force
 setting to TESTCD bit
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Apr 2022 at 12:21, Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> The ARASAN MMC controller on Keystone 3 class of devices needs the SDCD
> line to be connected for proper functioning. Similar to the issue pointed
> out in sdhci-of-arasan.c driver, commit 3794c542641f ("mmc:
> sdhci-of-arasan: Set controller to test mode when no CD bit").
>
> In cases where SDCD line is not connected, driver support has been added to
> force the controller into test mode and set the TESTCD bit. In order to
> implement this quirk the driver uses "ti,fails-without-test-cd" flag from
> the device tree node. Therefore, update the bindings to document the above.

Would you mind rephrasing this a bit. DT bindings is about describing
the HW, not about what the software should do.

Otherwise, this looks good to me.

Kind regards
Uffe

>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-am654.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> index 0566493c4def..0ab07759b472 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> @@ -186,6 +186,13 @@ properties:
>      description: Clock Delay Buffer Select
>      $ref: "/schemas/types.yaml#/definitions/uint32"
>
> +  ti,fails-without-test-cd:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      When present, indicates that the CD line is not connected
> +      and the controller is required to be forced into Test mode
> +      to set the TESTCD bit.
> +
>  required:
>    - compatible
>    - reg
> --
> 2.17.1
>
