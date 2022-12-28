Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 320ED657A85
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 16:12:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233033AbiL1PMn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 10:12:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233186AbiL1PML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 10:12:11 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C006213E97
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:11:50 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id s22so16772102ljp.5
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ubYwZeaZS68YtABRDEYXGkCnGRePf9F31/jYHcMocpw=;
        b=L4DA9N9QVywBhf5U3AMOC+UzziT2R6n3W9DLQ8MzZPa7EEEG4W4ir3fgTeVvOLmfN6
         85/nu/j4zvTff3gFFKCYOaRDBmEN64lg4Z74ngBhxMMy7jKP8ZVRIZlJw0hRLPhvjO0G
         VwLuZZs0SkODzHTzRRjeWW2BBDXYlnXWzoNC2tL8gjrkMRbytiQdk0A+QKXwj2FQEDFS
         qrW6x5NhOYfl/OCRccROhrzV67paQqzS9xl7AUTQcYiVf2gsREkxogZE+oetRig8suGr
         Eq3ZOemLNjjDXVkXtZ9kBmI+XDCVoA7p9oo2BVafT81FJten/eEo11S7fhL0dMGJwGwL
         vfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ubYwZeaZS68YtABRDEYXGkCnGRePf9F31/jYHcMocpw=;
        b=qg/Mby0P1uGA4kumnHdAurPZpWT7ST35jBtIKxMIPiASHCjx9s82RYZDPFDKOeKVPC
         pwCbwjCzb7K+OMI5WIf2quwgr9dzXyagAxvtshdTgN9+qpjYocJrDDNNAyBpwoF7FCC2
         3+jbbAcWzEqnNCa3LZs2iO49apezLLTDY7xUkcFJsO12yZMph1oZPVTqJslUCV3NLa3m
         Yode4KTPKKBzr76KEUNJRj3rXKhTTST+RuqvtKXCfWxrwUe4vl9z5J/0Z7TW0XAtT933
         qjk86XBqwlq+3HKEhKNwCB3Zpj+3rEYr0WXzyk9mKxsODdjJXmkA72n/q8jTnnkw4JhU
         jAsg==
X-Gm-Message-State: AFqh2kqnATnmmvHVmmI8WhHIHQwGxEnd4M56UTvz+UBLza+i1qlIo6RL
        XLM6D2SsgNRWroYwpgFhJE5MSA==
X-Google-Smtp-Source: AMrXdXvIcY/heKHIPnpMU96K2aJammSqLAViET3DK30IyVf7ZggpP+EjutDQlr2EUBzwxhyhYVPm4g==
X-Received: by 2002:a2e:99cd:0:b0:27f:ac85:2b6a with SMTP id l13-20020a2e99cd000000b0027fac852b6amr5512348ljj.1.1672240308530;
        Wed, 28 Dec 2022 07:11:48 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i14-20020a2ea36e000000b0026fc822c264sm1973119ljn.87.2022.12.28.07.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 07:11:47 -0800 (PST)
Message-ID: <f42a5b1e-922b-22d2-2f95-cac0be47d6b2@linaro.org>
Date:   Wed, 28 Dec 2022 16:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v1 07/11] vendor-prefixes: Add VIA Labs, Inc.
Content-Language: en-US
To:     Anand Moon <linux.amoon@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-amlogic@lists.infradead.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221228100321.15949-1-linux.amoon@gmail.com>
 <20221228100321.15949-8-linux.amoon@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221228100321.15949-8-linux.amoon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/12/2022 11:03, Anand Moon wrote:
> Add the vendor prefix for VIA Labs, Inc. (VLI) is a leading supplier

Drop marketing, so without "leading".


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

