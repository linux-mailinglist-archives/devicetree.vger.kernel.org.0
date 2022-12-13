Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3F3264B7D1
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235574AbiLMOwi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:52:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236023AbiLMOwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:52:31 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E879E21245
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:52:29 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b13so5309233lfo.3
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cGMhMQrQiXZn5bMZv7WtiYkgLBm7HHDkDSanbJDw8zE=;
        b=jx9HQoapS7V6+P+efomOEzPXf055ul4AUK37H+AM6RajX2iwCc6XLGDxH51jNTWywO
         WIoiwjhMzYUb3Py4T0+SaUJvBQheUSkLNGJdwZ/x9qZxbJrSKRFwSWGhxfq5FDin0V3M
         7i7yWCa4LodmzP0ZwejDxVrYdL4LZ/5uHqSnfiVaAnooXJ4XQS6ivmsZirDVxkJbo80M
         Taj0IjZYQwMBYXlHadTu9oIwVucAowXoB1s0reHT4H7/Tj32DHj6zwsc66cuqSnbc6rV
         oVF8qIol57A7rdsUMwINXwu47voP98TGxCTGU/a1/DvqkAwUnR6ATOuwpjL5pkwOFphi
         v1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGMhMQrQiXZn5bMZv7WtiYkgLBm7HHDkDSanbJDw8zE=;
        b=7B/5TBwbfXtmn6NyewbhSqs1wNEm6q0dKOAdUwbMipqUvW55t9Wo/3uWRsCrziUNIq
         dKzMT9hIUVFVbO0v71dlcu7NKIeTaqCNCVoxQCHz3SFjG6MmgfhVmqtP63hI6nPMgncp
         Dln1YzNVheOhTsPGzQ60Bhmo2ox8LyNxbWsPKrbiB41BLMuj3E/SUxewN2/lefAmaX6M
         ouhoAcWBFb99p6zamLuCsMAdbvv8OYrbzZ085ygiIHMPWA5KvTIfjFCLfR742OVOsMfS
         h3WVZmbCn0g1+hKMCVMaTAQSfqMHwYbbcYY1LjCtndrPb49EXPJdfhJV3V6rr5mo+Sff
         lPWA==
X-Gm-Message-State: ANoB5pkYv/MnkjO3uCUhvfD+r0bHdlS34GhV8pyktKlBE7Lv51r0G17h
        qXynWFl01XIoIVwxHnPMrCYRKw==
X-Google-Smtp-Source: AA0mqf6/4HGX4iQzT86Nl0eOxLd+DZmxb9gP+I/R5kcIU4qIfGJfOU6fqe6yxGIjvsmOrKjeCz+e3A==
X-Received: by 2002:a05:6512:3e17:b0:4a4:7be4:9baf with SMTP id i23-20020a0565123e1700b004a47be49bafmr7503566lfv.59.1670943148353;
        Tue, 13 Dec 2022 06:52:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v19-20020a197413000000b0049313f77755sm391502lfe.213.2022.12.13.06.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:52:27 -0800 (PST)
Message-ID: <3409c38b-8994-8b56-f677-10f7d79ab4ed@linaro.org>
Date:   Tue, 13 Dec 2022 15:52:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 04/17] dt-bindings: regulator: Fix node descriptions in
 uniphier-regulator example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-5-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-5-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Drop a parent node of the regulator as it is not directly necessary.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

