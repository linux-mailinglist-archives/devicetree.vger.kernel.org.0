Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B3AB53B8E9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 14:21:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234609AbiFBMUp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 08:20:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233110AbiFBMUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 08:20:44 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5973F583
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 05:20:42 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id y19so9619479ejq.6
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 05:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w3NU5Pd6RdYjWBDHbyo9ZXR/sDqD7HVPsWUeAk61S/E=;
        b=LdiGj4MEYQyU5F+TIewCPHHuLUyUl2bLsqrCCSyBPVE4EOVfgtgZ79OzaiHVKidJiG
         /RZLQP7l033/vrqYbv9WFHj57x9Z7x/MU66hCf+yoqYKOQADFxvth17LXDNhlr+fBZu6
         lmXgfOG6Q+vp8QEDgWyYdOgZhuDkglvHpKPwKsQvRqjBwrAUkgIBXqVwSIhvzhJk4Nny
         ft5eDNs6nRaqYUiM7UaK/4pNO3Ty5U9kLdLShFM20rw3Q9TmZPoyjBwnyTdNrqll5tPh
         CkHW+HAvuWApxihuH7sA2EdYnWdiyNz2OQjyDixRF6uLuz9UAVqzcOHGbzh5CF3k/Usx
         jwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w3NU5Pd6RdYjWBDHbyo9ZXR/sDqD7HVPsWUeAk61S/E=;
        b=f6i+76DGp94hTHrd2Nex0OlB5RxQJqb46HVahQ/exf8OuslGTBoDH36yFBcIYWG74m
         EKc+snHH9Z2UWsrtTsgMji7jFzhOOMppQNOH6KboWCFUxu8v2x6s6tUlhPTbYLScvzvE
         n+ILzK1eBk2TlrALabrkQz67sQEmkZllpwynooze8ms4rk7z/bmyb1iX4CSYuPxnTBuO
         /AsDvfJKu+kSfDeClv8m88lApf1mN3Hq2JcciY2rGXQwJK87D/uoX7BK6w2RP4jA9i2e
         FYR/gM6nV+bsOHsTNXKsxe996KOXK0Vu5tCUQO106wS6qzdxQGm2Op7FD0GGmaTzxyQl
         rrAA==
X-Gm-Message-State: AOAM531TUD3LjZ3jt/V2S+0gzAcA+G54R23c2O4fUQZxRvhWWAwQozb8
        Rr3jBCttrsGxcN3yqh5kStxxeK/9FfjFEwnu
X-Google-Smtp-Source: ABdhPJzqHGlDHD4WYxGAe/oW+BJi9G97Ku+puxcqkm6xUmICZTlEK4Dg6DMTJvIrdr6f3f4LkNAIwg==
X-Received: by 2002:a17:906:9753:b0:6fe:dece:982a with SMTP id o19-20020a170906975300b006fedece982amr4124274ejy.560.1654172441357;
        Thu, 02 Jun 2022 05:20:41 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kz10-20020a17090777ca00b0070beb9401d9sm315486ejc.171.2022.06.02.05.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 05:20:40 -0700 (PDT)
Message-ID: <c25d90a6-7f6b-8c0c-a227-94fc4f53e4a2@linaro.org>
Date:   Thu, 2 Jun 2022 14:20:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: ti: pruss: Re-arrange
 "compatible" in alphabetic order
Content-Language: en-US
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220602120613.2175-1-kishon@ti.com>
 <20220602120613.2175-2-kishon@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602120613.2175-2-kishon@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 14:06, Kishon Vijay Abraham I wrote:
> Re-arrange "compatible" string in alphabetic order to decrease the
> chance of conflicts.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
