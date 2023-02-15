Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19BB46979E8
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 11:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234037AbjBOKbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 05:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233900AbjBOKbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 05:31:35 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E666C367F3
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 02:31:33 -0800 (PST)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4AC433F57F
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 10:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1676457092;
        bh=J/qDZkmn3KorSy6ubx2WDUhB6Kbdc/XauTgIuTzEF0w=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=opnWgQXcBM8nmJoaHvCchIjyolFlrBkKPKoei6AzwdRKmU7KHSu26UqiSBULMd2du
         usLH/OGtTXbuHHXkIJit4r8aj5QgHXKEao91zbWHP8NJQvsYF/IRJAN5RNJbO/O8Px
         xpwt+puIAwHxggdmlo0GOs8pYUuXxqbfTn7yLytbk2nSgoDZVRDv9ZnYcua4DDdHEN
         A3ARSDPSB3VTrWZFRle4EVUJRx2uiuZ1Mm0dlwx8qgppRlFWjwb6hm4L6IQtcIf2pS
         8S4Y0MW+J0F9hnGtmXMk1gmDIMymZTj5zzQyRk3o6KQZJg3naMyMg3zzPJxPSIWS4b
         t1KuS6awTIhhg==
Received: by mail-qk1-f198.google.com with SMTP id x14-20020a05620a14ae00b0072f7f0f356bso11141172qkj.1
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 02:31:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/qDZkmn3KorSy6ubx2WDUhB6Kbdc/XauTgIuTzEF0w=;
        b=3LtY6vdRqFYKMfpyEgaxK1R5kur2cspM6hbP+21ATRi69iLmpK0CHK2shcS/Hb45mV
         6RwrLV5C4g1AuzKThBDkOblZFRoM5917IKOsRcm0qINT1+0OWmDVQql6lJGHNgkEmsGS
         LeJqOSy6h4RJI7K4aANtxuFZxLePQEXv4+mvd3OZRukobWey3RCzSRUWUihhp5MTuhS3
         UNtq90ewd/FuSqlgNyaSdQGLzc7U0KhMrrm8JFiw+4fhpRn5rnFm1QqReNADDRM3kLc7
         YPjKa86SNsfP6Lfp3H1YcrvlcIscxkzQ1+gLawI1hdogMVSyJ1ier/eQCVXa4w7alP/G
         1XIQ==
X-Gm-Message-State: AO0yUKUWVNrRRq7tK+auvB9uXMh3b3BcsjZ1tvPalaIfPJMukEVhcVAN
        KpQdkxLpCiOWCQXWTLRlSa0o0OCbuLXyei9NqjOjZNEbBjxwRqdyGyk9y6MfIPVpvPQrYCMjUwi
        I5JTLTF1mFHdyL9kc22yhf9wJkg3HJC+Fu9cO/AK+QLxmXuQoyDHOTPg=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id y15-20020a05622a164f00b003bce3a8d1d6mr181341qtj.229.1676457091042;
        Wed, 15 Feb 2023 02:31:31 -0800 (PST)
X-Google-Smtp-Source: AK7set93hU2+oyuJ0C/LkbPAo2V6UGo4U5RSMbjNWw6Z8F8v4OAUsS6GhrWp/1jIOKMsaNCVvqP0POp7oTjMZpkPQ+g=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id
 y15-20020a05622a164f00b003bce3a8d1d6mr181338qtj.229.1676457090719; Wed, 15
 Feb 2023 02:31:30 -0800 (PST)
