Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21D9B5A5F56
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 11:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbiH3J0L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 05:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231737AbiH3J0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 05:26:07 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 761C22A41D
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:26:02 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id p5so11541794lfc.6
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Z86Y6lxNamKVhUvoDAYsCL5qC+ArzmuNwLTfX5YdhcU=;
        b=vClL7Wp2AjzkHeFjrfJbtXyOn+ZDyb5SrpxeEmYhond9rNlQ2z24kqshP5MygIMCRk
         /ClVAZzGx6FDuSRcgVNn/bpNT+IpsdCGd3ESzqyYEN1Bd9TpJYnR9ZkmpU2xwW5A0yrZ
         164q3HdSVSMmYRhipQLgVHI5oehWrEYliGivawRRuQeJr5bcvEIgVqcTIkA7HPszok9M
         xyln99RpfOpKI4QG1zsvkudjFto1qwmJn6kVWcTus572dvf6Z86EWepgV+36yg47Yaqg
         8HuUaB3VUT4vPoG/qShdSLOpN65NBsypNMsWLp9/B/5WmUqnBK0wH/4Wf39TrAGYTk5p
         JeIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Z86Y6lxNamKVhUvoDAYsCL5qC+ArzmuNwLTfX5YdhcU=;
        b=Z8mGlTCijmjSyUa+1Zrxw5bq5OzjcOUqo74qKe93SKu4Ekbg0zPzRFWPcTf56EG8md
         G5S5vcUMJ2IWLbxzby7c5iQH5vgLvfkqkjGwQbFLMejHsx0ayunms9dJEaTYNL40dChy
         9koSdqHpAUB7J9ktBkhkgSc5YlHfJ0v+MQ+07D8oDWMIj52sf8NFwX8TkE8Bq/rGve/f
         2+nKGYe8aEAfyqT2guDLiwE+TROtSczOcdPGih/RhzOvN9nNHB/7kwcSfnt5iWUXDk7F
         byQd9h+x8wBIJmDJFtauPM7wOrDT9gnRfKg9PwMSni86UjXLOdmaBJdtXRmFO2aFbtFH
         xMnA==
X-Gm-Message-State: ACgBeo0Kwi+gbBGh8xL682n8aTf1v9Te3rIJQnk5KAtpzA2XJrgT5irk
        0+8pbbh5fE6GaqdubWIHUJvvrZSlm+jIs9z/nKY=
X-Google-Smtp-Source: AA6agR7754hHqSg2BjEUw4dFDyXcardLSAUs6v3visY5FZWemFipRh5r1I/ZkE8gUKcWC9rn4dKY+g==
X-Received: by 2002:ac2:5d68:0:b0:492:e4cb:b939 with SMTP id h8-20020ac25d68000000b00492e4cbb939mr6998002lft.340.1661851560814;
        Tue, 30 Aug 2022 02:26:00 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id o11-20020ac24c4b000000b00492dfcc0e58sm1554535lfk.53.2022.08.30.02.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:26:00 -0700 (PDT)
Message-ID: <1559ab88-8517-3637-3246-fa2d57999909@linaro.org>
Date:   Tue, 30 Aug 2022 12:25:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com
References: <20220830065119.120844-1-jagan@amarulasolutions.com>
 <20220830065119.120844-2-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830065119.120844-2-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 09:51, Jagan Teki wrote:
> RK3399-T is down-clocked version of RK3399 SoC operated at 1.5GHz.
> 
> Add CPU operating points table for it.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - new patch
> 
>  .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
>  1 file changed, 114 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> new file mode 100644
> index 000000000000..b41c765bd07b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> @@ -0,0 +1,114 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2022 Radxa Limited
> + */
> +
> +/ {
> +	cluster0_opp: opp-table0 {

Test your DTS.

Node name: opp-table-0


Best regards,
Krzysztof
