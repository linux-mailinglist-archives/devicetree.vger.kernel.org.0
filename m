Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86173538787
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 20:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243030AbiE3Sqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 14:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243025AbiE3Sqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 14:46:37 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D44ED1DC
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:46:34 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id y13so22483964eje.2
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MGC9lypGvvQHtcPIof+toR4e3sY1geBCnMDhVOsZ03Y=;
        b=Zm6wSN5O6ZM5I2mWkDIIGD00txWoUAy+wG6ekFTiOX1fC1jnHKiCJF3lMFTxP5hL5j
         ilr67+ERw//4a9ENpnAZs+Vvp/nJAaDNyKUJf9FWWKMBcFkfAvI2ufbSSCavYVdcJb8M
         AlRoX3+weThE784Bym5lc78cdv/p621gUHtxViBLMNv3B/1VYCOhYPLntlWd9zlZm3/v
         cXuF2HUrTkk+CF+OR6sGawQwAh+lJk5+4qG/cqMUbYwaZD3Y3C9NzyBdteJSz8NdKK47
         HmqXR7E2pfy2/K+4pjLKazwqpupIDBPp1eT6utl+E9y9JKucl6k+Srdo1uVz/QzYdl9r
         4x7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MGC9lypGvvQHtcPIof+toR4e3sY1geBCnMDhVOsZ03Y=;
        b=JeZoSg3H8OX0uaoaeLavwjw1FmxrbvwPe6mUfmvJNCAyIlZLDuvQOU+2hf4jDFyugX
         yrL9m15b3e5hQD8iXKtuNSQk9TKA+15KtYUKuPoGJYuC+8m2XMQez4EaTfEl8wN/zKis
         fwaDY2fRBfqnSZfzxFaJwZ3vTgX161VhTrIuEO2ADQPu+d/OnarGFUNBP0guRwPwIkmy
         k9OuThjDDPOiPeTzRhrcUOahFbALlEbZrOZIO3BpRlsMQUWMuBCxOQK/Tx+RvYjWT4KT
         oYanj8Kgw4k2sHlGjufb2so0xJ355IehhfE5bJ6AmCJjK6kIGYGj1r5bHc8XwjfFSjuo
         Ww7Q==
X-Gm-Message-State: AOAM533+N3/yIJUZpsFOkFAbkAmYrgGCu9wQfREmqbgvsBqAJXkj5zSR
        oRi5uE+u7/wLs/euHlFQAQzNZg==
X-Google-Smtp-Source: ABdhPJzsKH/DAFlFH/rItpdXB1i+zYAEEVeFlixS7t9BYZ8Own/moKO/QscKAVorcDmIUKeAZckiPA==
X-Received: by 2002:a17:906:b294:b0:6fe:fdb9:5fb4 with SMTP id q20-20020a170906b29400b006fefdb95fb4mr30084594ejz.179.1653936393433;
        Mon, 30 May 2022 11:46:33 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906354400b006fe98c7c7a9sm4270868eja.85.2022.05.30.11.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 11:46:33 -0700 (PDT)
Message-ID: <cdc6bd79-3fa6-4e3b-45ef-9e6950c3796d@linaro.org>
Date:   Mon, 30 May 2022 20:46:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 1/2] dt-bindings: net: broadcom-bluetooth: Add property
 for autobaud mode
Content-Language: en-US
To:     Hakan Jansson <hakan.jansson@infineon.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        linux-bluetooth@vger.kernel.org
References: <cover.1653916330.git.hakan.jansson@infineon.com>
 <f395ffd03a6594ee11975b708721a33ccf8a4871.1653916330.git.hakan.jansson@infineon.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f395ffd03a6594ee11975b708721a33ccf8a4871.1653916330.git.hakan.jansson@infineon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 17:02, Hakan Jansson wrote:
> Add property, "brcm,requires-autobaud-mode", to enable autobaud mode
> selection.
> 
> Some devices (e.g. CYW5557x) require autobaud mode to enable FW loading.
> Autobaud mode can also be required on some boards where the controller
> device is using a non-standard baud rate when first powered on.
> 
> Signed-off-by: Hakan Jansson <hakan.jansson@infineon.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
