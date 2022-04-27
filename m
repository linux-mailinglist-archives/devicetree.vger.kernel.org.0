Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C278E512103
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229760AbiD0SQF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 14:16:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232738AbiD0SQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 14:16:04 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9480F632D
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:12:51 -0700 (PDT)
Received: from mail-yb1-f181.google.com ([209.85.219.181]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M2NqA-1njEC73LFm-003vD9 for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022
 20:12:50 +0200
Received: by mail-yb1-f181.google.com with SMTP id v59so4823558ybi.12
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:12:49 -0700 (PDT)
X-Gm-Message-State: AOAM530uvkfOOltGE+tupV0kJBeoix4JFNXPMl65eCFSIOhZ9+iCSevx
        JRxk7EF0WmCVbeWnDwjZoVhlMMNNXle+y5s853A=
X-Google-Smtp-Source: ABdhPJyvIQ6D3x49OiNKnaLLSiVJHsuCNnQ3wyi9FtzBNbA80wvadvDkfUVYkIpT7NF74EwdQ21G9vqZ8d9sa8bTn1k=
X-Received: by 2002:a25:75c5:0:b0:648:dccd:e1c with SMTP id
 q188-20020a2575c5000000b00648dccd0e1cmr3057440ybc.452.1651083168625; Wed, 27
 Apr 2022 11:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi> <20220427162123.110458-2-maukka@ext.kapsi.fi>
In-Reply-To: <20220427162123.110458-2-maukka@ext.kapsi.fi>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Wed, 27 Apr 2022 20:12:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2renoWK+rUYBAyUb10v-TKfv6gLTQUiGFRroFgLCv+9w@mail.gmail.com>
Message-ID: <CAK8P3a2renoWK+rUYBAyUb10v-TKfv6gLTQUiGFRroFgLCv+9w@mail.gmail.com>
Subject: Re: [RFC RFT PATCH v1 1/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:nfPJwOweMVkW7PXCN7dRbL/Sy0Z2A2+mB1MZw/db64OF/y7moBN
 nnHYRGf6itcvdTTZI+OriSvUmXcEVziQWBSgS/TVUjuJSagiUGH4wCmdqY2omADCrfiCrEm
 AxgJZfJ5w3UG4w45kmomJQLYX1PqbnK91bkUR5O3NK55UilXCkubD2M/OXABwd8GOWltB1C
 ezmYtXYroIP6jX1SXSnzA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mJPYtNgUYnA=:FYAyRqz4uuIXMBXwOrCi8M
 ccVUwBy5GJS3UAdapp5y4BS1JPWSnejfCxP1OnCSwBTv5HFn5VAzSVQGcmvgt+DJ/p5kjwHWt
 xdo6QA09Et/8wtP93HHq6PXH4oHTHCA7qHbnVSZ3Fbm897u5Bf0O2w73le9G49NkCQLbHpcDU
 ft1BA8BFytaUwDHuBOyj9Q5GxoPO7HTsJiAX7EKo9Zg0UoxpXSsUy5FJFyjHsiVDcp+3exx2W
 Gm4MuNmpbS613ULXq8KxBY2UBCcmSXSraR9h/vhgCIVFVTMyOzIPf9GIk2Eu/uB56iQ3uQ+ng
 dqlCObVl13cNlSPH5XIlGuhS4+o2HEEByDiSB7/Ve/kV85zvUAgEOqhLOH4L6q4KosTY4RzXb
 934Uz4nQ3EuvXDKpoFPqGSj1T3w7QG6DzqxkUy+mT5ATe3cXs0zQ3rJEJG3Zm/YwxtwAOU6Hv
 zRo2l9P7E7NETaN6Hcrinj3kzFPqQ24LPCmXfKkYAwcZ86j+eIuo/shZ933bQWfb0L2Pa4dbN
 1wi65sIG3gXuEDO//ssAFw9ZIkhzfLlZ2vT5QEzx93ONGXUnVn4BPg6snxnByXHoW4/nQUhck
 z+WBg2VsoITppxLZ1cwvbRUr1ZxqVMhKtntaSrGHHRmDkDw9UDLmDhmcPCvr+Ma/NMqt6in2I
 IUoXQzPZ+y+8l3lQKMArsc/1ard8wlR3ZCX9g3w2PdRPiHp4iZhVGj3xNv21BgyXPZKbUzzZk
 zEdQa0GKL3e/j9BlKveSZGOFIjfGmoGN7jLT+zTDaJwy8Wk7K3r/otyYstLfqnxWEYkYMsNtm
 P3uuL4CMgDJAkvranpVYy49ExjG3It2kJ5TcISeZOcR5E7NhLs=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>
> Convert D-Link DNS-323 to use the device tree and remove associated
> mach file.
>
> Signed-off-by: Mauri Sandberg <maukka@ext.kapsi.fi>
> ---
>  arch/arm/boot/dts/Makefile                   |   3 +
>  arch/arm/boot/dts/orion5x-dlink-dns323.dtsi  | 217 ++++++
>  arch/arm/boot/dts/orion5x-dlink-dns323a1.dts |  59 ++
>  arch/arm/boot/dts/orion5x-dlink-dns323b1.dts |  38 +
>  arch/arm/boot/dts/orion5x-dlink-dns323c1.dts |  80 ++
>  arch/arm/mach-orion5x/Kconfig                |   6 +-
>  arch/arm/mach-orion5x/Makefile               |   2 +-
>  arch/arm/mach-orion5x/board-dns323.c         | 118 +++
>  arch/arm/mach-orion5x/board-dt.c             |   3 +
>  arch/arm/mach-orion5x/common.h               |   6 +
>  arch/arm/mach-orion5x/dns323-setup.c         | 724 -------------------
>  11 files changed, 528 insertions(+), 728 deletions(-)
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323.dtsi
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323a1.dts
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323b1.dts
>  create mode 100644 arch/arm/boot/dts/orion5x-dlink-dns323c1.dts
>  create mode 100644 arch/arm/mach-orion5x/board-dns323.c
>  delete mode 100644 arch/arm/mach-orion5x/dns323-setup.c

Having the combined patch is generally fine for review, but for actually
merging it, I would prefer splitting the new DT from the code removal,
as I send these through different trees to Linus.

       Arnd
