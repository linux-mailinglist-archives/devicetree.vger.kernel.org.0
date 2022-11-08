Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05E99620E1E
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 12:05:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233995AbiKHLF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 06:05:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234000AbiKHLFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 06:05:23 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA48E4874E
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 03:05:22 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id a29so2166224lfj.9
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 03:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WmA4SwRAK4FKhvbkswEw6v9u4o5Xo6uAQ5jvXjJ9JHs=;
        b=x+lUOScQI2UK3mV8gMgM4ALhWKQ5J8qhEO23u/nHu/FkhLd3emRQJj/XilDluE9hYF
         cNz+e1I8EFkpjzlfTeJi7LFZwWpxK+X4144Czxh9WB4jILvjdJHgXT1zNxil4Xglpoj8
         9OEkdh0B/f6bWlbhoq8zeTsDa/Fqz20UKwr02P93OCX3r7nQoux931fBNPein6IUt+pC
         qdTq+K+ExjQfP7DlrEDmYGTC3Y3GCHt2/e7i3RjWqbVAxJhgCNh8tDgmmwoTiR1hlBHo
         NMjqRZwBpqW9YdhXai7zBWusStWYzVYx3ocGxCOhJ5Mf/FO5ooETg4PzcTCZR4VlOVh9
         aI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WmA4SwRAK4FKhvbkswEw6v9u4o5Xo6uAQ5jvXjJ9JHs=;
        b=1sXoYDzKQzfFEpo5R+w4SXtvY115cbWrsgq6MCAnNjtx59RCEUGb7A4VOAtlt9wvzk
         nCDWkJsn7DSgoSGgGSwKPvXe2gpjJGVLzhgLqHYOzmtuxxZj/5srPqzR3yX0P4MJUlVW
         H462humURKvu952XCeYsqm3KZ8XG+KriVh1lMzS0vATiJ2A7QZzu6evU5O2G3XBnX+wL
         Yxj3eAsS2tEsz8LBnAFRNnPz5H8QH8ZQaZpLQ4YfWoqYSe7AS67w1lt7b5pCzrKsaGIi
         PbbGJVw6uZFYaVvUAvAU7VuaSi5+GCQtx7W6ykXOxy9ZlhvFkcSKC8pgMvrrYvg5xYeE
         AzRg==
X-Gm-Message-State: ACrzQf0mGH8s1SXP+5Sz5FEOQZI6z7PZvshuCkNUlq4sYLjnTcyI6F81
        0lB2Ud2C/YuN6ELS3lLNHXdHvfb9Q4vfpw==
X-Google-Smtp-Source: AMsMyM4QCZNhzqj/hg5k7Q/ywTj5eooBtNeEJafutY0EP3/GsLy+44CVVIEhKeAoePc6bKJbhlxDYw==
X-Received: by 2002:ac2:5dce:0:b0:4a2:2dad:7ad4 with SMTP id x14-20020ac25dce000000b004a22dad7ad4mr18570086lfq.654.1667905521139;
        Tue, 08 Nov 2022 03:05:21 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id i9-20020a2ea229000000b0027765fd616asm1705206ljm.20.2022.11.08.03.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 03:05:20 -0800 (PST)
Message-ID: <f72aeaa0-0c0a-86d9-0b9b-db3810c35fad@linaro.org>
Date:   Tue, 8 Nov 2022 12:05:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v9 05/12] dt-bindings: display/msm: move common MDSS
 properties to mdss-common.yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
References: <20221024164225.3236654-1-dmitry.baryshkov@linaro.org>
 <20221024164225.3236654-6-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024164225.3236654-6-dmitry.baryshkov@linaro.org>
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

On 24/10/2022 18:42, Dmitry Baryshkov wrote:
> Move properties common to all MDSS DT nodes to the mdss-common.yaml.
> 
> This extends qcom,msm8998-mdss schema to allow interconnect nodes, which
> will be added later, once msm8998 gains interconnect support.


(...)

> +    minItems: 1
> +    items:
> +      - description: Interconnect path from mdp0 (or a single mdp) port to the data bus
> +      - description: Interconnect path from mdp1 port to the data bus
> +
> +  interconnect-names:
> +    minItems: 1
> +    items:
> +      - const: mdp0-mem
> +      - const: mdp1-mem
> +
> +  resets:
> +    items:
> +      - description: MDSS_CORE reset
> +
> +required:
> +  - compatible

For consistency this should not be required here, but in schema actually
defining it.

> +  - reg
> +  - reg-names
> +  - power-domains
> +  - clocks
> +  - interrupts
> +  - interrupt-controller
> +  - iommus
> +  - ranges

Keep the same order as in list of top-level properties.

> +
> +additionalProperties: true

Best regards,
Krzysztof

