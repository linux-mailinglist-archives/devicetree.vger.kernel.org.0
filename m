Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79C6B58186F
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 19:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239404AbiGZRfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 13:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239394AbiGZRfa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 13:35:30 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE9EFBF6E
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 10:35:28 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id u20so9489804ljk.0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 10:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JHc7AYlRXZ6aiCtTe+oSlD5N4Ua+N3EzvkXaFf2RC4o=;
        b=N0deSDI+LiMOpces5+etS+NS14zNCm+md+u9gARDG0ixEpQGvSTtzErTuNz2esW0bT
         pXkajtBnlcabT+ZLAsxwBTnlCw0OlA5Cnt5/ohO0aXrKf0uwf5hwWi+MviSEd1CBBRjP
         GARs+6N9PoIAG51nVHvY68XB+6nN5SRbaAn23aBQTdq0DEDKIKgdLAY6y7p2XvQ/XosN
         Pd37hCg3n0SvCLNIHyOn3l0YWoYBZjVqlvxzuBK6aPAttokOg9VMKY/XelUJ/ZtuLpoj
         0gVLchzNRRmyDsHubxvRY9zv5ZG+0x3LJCGdwPqzLDj1wQMo8FO3NBAQE4g3UBz085Vd
         cq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JHc7AYlRXZ6aiCtTe+oSlD5N4Ua+N3EzvkXaFf2RC4o=;
        b=sZabNlxCAtmyYeU0bc1A3pht88mJ/kqF9UzB2wtI1rJFLDOBg3qGE7qRGPrEMbUClS
         71+RPaIMPPD7WwAsniDf15G0S4ycLKP4eJ/4zODtCP3EhGoZ9pL9ommDnjERnFCNOuq/
         LjeunBaF7UrrQLyHhOOx0J5SS3VCCPWvC4GatnvmnxgOGTuwr0atW/hVUUVw82SptvpU
         647ueKCoywQDDBdOa2Y13mTUcRX5H/+0lB2gyby+6F5BlF1Rd8UHgrMF973dfYmcXcps
         nHH9nyGnHs1K5fw8wOxXLDuR0K6lAAoz4149QJ6QIVNPUfbBNO75tFXLIE87Y/PXgFab
         exaQ==
X-Gm-Message-State: AJIora/Li1JoGbTT/nQu7jOWgYTDKdsWdH0nLiLmIwSzjKeJguYW/deG
        lhfqJTYgIb6s13xRJcJSNrooyQ==
X-Google-Smtp-Source: AGRyM1tmwXLiYKvaVFxKBF/ccqtJ5bZ4CGr5twneruJ80NjxbDQMnHuz7XCk6ts4YVIGB6Rk6qhsRA==
X-Received: by 2002:a2e:a16b:0:b0:25e:8fb:a1e1 with SMTP id u11-20020a2ea16b000000b0025e08fba1e1mr3784078ljl.270.1658856927106;
        Tue, 26 Jul 2022 10:35:27 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id w14-20020a05651234ce00b0048a7ce3ff84sm2246967lfr.285.2022.07.26.10.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 10:35:26 -0700 (PDT)
Message-ID: <246f132a-a23d-7c53-38a7-2bcec50d65e5@linaro.org>
Date:   Tue, 26 Jul 2022 19:35:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/2] dt-bindings: sifive: add cache-set value of 2048
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Atul Khare <atulkhare@rivosinc.com>,
        Sagar Kadam <sagar.kadam@sifive.com>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220726170725.3245278-1-mail@conchuod.ie>
 <20220726170725.3245278-2-mail@conchuod.ie>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726170725.3245278-2-mail@conchuod.ie>
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

On 26/07/2022 19:07, Conor Dooley wrote:
> From: Atul Khare <atulkhare@rivosinc.com>
> 
> Fixes Running device tree schema validation error messages like
> '... cache-sets:0:0: 1024 was expected'.
> 
> The existing bindings had a single enumerated value of 1024, which
> trips up the dt-schema checks. The ISA permits any arbitrary power
> of two for the cache-sets value, but we decided to add the single
> additional value of 2048 because we couldn't spot an obvious way
> to express the constraint in the schema.

There is no way to express "power of two" but enum for multiple values
would work. Is there a reason to limit only to 2048?

Best regards,
Krzysztof
