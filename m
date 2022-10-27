Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DC766101F8
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 21:50:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236019AbiJ0Tut (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 15:50:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236673AbiJ0Tur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 15:50:47 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B15A58320B
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:50:46 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id ay12so1391740qtb.12
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kbezypLSh6VqVrml1sow4ORDBJYuza2zbwBxxGpFPDA=;
        b=eBgGVKYJyj4We/SuivLC6BwwBqgII9xtrjF/sFCHLnRTpB9AMjVsXRufVAPqW1/f5Z
         AIFelc1gdCtlL8b+YLbrGYSvlzYWB2es1VVyEMRHdGmo1wEkFBT4hHIspgf9LJVxO7J8
         pC6evljIB5NSDQRfDNKmDd97XWRMY2u3f6TDiX1m8z1xS1XIh7TBp0rTFomgm+PML54a
         B0EZb9Nl25NpxGnrqcP1P3cQ+GS/ZsKyHk14WixF+xsXVoJOxPgixqxPAwl1K3gFG9UA
         cqW7h5mevXMpjTxGVm/uoj3jO1zjpGCM6rt/G8tJ24UMcWyNTw4YvKDRYF7scmD02+lW
         U7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kbezypLSh6VqVrml1sow4ORDBJYuza2zbwBxxGpFPDA=;
        b=4er3Noz5DiUnynHBK5yIgrKs+672V3Iez2LT0qFe5NEXxTSw+dgvbKAGuqhdVc8/Nc
         nK9V2kYgJ5MuYRTJESJb1MRaozXaFaSFLsC1uOecelRYMniMfegn8XzI/xEFKiNDXqPI
         p1vI0MsS0HV5UibEO+HfCmTSnkowk4zB/OFZdY+cfGo2Xk/W+7eO6jNesEdEztSDtgia
         0OiCdoH7NN/uf4QS/M+Gda5m2W2dvdY76K6A34wTjKnA66pFhpaCe5V4uqm4Y30WjhQI
         Xy/eWE7AEZtNjxEVFQWymNWV0RPURvemrWGmtyPZ7ntTgDRJU5lY8RaZQhW8ZebarN2l
         6osA==
X-Gm-Message-State: ACrzQf2MT017lfayXDR9ADTeiFCkWYZ7y4wBF/ACj4WFflBN0LpSqzNY
        MXkaiqzDQUj7MTXIIW5/ayW3Zl9LXarUcA==
X-Google-Smtp-Source: AMsMyM6LTS7BtcvY/zWy3LToVw/XhVt7yE0EBvt3tWq92IOeauHtb3KD6v0WYhteRY1I5+51zvCr4w==
X-Received: by 2002:a05:622a:44b:b0:39c:f5bf:694d with SMTP id o11-20020a05622a044b00b0039cf5bf694dmr41610361qtx.531.1666900235578;
        Thu, 27 Oct 2022 12:50:35 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id y14-20020a05620a25ce00b006ec62032d3dsm1577665qko.30.2022.10.27.12.50.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 12:50:34 -0700 (PDT)
Message-ID: <e28b84fa-8830-65ad-24b9-bd64410fe4ab@linaro.org>
Date:   Thu, 27 Oct 2022 15:50:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCHv2 1/1] dt-bindings: net: snps,dwmac: Document queue config
 subnodes
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20221027163119.107092-1-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027163119.107092-1-sebastian.reichel@collabora.com>
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

On 27/10/2022 12:31, Sebastian Reichel wrote:
> The queue configuration is referenced by snps,mtl-rx-config and
> snps,mtl-tx-config. Some in-tree DTs and the example put the
> referenced config nodes directly beneath the root node, but
> most in-tree DTs put it as child node of the dwmac node.
> 
> This adds proper description for this setup, which has the
> advantage of validating the queue configuration node content.
> 
> The example is also updated to use the sub-node style, incl.
> the axi bus configuration node, which got the same treatment
> as the queues config in 5361660af6d3 ("dt-bindings: net: snps,dwmac:
> Document stmmac-axi-config subnode").
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021171055.85888-1-sebastian.reichel@collabora.com/
>  * add logic to make booleans that are actually enums mutually exclusive
>  * fix type of "snps,send_slope", "snps,idle_slope", "snps,high_credit" and "snps,low_credit"
>  * add missing 'additionalProperties: false' in rx-queues-config -> "^queue[0-9]$"
>  * add missing 'additionalProperties: false' in tx-queues-config -> "^queue[0-9]$"
>  * update example to follow the sub-node style

Uh, this grew big... Thanks for fixing it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

