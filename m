Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 964B749DB64
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 08:24:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233759AbiA0HYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 02:24:45 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35230
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229766AbiA0HYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jan 2022 02:24:43 -0500
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8FFA53F1CD
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 07:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643268275;
        bh=2EcT5EJ8UI+o/Ys5+M67bQkoP+QAgsb522s0Pfb1Agk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=qapwjp6SYRN8v0N4Gm1kOP42Pn/SNSySbP1WE1cweKt9UvEqRU2WfkIyUmB1DbE6t
         3NIV/DH1h26oZTayp4aZGwAYiQSQgYsB3qHx44byb3ubd0iaCHVc/MK+xfkq85d2mB
         Qwj+8jy5yNZ4aXtnYj1/0LIRQtjmnwqcX8oo6uUtH0yw8F9KiQwFl8E3FtGPxAXNPW
         5M5kdJthBCq0W7gUvghyZcU8/qVGfz1v7omynTjig5vWT6HLlAuuQZ997V/kxSeD8T
         RpRs/y50aJsg4AIlrS8j6vL+F8EGbrfVHgXfxsnmj8TguU/dgaN1eGfaSAfQqoxrRP
         x912a5IsYT83A==
Received: by mail-ej1-f69.google.com with SMTP id h22-20020a1709060f5600b006b11a2d3dcfso922546ejj.4
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 23:24:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2EcT5EJ8UI+o/Ys5+M67bQkoP+QAgsb522s0Pfb1Agk=;
        b=VCuBqUwbNxsiVQCjZTGzKKzy2PERJ+bbub/rp/7H8ke4yvJnWlF8ypCojdBa67Hag2
         v6GnNt+l+FXD4ykdWTBaObVY/hwUtyOlsRb6Sk9xPPFtXzZuwFGWPJS5RbtHNuQK5RrY
         35Vivfh36tqOtnOR65QkY45/P4FpEhqfE7Q5DzX0q8Hc/MNp2oC5fot85wf9mZQN+D6n
         8UqequyFmoUiTwmBviv1bcLf00ak+z90wtcYbsFaLegDFjMXmcZ4MSNr33OEKuArzFcA
         dHaC/5A4Wn0IiznHEfLjbNKLkyXksmeXw46KdJkv3ds8ePbkGiV5UN/QtZ0dxq6Z4g5U
         8vOA==
X-Gm-Message-State: AOAM532KpoFLU7PxVjatW6RdP4a6YmzE76wyCzJsOOLpG+EVKV8W2IIA
        tjeSNY6FOmvw9bsPW5ZrV395yaPYdsmVmF9JX7YiW1TYREYXQJjpDf/whX0bcU89EfTmici0o+O
        XyLQAs+E/fs3Roe05pIXYR+B0RWvLiSwCN9fY28M=
X-Received: by 2002:a17:906:1454:: with SMTP id q20mr1923080ejc.461.1643268275267;
        Wed, 26 Jan 2022 23:24:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxtU2EdH4ioS0aMxUEH5h2Wibr/B48T4c2n82kNh44zPnwQD33NBPuvPT458iPvV0bmFRHbvA==
X-Received: by 2002:a17:906:1454:: with SMTP id q20mr1923070ejc.461.1643268275068;
        Wed, 26 Jan 2022 23:24:35 -0800 (PST)
Received: from [192.168.0.62] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id u9sm8310737ejo.119.2022.01.26.23.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 23:24:34 -0800 (PST)
Message-ID: <984330af-c2c0-18b1-6d72-f1b910fbfc3d@canonical.com>
Date:   Thu, 27 Jan 2022 08:24:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: regulator: maxim,max8973: Drop Tegra
 specifics from example
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220126231250.1635021-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220126231250.1635021-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2022 00:12, Rob Herring wrote:
> There's no need to complicate examples with a platform specific macro.
> It also complicates example parsing to figure out the number of interrupt
> cells in examples (based on the bracketing).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/regulator/maxim,max8973.yaml         | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
