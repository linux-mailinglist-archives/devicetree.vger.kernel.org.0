Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8218D53B7D5
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 13:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234257AbiFBLaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 07:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbiFBLaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 07:30:20 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A0C2A8921
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 04:30:19 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id jx22so9318282ejb.12
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 04:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zXjGbjkwkB6NPpoi9Na1UWH1Az6vSGiEJqLm3ZdGMlI=;
        b=BgZ93ZdsicZVF9rGWnnAycQoqmywcEvHXu4WsQra4sseNIYRVb/ph7Q2UGD67OiEl1
         smac5eufFUR9DL2uutJr4yQGJVeUIr/BI4b/GdX4x7fLOVoJBcX4DBbQmLLtLr+0iFxo
         9l6B5X9/dTXRnCyIoYI/9cW1atZvZcmDICkLSvX1u9PTePB5FaG6VjZWA9/sWQ5yrilz
         M3B/LHI+GxMS2Kr/1NWTJsN4wzNCWBVB+uguEH2APCJXYBF0oVOY+NIaHmtw7L2Knhj0
         gWu+zP4lDDwjjodHK9jH6SwyTdK8RAY0cof44xvaPZeX+LZrpEnJ9nEXcMwG25bGp++q
         Z4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zXjGbjkwkB6NPpoi9Na1UWH1Az6vSGiEJqLm3ZdGMlI=;
        b=nPBfh9Jb8P/adwswXrk22pqqWijruK/+mDWwjLbUsB2ItG4B3TaZvhzGw2tf9k/jB2
         Q6UHpbhgQcbIl9TSGPQlQep9s0Rdt/g9J+jvuMwKlAhZ1btdnWvxvKtjEguAX/ukhJCL
         yRWMhi74DditRWG327SFiLl4LNCEUgnRnO0guU5S2BzUrSeJTOxlGFaJ0Nv6kt6VHvtZ
         lGAtT1pmcYDkGS5CzvzRcOmYCuoF5GjSvdJjU9XnSYgNmiiS43OhJUmkQBguJBQKLTEJ
         sKBkkkYs6uFBNdh0Slfl0qYcUQK5zk+0BdDOJCt1oTHHsXvqMe5B8hRA7gGRc2u8F48C
         7mUA==
X-Gm-Message-State: AOAM530fEBD8CJRdfdA6a6noVf6w2xVwpGPOcmY48/IyTT6XzLh497d6
        SNRM/Y5c+5+ocHUlEn2GQh/mRuw3wMqgqjpD
X-Google-Smtp-Source: ABdhPJxZ9msbPv1s2FqqCaN6S+2vLFGrGKVycFB0CCloip6P56TClKWd6G6RyJt8fcKGU1PqIXqLXw==
X-Received: by 2002:a17:906:9b96:b0:6ff:5db5:dcc4 with SMTP id dd22-20020a1709069b9600b006ff5db5dcc4mr3808036ejc.567.1654169417734;
        Thu, 02 Jun 2022 04:30:17 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r9-20020a1709064d0900b006ff19354f9fsm1576009eju.215.2022.06.02.04.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 04:30:17 -0700 (PDT)
Message-ID: <f6360f69-77ba-ed70-d949-fa53c34d84b1@linaro.org>
Date:   Thu, 2 Jun 2022 13:30:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree
 bindings
Content-Language: en-US
To:     Teresa Remmet <t.remmet@phytec.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
References: <20220602101138.2492028-1-t.remmet@phytec.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602101138.2492028-1-t.remmet@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 12:11, Teresa Remmet wrote:
> Add devicetree bindings for i.MX8MM based phyCORE-i.MX8MM
> and phyBOARD-Polis RDK.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
