Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E01443F6989
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 21:07:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234234AbhHXTID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 15:08:03 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58368
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232117AbhHXTIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Aug 2021 15:08:02 -0400
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5F26E4076D
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 19:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629832037;
        bh=JpRp0VKOepmJFb28VmqG/rgWxsh/ZZpFinNf4XIR7QM=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=PlqLQpyZ7073uQZpTapVqkLdCFa65K863R/NL52Wom0vvsNNfJXYjiPQVmCnxDw8e
         SQbL3bdh4RAX5zvzaXTCsWRjbeMVAECleeNV3B966Ju+HbphX/JJM68o3Fx/ToYnlj
         fpLi8J7VMS+UuU47mgqZp1QrjYKbmEJsX1niivL+3oiBq2c4BGAaPRNIOTF/Xmo4PI
         n5xQJf7VEnnM/u29D0Epv6aTvbuLw3e3mx9Xtu1jE3LvSMxUivuo5bEBdIe/CjI/VU
         RW4PEnQvuIzVDk3ksvcJJYW7FJtG2wJSiuvbL9Z4GRdvVJUTB/t2NJLZJFvB6fxBJE
         S4M4yMu6jAMOg==
Received: by mail-wm1-f69.google.com with SMTP id y188-20020a1c7dc5000000b002e80e0b2f87so1652587wmc.1
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 12:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JpRp0VKOepmJFb28VmqG/rgWxsh/ZZpFinNf4XIR7QM=;
        b=BtrDlGyoN8ofo6X/yDU/4snKaDsV0l9WsbkRk/Tql3jSEWzwkYbcYtQgNtOn0qmc8z
         ZWdsEwJ7zUZ6J3qhUdnVoiPSF7Xxci1T74/hU/6UjVq8+iBDBfatEBKdqF6G8pgsDu/b
         Q/sDnRMlsXBjqrQ+xOHxZwv1oBc3gHMOc9CXiB0J5D9xPTbah5iigLC4ta6p+1UJA3id
         fKfJzSR2KqNN2EmahFKSrHSDDttmL86sjskU8ACwWJso5jwTRqeZ4K4gD4JRttbNIS9H
         BiWrv/bxnBSgYp69hjRqzzAiugId5on1shCX6Ifod1ntvTsAQeCKGX/6CqtSvR/rOr4f
         eJYA==
X-Gm-Message-State: AOAM5330btxvh2SGdTrT493iMGEnlxPOcGdkfPaOykZzmZ41tJrCXW83
        16bVxUdyGR+Ga6r/KhtAY1R6+cMcF8G3omzBHoCIAd99BKswH+NqAnNB4XZagba+6ArQ9njGDxy
        xok9Qc3GNpxxTF9YbcT2ty+p3tRGFc2B6bi7bkrs=
X-Received: by 2002:a5d:4fc7:: with SMTP id h7mr19839332wrw.333.1629832037020;
        Tue, 24 Aug 2021 12:07:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyeoMUDqGDEYSbaq1nM+F0db0NK2Q1pZrBBRtGCTmNXFAADL4Ln6NrT8uwtmhR4uFIDABktKQ==
X-Received: by 2002:a5d:4fc7:: with SMTP id h7mr19839314wrw.333.1629832036855;
        Tue, 24 Aug 2021 12:07:16 -0700 (PDT)
Received: from [192.168.0.103] ([79.98.113.249])
        by smtp.gmail.com with ESMTPSA id t8sm22065855wrx.27.2021.08.24.12.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 12:07:16 -0700 (PDT)
Subject: Re: [PATCH 5/6] riscv: microchip: mpfs: drop duplicated MMC/SDHC node
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
 <20210819154436.117798-5-krzysztof.kozlowski@canonical.com>
 <CAMuHMdWN3Y9Ca9J-iJFpmDAYKpNH5GQuf3yFdyyb2rem8z_spg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <feb9b49b-9e5d-1459-f177-21b3c2ae4add@canonical.com>
Date:   Tue, 24 Aug 2021 21:07:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWN3Y9Ca9J-iJFpmDAYKpNH5GQuf3yFdyyb2rem8z_spg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2021 17:37, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Thu, Aug 19, 2021 at 5:45 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>> Devicetree source is a description of hardware and hardware has only one
>> block @20008000 which can be configured either as eMMC or SDHC.  Having
>> two node for different modes is an obscure, unusual and confusing way to
>> configure it.  Instead the board file is supposed to customize the block
>> to its needs, e.g. to SDHC mode.
>>
>> This fixes dtbs_check warning:
>>   arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: sdhc@20008000: $nodename:0: 'sdhc@20008000' does not match '^mmc(@.*)?$'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
>> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
>> @@ -43,8 +43,16 @@ &serial3 {
>>         status = "okay";
>>  };
>>
>> -&sdcard {
>> +&mmc {
>>         status = "okay";
>> +
>> +       disable-wp;
>> +       cap-sd-highspeed;
>> +       card-detect-delay = <200>;
>> +       sd-uhs-sdr12;
>> +       sd-uhs-sdr25;
>> +       sd-uhs-sdr50;
>> +       sd-uhs-sdr104;
>>  };
>>
>>  &emac0 {
>> diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> index cb54da0cc3c4..c4ccd7e4d3eb 100644
>> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
>> @@ -262,25 +262,7 @@ serial3: serial@20104000 {
>>                         status = "disabled";
>>                 };
>>
>> -               emmc: mmc@20008000 {
>> -                       compatible = "cdns,sd4hc";
>> -                       reg = <0x0 0x20008000 0x0 0x1000>;
>> -                       interrupt-parent = <&plic>;
>> -                       interrupts = <88 89>;
> 
> Note that the other node has only a single interrupt.
> Which one is correct?

I assume the one put there initially, since it was tested (sdcard wsas
enabled, emmc was disabled).

> 
>> -                       pinctrl-names = "default";
>> -                       clocks = <&clkcfg 6>;
>> -                       bus-width = <4>;
>> -                       cap-mmc-highspeed;
>> -                       mmc-ddr-3_3v;
>> -                       max-frequency = <200000000>;
>> -                       non-removable;
>> -                       no-sd;
>> -                       no-sdio;
>> -                       voltage-ranges = <3300 3300>;
>> -                       status = "disabled";
>> -               };
>> -
>> -               sdcard: sdhc@20008000 {
>> +               mmc: mmc@20008000 {
>>                         compatible = "cdns,sd4hc";
>>                         reg = <0x0 0x20008000 0x0 0x1000>;
>>                         interrupt-parent = <&plic>;
>> @@ -288,13 +270,6 @@ sdcard: sdhc@20008000 {
>>                         pinctrl-names = "default";
>>                         clocks = <&clkcfg 6>;
>>                         bus-width = <4>;
> 
> I think bus-width should be moved to the board .dts, too.

Makes sense. Thanks for review!


Best regards,
Krzysztof
