Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CECD50CD17
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 20:58:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236822AbiDWTBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 15:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236814AbiDWTBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 15:01:00 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82DEB1C6C80
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:58:02 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id p18so8925128edr.7
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KDS43gJpQc64yGTE0TIO+VRH9Efh+90pw1f8DmTrx0Q=;
        b=cDQUTmXqfFRaWkInWPO8sFXlRktrF6ZqQ7dZ4rISCpIITT/YTzU6+5bbrIO0nfkv5M
         r1a36C9JyFO0JFR5gky+srI77mWeo+ftkC0vYg04KBzxe34Fr+74OHB+Fqoc7L488K7S
         GQPvesCHypUggcO/iPdACLgqwK74+rOb3p535mENa0iCcGJtsKTnVzPd5dc5o5vD5+QN
         ibfqwI4Y0w/KFUW6qAmCaXsIrXZHS4q8iXGmkLjWxh8O5JrYlxFrOOpetcNRe/ivnTJc
         bKDZQwvob87FUmOjv63e1KG/j8A+ipM4MAe1mgo3hnDEGECSxTqj/Xw4ruTk7haw+Vet
         PhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KDS43gJpQc64yGTE0TIO+VRH9Efh+90pw1f8DmTrx0Q=;
        b=U9/dCuY7TiPiyaorNwYxPMU62TucY59EMypqBgtzj/zKAXNIU6buLREEUdJjENgP8E
         5kDDKuXfqQpGog/zKECRxku6f7IjJFOJ/9T4dPJibn/6Y1MSYDsacxbYQ86bj0drsjIW
         szDs9/W2sQ3O6SwBaW44PQsXFwxzZj5KRQhazyRs0KNtwoJ7FtZZIiQ9c5VgLc5Ed8wc
         c8/4ag3ArG3hiamC28Xx+ZPi+ay21bsUR+lY4rujiSxx0SM5oLRHh66zqBlIEXtj6h02
         gz5in4G5ExLIPBu2SlhzYSaMgQZk5m/eVdWNv6LlQfYsXFzmJLRa9pe6fhWVraAcy0QB
         pvFQ==
X-Gm-Message-State: AOAM5304bp1SGRW1gb1C7liqfYa6VKmBIYrR5YI7GTsfShlC8N32swnu
        7EhjsiOrpmTK3FMoVBzqOPwd8g==
X-Google-Smtp-Source: ABdhPJzu0e0ryibs+0D+DRPaxF+pV31lXfDqmK2OlZWOjnkAdDnDBdRdOwEEdRuP6y1JHdXvsIaNcQ==
X-Received: by 2002:a05:6402:e99:b0:41d:11f2:85e0 with SMTP id h25-20020a0564020e9900b0041d11f285e0mr10986812eda.339.1650740281150;
        Sat, 23 Apr 2022 11:58:01 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cn27-20020a0564020cbb00b00418b0c7fbbfsm2471484edb.32.2022.04.23.11.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 11:58:00 -0700 (PDT)
Message-ID: <fd372f05-e811-a6c5-31ae-c80df44c9ae4@linaro.org>
Date:   Sat, 23 Apr 2022 20:57:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document
 RZ/G2UL USBPHY Control bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-renesas-soc@vger.kernel.org
References: <20220423134601.141975-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220423134601.141975-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/04/2022 15:46, Biju Das wrote:
> Add device tree binding document for RZ/G2UL USBPHY Control Device.
> RZ/G2UL USBPHY Control Device is identical to one found on the RZ/G2L SoC.
> No driver changes are required as generic compatible string
> "renesas,rzg2l-usbphy-ctrl" will be used as a fallback.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
