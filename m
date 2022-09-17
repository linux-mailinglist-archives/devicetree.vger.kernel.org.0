Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F87C5BB99B
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 18:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiIQQv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 12:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiIQQvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 12:51:24 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20FE030F4F
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:51:23 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a2so16305890lfb.6
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JB7VcdZNOyYWQNZ1BkIcQmygtJWZ+h+MiYm8PghZbnY=;
        b=eXK/bv8SbOfAX2+3pTgVI4uBbg+TyXJJGmt5a5eTiXX6sSHYFX7A6PcKyrWwvLmQBe
         8ky2ydDfK8e9yres7dbONOG7Dp8hg9HMah5dfxz3gd1PQr7Lz7vwRrY9oHOFHSs5XRRi
         buCLfojYjmtQr0+1+XEIvwJCD7tOp5tjtHkncCIGzlkhmazPZfpzs3zcxBgYBCnIWZMu
         /szpakfe7J1MqXJQUp/S8GPBzCd5lpyxCe1U2cxQMXpst391wouSWDFDDeHiIYhOwz4H
         vEU11VhP6KiFqkMsJtfawSWRn1tBiXXFBngxoibZ5TdgH+c6Et1ufX9VQe4fDR9I8rY8
         epKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JB7VcdZNOyYWQNZ1BkIcQmygtJWZ+h+MiYm8PghZbnY=;
        b=3sG6Y1Hdg6+feUgIvp2hE6QL8yufYHia5A1WcUFH6nqNEldN7/mDF0hCp9FPn+twAX
         Y7beSZI23LV/hTwbtM4x0+he64TdJG/o1B3N2AqfRycHslFaoqBwvqS0G4U5Ejdx7DSP
         +JDT8k/m9vkriSzIzCz6W+93WY4iNPZH6kQMyWFsF/hGU4FIsmoscB7tYpVSDng/7IH9
         Vrf56cwD/BQ4Eau1c5ycatrqyiM3T/yH7ziUL8sv1GKJSTWiB6NnYNP7hKciQWBvkWLf
         wTpQNxGUf5vQnDaL9H4MIoEX4bq/3lk2a0eGWWzh9hyD2MoY80j+a3nBBKPVUIGo1xxg
         chKw==
X-Gm-Message-State: ACrzQf2oZhU8FC+p3ZRSmm2gOwGctZQTsYAowkEFpersizl55bu/KBcW
        S3+sBh0MfTZvPATPr+65KOBQcg==
X-Google-Smtp-Source: AMsMyM7WYL6eLqW83RaG931NdCOAjenLqk87bLS8GSD1VDRAdlclqYyrJyYRSBYEobkwv3kYAq2Ijw==
X-Received: by 2002:a05:6512:c1:b0:497:acd3:10cf with SMTP id c1-20020a05651200c100b00497acd310cfmr3570118lfp.484.1663433481431;
        Sat, 17 Sep 2022 09:51:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z2-20020ac24182000000b004948497e07esm4199484lfh.15.2022.09.17.09.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 09:51:20 -0700 (PDT)
Message-ID: <0acc2a21-27c2-ec85-0335-263d70c24469@linaro.org>
Date:   Sat, 17 Sep 2022 17:51:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: timer: Add QEMU compatible strings
Content-Language: en-US
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>, maz@kernel.org,
        mark.rutland@arm.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220916132959.1910374-1-jean-philippe@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916132959.1910374-1-jean-philippe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 14:30, Jean-Philippe Brucker wrote:
> QEMU uses both "arm,armv8-timer" and "arm,armv7-timer" as compatible
> string. Although it is unlikely that any guest relies on this, we can't
> be certain of that. Therefore, add these to the schema. Clean up the
> compatible list a little while at it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

I guess you wanted to say QEMU uses "arm,armv8-timer" followed by
"arm,armv7-timer", because otherwise I would understand it that either
that or that. Anyway, is it a valid (virtualized) hardware? Is ARMv8
timer really, really compatible with ARMv7 one?

I don't think we should document invalid setups out-of-tree, just
because they are there, and something like this was also expressed by Rob:
https://lore.kernel.org/all/20220518163255.GE3302100-robh@kernel.org/

Best regards,
Krzysztof
