Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7396EA51B
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:43:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231315AbjDUHnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjDUHnS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:43:18 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7324440C7
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:43:16 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-956eacbe651so162758066b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682062995; x=1684654995;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IQ6tUNbQr0gBTZA8iuY2w84kK0dZFD9Zeb92jq9bHGQ=;
        b=ul4pLogaDSm78AOEkl8Y4mu/tlwH26o5ejyYE/ug97QoM6QB3I1ofVBePog+mssOKO
         5Bgu2Y/pG1i04Mt3a3g1HFK8K0A4+CIcPIHzzxggbu6reKbeSmfxwDvNG8CNOir8mpYJ
         MePMlIsvW09b5Gdbujr/ViLA6R2JD2/7EnXAQOGDQnLWHRUP9c6h7aWOdjxhRXnjnzQ+
         InYdNxfoC5cEql5U1FW8vBF4Tt6Fj944dSnrZC8LJwn6yZjQugUWwkTKeLGGaHBkqh3k
         hByyxBFLjAl72vQuSo2+bi/zkbZg0Oq2OvqAEcVkJLolDiDhR3QE5EcXIZvoTizgqBHi
         Tvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062995; x=1684654995;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IQ6tUNbQr0gBTZA8iuY2w84kK0dZFD9Zeb92jq9bHGQ=;
        b=UquKzef5CFSeo03Yu6OBbjl9jdyWQmBBSoKyZ6yFhT9vFoVujBidkq1oVOIUqhvf3l
         lHgqaL+CwjHepBWA/ldpwf8fnrwe04DO2pOEow9pNck8vgg3H3i4uTGECwTAZtKqJmWh
         gVkfLbfa7H9IkmqjFNUhX+3MXY8WVSzhbMEn04LOllBp/oJZWUT2PfiP98ec0nqOas19
         NIxaxQMcrkO54ITbDduWIyQLTOmgQhlBpWMciblkjry6ssB6wJCRqXUUlJLZ7RO1IWOX
         NDk49C5+ACGeLtZ9JihChHEkvwvYolJde5AUoFTyVdEbmMWPT5+e6Nv1n5HBU+LbJcsp
         nKEw==
X-Gm-Message-State: AAQBX9dlb/ytGFlWbK6Y43I8WdnTeWekfUmc2HDIItb9UC6A8Q7uQCzN
        TEFaYWS8DXpVV6pqUoTaxg1ddQ==
X-Google-Smtp-Source: AKy350aB4v+mwockIVyi4LYQnDA/uLM4PrpP01lJrsoDu5tBp6jBJgvZthlEM6bEjpFzS2B+3m6Rlw==
X-Received: by 2002:a17:906:6a16:b0:8aa:c090:a9ef with SMTP id qw22-20020a1709066a1600b008aac090a9efmr1518820ejc.55.1682062994984;
        Fri, 21 Apr 2023 00:43:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id pv4-20020a170907208400b0094f49f58019sm1720848ejb.27.2023.04.21.00.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:43:14 -0700 (PDT)
Message-ID: <fa21a112-5331-7166-32ab-e3d314d80272@linaro.org>
Date:   Fri, 21 Apr 2023 09:43:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 3/3] dt-bindings: net: marvell,pp2: add extts docs
Content-Language: en-US
To:     Shmuel Hazan <shmuel.h@siklu.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     Marcin Wojtas <mw@semihalf.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Richard Cochran <richardcochran@gmail.com>,
        horatiu.vultur@microchip.com, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230419151457.22411-1-shmuel.h@siklu.com>
 <20230419151457.22411-4-shmuel.h@siklu.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419151457.22411-4-shmuel.h@siklu.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 17:14, Shmuel Hazan wrote:
> Add some documentation and example for enabling extts on the marvell
> mvpp2 TAI.
> 
> Signed-off-by: Shmuel Hazan <shmuel.h@siklu.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

