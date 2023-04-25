Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E23CE6EE5D5
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 18:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234738AbjDYQd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 12:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234726AbjDYQd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 12:33:57 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1228161AA
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:33:54 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MpUQk-1qcqVM2mT6-00pxHf; Tue, 25 Apr 2023 18:33:40 +0200
Message-ID: <8d351712-555d-9902-4eea-fbe6213ecfbe@i2se.com>
Date:   Tue, 25 Apr 2023 18:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 0/3] Add nvmem node for BCM2711 bootloader public key
To:     "Ivan T. Ivanov" <iivanov@suse.de>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>
References: <20230420122924.37997-1-iivanov@suse.de>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20230420122924.37997-1-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:qn/RgICseYmmapFHzEiW8J7nZ8jpTBk1N2zAZDhvf1r4kTylJCK
 ZsChi4sbOGcSLP8c4nFarqUVEEPKifVWuBZwEnAPPBYuZI5mMe7RuMIL82LjJ2oXIVygezp
 JFfCgtpEmaJk4cobCpcSPjnUhzQt8+IrpXXWZZo8OMxJYiBtuayGQX6r8O69Lc/kEkSoNlv
 O55NzCtkBkL6hO/zMahaQ==
UI-OutboundReport: notjunk:1;M01:P0:fkIEtNmc/hM=;yOqWUCLGWTwROBxMiOvCiN1iROl
 sj/IGNLALyOcMhoNZi5PHdjOizbzof1WRWpNdRMJp8Ku1kGjgtfqmtXynfe85wmJbZu/hcRNh
 0/QMW2ZmoZHDn+TtsqUYhQ0ZKmyymwrv5VVFw7gtJSYm4xA/HobvOwSktHQEHwgLjr6TkX1GW
 A8uO+HntbD9eqwUEURv6K0WNkNT8KuUw84Ulp3AjlH0urp42RMNbk13G0dN2geh1l/AepzPhq
 7cWuuzBtPSf+tTCIqzZs3nt9fszzj0ioI8FSXfN6htWtvR6FbZbw6VUXJ9sZK5h2lFO/GLER9
 lGOtBlLYlATzWx5JFaNCWwNdmnVTfTJZeOmz1h2/Cs0CfvcyFkmwxRxfBJsv1/NpBn3Xq1QsN
 vDAftyDFvGKHNyyXe6+iHJFw0zQR/sXDhUHl4IcgQSDPyY6KE8HN7UgU5aiLnZqEjdi2xmekK
 p0GrhoRkJuKyNXmfIUlP7WpFox7NuJ9XS6xSKNvVXqgx9F3c1HvDs1sYQKkmPDG0csB/U9xR2
 SaKgMAxlWIYtbfc1LBkU7PJpyKBGt96nQM4FxwndQMFuZgyDz8S3Zce0Cjlm1qIQQHU3FcIzl
 suu9hH9hJXyKGciRTr1wyr1SYCjdGitWDs7g7Ho+sYzU4QMREAiLjBIEMfr6Q5rIljzppsFF7
 THH2pv6ZPaHBD56XxhgNkDGfp5t4n0x2wD2vg0w82g==
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 20.04.23 um 14:29 schrieb Ivan T. Ivanov:
> While debugging kernel stack trace from bug report[1], on openSUSE
> Tumbleweed, which uses vendor devicetree, I have found that rmem driver
> lack support for multiple rmem devices.
> 
> Following patches add new devicetree node, its documentation and
> support for it in rmem driver.
> 
> [1] https://bugzilla.suse.com/show_bug.cgi?id=1206846
> 

The whole series is:

Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>

> 
> --
> Changes since v2
> https://lore.kernel.org/all/20230413085206.149730-1-iivanov@suse.de/
> 
>   - Add devicetree bindings documentation patch
> 
> --
> Changes since v1
> https://lore.kernel.org/all/20230411135035.106725-1-iivanov@suse.de/
> 
> I dig into Raspberry Github repository and found original patches
> from Tim and Phil which add new region and fix rmem driver.
> 
>   - Use NVMEM_DEVID_AUTO instead making region name unique from
>     the driver itself.
>   - Add devicetree node for BCM2711 bootloader public key.
> --
> 
> Ivan T. Ivanov (1):
>    dt-bindings: nvmem: rmem: Add raspberrypi,bootloader-public-key
> 
> Phil Elwell (1):
>    nvmem: rmem: Use NVMEM_DEVID_AUTO
> 
> Tim Gover (1):
>    ARM: dts: Add nvmem node for BCM2711 bootloader public key
> 
>   Documentation/devicetree/bindings/nvmem/rmem.yaml |  1 +
>   arch/arm/boot/dts/bcm2711-rpi.dtsi                | 14 ++++++++++++++
>   drivers/nvmem/rmem.c                              |  1 +
>   3 files changed, 16 insertions(+)
> 
