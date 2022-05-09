Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D8351FACB
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 13:06:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbiEILH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 07:07:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbiEILHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 07:07:50 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B441BB9A7
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 04:03:56 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id d6so15817199ede.8
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 04:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qbFYEZjYFfyYucK7nmvu2wlEESY3MrT+Db4qYdgacL8=;
        b=dTFGt+8vsmUW9QipngZI06mBRUuxUy/0OX/7FetidL1Eml3D1/bDFb5zKptI7FEZWl
         Skbf5IJTNMNXiCTZHzFYAN6aCZ4tvp5Rt/KWOvnpztI6tRkRDxM2b195HaCkEUgh7Wkc
         8tnlERXfvs0sDHI3hxBPXil8CWFQzZGvcXLxQOlzA7IekYLYM+FTWEhRIL9u1BXlJPf9
         pGJlLe07eEfeMNBOIQf772zt27MUxtdQcF05IVhWxv/kSA8AkJJ2JsZD2rL/uIA/lP58
         8RaJdWKWB2y5sCEzal5zg2k/fTTjiaKyHf8G/bFrB1fYepk95qpDG0fwgi0OTbobqbL0
         ksnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qbFYEZjYFfyYucK7nmvu2wlEESY3MrT+Db4qYdgacL8=;
        b=jaz8XwmKw1fndvlj/jusiy6U2VpJv7hWivC4AaWOHhAOIweRj/DlInM1KbPe8pwv0k
         6wEPt1jpY7BL6WmcFdtPsgNu6dPqB/eAp8Q6cbecyDRUoohJ9tFNxZWDdglGk5N4Krlr
         s3hU8b5UqtrryLobD2Nktj6AOxlPgFNLXo92ZDaZOmxlzr9rTR7EmcOphQ6tkubDa4JB
         8crYOYWq+hz8gDs3328m3/KJzfT4xZtHG9a7x2tUt4YFBFprGmx+RIqmH2ALghdVgwry
         4VV2PtlAf8jttS6QgaD608MGda0/HRDfkzhurLE7hCrGnb54MnvtPYO4wQOlf0PUneea
         QeSg==
X-Gm-Message-State: AOAM530RCM4oG4otcD82m81IL/b13Ts+4AYc7wNk2rzPOWDIYcFpErWS
        pWYHqnrdWLaUwssJ2bdaiX9eTw==
X-Google-Smtp-Source: ABdhPJyRXRg5Njoc2yO7HgmgJtCS5wNte3EJhFkgE7+5DNI9kMVJB9O3WjxRXXeCogZUA/Ue3F2BAQ==
X-Received: by 2002:a05:6402:155a:b0:425:c0b1:ab07 with SMTP id p26-20020a056402155a00b00425c0b1ab07mr16857965edx.258.1652094235555;
        Mon, 09 May 2022 04:03:55 -0700 (PDT)
Received: from [192.168.0.243] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jl18-20020a17090775d200b006f3ef214e55sm4977129ejc.187.2022.05.09.04.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 04:03:54 -0700 (PDT)
Message-ID: <85c5b09d-de6e-976b-03af-2d8a0953341a@linaro.org>
Date:   Mon, 9 May 2022 13:03:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v1 23/24] dt-bindings: arm: fsl: add
 toradex,colibri-imx7s/d/d-emmc-iris/-v2
Content-Language: en-US
To:     Marcel Ziswiler <marcel@ziswiler.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220506152809.295409-1-marcel@ziswiler.com>
 <20220506155641.297635-1-marcel@ziswiler.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220506155641.297635-1-marcel@ziswiler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 17:56, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Based on toradex,colibri-imx7s, toradex,colibri-imx7d and
> toradex,colibri-imx7d-emmc module device trees add iris and iris-v2 for
> carrier board dts.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
