Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A647B6A99EF
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 15:53:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbjCCOxj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 09:53:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230349AbjCCOxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 09:53:19 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3533015152
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 06:53:18 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7D31F85CDD;
        Fri,  3 Mar 2023 15:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677855195;
        bh=Vc+o6j5fe1VGk6TVfdAh5Ft+DhOYEMiSZu6XW3AqOiU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Jzm5cPuYSJbAS4ZWW6XLnOGswvjqISFrUEdOvr76S7apx8maD9lSwF6J5bvcfowjc
         etRlwVbT2lyKdjlYt+J3uJOvuRWWTbWXK7iUEe0AFgZIbe/C5RrkZSrlsAJ6eJYG0r
         RRl4JLmGVgadGI6tDiKl+rEmMNKlNGU8bb2osIWodMKgZt27nyrKxMkkLheflRWD1L
         TdYfCrNb0JtGqEgnsBD4C111d5OP2K44Y0hPnm5nLK9TCyKKnfg2BvLq0v3+j6Ed5c
         9E8YaPE8HtOD8nvu/CAaFIjVetf+XkxW/O+KnKFAZ/85bnJY0LYOJuyKHM+JaF5rt1
         I/rrY+NYxf5yA==
Message-ID: <d2a9b8fe-a0d9-ad45-8e84-9b3fa4c9533f@denx.de>
Date:   Fri, 3 Mar 2023 15:53:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for DH electronics
 i.MX8M Plus DHCOM and PDK3
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
References: <20230302231626.159984-1-marex@denx.de>
 <20230302231626.159984-2-marex@denx.de>
 <5bfc3879-085b-080e-7bf1-e698a35375d2@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <5bfc3879-085b-080e-7bf1-e698a35375d2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/3/23 08:34, Krzysztof Kozlowski wrote:

[...]

>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
>> @@ -0,0 +1,321 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (C) 2023 Marek Vasut <marex@denx.de>
> 
> Isn't having personal copyrights with a company/work email a bit
> contradicting itself?

I'm not a lawyer, so I cannot answer that. There are plenty of such 
examples in the kernel however, and I don't see where the issue would be.

The rest is fixed, thanks.

[...]
