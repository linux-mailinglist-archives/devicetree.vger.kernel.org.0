Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3E51621B76
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:09:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234716AbiKHSJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:09:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234637AbiKHSJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:09:38 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E535538AA
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:09:37 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id t10so22393180ljj.0
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iNCXKrMAkXs2BI3AZ7/yGd4vcUJUTzN3Vd6P6Ds6uzQ=;
        b=yJMFCyD4siO4pgW5hcXM3+TeI1/HP2PR9lxzr8ZtrieeouwlJ+EzmyjrhABEaNCJw8
         7cEVxbnJdpgxpRiOSgjqOjsMMYWjc4x9PbWafIGl0KREngAN5d9UZpG7E07S/swf0HzR
         4JFoILUxV6b63XYf5Nau0sRMmmHkialf2sA0s/luWQJmZQ33KE6CUbf6yhx+sqh/JtL4
         M+iCog5MVyiKbvz40/TQBIEW3ad2TuZzBWdWkEjnrP/9eknsZ0V46FfxJIMaQULyOMCZ
         dxwor2ndjkssEANari81+gbT/JqaRFw/h3RJdYyvwIAstwbK1SlnGZnnisb0oZmVAf/1
         pADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iNCXKrMAkXs2BI3AZ7/yGd4vcUJUTzN3Vd6P6Ds6uzQ=;
        b=8B80j5nM9TC42V6T4IUyuqhS6LiagMn9chTqq39KHFsFze7YlUSTlyjX3rDXF3ATFk
         AbTtgTswy8szDmZzIAmhK9aGmP++0oKj9mVytDnRhDgW0cmdOcgVlEjT1s+mGweDUIGh
         f2G1q3SnijB1+eOX6x1u0LiPZQ2NVmB9T5HioALwipCRf9Hy4fVkXZSIDh3fNXkavMSw
         9Qwn0pS1nU+vdvXs4Fu0y3+6UDrRnM+OOHTu/OZNmk2A4enNaVlRtiiUIC+s/esdYKUJ
         JmJeeHDkDpb8NWoBzgDJo8sCSc7YoBjsg+2PNJqTK//hEo0lzuZEufF93W0BmgPWhLyI
         JD3w==
X-Gm-Message-State: ACrzQf13n7x8xieAt7VdGcmjxVlMk98HDFsMj27NL4YWNSUteFXVDFFw
        ecO2tnsP2xM9W0Cjiw6ufTbLvA==
X-Google-Smtp-Source: AMsMyM5RorrExuMeriCEuLO1zVGFWCDPXI1TU14nSAWzhhyrFcpwZiVom1Hruz0t5OAfxkXEzGyLtQ==
X-Received: by 2002:a05:651c:506:b0:277:6da2:da7a with SMTP id o6-20020a05651c050600b002776da2da7amr12845719ljp.93.1667930976342;
        Tue, 08 Nov 2022 10:09:36 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id q10-20020a056512210a00b004a478c2f4desm1867700lfr.163.2022.11.08.10.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:09:35 -0800 (PST)
Message-ID: <a3a4f449-534b-f17f-6ff0-353a14f86700@linaro.org>
Date:   Tue, 8 Nov 2022 19:09:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 02/10] dt-bindings: mmc: rockchip-dw-mshc: Add
 power-domains property
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, linux-mmc@vger.kernel.org,
        Ulf Hansson <ulf.hansson@linaro.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-3-jagan@edgeble.ai>
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Document power-domains property in rockchip dw controller.
> 
> RV1126 is using eMMC and SDIO power domains but SDMMC is not.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

