Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE8C0788500
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 12:37:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239673AbjHYKge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 06:36:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243472AbjHYKgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 06:36:24 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A319210F3
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 03:36:21 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52a1ce529fdso1196893a12.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 03:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959780; x=1693564580;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnnnISbb0TpSgVVoJ28XkZwpDRboyHLlXiKPbTL7hTM=;
        b=gQr0rDQubo0vt+T3kQEfvxXbYnO3u4tqp0eSB/24hKCYPMIhgi9Hj5Mc5o8DTuoKVf
         Urn+u3CN7WT7D+x3JqxgcJxsq6VUhd8IZ6i/bbi1ORWxyfGqXDJP27OwvAnAkXKM6CLc
         aobuvdLeKwHlI6wP1tagEijCFNxgEl4iNvzPhTb2V5dyCIBPMAZeeHW5Qxd2BXOEr1pL
         NDZDobQQt5Bf6x+ZRZnagleF8aMj5TO3XUe/T5foDC6Vua0mNlX5BM4BNxDQlgHawnCR
         EhmYsTRzCqAPo3JCtgoe6H1BV0W2o+kPDZZQkHZluFEvXNKuXgEDMOEo+7QZ7O4UWt5F
         RXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959780; x=1693564580;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnnnISbb0TpSgVVoJ28XkZwpDRboyHLlXiKPbTL7hTM=;
        b=KrD5z1HWj2rekK3Jtje1NR3oUoMHHCBpCp2HFY2ffpY32siVS5CsAKas+3nNmhnObn
         3Q9Z5jLeEe7jpRLaQ4SoTaHvsCiErs3wsfm8HrebX7qBRN4hGQeZoQiU8osDSZOR8h8z
         Sxo1R1BaYQJMz+YDeJb7mQ0/+Ts1SIxmXfO7jljCEqJeRc6/RO7HvwE5ZpGEBhcUbebZ
         aHZvRap3GNb7828bc+tfIAv2D67RZAG4lXhpGgcqwhsFgDO15/Nj8NjxSCHO+JyGDzs/
         uM+ny0oCFjaTxxrWZs/Neo446pGnTdEAyAb+oXslLBjRMaF70xTlJAzoioW/RkUjedMf
         lZIQ==
X-Gm-Message-State: AOJu0YyriEx6Sv/TLSSY/yZiaeJxXxQLwLgCo83DiQCdoW4zCV/fEMBt
        VE4tY0uCzlCMBEsCVLFiz88P2A==
X-Google-Smtp-Source: AGHT+IEBSo8fqbVupT4baEDRXyQBUSAT9CmB5VJ/QCzRSBh/BQZlcPS9Pv24c3T722NR4Kf3psq9dw==
X-Received: by 2002:a05:6402:658:b0:52a:1d54:2530 with SMTP id u24-20020a056402065800b0052a1d542530mr7509242edx.27.1692959780184;
        Fri, 25 Aug 2023 03:36:20 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id m15-20020a50ef0f000000b005254b41f507sm867671eds.32.2023.08.25.03.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:36:19 -0700 (PDT)
Message-ID: <24113913-7756-6d9b-70a2-aeeed9ecf4e7@linaro.org>
Date:   Fri, 25 Aug 2023 12:36:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
Content-Language: en-US
To:     Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
        quic_varada@quicinc.com, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-2-quic_nsekar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-2-quic_nsekar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> IPQ5332 qcom,m31 phy driver can support IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

