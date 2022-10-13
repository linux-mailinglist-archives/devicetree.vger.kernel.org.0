Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B10B25FDBCD
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 15:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiJMN7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 09:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbiJMN7f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 09:59:35 -0400
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD805D2580
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:59:02 -0700 (PDT)
Received: by mail-qv1-f41.google.com with SMTP id df9so1288379qvb.9
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PQ10/6LRc84micnFOBKpFzY/QjfgjefSJQE0Vl51KIY=;
        b=FWQpdB+246DKDbgKp/9ISuIE6YWt3f8uxuh6Eg//8tM2Qh6GkiiJM4COHD/Vw2pg+H
         UGcYA4ywGuTqgGfEB203o7yAPj6CJ8QkcSiq2qMsXq3F/ZMnkkAeOjHiYPQJe1m2h+AV
         YlvsLQ6AYH1T6e8FXJ6WAjRLEcZsGott+NQl9AXQVfJ+NmzsGWHud0+sxehF2bpdL8LV
         hdDANzFkucyfcAG3FFhhLmB21BynPOCWqerRye7rODHnb+SlTaVVhWsHxiB7uVvUR3pR
         /wSQ0iG7/j9ElpZwEFs1NSE+k+5jEJ8Ej77X+7xZe/+4eVKkn6bIqIdGMF4D/gKEGaf2
         O4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PQ10/6LRc84micnFOBKpFzY/QjfgjefSJQE0Vl51KIY=;
        b=KDSheOzMoES6qhnbnoQKffEo3VOi5Y6zRUA2KD65VectYS81byfzKOh+w42VDt3KZy
         uKrb6tbgnrmOoUhSnkPClIUYxR3m35VsaJbCW5exnT9ICMmmb/JXB39shQV68bpIlQCj
         6raaIabsnxahl76q2bejfWNtbC7k2gej9kRmaUCX136RxlSAKiX/Dyp2MJNUSdUAdDER
         grDvXoA4n8z6Ca/cVOxPPjp88FACoTgbuSm4LqyXFGQKXF+AICUf5+RKbmLABF/Yt8MC
         pCaSNBwetT87d4gu7DOq414M7A/lizOn4uzYS5rPnnybNpjEL3t6QS0ZlQSbOOvgDM0v
         apZQ==
X-Gm-Message-State: ACrzQf28VW+mr84onQRpYVIPBa345xsTNJKCmhOcZH8dasRxK80DI6Y3
        t7dCXsHbEps01Kmk6N9vj0TKzg==
X-Google-Smtp-Source: AMsMyM6XPi6X7sylpI0WdrSyatbD37xQO/0BUZe9dso2t46gwVsug9naadzRVdUbWODl4qHyPIpJWQ==
X-Received: by 2002:ad4:5763:0:b0:4af:b800:be6b with SMTP id r3-20020ad45763000000b004afb800be6bmr27984799qvx.70.1665669102521;
        Thu, 13 Oct 2022 06:51:42 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id h28-20020a05620a13fc00b006ce7bb8518bsm368862qkl.5.2022.10.13.06.51.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:51:41 -0700 (PDT)
Message-ID: <ea5feb23-54ce-45da-47a4-078ffb79ebd0@linaro.org>
Date:   Thu, 13 Oct 2022 09:49:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 4/5] clk: imx6q: Add ipp-di0 and ipp-di1 clocks
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221013131839.1365394-1-alexander.stein@ew.tq-group.com>
 <20221013131839.1365394-5-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221013131839.1365394-5-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/10/2022 09:18, Alexander Stein wrote:
> Described in CCM_CHSCCDR and CCM_CSCDR2 in the fields ipuX_diX_pre_clk_sel.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/clk/imx/clk-imx6q.c               | 20 ++++++++++++--------
>  include/dt-bindings/clock/imx6qdl-clock.h |  4 +++-

Don't mix bindings with drivers.

Best regards,
Krzysztof

