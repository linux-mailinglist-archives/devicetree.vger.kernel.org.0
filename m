Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A986E66B1B2
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:55:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231339AbjAOOzG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:55:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231197AbjAOOzF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:55:05 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 027CDCDF9
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:55:04 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id cf18so56275813ejb.5
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C+fjIlM6OmjNxjObIgHcNr6Tk1Q29ApTtFRKcgDtpr0=;
        b=o6Mp439e1iebx7w8iXm5UdzGAQ9IXl8u1ClBegubGZO/43LRaqFtlySLJNtpNG/kAD
         st2bkpsWXbruKHFFbSmSbFhoj527wayymTpzWqKL7rMHiQOCa0QZe2lSQD1bYBbOUjcZ
         lpjllh0qT5kcjjer6hw/HR2v/MAyQTguWMgngjSoFnX+cTJMWffJS1MY/OeFQwA02+5E
         SCiFKu8uMDiB2rzbWwS+mCA+4JxDWcJWJERsIuDsuwIlD/potOhfdGYaeI9qB5eb7pN9
         da08yCo0hjpI9wbUMP4E9LRAhmhMX9ZfjcfINf8XwATPX56THh33f2HOagewvjHfS5EA
         d0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C+fjIlM6OmjNxjObIgHcNr6Tk1Q29ApTtFRKcgDtpr0=;
        b=hvS2mi/K4bJRvKINTduO+U5LIuXRc1xxY1fbAMf36i/PKkN3ybpSUlzk5kqwkv9vVq
         i39V1jew+04o8FIjc/fsxdMIOR0ShP3Fnf4Me/5//ojiO4wiqOoYMBWybUYcY+JbYei5
         apQRkOItBLtjWzkKA3ajtlbqA2uPECTs67TKdn9NOK9rmXaaXAUECkFFJbt80zUcugMV
         3NIkxOiDEJsLTlup9XLpcw6G1ug2uxF/IcsODWi5/jjhH/rfOIZ/VVKcFuCP4+455CTW
         l3uSMS5u7MH5mq3eQk5gP9y/TM7CudCnxDKKhfIfHDT7Cf5KGQKxoKVXKdYJd35fEbsB
         3FPw==
X-Gm-Message-State: AFqh2kpeQppYgEr3Kp1wqLhZYKAlJwdiBJYlDBdHrQj4sYXXJ10zftSd
        61O9oDXUWn8Fz4S/4x97VrIiYg==
X-Google-Smtp-Source: AMrXdXvDfmWEAyTCsu4fdxTjVT8kfSfdYJIvNsWiyUM3VrMX62cXFqXprN6G1ZWDno5Gk03q5MHoFw==
X-Received: by 2002:a17:907:d50a:b0:86e:a013:c269 with SMTP id wb10-20020a170907d50a00b0086ea013c269mr4027806ejc.9.1673794502603;
        Sun, 15 Jan 2023 06:55:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id uj42-20020a170907c9aa00b0084d4e612a22sm7608059ejc.67.2023.01.15.06.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:55:02 -0800 (PST)
Message-ID: <73e99448-f984-10f0-e8de-6233487fbe37@linaro.org>
Date:   Sun, 15 Jan 2023 15:55:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/3] dt-bindings: clock: versaclock5: Document 5P49V60
 compatible string
Content-Language: en-US
To:     Lars-Peter Clausen <lars@metafoo.de>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20230114233500.3294789-1-lars@metafoo.de>
 <20230114233500.3294789-3-lars@metafoo.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230114233500.3294789-3-lars@metafoo.de>
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

On 15/01/2023 00:35, Lars-Peter Clausen wrote:
> The 5P49V60 clock generator is part of the same family of devices that is
> described by the versaclock5 binding documentation.
> 
> Add the compatible string of the 5P49V60 to the binding documentation.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

