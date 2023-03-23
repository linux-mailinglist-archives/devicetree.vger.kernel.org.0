Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E526D6C60D1
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 08:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbjCWHcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 03:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjCWHcQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 03:32:16 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 585B81815A
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:32:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id b20so49673761edd.1
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679556732;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ekZUPnt2Vozh7f2sOzqBtvIcIMLGfykVhoLT/YHh2xE=;
        b=pC6bEEtISpupKbooEnItYeOUxJJpkyUKbPbem4vpMOtx6RQac2zK/BBuPkaQwYGBn+
         2gghiVMFqGQq6wLhQp7Wq6bTizLcjze5sAJ6PIEXBGpPFU8S1E+NrTFq2pbnJCJtOnL4
         Sf5uGk32KUyZd5mpZGDcqco7zzaLNbCZohqhnSMddC0H7SeB5qH8WLxweIY5Slr7gZGU
         XftvzlFKCePNt0fdNwKCNfa8qnSOHK50tPgcXkc/xLAJk37H25j+CyEuZX+K3R/17T+Q
         YRhISXDaIPc5i9JJ2eL1c5NA2vjKeIc3i1MTeF1IyD4mfW1uuHX/SWG06F6A8cbnHV85
         xtQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679556732;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ekZUPnt2Vozh7f2sOzqBtvIcIMLGfykVhoLT/YHh2xE=;
        b=AcyWbkag+hGGEzCoQ3AErstlnmPVk1lBX8/5Sc5dO1XJCWMmUcqdQtkcMqBGqArLoT
         67Dbon3Pz0gd/okCl7lzPgdxMWYe8lyaLf7ErpTbJxenGmopUSX5soEv4K3BQ83UYA2u
         SfcxH17M6pqsM5RXGsOTrqgzXzCj6BSQsXBKOdfkO/07kNrJxpTstYmnP5YfEIme10Qq
         rlkUEc8aqSXOL+9LYEEAgO2OUjA0WFP2otnMDmi2ylOyrKLr2/kjH7ILkjTHLpfoszYb
         FnNLQDes6WWnRdjpa4e1SE3ovuFndll2/bE1477+U4Tg7DdIzqrjrPqa2JMlLpyp7cOO
         8EpA==
X-Gm-Message-State: AO0yUKVjB81etiTPhGPEEXmniNkQ7PBHInO3R/Bq6NCR+HhWQ8DjVj5N
        jx0J1G20ib5JMGyWHtlfgs2KruVdeeDS61+u82Q=
X-Google-Smtp-Source: AK7set+ARGwKmwALE+hH8XP9VbFZ7LM80o6ORUW/2+pvw7+8GvYyhjllDHLV73FEqd6Olano8ZNlsw==
X-Received: by 2002:a17:907:7654:b0:8b1:7857:2331 with SMTP id kj20-20020a170907765400b008b178572331mr10035651ejc.65.1679556732624;
        Thu, 23 Mar 2023 00:32:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a665:ed1e:3966:c991? ([2a02:810d:15c0:828:a665:ed1e:3966:c991])
        by smtp.gmail.com with ESMTPSA id c2-20020a170906694200b0092b546b57casm8249382ejs.195.2023.03.23.00.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 00:32:12 -0700 (PDT)
Message-ID: <b45401a5-89e9-16f4-1c58-50b465672e99@linaro.org>
Date:   Thu, 23 Mar 2023 08:32:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: reset: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Qin Jian <qinjian@cqplus1.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230322173508.3971182-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230322173508.3971182-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 18:35, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

