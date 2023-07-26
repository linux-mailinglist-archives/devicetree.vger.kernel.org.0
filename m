Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54E46763E52
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 20:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229899AbjGZSXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 14:23:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjGZSXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 14:23:46 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3441F1BF2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 11:23:45 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51cff235226so99070a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 11:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690395823; x=1691000623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZCZJYUl4mKPI/pczMk3c9xLSqgIxbuy2H9MzYgI8y8=;
        b=Y0EDEZzah53+3pjRj7/z4ehdhG4+8UvWvi89LeaQM1opkYsEitjlMtEBHWorOUXDxK
         R7hm1VHlGkeDJae0vH9NkYclXoarknQkpzrGFy/k3rSkSi82v5w4aE1slFPNsBeRx/iA
         rjZNn2LFAR5b3f9kXUssUif51slPldfDoh5yssktPqsj5bmZCpDoYcFWtmJ4qM4STeKc
         Kc5W56QMbAODzsXM1XAFBfJO4nmLj4wLKbksLLCeZzTQamnWxbypEm0BIjgy2PCvOGCZ
         0LyRiCgOJ5lrrEQkAlN0xedxa1KN45yi24xfxvWtv5UouAPxhVpjLC6/8T0UOlxIOw/o
         1mbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690395823; x=1691000623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZCZJYUl4mKPI/pczMk3c9xLSqgIxbuy2H9MzYgI8y8=;
        b=Zmob/51U8xtn5RynwyPN05Jh2IRuXWz/jU7KaXCBglQy//EJTno9SMZEIXzrMXzQsd
         VBdGRoYXJnQNkPtsYQAgl7Q2gEGx54d0haGTNWQmWqI46iLyv7/iFsKZD3EM3g89CP7G
         aumfULONjGtImlRHBu5pIS40f6ppUnSYZBuong2C/zRbYjJFSaoX6mVNfs9X9ymNzGSo
         WeGpcEidYVcgYthYdTCZoBbGLSrEuJgZOYKd7C+rv/xEj3vl/hf6W95pRzsPujLPLWZJ
         ihk0LWXBdqkXIleObg4K1SMV8N9fbyINMaxlXlk3uhVwqLa529TJoBnfzpbTqRIA7NeA
         5mFA==
X-Gm-Message-State: ABy/qLawGK4HQjpkdpXO4SxAFAb7Q/oyp3kIAOlu5APGiEOXHuWpN0Lt
        LEj0u5y+jUAKM0ndbG3IK3kxUA==
X-Google-Smtp-Source: APBJJlG71Uvqr1ntpB2z5rNB+DM34Lxt66COR4vBEYKoPTnMOgG3P74vdY1A7POXJnNjqvLLYW7uMg==
X-Received: by 2002:a50:fa89:0:b0:522:2711:86a with SMTP id w9-20020a50fa89000000b005222711086amr369040edr.15.1690395823694;
        Wed, 26 Jul 2023 11:23:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n1-20020a05640204c100b0051e0f21c43fsm9040843edw.31.2023.07.26.11.23.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 11:23:43 -0700 (PDT)
Message-ID: <91580323-dbb9-cd7e-40be-7dc1467e4106@linaro.org>
Date:   Wed, 26 Jul 2023 20:23:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v7 1/3] dt-bindings: arm: fsl: Add VAR-SOM-MX6 SoM with
 Custom Board
Content-Language: en-US
To:     James Hilliard <james.hilliard1@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Pierluigi Passaro <pierluigi.p@variscite.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230726123747.4097755-1-james.hilliard1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726123747.4097755-1-james.hilliard1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 14:37, James Hilliard wrote:
> Add support for Variscite i.MX6Q VAR-SOM-MX6 SoM with Custom Board.
> 
> Cc: Pierluigi Passaro <pierluigi.p@variscite.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