MIME-Version: 1.0
References: <20230203081913.81968-1-william.qiu@starfivetech.com> <20230203081913.81968-4-william.qiu@starfivetech.com>
In-Reply-To: <20230203081913.81968-4-william.qiu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 15 Feb 2023 11:31:14 +0100
Message-ID: <CAJM55Z8CRT_H-by=Nj0Nu1iWug1wdPMZceiE+RMJvE+q4RzQ7w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] riscv: dts: starfive: Add mmc node
To:     William Qiu <william.qiu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Feb 2023 at 09:21, William Qiu <william.qiu@starfivetech.com> wrote:
>
> This adds the mmc node for the StarFive JH7110 SoC.
> Set mmco node to emmc and set mmc1 node to sd.
>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 23 ++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 37 +++++++++++++++++++
>  2 files changed, 60 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index c60280b89c73..e1a0248e907f 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -42,6 +42,29 @@ &rtc_osc {
>         clock-frequency = <32768>;
>  };
>
> +&mmc0 {
> +       max-frequency = <100000000>;
> +       bus-width = <8>;
> +       cap-mmc-highspeed;
> +       mmc-ddr-1_8v;
> +       mmc-hs200-1_8v;
> +       non-removable;
> +       cap-mmc-hw-reset;
> +       post-power-on-delay-ms = <200>;
> +       status = "okay";
> +};
> +
> +&mmc1 {
> +       max-frequency = <100000000>;
> +       bus-width = <4>;
> +       no-sdio;ru
> +       no-mmc;
> +       broken-cd;
> +       cap-sd-highspeed;
> +       post-power-on-delay-ms = <200>;
> +       status = "okay";
> +};

Please add these so they're sorted alphabetically (but keep the clocks
at the top), so there's at least some sort of system.

>  &gmac0_rmii_refin {
>         clock-frequency = <50000000>;
>  };
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index 64d260ea1f29..ae1a664e7af5 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -370,6 +370,11 @@ syscrg: clock-controller@13020000 {
>                         #reset-cells = <1>;
>                 };
>
> +               sysreg: syscon@13030000 {
> +                       compatible = "starfive,sysreg", "syscon";
> +                       reg = <0x0 0x13030000 0x0 0x1000>;
> +               };
> +
>                 gpio: gpio@13040000 {
>                         compatible = "starfive,jh7110-sys-pinctrl";
>                         reg = <0x0 0x13040000 0x0 0x10000>;
> @@ -407,5 +412,37 @@ gpioa: gpio@17020000 {
>                         gpio-controller;
>                         #gpio-cells = <2>;
>                 };
> +
> +               mmc0: mmc@16010000 {
> +                       compatible = "starfive,jh7110-mmc";
> +                       reg = <0x0 0x16010000 0x0 0x10000>;
> +                       clocks = <&syscrg JH7110_SYSCLK_SDIO0_AHB>,
> +                                <&syscrg JH7110_SYSCLK_SDIO0_SDCARD>;
> +                       clock-names = "biu","ciu";
> +                       resets = <&syscrg JH7110_SYSRST_SDIO0_AHB>;
> +                       reset-names = "reset";
> +                       interrupts = <74>;
> +                       fifo-depth = <32>;
> +                       fifo-watermark-aligned;
> +                       data-addr = <0>;
> +                       starfive,sysreg = <&sysreg 0x14 0x1a 0x7c000000>;

This may need updating depending on whether you fix the driver or bindings.

> +                       status = "disabled";
> +               };
> +
> +               mmc1: mmc@16020000 {
> +                       compatible = "starfive,jh7110-mmc";
> +                       reg = <0x0 0x16020000 0x0 0x10000>;
> +                       clocks = <&syscrg JH7110_SYSCLK_SDIO1_AHB>,
> +                                <&syscrg JH7110_SYSCLK_SDIO1_SDCARD>;
> +                       clock-names = "biu","ciu";
> +                       resets = <&syscrg JH7110_SYSRST_SDIO1_AHB>;
> +                       reset-names = "reset";
> +                       interrupts = <75>;
> +                       fifo-depth = <32>;
> +                       fifo-watermark-aligned;
> +                       data-addr = <0>;
> +                       starfive,sysreg = <&sysreg 0x9c 0x1 0x3e>;
> +                       status = "disabled";
> +               };
>         };
>  };
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
