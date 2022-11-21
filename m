Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6D963222E
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231480AbiKUMdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:33:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbiKUMde (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:33:34 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8BAB6B9C6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:32:41 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id z4so5044606wrr.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ihlezRqcITV1t5VrxWs36/KEu/R5kWIKk2jGkvvj46Q=;
        b=lQzcaMH5l0I+lGRkhWY51kvuNPkwMrle6rYkvK9vgGG0PjxuZ7UOfpDYgwSRrtIBlS
         PwiyzHFySexh9j3pbdm6QVbSdtjBvN1gHcamwOseND5bJ35IaZ7X4e3MfAnIbBBTUD8u
         blM94qRWeBDLpX/rdNDGWxtM9UUUD3YtgQkkSfbgVBk+fzHqd3D4iYLynAOePNkLmv3Z
         7SSufJT8npMq7u/VBLU4L2phNF+pNUsnQ5mNOK5A7wPA+U2THVMCB66iU0zlDPWKxhrv
         cOjgzuypq2p78E0ZZICv32HHA6kb/tFFrmQlKNEauHHtw0aurVK1dOCpXkv05/LtmEBV
         8EiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ihlezRqcITV1t5VrxWs36/KEu/R5kWIKk2jGkvvj46Q=;
        b=UvoipshWB+r1Sa3idviGKFNzKL2Lj+oUvKScRrWqBb7CyOr+DkCCDaRl2bKGlytBXK
         8s7leAVSxqcNZJP9gOlM0JDdi/GJxftuHzUlMmuLyNoIjxxybOjny3D9AgJAIcZ4XfhG
         jhlARJQV4VqJ/jSCxIrl5nqMd4ngf129vcD/go6TwwI8lFm8t6MjWtVA/LLW7EeKgkkJ
         u8bPtHEGbQzId3e5VnHcQwfHUHGAdLiR+jVte+3WLQEKJ+CBXSEWsHUwsZiowT0LfiYz
         nS3yCy2YIEMF9Ezcg5lz2IF3yTftzEmLz63yt7V8nhoeWqh5BMRcntX9/TigWv5BwfQB
         IMrA==
X-Gm-Message-State: ANoB5pnSHs6Nn3OcJ+hlZrJQA9Jyg1Et6fhK+E5J7zZeggVA+wAVYa1S
        pvOMmcKusqrVM10n1URri2vAOufX6nM=
X-Google-Smtp-Source: AA0mqf577Y1OPlh4rlwG6Iw49Hb6fyYNvMdkAsPUPbkoFgBFS31v+A5SYUnOsRJMGzn+5OuD40OwIQ==
X-Received: by 2002:a05:6000:1b86:b0:241:9606:1123 with SMTP id r6-20020a0560001b8600b0024196061123mr5219385wru.537.1669033960260;
        Mon, 21 Nov 2022 04:32:40 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id w11-20020a1cf60b000000b003cfbe1da539sm13487333wmc.36.2022.11.21.04.32.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:32:38 -0800 (PST)
Message-ID: <5b28a9b0-3c31-75bd-3161-0ff9bddf0c54@gmail.com>
Date:   Mon, 21 Nov 2022 13:32:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/9] dt-bindings: pinctrl: mediatek,mt65xx: Make
 pins-are-numbered optional
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-4-bero@baylibre.com>
 <8afd5100-9cef-50bd-2b53-e1a550973835@linaro.org>
From:   Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <8afd5100-9cef-50bd-2b53-e1a550973835@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/11/2022 09:00, Krzysztof Kozlowski wrote:
> On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
>> Don't list the pins-are-numbered property as required
>>
>> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
>> ---
> 
> And how about making them deprecated? (deprecated: true)
> 

I think that's we want to do.

Regards,
Matthias
