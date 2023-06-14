Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF46E72F53C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 08:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbjFNG4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 02:56:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbjFNG4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 02:56:48 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82FA51713
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 23:56:47 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f7ebb2b82cso3628675e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 23:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686725806; x=1689317806;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bBs0aKrevwA5h9mUjvypGLr2oK+FBON5p++FJyHLERE=;
        b=iUBr2LImuFWXGRHui0hCrqz0CwaX2akMHzL0WnhCg9Pa8vQKA85tdu/e/2b+WjJWaP
         oZXiBm1VH1Jc0a78GcbQKer000Rr947wU04bu85rvqvyEH9PpOCMYW90TWSqdJMwIXuy
         /pOBiZTZdJSoexS4BtzF7uDQpGwmhWRy34oSHZuByorAfAo7RqpBG9vjItCpecU0sdc0
         3g5iNj0L6XopuEpeA/bXpqnEN0xuNZJWSZyJFnvbc78WraKjoKIR8/F55CackeExjh2V
         JpP3575IwOUm+HYJw/iQ8JVjQTq+LPlQYMwpK9rDudgapGzl4puFSVhuoeuYFtCQqw2r
         hf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686725806; x=1689317806;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bBs0aKrevwA5h9mUjvypGLr2oK+FBON5p++FJyHLERE=;
        b=aT0IqODnFjE5jirdWIz1mEWz7T45V9LUHFFoqMizoFLjgzFn6kquuIi/LIdv7aks/e
         DjII/n0xno/gL1B3+PrF+oC1aIHIDpFmjOSm/FKvVzIkSfwYlBHNQIKdsmr5cQoKdpIM
         1Xkf2M6zu5W7YdNfPciM6zYoKuf/wB48eZ16q9g1/z0E2z25HuMPjcN7fXaU2JnxUOFx
         UINGJ/A4N29nbptOD893zKpTo7RIql0LIn+my9SXK57Vqqi5KpUiaV3BuYyvo/d0v0rl
         VjU3j21sTF0hTXxPQVkMlWDF8Rp0SuSfKDavw3kbXPZyLSwzr6Y31dPY+wHskJwknOCU
         GolA==
X-Gm-Message-State: AC+VfDybvQ5pLEOyC+fBejG1iaPNXgTe5QFLhTNK8lhBeEu73uRPN4ky
        0sUI7DOwtDVM1OIqozg9Ld7xD/0wVlrh6zlEZFwTDg==
X-Google-Smtp-Source: ACHHUZ7GMp7Gu8C1RFa/6qFkGrVL8Ox6cxV5P8GEs/sXMcunjs+qhb5qh6wz5Ulx06qWFECBEk2R9w==
X-Received: by 2002:a1c:f718:0:b0:3f6:9634:c8d6 with SMTP id v24-20020a1cf718000000b003f69634c8d6mr10632824wmh.18.1686725805910;
        Tue, 13 Jun 2023 23:56:45 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.153])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c020200b003f739a8bcc8sm16332525wmi.19.2023.06.13.23.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 23:56:45 -0700 (PDT)
Message-ID: <9cc52c0a-c765-2cb1-93f2-6f406e676604@linaro.org>
Date:   Wed, 14 Jun 2023 07:56:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] mtd: spi-nor: Add support for sst26vf032b flash
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
 <20230609144324.850617-3-miquel.raynal@bootlin.com>
 <b3267c392523277bf15fe8d24679add3@walle.cc>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <b3267c392523277bf15fe8d24679add3@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Michael,

On 6/13/23 14:34, Michael Walle wrote:
>> +    { "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
> 
> Please try with INFO(0xbf2642, 0, 0, 0). You can also have a look

Oh, yes, I forgot about this. Will you send a new version of
https://patchwork.ozlabs.org/project/linux-mtd/patch/20220510140232.3519184-2-michael@walle.cc/
or you'd like someone else to take over?

Cheers,
ta
