Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB1BB61FCE9
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:10:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232364AbiKGSKl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:10:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231810AbiKGSKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:10:22 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFC18F60
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:07:53 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id b9so17544045ljr.5
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xGzbPcp3W+tJwRD4VsrTgzgj+M76xrWtKtvZNseJPN8=;
        b=tMMQX/EhEI104xOjR7D40/vjZerzqkE7YOM/NNgNo/nOX8DL0BEnIfJl8zcECj+NkE
         cadU64L/sgpu0wY5ZV96Yb+mkw7ywnJnDe3Ea1hbryuUD0cda2pSZH8DUBYpePhtNQLE
         P/PBIPCicYFLHAk0r9K9gBwMbq33LLtmNqzH+u+GmHtL5q5Jz6+H2LzOHoXOT84j/Dex
         CbPy1DuQn+BRFo8C2DK3QwzcsHrm5SG+IGF2PbYJLd8o3AZxPA5pLKoJosrvNh8WdTlo
         d1IO2cs3FnKgjAT48ArkvYMDoL+gOMDIdeKt0izwaeQPvYut7JBuIwVk/cgorl99m4Qn
         rfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xGzbPcp3W+tJwRD4VsrTgzgj+M76xrWtKtvZNseJPN8=;
        b=2EVFAWQeERck0DlbidsxjBDA3FH69i/HWNbzRiO4uycqIO32dc7YmfrV52HLxG6p2Z
         aE0GoHayYrrhr1+r/17hg7D2BPK4w0Mf8UYxKaI8dJm0clmpASNC9GUZJtrIRRIkE/WC
         1uwCR7sW8MK+PtPEbwt8M7WYWmyEHTXlO5cnHp0a4dKeEHcnwrdXG6lkvw6VhduQ17tg
         ARsIGbDdDARTRueIiJN/KK6ynB01lL12P22YWOyp4N2n7kbo+weo4zbrXG2rGzkdMUj3
         eHmkEo8Mw5AEB6Mif7qYJOA5ztm+lqfRp9oHWyhCcJ10PpPvGBMFQ1x9DanIiwM0Fxot
         3akw==
X-Gm-Message-State: ACrzQf2lWFLShmkUHNjv5u8voJ5qACjw3NiHQOoM/9/wIN53tAOz2Wr7
        wI3r/dwbQbE9Deji/jVCXEjs7A==
X-Google-Smtp-Source: AMsMyM4colD8URbCBCk00gHoMXuiVYuBgD10XMX2nAPdi4CJlhl6C+S4xQpxwkfOU66wmdNcOqemvw==
X-Received: by 2002:a2e:7303:0:b0:277:c7c:9c61 with SMTP id o3-20020a2e7303000000b002770c7c9c61mr18768509ljc.274.1667844472153;
        Mon, 07 Nov 2022 10:07:52 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id g13-20020a0565123b8d00b004afac783b5esm1354123lfv.238.2022.11.07.10.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 10:07:51 -0800 (PST)
Message-ID: <ea5d34cd-61eb-b811-5bc1-9846a642a738@linaro.org>
Date:   Mon, 7 Nov 2022 19:07:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCHv2 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset
 support
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20221107173310.60503-1-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107173310.60503-1-sebastian.reichel@collabora.com>
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

On 07/11/2022 18:33, Sebastian Reichel wrote:
> Properly describe reset related properties in the binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

