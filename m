Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA16512C95
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244826AbiD1HWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:22:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241048AbiD1HWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:22:42 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B39929A996
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:19:27 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id m20so7687231ejj.10
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hAwV6IwbsKz6TK9I885ngU6STlgFg8jvqLzasreFMNs=;
        b=WWwtGR1t+tANDRVUo2TR9pMIModlr36I6OZLqGl0IETtQs0/rjC/uYLMlRDkNsP/eV
         2LXgsWIHL4XoHJpA14V2wkclfUNarpzbFHOEz5wVWsgrP4nikVJrpJCNjE8mKDsGTFLw
         uK2Raf8hS5WSmUAFPOeazZauXSjK7IF23+ltIA782RBeUZ3fAXByLWdr9VCPokU8LL0b
         XWv6Q4h0jEO0vu8zL62L2mTknqmb9UlvmCWNrshhxplOVVfLIttvt+RvTujsEVk+ZSQ2
         u1GIGtOx5ShFMR94uP8k6dKaqrvTsFRmr1ufo8PNJf6HZTqRkEFSLXKsDhE2TfcRIDSL
         muYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hAwV6IwbsKz6TK9I885ngU6STlgFg8jvqLzasreFMNs=;
        b=viFqLe3qNG9vZIvDVteVE7TOpmKpBor8ciDOkghcTAdaehEkWxQEA+idSnfatb/Bkb
         44UCi4MLqxflFq64pktFofIM5aQHT1UX4fCPqsWuR6v6zkXSy9XfofG+5fzjWQYuNn5D
         tTyqg9SyZE6zBID0QXtLrCSW+txRJk5AMogvBJVfYTytTeSHRgnBUTNSl5U0W//H6rJw
         jO0HmEXsd7pSmDiUPSt0rRx0D8n10mEW/Ut026NqMeUxaIbC75P0fEfxFr+OKneowxSa
         YzYShrAUGDAtkFwAs88jWSkUoDPHCQpw983Tf94Ad2Yz+2yUGqIfXKbOa6Gujrsr0CzZ
         O3yQ==
X-Gm-Message-State: AOAM532DV+NkQ4XRoLNUKttSovXmQWGSlDNO0SzdJfoD/6Cv6J8OQH3Y
        9jzEXfS47468/qLsLac+KMMAcA==
X-Google-Smtp-Source: ABdhPJzKq+YlOiDMLykatXEFb35oBzrQM8EqzSpwuebdQwET0rBneBiC/nW+dHlQKkRccdp/GtUgfg==
X-Received: by 2002:a17:907:1623:b0:6e8:8678:640d with SMTP id hb35-20020a170907162300b006e88678640dmr30461002ejc.189.1651130366356;
        Thu, 28 Apr 2022 00:19:26 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l2-20020a1709060cc200b006d3d91e88c7sm7892815ejh.214.2022.04.28.00.19.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:19:25 -0700 (PDT)
Message-ID: <9dab1216-83fd-fd05-abe2-57371e365027@linaro.org>
Date:   Thu, 28 Apr 2022 09:19:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/5] dt-bindings: iommu: sun50i: Add compatible for
 Allwinner D1
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        iommu@lists.linux-foundation.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220428010401.11323-1-samuel@sholland.org>
 <20220428010401.11323-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220428010401.11323-2-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2022 03:03, Samuel Holland wrote:

Thank you for your patch. There is something to discuss/improve.

> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - allwinner,sun50i-h6-iommu
> +
> +then:
> +  required:
> +    - resets

else:
  properties:
    resets: false

>  


Best regards,
Krzysztof
