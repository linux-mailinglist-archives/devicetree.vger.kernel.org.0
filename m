Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3609A5FB85C
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 18:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiJKQjN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 12:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiJKQjM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 12:39:12 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1581D27CC2
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 09:39:12 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id 8so1375767qka.1
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 09:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JuWUVhopp7w1rlsLDhtgvEXeVzs7gJGXSD5NcebEbwg=;
        b=kS5ZhxV6jSkJw+pv31j1/TIl9ctrk5SG7GZG7tHexzmdIbG4Y5E/x0HBeOfkAYRWJr
         QpUPUoAt7MShByXTfaa6aAGrby1OAHj0g9VSiH9RrxmicpnA5/x0O4AiWViUzzs2/eSD
         OyppQqSuuw+uA9Guk6FWu6vgUBRSi/i1nfMWRPhbotuKBMhT2CMcNyo0gDlugcfvQnik
         Kl4G4bLxtyqoCj/dTmMtzxZYNfF89sHzY5U5RGvItswyeDwl0FKpGnagtj29Z3SE2ziE
         TfBCU/QPNySh2jOLNx+lecvU/nCDGhtW4E73VOVXgAZrGlz6UEZcsUSS4X7OIKpw2/vI
         Rgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JuWUVhopp7w1rlsLDhtgvEXeVzs7gJGXSD5NcebEbwg=;
        b=Hx+EzDVn25eCPxum/5mPRXZXKQkV9gC9CteXnuu/6EpO4A09K+a+WDqbmwGAnun61f
         zb0Wi//KaI/jxGsA+TIZ3qfonzu2ObQfdYgSPvX82rXF5NlWF+maU99bn2ET/K+Q5Pn9
         Zd+VcL7UnY65Vqb/msQFaUVxKhgQ221d7gFkSNDJv/3FWvcMOnq0cSK4dADWBPewuYX8
         JQvwtKdzwtjppKawwq8hYbnV83wdJX1COo/+dl38AxGgk8OErCVb/gSqyNKp1xCFcy5l
         ppghJ4z/wyQYlofbFwcMgkaRMqNE3CEzAA3c4iab8TRJkNJCAg6NjE3EiCpxfXO9xqHf
         y7iQ==
X-Gm-Message-State: ACrzQf3XTekdEjKmwWfH+SJguoW92SK2Yvpp0Pi+0175sa9AWhyDu4AM
        6nbuGH3HeD6Gsb+CebgT98Q3FppSJgbRDg==
X-Google-Smtp-Source: AMsMyM5eUUP9Kn/jICoQTvLX+b7FO0kcDg58IhSnVXtMaIvOXcEvxcseytcthL1bRFp7xH7pzdc5tA==
X-Received: by 2002:a05:620a:10a1:b0:6ed:3b23:6991 with SMTP id h1-20020a05620a10a100b006ed3b236991mr6643163qkk.683.1665506351271;
        Tue, 11 Oct 2022 09:39:11 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id x8-20020a05620a258800b006ce0733caebsm13275988qko.14.2022.10.11.09.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 09:39:10 -0700 (PDT)
Message-ID: <d1226efc-ccd1-38ce-77f5-53e2dc30f51f@linaro.org>
Date:   Tue, 11 Oct 2022 12:36:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] dt-bindings: clock: Convert pwm-clock to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221011162919.3025038-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221011162919.3025038-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 12:29, Rob Herring wrote:
> Convert the pwm-clock binding to DT schema format. A straight-forward
> conversion.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

