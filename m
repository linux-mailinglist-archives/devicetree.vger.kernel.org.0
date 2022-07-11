Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 928F456D806
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 10:31:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230017AbiGKIbb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 04:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230184AbiGKIbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 04:31:04 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE80A1F2EB
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:30:56 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id a5so5979485wrx.12
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c0ELfD4hIzwtzcZRc0K6SYG7uHfnXiZ3SBpLMfAV6G4=;
        b=ZIgGjm4iQDXNkq4QqQIvx7RYgS24mMT6IxOF2+AVzdCcKduTPf/ckYxP0jhwgi8a+8
         bgKBhkdpntCFl0wlt+N+VfVs0yDxaTpALGK5xC8jGDmN0YVnd6YE3LqHkC0h1mxKvP2T
         IJUeNz7nMhMTXpRJZ31CIt2Oz9gHVxS3peNxOuHv0ea4cgol4ibKqyudVcoEzbElS5x+
         Zo+5o2xUPW+YB8RzcyW0Il3jRunExhDM6iXHqtHoCyVepcb/6C8RL1i2SrwXLxCK5y3V
         26CC9WTEHq0SeTQzTZ5k9kGPK3fv3FG5qiAVVJibDux8+lKDZFkAZK0UULczx3KlR2hF
         2Enw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c0ELfD4hIzwtzcZRc0K6SYG7uHfnXiZ3SBpLMfAV6G4=;
        b=XtI13MFdcQZMY3TIiUF8eRl6RJC22dxtxFhM331yjF44qEM0B6PIGMfuCg9rodDj+Y
         I4fJ8bD2lWH0xwMWdh1J2ygJdIbJwhyixB80wmWOgZCzWmT0xgKErb2v1j69EhJ3B7Bg
         0H5KXXWRprnG0YXRQDYCRUp5ws9afEOSvHj/LraEeOnqbxJ2ax/9p5hixOP5g2ELoemV
         PE7UT/y1W7rdoNZEt7+TvXrbkUnBz11/1TKUkUBXfraQhaHI6bBcwjk0bskTSt5anjTQ
         j6CffmXyBZ8RE5OMwNzKl4pNx/L+XlOc4rPf1EIkmBBbRWofa+6kPXM/SZz1jZzrVaUi
         dHXg==
X-Gm-Message-State: AJIora8LUF4/gNdfq2PCKL4LMXQIV+cQ6qyM0hzDvx+MOSxle5tvo0Ke
        GMRlAXchTzJDJISA4j9K8XlPdw==
X-Google-Smtp-Source: AGRyM1suCBcWYAdoGZFZPFlBAmvLgRU17t2insa64IziNZ41eGi5Zc2UvXDdkQtm9wSxPGQTS5y42w==
X-Received: by 2002:a5d:4a09:0:b0:21d:a9ad:3b1b with SMTP id m9-20020a5d4a09000000b0021da9ad3b1bmr1919543wrq.3.1657528255568;
        Mon, 11 Jul 2022 01:30:55 -0700 (PDT)
Received: from [192.168.1.69] (211.31.102.84.rev.sfr.net. [84.102.31.211])
        by smtp.gmail.com with ESMTPSA id p12-20020a7bcc8c000000b0039749b01ea7sm7756281wma.32.2022.07.11.01.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 01:30:54 -0700 (PDT)
Message-ID: <9d79cdf8-16ff-2976-a923-79374de349a1@baylibre.com>
Date:   Mon, 11 Jul 2022 10:30:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.1
Subject: Re: [PATCH] arm64: dts: ti: k3-am62: add watchdog nodes
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>
Cc:     vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220630070826.11074-1-jpanis@baylibre.com>
 <20220706234954.7r2qdm5ebuboby6x@deceptive>
From:   Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20220706234954.7r2qdm5ebuboby6x@deceptive>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 07/07/2022 01:49, Nishanth Menon wrote:
> On 09:08-20220630, Julien Panis wrote:
>> Add nodes for watchdogs :
>> - 5 in main domain
>> - 1 in MCU domain
>> - 1 in wakeup domain
> True, but note: MCU wdt is typically used by M4F and wakeup WDT is
> typically used by DM (R5) firmware. Is'nt it better we mark them
> reserved (with device tree comments) to indicate the same?
>
> This can allow the kernel device tree to be used by zephyr on M4 for example..
Nishanth, I will submit a new version of this patch that will take your 
suggestion into account.
> [...]
>
