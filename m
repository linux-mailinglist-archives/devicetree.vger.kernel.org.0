Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8179069474B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 14:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbjBMNoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 08:44:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbjBMNoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 08:44:13 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB768A7E
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:44:12 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id by3so10961155wrb.10
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8YndzVf3v6/PsLB4xK8l0Uo2uF+AS5qRQ1VgyuaYEtU=;
        b=ytH2NJkcPta5r4EPLRm4775bH0r5ADtnJOIFsbPl09/9KNCMgIaz0PZV0BfJeqrnlU
         quS+NGLbT99F2JIBYG6vbpD5/cKVtpifXUqqS6600N+5wH2H9WhF/teI/24Zaf+X8QEN
         1+d7xqvzZ2KsizaauuzRc6Vo7o4hmEjWJcvVM7uvFnTF9lc9mz/nmdDKPJDiKPXpDSZu
         JTVTTi4EJWM1HaPisNF4f4NwI+nv4CUWrfPs3S0TUqz8qUCRcmAoaJgba3NdZyv77XEu
         ede5e4NixFfzGxYTtC6a63WsB2CZDBQhBdoDz3zzOr/XTMYKKSHT4raPwz6A6MLgQAF2
         k0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8YndzVf3v6/PsLB4xK8l0Uo2uF+AS5qRQ1VgyuaYEtU=;
        b=nLHaJqwWuMfugqAyuudrkm0wkED1M/aLj2nx6TzTFnQZJXnzEq5fFkHTQs23F9FjPz
         94FtbjjpalcEQMQEJMuos8WnRkNgCanslhF41Etq0JNANHOjTQzPhnD23wPeZiAby53L
         e1F55vAukjtGABjCicnoQqCB+qHmuMi5VIukME9wsRC2bZbgZJX3W9mgztUKt7QORa5y
         3x6Md1bO1bEGgYVB9r3EnBh9GGjhbfaHHtpdHwAzROyCEHNHErJAD6AF+hkM9A3MG1k9
         ZCOEkFWLltnq/IbQWt1pIaAgV1to3/VIdY7cMagFvu+n1NtqQTdZ7GEIgirIavgsFRfz
         zZJA==
X-Gm-Message-State: AO0yUKWzI2emTS7Ob/ju//oATFZ6/20J497GvaO7UTG4NIbyusTj9DGI
        UiWoZ/ZI3xmvdkM7HfdA5zpeIA==
X-Google-Smtp-Source: AK7set/17SJjnCRcpQIPGHx+EFyoU4FpCGw43e1kOiXX79UznQPjL3PPfrqHr+skXbFC8GK1Qch8Mg==
X-Received: by 2002:a05:6000:1808:b0:2c5:5929:4bcf with SMTP id m8-20020a056000180800b002c559294bcfmr2854910wrh.28.1676295850679;
        Mon, 13 Feb 2023 05:44:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v17-20020a5d43d1000000b002c54bf0e9f7sm7801758wrr.117.2023.02.13.05.44.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 05:44:10 -0800 (PST)
Message-ID: <eb0fa8ee-9c14-c8a4-2d3e-6180f5d875b6@linaro.org>
Date:   Mon, 13 Feb 2023 14:44:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 5/5] dt-bindings: clock: ast2600: Add reset config for
 I3C
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1676294433.git.jk@codeconstruct.com.au>
 <3aad8dc671a65e65f0cced648847c504514f5b0e.1676294433.git.jk@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3aad8dc671a65e65f0cced648847c504514f5b0e.1676294433.git.jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 14:24, Jeremy Kerr wrote:
> Add reset line definitions for the AST2600 I3C block's reset inputs.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

