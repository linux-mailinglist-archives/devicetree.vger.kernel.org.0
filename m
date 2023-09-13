Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15FA579E486
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 12:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjIMKFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 06:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbjIMKFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 06:05:22 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A01196
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:05:18 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bf3f59905so828267166b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694599517; x=1695204317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CFmG4mhdY6EhuhcP3xdyYDj0/6QzZEcQDMK3fE4AcJ4=;
        b=SRcpVv2oFJZa2s9QmBrdLAtfgxWgcIh96+Q7MTXWwMOAMRcm1xTzSajhzTcKqoS5Fe
         KGHJ0bJEjDVsl+Ok/CB3FyKsf12U5YPRpBy4ZiqND+jpBLUapbBB1xSdvQlBJgNDlPWX
         /qAweIWTejbyFYWL+djXsgsRIIymwfZlsH8SBAfgryLI2rppuxUbCM9nbMtmKupRjPmK
         uE/XNsNgZpi5yBe9oKFMgaKBco06brYN6JPDPUoXv1PadOIcczGwGzQetCFdxq7CYn78
         aOUTO+i7AtSrkRQyETjG1oU7HBzqozcJxt2RupNpe31Sw4UNpAuaO6eM/pUwX/RhHFTS
         /XSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694599517; x=1695204317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CFmG4mhdY6EhuhcP3xdyYDj0/6QzZEcQDMK3fE4AcJ4=;
        b=TFGrB9BY45LE9BtmOj7vIBlHnAUBwn5YYvD2MxKBY6FzLdEGQ62boGo+fuO/hXdsPv
         XpAJ+W1KSXwfRnf7D0eoh/sxa8Tpi82WIIr3PZwfnRxw8ZcRlhM9kTe9kZU6qfk76+H3
         wDQX1n4WTg98SO7LGnKDfTQpQm8iSwWDrsBNjCOOE3e5GJGJkyR4mqyQOt/HRf/NY+dd
         GwCTBA69Mhn/EmiUEc6/9ck3FUUfPIs7+7AOO3lvyh3JGeolOhd+EkFQFE4lG4HdWRIT
         p5VkF24e77x2J9EurCZpIRd9Xo3FbaTPuaFTFSCZb6qCPfN4Z7lRbkQ0uMTomYKAVvCF
         0OHg==
X-Gm-Message-State: AOJu0Yy9vqzJJy08OlvBlobw/niMTEMoSKTi/dcigzUCQNRkO/D16NPx
        twY9WxC3UcA8QhWRPoEUlOtVow==
X-Google-Smtp-Source: AGHT+IHaD1pVlw1qOeqEr5SFsK0Z5m2lvLnOxGDIVREaxORKV6nuNZ1rUMAJCAGbtvY455PPl89jCA==
X-Received: by 2002:a17:907:7604:b0:9ad:9225:cee1 with SMTP id jx4-20020a170907760400b009ad9225cee1mr1520153ejc.62.1694599517002;
        Wed, 13 Sep 2023 03:05:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id lw7-20020a170906bcc700b009a168ab6ee2sm8075192ejb.164.2023.09.13.03.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 03:05:16 -0700 (PDT)
Message-ID: <605e4577-1e01-cd0b-9d42-34401bd7f3a7@linaro.org>
Date:   Wed, 13 Sep 2023 12:05:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: document board compatibles
Content-Language: en-US
To:     Yang Chen <yangchen.openbmc@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        joel@jms.id.au, andrew@aj.id.au, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        patrick@stwcx.xyz, Jerry.Lin@quantatw.com, Eddie.Chen@quantatw.com,
        EasonChen1@quantatw.com
References: <20230912140532.3797736-1-yangchen.openbmc@gmail.com>
 <20230912140532.3797736-2-yangchen.openbmc@gmail.com>
 <26a53f62-d8d0-9583-e675-a3db99c60c8a@linaro.org>
 <CALFa7M_Gov4jd3wxrXWhxuPKbDr+cp8xmuWJCQH_N=a+q03M1A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CALFa7M_Gov4jd3wxrXWhxuPKbDr+cp8xmuWJCQH_N=a+q03M1A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 11:52, Yang Chen wrote:
> Hi Krzysztof,
> 
> Thanks for your reply, Minerva is a project of Facebook server that
> includes two types of boards. One is the motherboard that includes a BMC
> and another is the Chassis Management Board that includes a CMC and both
> use the Aspeed SoC (AST2600). These patches are for the CMC and the link
> you provided is for the BMC and they need to use different DTS.

Are they similar? Maybe you should share board DTSI?

Best regards,
Krzysztof

