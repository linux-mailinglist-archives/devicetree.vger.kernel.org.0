Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 275E760F8FD
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 15:28:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235247AbiJ0N2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 09:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235002AbiJ0N2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 09:28:53 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E99D17FD75
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:28:52 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id i10so698281qkl.12
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B/X6pw5m37N9JyjzyTrby8bFniFs1zr3mi0NyZRLHRY=;
        b=VUZlWUr+Ag7obPUd8aKoGYR46l6+gd9TJVwD4BPjVuu8Y48fJisDoOc76cYEzwQNTl
         1jBohX+/PGHb+rSy2B7JSQqaMQ8e+QZ3G3mg2B4STb/B2sYVBbATbHmxj5NxEdJrp2I3
         VkakIi8hq9C8x9KhMLSbU17M44gzfsVElyf/8YuntlaRBXp3Os+E9n34xDX88lYwbc7m
         tyUb9yCkqsvk5TQoYqhT6wyXU+X/62+k7XYHVLjMsYEmHq4iVKzR1A5+GLbAs0yQa607
         NwXXHh16ZDRIu0KNU6BsaJ9VBn6ykg1KoDKgSclTfukNnO/IWlJ0QxnktvZbJHQuiNu5
         M68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/X6pw5m37N9JyjzyTrby8bFniFs1zr3mi0NyZRLHRY=;
        b=XmNinjBJp/GVjLEBi9e9YN21MzZOcbqu5S7ME5NSXM8ZkfLPctbaZADHiZuaWMbjHA
         Lbg1fjwCq2P7oMZlx3+d7xY5x9t2zPj3+lasiveqeql48lqSjlKc5O1AEcMaIEXP8Z8l
         kzl6fhW0l1cez+yFuE6JlsmHmZ6rBPMRspAPNiLMJEJrXew20KJG65xg2Va/mZVMs4b+
         hubJfRbjcHGgOnNHwOsNaby9T9keUbpnZ087EYkZ2R+mJACmM0GwnF7fOokpA0cFFIIK
         de1NDjx/y7p69BX7dnClF4blnksVlO4tk68ZURe5EqjJhy88UJmsYBdN5t5Yl5YRl1IX
         nmYw==
X-Gm-Message-State: ACrzQf0vVEQKsFS2BO/+kMcNy1JcXtbZema8/Fbgbhll2R9tdGAp4LnV
        APbWPfB9vtu3FKif/XTP6kYRog==
X-Google-Smtp-Source: AMsMyM4FD1Ftv1brgcf6lLCigCjMsCV+VaUuuweHjMHn5GqvPHhAupNbLWB1+PScixkKz99fTFwjfw==
X-Received: by 2002:a05:620a:894:b0:6ef:759:5f9c with SMTP id b20-20020a05620a089400b006ef07595f9cmr27166942qka.499.1666877331347;
        Thu, 27 Oct 2022 06:28:51 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id t6-20020ac85306000000b00398df095cf5sm874242qtn.34.2022.10.27.06.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 06:28:50 -0700 (PDT)
Message-ID: <b0810bc1-cfd9-547a-6e6f-e1a180543429@linaro.org>
Date:   Thu, 27 Oct 2022 09:28:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/4] dt-bindings: arm: uniphier: Add Pro5 boards
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Masami Hiramatsu <mhiramat@kernel.org>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221027045157.23325-1-hayashi.kunihiko@socionext.com>
 <20221027045157.23325-2-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027045157.23325-2-hayashi.kunihiko@socionext.com>
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

On 27/10/2022 00:51, Kunihiko Hayashi wrote:
> Add compatible string for Pro5 EP-Core board and ProEX board support.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

