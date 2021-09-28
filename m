Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6F5641B24C
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 16:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241342AbhI1OqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 10:46:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241152AbhI1OqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 10:46:02 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62B3C061745
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:44:22 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id f78-20020a1c1f51000000b0030cdb3d6079so2936131wmf.3
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TrLAUwrfZydcABJFcjBv4tGcG5sEz91K/jBljcklsAc=;
        b=UfileZT6VmIcod7N6O9fk2FNKlrMl9laobT1u64Q3AisEo3gFxRtkvyHWu6/NPUgl4
         GwI51NR2AYBTYWRWXSTPTevE6tvd8ArA7Zx3hrSnG8jw1mwgawJLuPMwHAprtJ7NBxKF
         R6KFp1H+ZAB0tVfZi9TgMG/TxpMNpUFzc13h0lgVebH7i6PMXpcw/5ykB2GUQ9z3FcbK
         Bl8DVS0v9afL5UhPBCkrzwGg48sge+mc40grnDUwHGMoS15A29DHb1BEMlMyOw8eahbV
         rYd6HlOLSU5JRpivARjRpARpUaT5pU5lm6bUoiYHDA1f9pDh9Jp1IFrccCyZ4txB9XeO
         8Q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TrLAUwrfZydcABJFcjBv4tGcG5sEz91K/jBljcklsAc=;
        b=gR4nWMc3qxfcWVYN8XsEER+22kHOjyM+2Gjj64Ha72tJwAYo/TkSLvR6Cg42Joskad
         eOvYYGGdw56OVVG2rn2ROnZXoCBFCMr8QV1qjTkJ8zFFNLTQJbqcPQctYINoAB+QtiGH
         UgssLmU/LeXwu5xcbTz9FZrRsuAiHTsZNHut1JChDCz4eZUQGoBnoMBgtBnmRVe/4ZVt
         EcXm5Uf1o4JlqUvNq2/mW3jBhqlnGl5kyA5f8qjpsPtg4RHmGPhSNj13JGmmU0bj/4A0
         SPwuxAK9IliQAKIXSL6xfPmzvj+ZPNQIzxXyhuACPHfLeVMxF1SwZxpfumkbY39+Vm7O
         pXFA==
X-Gm-Message-State: AOAM5316RzuA0vT1JSxTnFUNN1B+AKhcBhU8qS9D9k2UKT+CRsAyiDSS
        vwst7HQvhBksDlzLr8H++qbDrw==
X-Google-Smtp-Source: ABdhPJyCzpqOtMBCC1LyDZ8lpsNKxlm5+8ChFU8yojs3ZwwqE3MyLYWdMGSwSaUIS6X1GlodnxtVfA==
X-Received: by 2002:a05:600c:41d6:: with SMTP id t22mr5146675wmh.59.1632840261191;
        Tue, 28 Sep 2021 07:44:21 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id w18sm4604555wrt.79.2021.09.28.07.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 07:44:20 -0700 (PDT)
Subject: Re: [PATCH V2 0/6] nvmem: add "cell-type" property to support
 mac-address
To:     Joakim Zhang <qiangqing.zhang@nxp.com>, robh+dt@kernel.org,
        shawnguo@kernel.org, a.fatoum@pengutronix.de
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com
References: <20210923110109.29785-1-qiangqing.zhang@nxp.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <2194172f-a362-a328-993b-45ebec539f9d@linaro.org>
Date:   Tue, 28 Sep 2021 15:44:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210923110109.29785-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joakim,


I pushed some WIP changes to 
https://git.kernel.org/pub/scm/linux/kernel/git/srini/nvmem.git/log/?h=topic/post-processing
with Rob's feedback,

Do you think you could try it out and see if this works for you?

--srini

On 23/09/2021 12:01, Joakim Zhang wrote:
> This patch set adds "cell-type" property to parse mac address, take i.MX
> as an example, which need reverse byte for mac address.
> 
> ChangeLogs:
> V1->V2:
> 	* correct comments: @cell_read_callback -> @cell_post_process
> 	* s/imx8mm/imx8m/ in commit message title
> 	* add reviewed-by tags
> 
> Joakim Zhang (2):
>    arm64: dts: imx8m: add "cell-type" property for mac-address
>    arm64: dts: imx8m: remove unused "nvmem_macaddr_swap" property for FEC
> 
> Srinivas Kandagatla (4):
>    dt-bindings: nvmem: add cell-type to nvmem cells
>    nvmem: core: parse nvmem cell-type from device tree
>    nvmem: core: add nvmem cell post processing callback
>    nvmem: imx-ocotp: add support for post porcessing.
> 
>   .../devicetree/bindings/nvmem/nvmem.yaml      | 11 +++++++
>   arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  3 +-
>   arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  3 +-
>   arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 10 ++++++-
>   arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  3 +-
>   drivers/nvmem/core.c                          | 12 ++++++++
>   drivers/nvmem/imx-ocotp.c                     | 30 +++++++++++++++++++
>   include/dt-bindings/nvmem/nvmem.h             |  8 +++++
>   include/linux/nvmem-provider.h                |  5 ++++
>   9 files changed, 81 insertions(+), 4 deletions(-)
>   create mode 100644 include/dt-bindings/nvmem/nvmem.h
> 
