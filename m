Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 082E64D05E5
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 19:03:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236634AbiCGSEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 13:04:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240475AbiCGSEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 13:04:21 -0500
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F7F545532
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 10:03:26 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id z66so12608479qke.10
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 10:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xObSI9CPCP3pf6W9UIpjytzeoFc7wexzphF4iMEhqzc=;
        b=nYgDloxyi2TOeUm+vSkrxwxB9NSxmt1HOOASOfmCcnA59e53YHQakn1P/RmeDHwCbC
         zMeplk/oJpijV/UM7YOLyQPetxoFR7pcYZHvz1b5DvZGluNpTwRaonXZIEhn3UlICC5b
         2jLfDc2T5NljZktdCWDBDqDYdg/u9hytIsGRlEHSSG+KAe/zCCk9FAun3ENIl1jFKh9W
         ksBRb85bozQlKNuoojvwP4LzsdT4DKERCiPtzBrlxjuDVCyIrMnh+i/dELOAmB0dDT2P
         N+pZbgkB2P8Q12IhN+fegpM5AcNhWwBmqsNWpSktUNgHEgLUZdw2mWfDPoVq15xQGtWp
         i/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xObSI9CPCP3pf6W9UIpjytzeoFc7wexzphF4iMEhqzc=;
        b=GMxZniu7rfwBL9FZr3D2H4ev0FZWDhqGjfEYZ9cYmymU0Wa2duG/VqYmtut2fQr+oN
         qdE6YpY2zXXFiyx9NgV3zTpG7Q3zOqBv8R6UBszFO2IJL08bBIXFyKbQInHONdq2ly85
         aoFORi2K1dze0YxoqWlnyvR6CIcfgP838ANpjgQqUtethqwJjrKIXXnIcZNi7/Ecli/S
         S6rZLoxWqmyOrxQ3/jp7VD1aXAB8BlTXxAusy6yuTV1dlgf+DBcoDIXR7FHugAUGoz5w
         dDlrJYgJeuDVULhPzw4WJD8u22sg6cTjJp3DPwwTMMeUJR7aZsuKv6EoD/O3AHghxpuR
         SosQ==
X-Gm-Message-State: AOAM530WENqJaVys3Wd4PDtXeUVLo4SRsFkM9XCk+AprIZjI6hO2hC2P
        3xzJ28ZzLrbpNs8D6iyWGZ87W/1pC4w=
X-Google-Smtp-Source: ABdhPJwTsNv7QksFHKxul323Oe4WPkH+lBSQwwnr2perHOqAF/F8UP8+Udt/qlxj+2nCqSrLPNXVEg==
X-Received: by 2002:a37:b03:0:b0:67b:2b47:d09f with SMTP id 3-20020a370b03000000b0067b2b47d09fmr3921617qkl.621.1646676205300;
        Mon, 07 Mar 2022 10:03:25 -0800 (PST)
Received: from [10.4.10.38] (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id d18-20020ac85d92000000b002d98bca0656sm9065872qtx.30.2022.03.07.10.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 10:03:24 -0800 (PST)
Message-ID: <7de7a907-249c-8bdd-b364-689436e3b285@gmail.com>
Date:   Mon, 7 Mar 2022 13:03:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 00/14] ARM: suniv: dts: update Allwinner F1C100
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        George Hilliard <thirtythreeforty@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
References: <20220307143421.1106209-1-andre.przywara@arm.com>
From:   Jesse Taube <mr.bossman075@gmail.com>
In-Reply-To: <20220307143421.1106209-1-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/7/22 09:34, Andre Przywara wrote:
> The Allwinner F1C100 SoC didn't see much love since its initial merge in
> 2018: the originally submitted .dts files were very basic, and didn't
> cover such simple peripherals as MMC and SPI.
> On top of that the watchdog compatible string was wrong, leading to a
> non-functional watchdog and reset functionality.
> 
> This series aims to fix that, after the series MMC and SPI work, and
> make dtbs_check comes back clean.
> This was tested with mounting a filesystem on /dev/mmcblk0 on a
> LicheePi Nano, also with accessing the SPI flash through /dev/mtdblock
> and mtd_debug. Reboot and watchdog now also work.
> 
> Mainline U-Boot recently gained F1C100 support, and those DT updates are
> needed there as well to get full MMC and SPI access.
Thank you so much for doing this Giulio and I really appreciate this. 
I'm sorry I haven't been available lately i have had other activities 
lately.
> The series is structured as follows:
> - Patches 01/14 and 02/14 fix the watchdog, which allows to properly
>    reboot the system.
> - Patches 03-06 fix some shortcomings of the existing DT files, to make
>    them DT binding compliant.
> - Patches 07-09 are Jesse's recent MMC patches, with the comments from
>    the last version addressed [1].
> - Patches 10-12 add SPI support, to enable access to the SPI flash on
>    the LicheePi Nano board.
> - The final two patches (13/14 and 14/14) add the F1C100 platform to
>    the multi_v5_defconfig, since it was not covered by any other
>    defconfig before, and an ARMv5 compliant kernel is not commonly
>    offered by distributions.
> 
> I saw George's series from two years ago to add USB support[2], that
> looks good on the first glance, I will comment on that once I did some
> testing on that.
There are patches for USB host as well. There are working patches 
floating around for the LCD controller, as well as patches for audio, 
but audio only works in 5.2 even though none of the files the patches 
touched have changed since. To test the LCD controller I made a DAC to 
output to VGA unfortunately the blanking regions aren't set to 0v so its 
not to VGA spec but if there is a black boarder it works fine.
> Cheers,
> Andre
> 
> Changelog for the MMC patches [1]:
> - bindings doc: extend commit message
> - .dtsi: extend commit message, re-order mmc0_pins node, add
>    drive-strength
> - .dts: extend commit message, add alias, regulator and disable-wp
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20220130220325.1983918-1-Mr.Bossman075@gmail.com/
> [2] https://lore.kernel.org/linux-usb/20200331170219.267732-1-thirtythreeforty@gmail.com/
> 
> Andre Przywara (10):
>    dt-bindings: watchdog: sunxi: fix F1C100s compatible
>    ARM: dts: suniv: F1C100: fix watchdog compatible
>    dt-bindings: arm: sunxi: document LicheePi Nano name
>    ARM: dts: suniv: F1C100: fix CPU node
>    ARM: dts: suniv: F1C100: fix timer node
>    dt-bindings: spi: sunxi: document F1C100 controllers
>    ARM: dts: suniv: F1C100: add SPI support
>    ARM: dts: suniv: licheepi-nano: add SPI flash
>    ARM: configs: sync multi_v5_defconfig from savedefconfig
>    ARM: configs: multi_v5: Enable Allwinner F1C100
> 
> Jesse Taube (4):
>    ARM: dts: suniv: F1C100: add clock and reset macros
>    dt-bindings: mmc: sunxi: add Allwinner F1c100s compatible
>    ARM: dts: suniv: F1C100: add MMC controllers
>    ARM: dts: suniv: licheepi-nano: add microSD card
> 
>   .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>   .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml |   3 +
>   .../bindings/spi/allwinner,sun6i-a31-spi.yaml |   1 +
>   .../watchdog/allwinner,sun4i-a10-wdt.yaml     |   2 +-
>   .../boot/dts/suniv-f1c100s-licheepi-nano.dts  |  31 ++++++
>   arch/arm/boot/dts/suniv-f1c100s.dtsi          | 102 ++++++++++++++++--
>   arch/arm/configs/multi_v5_defconfig           |  25 ++---
>   7 files changed, 140 insertions(+), 29 deletions(-)
> 
