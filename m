Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 765696375DE
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 11:03:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbiKXKDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 05:03:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbiKXKD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 05:03:26 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63957627CA
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:03:21 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id q7so1413640ljp.9
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TCZjeyLs2ux0OroYeApX1fYWjIFyLaoIfyqvpBmoO+o=;
        b=W6kD+JLfb3F1Y5MaFIebiTpo5cKNdMC2Xjg20Ib3Bl/hqR/V4kLo5e2nQWPM8IV/g0
         lycgMERS1pAejxRXlPvywtOxzQGWWNKi8F4UkxI3N91Ha9LAIjHKIrtVvq/jDHHBrOja
         RcFRnD5yzkz6UtwXk1ioYWaOo9dHPhM+ACo55fU10L1vWvl78+FuJ/1usjG0lPTqYqqG
         /yc3RAN7//eb5jQsrpxD7Pnx83V59wP1MISJIe4Kr8rNjQBTWBt23yO5bcePFtmbKAKM
         JP65iFSMDaG3agXPOMb5WbGJqnCu/foz6bhWquUP1fkKgjjrvJW6V3v8v/vRuzP1HfqA
         0+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TCZjeyLs2ux0OroYeApX1fYWjIFyLaoIfyqvpBmoO+o=;
        b=yN4WMHObqJGZ88c2bJQi2qkCucwjKYlWx+wBQVHztKb0Zo8jabnHsA4Nn3yp9hOhmD
         pG8KQ3jJJIU6Ib6gVjmad8s7azKrEduGWDNDyxBAte5Lq00kV+rqAOo0kkQDyckXtmdn
         6y77R7h3abNsl0k5iR17tj1CpV0N0UYczyrn4tei79qaoP6Kj4wf+MVFsRbJNFYa+MAI
         BzELIfedhKkfcb9e+yqNZ5+PpNGtjfV/tTb9GCGSivcCKCdVdV5yvGfCeiNmLBYYPYJt
         XetpJ5LAigvWvp27TG2E1ia6fY7mqTswhLsc22d9K3iP31q5/pJw1lNS9CHkM4LoedwJ
         GNcg==
X-Gm-Message-State: ANoB5pkmOId19gGwqSf3MAr4C9cM+lM6sVJsKqc0XfKxUOfOm29EO9Fl
        V9iYFU+03dd9+LtDRU4aVI8OVT40rK6sk/mT
X-Google-Smtp-Source: AA0mqf7AeLi748zvuvni/ei9zdoxEh1UCl0ALG/IVygL6V3LpK26R/NPIb6D0xoAv0WeuDPQyy7Hkg==
X-Received: by 2002:a2e:1f0a:0:b0:279:7825:f486 with SMTP id f10-20020a2e1f0a000000b002797825f486mr2267894ljf.93.1669284199726;
        Thu, 24 Nov 2022 02:03:19 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p20-20020a2eb7d4000000b0026c42f67eb8sm63270ljo.7.2022.11.24.02.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 02:03:19 -0800 (PST)
Message-ID: <93a88b73-a600-1cee-43d2-0e7b72ceba3e@linaro.org>
Date:   Thu, 24 Nov 2022 11:03:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH V2 1/4] dt_bindings: rs485: Add binding for GPIO that
 controls Rx enable during Tx
Content-Language: en-US
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     krzysztof.kozlowski+dt@linaro.org, marex@denx.de,
        jirislaby@kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alexander Dahl <ada@thorsis.com>, kernel@dh-electronics.com,
        devicetree@vger.kernel.org
References: <20221123123004.7216-1-cniedermaier@dh-electronics.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123123004.7216-1-cniedermaier@dh-electronics.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 13:30, Christoph Niedermaier wrote:
> This patch adds a binding for a generic definition of an output GPIO that

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> indicates the state of rs485-rx-during-tx. The idea is that the hardware

1. Use subject prefixes matching the subsystem (git log --oneline -- ...).
(no underscores)

2. Subject: drop second, redundant "bindings".

So it could look like:
dt-bindings: serial: rs485: Add GPIO controlling RX enable during TX

For the ack of contents, I'll leave it to Rob as he was involved in v1
discussion.

Best regards,
Krzysztof

