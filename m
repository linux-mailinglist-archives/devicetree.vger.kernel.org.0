Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76CE54DB62A
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 17:29:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357508AbiCPQa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 12:30:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239781AbiCPQa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 12:30:26 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FAE365829
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:29:11 -0700 (PDT)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 74C3E3F366
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 16:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647448150;
        bh=N2v+uhb6zX3qIu/4G31qspdZaqAml+nzAZNzEtc/etA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=n8V76rTpZDA0UOgML91CzWpngh1J7RliDKpSueCEAee1HkJrSg5eaYg66VqiAHX+P
         RYw3hoYqGOzlNtaus2dF78MWxpud4tT82eB0UZyJLLlIdKrkIdW9PZe2L8j7Rzt08G
         UiDZ3ZtA9qIV3axmr+SAR2LypGJ3sGCqPuw5I4+HfToWQGfgLljsi1JRS+it+LBWwN
         ujOHNNfFFMULu8UA35KuSiXJyEiu+ViAzc5V4xxmaEpP4EBeQdIi3g74F4hwRKfz85
         k5StXLq02efrpMqhRU3htNfCf3fvt3H4RA1UL8dglLWXbqdv/qqQnG61vwf7SjhvBI
         eYWxd9gj4ct/A==
Received: by mail-wm1-f69.google.com with SMTP id l1-20020a1c2501000000b00389c7b9254cso2230464wml.1
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=N2v+uhb6zX3qIu/4G31qspdZaqAml+nzAZNzEtc/etA=;
        b=hEoQzDFXpm2w+TxG9dWotLBVTLqW4qRxmRazY5Phyak7fRHKNdsmWHO76NfL7opCkW
         HOw0W8+kJjlw35XC8+kksBu1huEL05B9JPzmAjqCqXKWRbE1fS/M2+kDtHGB9jtHPbrO
         a+4a28hmB8Jk87ujCn5EIRC75yW8WYrXTZ3zD17aNXV8S5BCu8Jn3XWvW0mo+9A+VcUA
         jLtgMSJ4Us07a30uv9OPy8XpoHiIQzhFWb+U2nfohU/R5mD8uCxM2wtsSM8Hhn9gh2I4
         nRHYzx+UEVj3iZ7m7Vr8mU0coI3o0MNdxJqvoDcWx7PSYL+6x/nIK1aQCgE4tRb6LJcB
         FeZA==
X-Gm-Message-State: AOAM531uql1lJM53HeyL5InfokhCyxvMUlW3mBJY+mlvuHku1AMOWNY/
        5L5dohjIGE4u7BAb4YthUyId1JaSRrpf43ORsJ/Ey6bmFWh0FpfwzBeCjLGEgYBpBgly0K7S+Tm
        tsiCJAvcQDz1d82XGkDqXKoF7nCE1+KIaSBh/cRE=
X-Received: by 2002:a05:600c:4307:b0:389:4f8f:f189 with SMTP id p7-20020a05600c430700b003894f8ff189mr411363wme.29.1647448150183;
        Wed, 16 Mar 2022 09:29:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9OmLmRwN9342eSs0rSpdNPwuT5U5YZpqt13JqKvNHusuOyOMP/yPzYO/whoeQ0Z1hRY9uBA==
X-Received: by 2002:a05:600c:4307:b0:389:4f8f:f189 with SMTP id p7-20020a05600c430700b003894f8ff189mr411352wme.29.1647448149980;
        Wed, 16 Mar 2022 09:29:09 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id f9-20020a05600c4e8900b0038c740951ebsm943239wmq.24.2022.03.16.09.29.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 09:29:09 -0700 (PDT)
Message-ID: <01ff2432-b8d6-3bfd-efa9-c61b1fdce19d@canonical.com>
Date:   Wed, 16 Mar 2022 17:29:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: timer: Rearrange compatible entries of
 arch timer
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20220316095433.20225-1-singh.kuldeep87k@gmail.com>
 <20220316095433.20225-2-singh.kuldeep87k@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220316095433.20225-2-singh.kuldeep87k@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 10:54, Kuldeep Singh wrote:
> Compatibles entries of arch timer includes few extra items and enum
> pairs which are redundant and can be simplified in a more clear, concise
> and readable way. Do it.
> 
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
>  .../devicetree/bindings/timer/arm,arch_timer.yaml    | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
