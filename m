Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB850767FBC
	for <lists+devicetree@lfdr.de>; Sat, 29 Jul 2023 15:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230122AbjG2Nwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jul 2023 09:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229887AbjG2Nwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jul 2023 09:52:53 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B93E1A5
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 06:52:50 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-98377c5d53eso420786666b.0
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 06:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690638769; x=1691243569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3e9h1mjHXNaFhhktneoIjNiwNY2p47H6uRSWITeacf8=;
        b=D1w8WthUtE8ehHd3nb4SEpll+SUUhvdWnPQixiZ/dY274mYBgVyWIBGKVAB5ftEM//
         /I8T0jfj+I53Rt7kKUp2TlKdBTfYFm2XudyMCKistf4oGYikg8Otv8TdCf+h8954HQeF
         FZxrTL0gQvx6j45TX3rJ672DDdxGVbtWfCssm6epJNLOTUp5OVl51SZJzXaT47dDdQm9
         4jF/2bdKh8xK1c+nY+sRnZ2BX78F6BAuAyhTxLJl2TnjeIsBq/2fC2fkGHL6dH2G7za/
         Pd8sbareGKAlpqbl5pqMcuoidNqZNk22zH26AlI8QIaj8vqGU88LLS6kGodV3F5xgRKc
         Q6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690638769; x=1691243569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3e9h1mjHXNaFhhktneoIjNiwNY2p47H6uRSWITeacf8=;
        b=GNyTHvZdwMPoJbB/LdANIASL78IhBDQ78qaXg0nr5u0uf0sPP/CTjAOqhl6ZJWQ7Wv
         UANCsenjYRtWRjcpiiNlnXOCRfsfYomCRFNc5fhmANufNqNIP9ncQxoqSlNJlWGLejwy
         glxZSwQx2H/oZE+ycwM2CCvwgonxGrnm1eCpALnAm0zmDNfoLrSXGXlZ2LLT4j8U2Ya5
         MyG9/eNYZ78V9uNWfR/b/UTaDQbdZOTsmLXRw4/BWtWpUcV6J/e7/bVpfryU3BEX+ZYo
         YfTivhLSNau+v5xEVcTx+2EuE1060nKDX4660h4HbhFUhk2t6Bii5RN6DWFWib314OY2
         2uKA==
X-Gm-Message-State: ABy/qLaKMVxYSBMeDyrhS+Cqcz2kUj+yKTD6nTs+sZey8Oh8iTcpduQb
        87PhKT8498Vz7oXpB3qSYKyjKw==
X-Google-Smtp-Source: APBJJlEsGSrFZkZih0nqPZ7KkzS2vK2oTs+DEAnJxAjBCNeO/gQ2G4zspKF6FrGJ5Xmt0TLCuFYHtA==
X-Received: by 2002:a17:907:7638:b0:997:deb1:ff6a with SMTP id jy24-20020a170907763800b00997deb1ff6amr1870674ejc.22.1690638768934;
        Sat, 29 Jul 2023 06:52:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id kq6-20020a170906abc600b009828e26e519sm3282832ejb.122.2023.07.29.06.52.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jul 2023 06:52:48 -0700 (PDT)
Message-ID: <9cd12d89-b0c1-484f-231e-7b6915f4572b@linaro.org>
Date:   Sat, 29 Jul 2023 15:52:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: net: mediatek,net: fixup MAC binding
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Felix Fietkau <nbd@nbd.name>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230729111045.1779-1-zajec5@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230729111045.1779-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/07/2023 13:10, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. Use unevaluatedProperties
> It's needed to allow ethernet-controller.yaml properties work correctly.
> 
> 2. Drop unneeded phy-handle/phy-mode
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

