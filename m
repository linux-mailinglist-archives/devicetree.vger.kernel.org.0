Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2642C718A26
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 21:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbjEaTbY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 15:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjEaTbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 15:31:23 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5104C125
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:31:22 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-970028cfb6cso1132931966b.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685561481; x=1688153481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XzmS9Q7rcF4wK+3M4xWTzjFrvHkAxzNx2k0i9sXDaBI=;
        b=kmUd0XwMBxGai5Os+SkdP4FhHNwp6VP4CdwZVb4ASXJHhhW5RA30JTo0fHGGLGewCL
         SagSqWzSx5FUD63hlEcd4px2errlCXd1ERTf4jwER+cI9yXSLKTlc3/CRf4/tzKkX3kM
         5eihEYPiPDX87UVMK8kYU9atiYTEUwDjlsOpXBMnoougeaHRkpzl8Vb7ca/kMIGfZ2fM
         HbcvRvqlRlXjNcptJYtsquDN+XvHmb8LBlMPKs6WzlvUZtcoNUkg9DRQgs5vtrvagyCZ
         KitkbHZMXXlqU6cgc5KyjUOTQHUU7jfTFXP0yER16lse8X4DOY1QpX7ZsCHf+Llc7WJL
         YQIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685561481; x=1688153481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XzmS9Q7rcF4wK+3M4xWTzjFrvHkAxzNx2k0i9sXDaBI=;
        b=HyCNDHVQNsxxz9CAVbn7z+v1/IOfmP/FYLFJemOxZMzMQA9ppJoCie1Bibc3STOgIy
         TnfDff6/9AMG54k0nakGQHblffbk8ORINRB0APuVPF1qRkgrRZvjbrKMl9AsNrap2fqc
         YcVN69HvFRMxZT5GkXYtTios2wEhlrYaPrjcR4AsIKza0A/76vklWwzDv9ADICOXe4PX
         hSanSTT/EdcVhqtZPFUokvkYgJx2aPn+V1myKxs0d8fsZySwgpCYyobWPhCpYJL2PmEc
         8m+S5L1yRqB+CbI79NTmHpwDwUjbCQgJReUWV1Kn6ONTLJzfz9tr7oM923Xj0hoeiTZO
         lpzA==
X-Gm-Message-State: AC+VfDx94CzchvOD2G8liDhSXEO95vZqxiUij8/HpRoN+zWe4QlIKjCW
        0C9Vos28DbWXx7cQ5C2eBUCT9A==
X-Google-Smtp-Source: ACHHUZ7YpDIJJ0TXK1hKPptboCJTxQbTSLxMFbGHVI4pYNLLWMwUqhrBPicY9RoBCBrZKOfJ3iNNWQ==
X-Received: by 2002:a17:907:25cd:b0:973:8823:f53f with SMTP id ae13-20020a17090725cd00b009738823f53fmr6334041ejc.52.1685561480773;
        Wed, 31 May 2023 12:31:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id ss7-20020a170907038700b0096a2eaa508asm9414104ejb.168.2023.05.31.12.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 12:31:20 -0700 (PDT)
Message-ID: <4810fb0f-2b0f-0118-435a-d7373553163a@linaro.org>
Date:   Wed, 31 May 2023 21:31:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH net-next v5 2/6] dt-bindings: net: Brcm ASP 2.0 Ethernet
 controller
Content-Language: en-US
To:     Florian Fainelli <florian.fainelli@broadcom.com>,
        Justin Chen <justin.chen@broadcom.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com,
        linux@armlinux.org.uk, richardcochran@gmail.com,
        sumit.semwal@linaro.org, christian.koenig@amd.com,
        simon.horman@corigine.com
References: <1684969313-35503-1-git-send-email-justin.chen@broadcom.com>
 <1684969313-35503-3-git-send-email-justin.chen@broadcom.com>
 <ce7366d0-616d-f5f4-56be-714e65a0a96e@linaro.org>
 <b21ca84f-a5a1-6dde-7efb-5d7ce0283263@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b21ca84f-a5a1-6dde-7efb-5d7ce0283263@broadcom.com>
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

On 31/05/2023 21:29, Florian Fainelli wrote:
>>> +        required:
>>> +          - reg
>>> +          - brcm,channel
>>> +
>>> +    additionalProperties: false
>>> +
>>> +patternProperties:
>>> +  "^mdio@[0-9a-f]+$":
>>
>> Isn't mdio a property of each ethernet port? Existing users
>> (e.g.bcmgenet, owl-emac, switches) do it that way...
> 
> They are sub-nodes of the larger Ethernet controller block, hence the 
> property here.

This is the Ethernet controller. They are subnodes here, so what do you
mean by that? They are part of some other block?

> 
>>
>> Otherwise how do you define relation-ship? Can one mdio fit multiple ports?
> 
> The relationship is established between Ethernet ports and children 
> nodes of the MDIO controller, such as switches or Ethernet PHYs using 
> 'phy-handle' for instance. And yes, a single/common MDIO controller 
> could be serving multiple Ethernet ports.

We do not talk about generic case, but your device.

Best regards,
Krzysztof

