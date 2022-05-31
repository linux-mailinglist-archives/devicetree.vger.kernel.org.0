Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6A76539111
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237749AbiEaMuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:50:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344368AbiEaMuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:50:09 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6635D6EC70
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:50:08 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w27so10685524edl.7
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=V5CGO4cq0wNVQEso3agzs3K90LQrjyze2T7SzIJwgE4=;
        b=shdQFLasGg7QkNR3zsQg2WCCadFxiUNiJz6QD9RKd+F4no6k1ObrCE2cZZkIwh/AGo
         YGv0RFsDnWpj0iNX0jD4GLcv8tXyh2nK2/nEQ5HH4TWU546KHwBAOP6odJ7GOgSgUF9A
         VMcb/cW4PDdaw/X/Aoz0uqS+nNCelRK0wyB2sg3KrqNglQmR5PfpZlLI+tK1cAcSQ02y
         S0L8hSy4M9PjAtoBg5SNZMNGtzyqNg4YdSkz4DIvmdkZDQBwnW94nd7kWqBAgkEBnmMn
         HAkFwYu4KySqNRttlmUkfOuWTg6KAyvAZG6odAu8qTIfQrwnJK/QCB77RymnxkpMxO4G
         9jTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=V5CGO4cq0wNVQEso3agzs3K90LQrjyze2T7SzIJwgE4=;
        b=sIbs5gPSXHNMPBPm8kajNExQwATuvhwBRuvrc4kH9OovbhWcpJApsA02LxcGzGOM6q
         +FUY9wM/Nmc8HR6p8RQ3U/rC2SDmlRQt7CBVT+x4jJuV05GD6nA4Ms9M2/5XMBJMPZ4f
         PAtvdMdT/wZ2CMluqQfYvzy66oPxPNbUej0WHc7CHX1DsTZl2k7ph8HQWNj45+R7Hjq7
         bpUdkDOLmXoVcg1UGqnAll2wP0dG96fPkJ4MtNLJsl6ysuSUPAu2P/XfKEb1bxFzxFq1
         KXACY6c46PmBLAJUs7AyGetj0HzpP4WRo700/4u3lrSS76UFfP8UGk216DcpKo3jIqcv
         6kPg==
X-Gm-Message-State: AOAM530z2yCC7RNq+FnsC+rrzhGOYR/YkT2uu0Wwh/iIQCBkv2iokabL
        dluRoeeZ+EFfBjH8aatlOnIYkA==
X-Google-Smtp-Source: ABdhPJww8oC3nJS1Wwr8ssczeb7hPW65JaofU7XAMZcx5S8ZWid05o7v5skPDCjlsWy+3Iqq8riRsg==
X-Received: by 2002:a05:6402:1f83:b0:42d:8d6f:a5d4 with SMTP id c3-20020a0564021f8300b0042d8d6fa5d4mr19036961edc.74.1654001406961;
        Tue, 31 May 2022 05:50:06 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i10-20020a170906090a00b007025015cf3asm600899ejd.153.2022.05.31.05.50.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 05:50:06 -0700 (PDT)
Message-ID: <b14c0d3a-8fe3-62b5-777d-883d95bc6fcc@linaro.org>
Date:   Tue, 31 May 2022 14:50:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 0/2] syscon reboot/reboot_mode support for exynosautov9
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>
Cc:     'Alim Akhtar' <alim.akhtar@samsung.com>,
        'Chanwoo Choi' <cw00.choi@samsung.com>,
        'Sam Protsenko' <semen.protsenko@linaro.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
References: <CGME20220523121210epcas2p11d0b4f27edd5a403b2fd7d3833d577ff@epcas2p1.samsung.com>
 <20220523121244.67341-1-chanho61.park@samsung.com>
 <013401d874eb$05f55390$11dffab0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <013401d874eb$05f55390$11dffab0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 14:36, Chanho Park wrote:
> Hi Krzysztof,
> 
> Could you review below v3 patchset in your free time? :)

I looked at it before and it is fine. It's a merge window so I am not
taking any new patches before rc1.

Best regards,
Krzysztof
