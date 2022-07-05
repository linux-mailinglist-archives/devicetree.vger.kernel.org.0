Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B421566A50
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 13:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232038AbiGELyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 07:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232970AbiGELxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 07:53:04 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CED85175BE
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 04:53:02 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a39so14171240ljq.11
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 04:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IbfaXjeOYPk8qrQ6FvKEJiDPLZqhzWiK2mEmdCgaVvk=;
        b=B4DtRXPpYtc7Jys2RrKIjT7AKP3Cq2mEqDpEzOACwvCZDb77o2+T4h755u44lqfwgP
         v4Li7tF6UwQtWQ0lA//rN/NYdtZNB0dTA+HcwQ3CRgQE5xx+N4nKDoqtN9y6iHkEeup/
         YdkZNnjl5Z58di+2anNCAwRIwoLzrJNvq2Xb0c0Ru6dtLmH1QR2udERachuAu2MOXTJl
         KWkvYf5EB+mX0k7axZ4FUwhcvlTAPffn3D72r33YlkHi/1SgzMQdEXVcmmYyOBtag99J
         IrZirlPmqptkw8Y6vgrSxrtadQffV6EYlUsra222sQhNAGezLdeBVoHJ9FRGhQImzcgg
         ewvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IbfaXjeOYPk8qrQ6FvKEJiDPLZqhzWiK2mEmdCgaVvk=;
        b=Pw3TRKpYEZKDCxKDsXu3nsxyg3kbm4P22h4zGIQbn7ofklUCT8lwWnINKesS67C+Bx
         333tqAJtPqRFLAapKylHDQybxMx0F19yzLPV+pkFgz2IZNQjGBSriLd1hQgrJQVK7VJO
         kYy7klnlfmRee9BQDe7p3B83MhH1mbNlZYu3UfGsdULtozTYMblXIpAGf75TolOPZM8q
         LELN6jq3fnrhC6PIGCkNy6K8FCoXtEZ+AjH/fu7L8/qjUyqLpqMKYRKP8syHIFFvJRgZ
         QNW7vfYJISmcF392jrVXJrdhZB0BQzeBRkdfVCv3mz/7NkoGiz+RPf0U6v4tPOk2K2Yg
         R+KQ==
X-Gm-Message-State: AJIora9xN44ueu9AGozJ3S6gGWbC/o6VyZhIQNshHmZUwpMiOmaNF3kM
        z6hAjF/VkOqLvTazqjoIykOuUg==
X-Google-Smtp-Source: AGRyM1uPETmr+vhZN8KGx7CQ/BROrtMw0EI5i1L+BOd8h4XD5hhpd2Juf1gemkduB7se6umPE1HwyQ==
X-Received: by 2002:a2e:9547:0:b0:24f:2e31:6078 with SMTP id t7-20020a2e9547000000b0024f2e316078mr18478545ljh.102.1657021981247;
        Tue, 05 Jul 2022 04:53:01 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id 9-20020a2e0509000000b0025538905298sm5487757ljf.123.2022.07.05.04.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:53:00 -0700 (PDT)
Message-ID: <29d1f7a3-e141-270c-9e71-e052fd41dd48@linaro.org>
Date:   Tue, 5 Jul 2022 13:52:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: leds: class-multicolor: reference class
 directly in multi-led node
Content-Language: en-US
To:     Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ChiaEn Wu <peterwu.pub@gmail.com>,
        Sven Schwermer <sven.schwermer@disruptive-technologies.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dan Murphy <dmurphy@ti.com>,
        =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
References: <20220624112106.111351-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220624112106.111351-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2022 13:21, Krzysztof Kozlowski wrote:
> The leds/common.yaml is referenced directly in each LED node, which
> leads to people doing the same with leds/leds-class-multicolor.yaml.
> This is not correct because leds-class-multicolor.yaml defined multi-led
> property and its children.  Some schemas implemented this incorrect.
> 
> Rework this to match same behavior common.yaml, so expect the multi-led
> node to reference the leds-class-multicolor.yaml.  Fixing allows to add
> unevaluatedProperties:false.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> This will conflict with any new users of leds-class-multicolor, e.g.:
> https://lore.kernel.org/all/20220623115631.22209-4-peterwu.pub@gmail.com/
> 
> The new users should be updated to match the usage introduced here.

Pavel,

Any comments from your side? It's waiting for a bit and folks are
sending more and more wrong multicolor bindings...

Best regards,
Krzysztof
