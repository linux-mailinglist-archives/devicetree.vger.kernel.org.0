Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9B553E82C
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:08:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233507AbiFFKKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 06:10:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233855AbiFFKJo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 06:09:44 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5248994D6
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 03:07:43 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id z9so619383wmf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 03:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nOdX0D6gI2vCvbiULKuWgUb1+R1FUwAgBHWxoQ6Py84=;
        b=guyZnUPLasgYuxVbgLOK9dpahGdVKH4NsfUbmPs/vb7FJJJj68IShyjYpn6sZyZJ0e
         CJdMAENAxn4qYtdlkc9UXXnKyWJ0t1E3R7GYaFgTI8PaZmxcYOBGZZpcF2iw+WH7DmKg
         mM8Y5sbIZlSXK/Nn0DOTfrI6HZxdAr4CgZW4PoiOnDDm154XAmGP+Tu90lnYsztVMii9
         yGfhkljKx2jZ5+vxx0gkfBCjjbnG7A8Q5RVv4SDu4TtIRvik3u2R4lhOwM+zBkmkcc7G
         oU/nrIgSUmiE5VechEJ/ececXdGNuWy96/NAMSHHO02pjOLPr21N2OpuCmZ7X0tDhz/8
         YOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nOdX0D6gI2vCvbiULKuWgUb1+R1FUwAgBHWxoQ6Py84=;
        b=X94V02R9qdkMhMWS1l7xSNeDT3Y+QRot+vZVytTGpvAYB42aEn+GfCbN0JvqZOVJTO
         PB9++UldctbSbRc+cD1V2tEQ14vyemW6o709kyMRrUvKzZe3h19CVMPM9tg+J23SqprT
         qUNID1F75sY4V4uGqFh8R6LYcWhfaDrb4C0QoY/Nf3JxqNoTW51bbCc+lGQFc5N00470
         rlWgmR3xPRvR58b08Hsl9XlAyh6b2RoxWDctWl8pw/0wUgdryk5+NrH4KIddcVfJBCAD
         xZ5vT039p8XsAOJQ6MNvOPrPY1GxOHNkiCbfJvj08ByRSiyLB6jVLhD0jkzkBnUb3RqJ
         f1VA==
X-Gm-Message-State: AOAM533JgfUQjv/QIjURsio3NCF5Et7qvqHDTNuv6w8Q64pd1D/5DIZY
        WT/5X5K0jn7GJI0B7B70ShM1Pvak28LrIblE
X-Google-Smtp-Source: ABdhPJy4egwo2K5fCw/QlI1TFJAwj0Zsy/iIpzW5zgtq0cHrBtthrjUvAfu4jigGx7vmLovqd/wOfQ==
X-Received: by 2002:a05:600c:35d4:b0:39a:5b65:2b66 with SMTP id r20-20020a05600c35d400b0039a5b652b66mr41825733wmq.112.1654510061622;
        Mon, 06 Jun 2022 03:07:41 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id h13-20020a05600c2cad00b00397623ff335sm18510131wmc.10.2022.06.06.03.07.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 03:07:40 -0700 (PDT)
Message-ID: <090a5802-d2de-682f-4f12-f7a475ee9339@linaro.org>
Date:   Mon, 6 Jun 2022 11:07:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 0/2] nvmem: add Microchip OTP controller
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220518115129.908787-1-claudiu.beznea@microchip.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220518115129.908787-1-claudiu.beznea@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 18/05/2022 12:51, Claudiu Beznea wrote:
> Hi,
> 
> This series adds support for Microchip OTP controller available on
> SAMA7G5. The driver gives access to a non-volatile memory which
> keeps (at the moment) information like booting media and temperature
> calibration data used for thermal measurements.
> 
> Thank you,
> Claudiu Beznea
> 
> Changes in v3:
> - fixed Documentation and binding files names
> - used __maybe_unused for mchp_otpc_ids
> 
> Changes in v2:
> - updated the bindings (patch 1/2) as follows:
> 	- included the device name in files names and updated binding
> 	  content accordingly
> 	- updated the description
> 	- removed address-cells, size-cells
> 	- removed clock include
> 	- use GPL-2.0 OR BSD-2-Clause license
> 	- removed OTP_PKT_SAMA7G5_TEMP_CALIB_LEN and keep hardcoded
> 	  value in examples
> 	
> - updated MAINTAINERS file with new naming of bindings
> 
> Claudiu Beznea (2):
>    dt-bindings: microchip-otpc: document Microchip OTPC
>    nvmem: microchip-otpc: add support

Applied thanks,

--srini
> 
>   .../nvmem/microchip,sama7g5-otpc.yaml         |  50 +++
>   MAINTAINERS                                   |   8 +
>   drivers/nvmem/Kconfig                         |   7 +
>   drivers/nvmem/Makefile                        |   2 +
>   drivers/nvmem/microchip-otpc.c                | 288 ++++++++++++++++++
>   .../nvmem/microchip,sama7g5-otpc.h            |  12 +
>   6 files changed, 367 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
>   create mode 100644 drivers/nvmem/microchip-otpc.c
>   create mode 040000 include/dt-bindings/nvmem
>   create mode 100644 include/dt-bindings/nvmem/microchip,sama7g5-otpc.h
> 
