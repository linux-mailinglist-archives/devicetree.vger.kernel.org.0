Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E61B6A3C18
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 09:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjB0INx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 03:13:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjB0INv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 03:13:51 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7EF1ABEB
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:13:48 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso3019893wmb.0
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 00:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kkVbUWuqip1JKVeXjBIarnPygYYkbu4JQXFrp3pg4Ck=;
        b=dnUzXxbFZ8n6GJ635hbd32kwPg2fY/rR0vl9WgnJrKg8uMy+x7PTaszAkj9M2moObV
         P0vWpOCzhdjh3Vedh/MXSVWzsZII8MxnIRWNu5GuLpWDAfex5i6ZfBil3QZ8iFQRhd2n
         HEYiuxukTvDiLfeQi/eukJ3rBXLkDJQvY6UArTK/uZFKFkyk7Up3cC7RXQfcLqHGgOrY
         7sCuisjfqj1GnOGuGioOFjyFY9pxqgsxc9z9W95vd0pW+jImuXAw7zWdKzea6gnv6FTD
         rXtqyTfEo4ladzd3bFMhHw2gXTLq/QyJfxrmxuKxtsYc7FkxhHwAbdQubua34JH86D2P
         Ds8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kkVbUWuqip1JKVeXjBIarnPygYYkbu4JQXFrp3pg4Ck=;
        b=mqpEh5F/fynkeZNk+C8qtmwc4cwzg0zBjmsHZgkBozxbR1FqZ5TGiC/VdgkFQa+lXQ
         0KMT1vWmcZBZ1QKnFhU4N2saZ8bk+H9bxsS4ocELXRqY/7xV7fWQj+k9YYX6kjSQ+ak8
         B6sd9CUK9Dfg36LFM28GYm1d4IspS1o5i+bM5IA1kxieI2uHVsejZnabAc25bELvLbzZ
         +QifvTiAQ7qjUPcf+U0XOJ3/UMj6FXgE74uU/v9Og1uzXEdkybOzRO/qOGtek9E4yHbV
         ma0ET7n0ZcwVvHqCFEHe/4fcAyhNenZnb+HR+IkurYzgRSWH0QWe3Sj4hUTWbcmTnbOE
         3weA==
X-Gm-Message-State: AO0yUKUt7xCR4R1fMyy1TIPmB/frxnxa5Zoa+aqfhs44UOQxco5pFLfe
        rFmwOAcEJWc7QYsjoz3//dfRkA==
X-Google-Smtp-Source: AK7set9GOz42ORl/l51MyaUDHOxw+vpO8tpY7GwqfIjGKaGWmWQoXDU9XzKvRbWYOFG7trq0PocKlw==
X-Received: by 2002:a05:600c:3b8b:b0:3ea:ea6b:f9ad with SMTP id n11-20020a05600c3b8b00b003eaea6bf9admr11191889wms.31.1677485627060;
        Mon, 27 Feb 2023 00:13:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m15-20020a5d6a0f000000b002c707785da4sm6283227wru.107.2023.02.27.00.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:13:46 -0800 (PST)
Message-ID: <6edcd92c-876d-0610-037d-51a1b5c1f662@linaro.org>
Date:   Mon, 27 Feb 2023 09:13:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 2/6] dt-bindings: arm-smmu: Add SM8350 Adreno SMMU
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230217111613.306978-1-konrad.dybcio@linaro.org>
 <20230217111613.306978-2-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217111613.306978-2-konrad.dybcio@linaro.org>
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

On 17/02/2023 12:16, Konrad Dybcio wrote:
> Document the Adreno SMMU present on SM8350.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> v1 -> v2:
> - Drop Krzysztof's ack, as the patch was out of context..

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

