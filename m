Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC2D950E5FE
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 18:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243506AbiDYQnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 12:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237898AbiDYQnS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 12:43:18 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E5E010A6C7
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:40:13 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id g20so19144605edw.6
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LZvYuoDY3MLwRTjWjKASwfuKmpjJyFaUO5YIIc9Esc8=;
        b=Upp+YfvbCrVADEhtrXFR/bMONFuQfILgN7AzmbdU4MNzht9HIz+nZFrDjsNqYR0kXU
         X87TmmglH7uw6lldH/EqsCUsEXDWRUCFvqG3Kryj4Xvhg2zKR3g9tG6NOfcmyuUnYqYv
         HBob7UFjzaSpwq9U2xB7yIV6d3YtxCL1FR6DwpRNGbeTqqWkIvdcyc94NtTzYgRtHsWa
         J7kZCFGqJoycH/OZIMteJc1ZIj6c2pdZA7X6a7YsyJOoPS3+64zz7znBHedjsaIU6vzK
         bLfTB7PY84KOTiFnbf0ohn0dD7Q+ulGcScJfVADBVwHhF+2T/6fO5p7iNcV4Vl6/uj8N
         hgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LZvYuoDY3MLwRTjWjKASwfuKmpjJyFaUO5YIIc9Esc8=;
        b=LOz8jaZbU9/NRYg9P2nKhWOu6mxBmxlX/+0NlXOppQJYqHCX1XV2nB6KzyxBMjLslc
         11uyEs/v9heblt0MVbqJPhoTsPjuFL4ssCWIYH0pv7AVLwWHO65olJwgSk5BhQJLqqKl
         Rb8J1qa5Dln1MbPMWllJIog9PJ5iYpD5+CwoyAsdRAdUKner2LzfYH9KCfcOhBYYBKkg
         lPqrv1lXjNxm+3mHOOwrq5EV1CXtPr13GZImgWMOZEUFJPKtUY/c11goawZFK8xflTwa
         BJEpYBuFCDnZRd/hx1eo2tl/ep2GAK0BnzSxef60NP99SqvPWD2pZAoytrxlre70VWte
         1Low==
X-Gm-Message-State: AOAM531dJK075e9Vr00IW9n33GYA/IJdYPgMAOhOpSwq9rYfW5iBVqAk
        YNnGnPY4sE4fZUuhUX73DXiB1HTMQN7f8A==
X-Google-Smtp-Source: ABdhPJyO1U4eqQC3dZj3cCdF2W3KcX3cLgu2WDWapPOfcxTOq1+bp7912yDX45qNr4d6HqgHJXA5Gw==
X-Received: by 2002:a05:6402:304a:b0:423:c3b8:cfc5 with SMTP id bs10-20020a056402304a00b00423c3b8cfc5mr19917574edb.406.1650904811705;
        Mon, 25 Apr 2022 09:40:11 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m11-20020a50cc0b000000b00425f85effbfsm19401edi.58.2022.04.25.09.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 09:40:11 -0700 (PDT)
Message-ID: <60299854-2ba6-f4aa-b45c-6e5db7b260db@linaro.org>
Date:   Mon, 25 Apr 2022 18:40:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: fsl: Add Engicam i.Core MX8M
 Plus EDIMM2.2 Starter Kit
Content-Language: en-US
To:     Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Matteo Lisi <matteo.lisi@engicam.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
References: <20220418144907.327511-2-abbaraju.manojsai@amarulasolutions.com>
 <20220425134224.368908-1-abbaraju.manojsai@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425134224.368908-1-abbaraju.manojsai@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 15:42, Manoj Sai wrote:
> i.Core MX8M Plus is an EDIMM SoM based on NXP i.MX8M Plus from Engicam.
> 
> EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
> Board from Engicam.
> 
> i.Core MX8M Plus needs to mount on top of this Evaluation board for
> creating complete i.Core MX8M Plus EDIMM2.2 Starter Kit.
> 
> Add bindings for it.
> 
> Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
