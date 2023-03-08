Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F26E06B052D
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231272AbjCHK6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:58:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230082AbjCHK6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:58:40 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0981A4C6EF
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:58:37 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id cw28so64049964edb.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678273115;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pkhbXKH6TvRvR/JaTvTZnsr+5jgDGBxXloVUQNE5KVc=;
        b=ASBC2IgAmDPRN2afHTelrFwdr82Fng0LjrJrbaqoGMWxykOt/DxpEyJrG6ADqqfmPE
         1vhdhLaWqmAbnkDAH6UfYrJ0a8u5L4Gs1W3pYgBBKggeQ4PneWKnuOoUBBUyKR8uevzz
         HKjCe/evImETMa1lBUmGf2243ZIX6bRA/aTa0rPwa0vh6ITTuIq+awcqtcRGMENn6tq7
         0A4B7WeLoge7tvEBHtBfz++IeLXiXscLIqUhNTk406+Qdpy8Uj7bqfF9PI9wYlNhrJvj
         a01TAZgwi/81yZTfIWGp//55dw0lY/oGCVgomnTm1PZzTlt0c/srJgtE3+8GY9gxaLlA
         Quug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678273115;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkhbXKH6TvRvR/JaTvTZnsr+5jgDGBxXloVUQNE5KVc=;
        b=gKAqq3ar+mhctdJdV1wNJ1QySBvwnK0LkCN83uQuSb3WSlcO8uFXyGOtTWzX6TGCc9
         psTZ9ikVFLF1FOSXBnv47qPKBwJTo2rfuphjAeW42fg58uRmsSvBtQ8TWGEj++zxQo2f
         MKN7R4nkzM/yGRdfFmGogt8oKSm4J/8cBZnwUrtaDlbHN01Et/r2KIXhSBZZ7o7aymU+
         1vHojpkLFlZ8L8F7r2kZeX6phvniGcS3uPrTyyrRruCCtrFOCpJEUhJZ2Oj6++F5xkg1
         1C3QEhMzGrFjvuUmuQoWP1IulKZsbBY6zbyIVh94iPKUas1pMSEEZ+3EpHlypw8epsPJ
         GhEg==
X-Gm-Message-State: AO0yUKVLPq1CZm0w33KWbQlK4sHq9Jh1eWnjgLXewQ93Ocqd7+e7pA01
        kQC/P2cq5S0BXt2UgGPz8eSxtA==
X-Google-Smtp-Source: AK7set9msbf3QPsCGQeVVSdkOYH03c1CQbyTBoKZ8sSqSqt4nbsVBAFugLfS1sFY5JLAJgN3MXIl8g==
X-Received: by 2002:a17:906:b292:b0:8ee:72c0:6c7a with SMTP id q18-20020a170906b29200b008ee72c06c7amr14638469ejz.58.1678273115471;
        Wed, 08 Mar 2023 02:58:35 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id qt2-20020a170906ece200b008e938e98046sm7289102ejb.223.2023.03.08.02.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:58:35 -0800 (PST)
Message-ID: <ad43a809-b9fd-bd24-ee1a-9e509939023b@linaro.org>
Date:   Wed, 8 Mar 2023 11:58:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [net-next PATCH 09/11] dt-bindings: net: dsa: qca8k: add LEDs
 definition example
Content-Language: en-US
To:     Christian Marangi <ansuelsmth@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        John Crispin <john@phrozen.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Lee Jones <lee@kernel.org>,
        linux-leds@vger.kernel.org
References: <20230307170046.28917-1-ansuelsmth@gmail.com>
 <20230307170046.28917-10-ansuelsmth@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230307170046.28917-10-ansuelsmth@gmail.com>
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

On 07/03/2023 18:00, Christian Marangi wrote:
> Add LEDs definition example for qca8k Switch Family to describe how they
> should be defined for a correct usage.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Where is the changelog? This was v8 already! What happened with all
review, changes?

Best regards,
Krzysztof

