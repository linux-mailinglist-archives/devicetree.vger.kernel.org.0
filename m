Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62136671F46
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbjAROTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:19:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231287AbjAROS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:18:56 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B4A660485
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:59:39 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso1579624wms.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 05:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e3tf1lDS49CRVNCvSLh7dDhYIQnSuDTzXsLI/jQyFvw=;
        b=WrcFjYv6kAFNvGvISQu6TQ+3JFgxRfvYBBgyM2Oj2DYNvZAnc0dRL2CA1ez3UWvPjZ
         dJD6gK/ju8QMmm5ZMCFlTqrF4/jyXaXWUwHRqYF6PssXEhZbUqzAu8r/cm5uCRG4kL78
         VtfIIUbCoaHLnP6mx24eMV113QeR4QsXv2zcvk309WZu4ykMzMiRX9G87Up+szw/lz+y
         a7DIjj7Zsa7LciebdSl/qAONnVVxwfozqoGQdF+478vcTOAp/7jMxhf+fA5FICtu5hTU
         RxXUTDOPSaqznxzPBqlRb7ajZ9PQAsVyp/mMqWjXYM775zuZaANFzrz4TgPsQEX82ZFq
         oXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e3tf1lDS49CRVNCvSLh7dDhYIQnSuDTzXsLI/jQyFvw=;
        b=QUsfShDMZ2t/fzi5GkhckusFGv06jSmQqJSXJ/P985Blhu8ERAreWNf8qa1jeR2ecP
         2KCB/7uuk+n5TJhBfIolEc0MxRzLaH/NLj1DbgSxaR9w7SySFTzCuPiNzj5YJZrf2FRI
         cDS0VigBYBx0RygrDW4hsIGZPXBuWbgTBhndmEXBX9XRuyeKVP0kDXwWG524unUHT+uZ
         Wit8F0GDsjJgWF/mqc0HPc+0HK420tpbhbNAcivBaNkdGvfaYOpNNJmyxPPZJCgJsmqr
         ngORpoqoG+elgFmM6zNZLMV5AoPsEoaa4qIAI/4mXQ2BxnPTOs+/pdCdTyfIJ2IZdsKz
         bUFw==
X-Gm-Message-State: AFqh2kplEfmHdTm9LYJ6i1WMxYcjnZQy2qXoCHjPwnhhhdyOPh6JifXE
        mEO65Y+SlmufsTUi96ZEGdrw1A==
X-Google-Smtp-Source: AMrXdXtgvsencxdlxSpqlZueE6MPFDSmQUJwv72A/Yh2ER4SwpbzKLB2aBsHO8p02Nz4LnRO4+a3aA==
X-Received: by 2002:a05:600c:3c91:b0:3da:f5d1:c677 with SMTP id bg17-20020a05600c3c9100b003daf5d1c677mr2765743wmb.35.1674050377957;
        Wed, 18 Jan 2023 05:59:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k34-20020a05600c1ca200b003cfd4e6400csm2311920wms.19.2023.01.18.05.59.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 05:59:37 -0800 (PST)
Message-ID: <de1da42c-2fed-4c89-4cbe-be764b2859de@linaro.org>
Date:   Wed, 18 Jan 2023 14:59:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 12/17] arm64: dts: freescale: apalis-imx8: analogue
 audio comment
Content-Language: en-US
To:     Marcel Ziswiler <marcel@ziswiler.com>, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
References: <20230118072656.18845-1-marcel@ziswiler.com>
 <20230118072656.18845-13-marcel@ziswiler.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118072656.18845-13-marcel@ziswiler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 08:26, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Added a comment about Apalis analogue audio being another todo.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

You just added this file in previous patch. This should be squashed
instead of splitting one logical change (adding new hardware) into
multiple independent patches.


Best regards,
Krzysztof

