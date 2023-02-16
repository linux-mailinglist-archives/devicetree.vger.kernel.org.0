Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80A6469988A
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 16:17:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjBPPRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 10:17:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjBPPQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 10:16:59 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C841348E16
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 07:16:57 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id v13so4014442eda.11
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 07:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zAnvsdOOqlO4PehLrC0Bi2Lmw9x5a+PMtUIW8SMSgyo=;
        b=Un0S3taOSYhvRftUZlssA+ysy6mZMaiar8Vcm0lkFFGQhLxLQcKlF2Eq27yHWhjpsJ
         V+xCgEMEKuTPcJv9u8HrmoWo7iRdMzywqIWxUm7rjbKGkkII55CCqiZQ3Y+MpCuiK+dV
         fpBR+JKLc9tbBWzvAGRnAMjFDrEp8lUyB06KS5zPiM7iakUVUW+ovn3TXVAT2jCpK6vF
         BAn5Df/qWIqWh5bceni8mEugOU3knmQn9A70ytivea8C5vAgAfHXbnesmFtH4g1JSOXH
         VCdaGR+zQ1B8lYXKG2goMeAZ1+YLp8rhg8Q30xXw84oyOZd3TfhU5rJF4xb57e2viELY
         drRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zAnvsdOOqlO4PehLrC0Bi2Lmw9x5a+PMtUIW8SMSgyo=;
        b=uFb+mb2Zp4MJG/rLJKUFbv16YnuEkUmSI7MpbR6DUJMRbQzM6duM3HWtzOhSUt0XSd
         ONsTvoWkvWDgjjLPn0wrx+bEHIF/UEhKaH6wX8+uw8yPL9ZYqw/Yvty7MW7Q5gWIbrH4
         iErTVE0ZOamnSD1uzxGaGilQAOdxFbZIlxFSLj94OPAAxhr68lluteIHUv3m8+71Ls8m
         b7/vN69WSajdHHndqaCyNViaAjyV48TD0/Z9Yk7D72ELLTZzszj6550rM4BDC6rrgp0M
         mjxRb7WAn5LxQv7oJoWgDAQwgdiwUcLk21Ov7pfL4qSMDdX9/kt0541cv8/p02i5mTu1
         D2Nw==
X-Gm-Message-State: AO0yUKUJrPDhQ924yDEsVV/awdreIAPJ3+jIPN0ZtS0+jnXPq41VQi+o
        YzvNEauG2I70gk25m6CYHtbNaQ==
X-Google-Smtp-Source: AK7set92AuI061QLSt4JKoRfrS6/8GjDBjBTZQnbkcOx5U3ET7Bcfdi+rSByGSW1jCkaeRm2SwlUOA==
X-Received: by 2002:a17:906:6d11:b0:8b1:d5c:986e with SMTP id m17-20020a1709066d1100b008b10d5c986emr5610131ejr.15.1676560616300;
        Thu, 16 Feb 2023 07:16:56 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906328a00b008b147e4204dsm926885ejw.32.2023.02.16.07.16.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 07:16:55 -0800 (PST)
Message-ID: <8322cfc3-fa23-521d-a5ba-a349bf29923e@linaro.org>
Date:   Thu, 16 Feb 2023 16:16:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v1] dt-bindings: riscv: correct starfive visionfive 2
 compatibles
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Conor Dooley <conor@kernel.org>, soc@kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
References: <20230216131511.3327943-1-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216131511.3327943-1-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 14:15, Conor Dooley wrote:
> Using "va" and "vb" doesn't match what's written on the board, or the
> communications from StarFive.
> Switching to using the silkscreened version number will ease confusion &
> the risk of another spin of the board containing a "conflicting" version
> identifier.
> As the binding has not made it into mainline yet, take the opportunity
> to "correct" things.
> 
> Suggested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Link: https://lore.kernel.org/linux-riscv/Y+4AxDSDLyL1WAqh@wendy/
> Fixes: 97b7ed072784 ("dt-bindings: riscv: Add StarFive JH7110 SoC and VisionFive 2 board")
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

