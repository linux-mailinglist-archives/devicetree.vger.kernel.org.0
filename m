Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 405B3314FE6
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 14:15:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbhBINPE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 08:15:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbhBINPC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 08:15:02 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9063CC06178B
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 05:14:21 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id j21so3414447wmj.0
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 05:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tfYX0wt3USJYRHS86M/jbg23A6PG2wfr98UB/n5XB70=;
        b=MI2siviaWG4FW4pqxYi7oteXhadD0+TYF41MswfCH+sUoG/vNCXv9LbrkoFmJMCa6V
         WJEPu7kCLyVPrd36IZ6KEcz/T+Mh/mUD73pwuYJXtuPuEwSCVceHAeMpt852edVEa62W
         vv2Va7YB4e+4Z94oporGZ/bRSANlVGpJwmhJy5BP3Y0Zxw84N5UDfIO0vqTVZiB8q9qM
         qGlxTSic0q/NEpwiCUXICeDNgn54pAuy1qOfLKn5i7vV2tLl3QVCRAQ6b+RiyxKhGROg
         QVFlam0EloJwd6TSuamtAQ1a8blzzoOCKu8BA14polI+4ARGiHnFbSYX5zoQTuIHUtD3
         JKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tfYX0wt3USJYRHS86M/jbg23A6PG2wfr98UB/n5XB70=;
        b=ni+ptuRqT6cKSKHYda5lROn6QlLOxqJzOMUkLcf2/e7f8ZeF6aWd/lqZ9VlfYkOJlv
         CTlfppJ1sUCBoka+2S88I93a/P8MSvP395JLnTITWQBOWC3p6mbQXJjM2dG3gB9kYkMZ
         wYjTKkkrUhChkUs3apOs8DQvae1+Lq+59OEWPiE9tY08c6PuhfQx7/NHCNeCF2tBIPex
         CS0MV3FoTaAdY7uiLqWRgy0VD13HdZRJWHih+Lf6mJKPryvYlDXZB+KnsqkANGnvtGi2
         f9fzsE+X5rLOcTJV3QI0f6l/O4evji1sOZcPqUskoGSkOlrHMg7ARePf+TeWcxSG8MLM
         mfcg==
X-Gm-Message-State: AOAM530jwVBnPVB17anRG3v9RVxeqK+TUaHPpBcH2kQcVF8SVRYzBouk
        5AQhsLBBG2HHg4tMwEfiByeq2kgazmOUQA==
X-Google-Smtp-Source: ABdhPJw/ND+ieFVszx8C7suT7yUN54RwNU63dqlb3pI1GGY4l2n/sJa2zp3gTt5zseO+JTezpm/fAw==
X-Received: by 2002:a05:600c:24e:: with SMTP id 14mr3405055wmj.87.1612876460027;
        Tue, 09 Feb 2021 05:14:20 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:4cbf:512d:a355:e705? ([2a01:e34:ed2f:f020:4cbf:512d:a355:e705])
        by smtp.googlemail.com with ESMTPSA id n15sm35009363wrx.2.2021.02.09.05.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 05:14:19 -0800 (PST)
Subject: Re: [PATCH v18 08/16] dt-bindings: add resets property to
 dw-apb-timer
To:     Damien Le Moal <damien.lemoal@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
 <20210209123014.165928-9-damien.lemoal@wdc.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <28fb65ca-c41a-ae15-adb9-bc0c6024f0e9@linaro.org>
Date:   Tue, 9 Feb 2021 14:14:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210209123014.165928-9-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2021 13:30, Damien Le Moal wrote:
> The Synopsis DesignWare APB timer driver
> (drivers/clocksource/dw_apb_timer_of.c) indirectly uses the resets
> property of its node as it executes the function of_reset_control_get().
> Make sure that this property is documented in
> timer/snps,dw-apb-timer.yaml to avoid make dtbs_check warnings.
> 
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Rob Herring <robh@kernel.org>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>


> ---
>  Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> index d65faf289a83..d33c9205a909 100644
> --- a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
> @@ -24,6 +24,9 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  resets:
> +    maxItems: 1
> +
>    clocks:
>      minItems: 1
>      items:
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
