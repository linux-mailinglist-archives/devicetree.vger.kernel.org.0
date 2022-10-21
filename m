Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCF1E60788D
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 15:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbiJUNdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 09:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbiJUNdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 09:33:31 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B6E27212B
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 06:33:24 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id s17so1955526qkj.12
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A72BE+IY0ZrHLTBIHgimMdusQVYAjUJuQP7S8i5Lgzg=;
        b=NSMmHp4D72Xj1JgY7/qmYBJ84+8CoWjIgZn+LlXfl5MOa/ypvZGuIOMc0zqIRgSiuA
         W7KinC3ipcNrUAOHnMjwM9ImAH4Z0622rc3FiQa/rRHO0tDAwjrlBI32Ts+z7yP0kILA
         A4SOg22jgqdJKf7i9HSlvvwbjee9SmmKWgajtWSJlbIGre6kFnT2QmUB3g6aYAv1IT+x
         skWsg5X/BgtB5/NkFmfwno16ZNTUpp1AyLXZBJ5zuy+C3GmgRMvYXjF041rcmzkmIq+3
         96/rRo+9PsHQAfcAm5ZCudDnpc9XKX8CcXckUaVOw03P6UT+T/WCCxIJti2HA13rrYB+
         +BuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A72BE+IY0ZrHLTBIHgimMdusQVYAjUJuQP7S8i5Lgzg=;
        b=lcxCzWynUEsiRZG6J/ZUEfXgiow8GjnM6Hqq7L0ICiBhuMTmpY6/AKzAOCSk7agTO1
         Q7jyjFk9gKSYz0FBc3PG/sPwcsb92kJpX74PxDB/ZliITKd2AYyypwBy7MXgK5KUw5YN
         +ycUmgT1wjBgYtHyO4ig3A7rMazfgl6vFdu21mhWCCLtGrvBy2324VBQ9MqNycgIBO8X
         SOjV8w6CcbO30tepJ34m2F72Kbzfva5LQ7AG/Gp4EwnKPPS0cmKVVNQL5KjLNGebmuyg
         ev6JPZZm82km50s5W4PJlCM7dlnuHSJQ46lbCRjzevYKnSvtWrZhGKhZH0pmmetuUR3P
         I56A==
X-Gm-Message-State: ACrzQf12+VUYsGUGw4cgY7UHdK3BGm9Wm7Cr1DrRVp0rSlKdiuWYzBwi
        RX8Mh/o7zMzRysGWBJGNZ4NqZw==
X-Google-Smtp-Source: AMsMyM5qZak5lIY8DroovbcZWF2ESpxujwqRcUN1jNE81aHgGbe/231Ljtl9XkXmUws8ZJyuf658jg==
X-Received: by 2002:a05:620a:304:b0:6ee:77f1:ecf9 with SMTP id s4-20020a05620a030400b006ee77f1ecf9mr13922921qkm.94.1666359203197;
        Fri, 21 Oct 2022 06:33:23 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id r2-20020ae9d602000000b006ceb933a9fesm9459881qkk.81.2022.10.21.06.33.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 06:33:22 -0700 (PDT)
Message-ID: <3b1e28f4-c057-670f-af36-d332e3afb61e@linaro.org>
Date:   Fri, 21 Oct 2022 09:33:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH net-next v5 1/5] net: dt-bindings: Introduce the Qualcomm
 IPQESS Ethernet controller
Content-Language: en-US
To:     Maxime Chevallier <maxime.chevallier@bootlin.com>,
        davem@davemloft.net, Rob Herring <robh+dt@kernel.org>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, thomas.petazzoni@bootlin.com,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Robert Marko <robert.marko@sartura.hr>
References: <20221021124556.100445-1-maxime.chevallier@bootlin.com>
 <20221021124556.100445-2-maxime.chevallier@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021124556.100445-2-maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 08:45, Maxime Chevallier wrote:
> Add the DT binding for the IPQESS Ethernet Controller. This is a simple
> controller, only requiring the phy-mode, interrupts, clocks, and
> possibly a MAC address setting.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> V4->V5:
>  - Remove stray quotes arount the ref property
>  - Rename the binding to match the compatible string

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

