Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5A46CBDA8
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 13:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbjC1L33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 07:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbjC1L3M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 07:29:12 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94DC9420A
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:28:46 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id ek18so48223382edb.6
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680002924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/K6STWaIy6e9OcvNUsE7Tp59SAyabDOw3Eioo3vEpd8=;
        b=MJ6suSzJkIE5lVSpdd5PYU9nw590FqVu/bRl9O2HgkCUK13jwfAEQH+DtbGLGiFTr7
         CL5mMOgARauu9o5txDQeZZieTj9yBbHXIpjffZjiYtraTJEIMol+3QzmvcWCZo0W3Fju
         sPW/N5HdAyZw+Lyi1N4RZH/j45NyYq76EyculrB5ScL6V3ySYG2ZqGpvlnkDtgslgEAg
         Q1B3GpRyhUT3bPgg+L6Q/VTNeV7+pfXavInSfXwzze7wo5+5FMyDtiCOSFcy+lcUvNNV
         LjZ21bhhMcTdIpDSqCXFeJ2KNOVGhV3SOMcpRl5i5ga3L1v6xLpsfdodDSdbhau+Yzsq
         eZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680002924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/K6STWaIy6e9OcvNUsE7Tp59SAyabDOw3Eioo3vEpd8=;
        b=kz0AcFbGoNjWBJFMzTVwnZa/wf8NltATKieJYp57TQNH4plb3cpDatGXCn5Wf1i2AA
         nDu6mteeeiEuoKXb8GWRpVbnJBCtZlj9wIK8Sq3POcMyT2jvjjhC9yL2JuFZUByz/7kn
         cWeHsG+895kH3WBnLD9+B22WKOgq8DYRv9ph/mkuGSy4dll/ZKAQGOQLyIG7ueDEtwvv
         cGdrTLqDsG1HkiVVxNQ3c54tjRKgjnYDF+PYTH3QzLDtw/UHHsiZ508J14yucpu6n9np
         D+7VMR20EzlSqTtyA1U5kUfgxxDP53vN9cpsQkK95nEUh8onilpccrJxqITAry5z+cm9
         Nncg==
X-Gm-Message-State: AAQBX9cKK6w1lgLB3Xm/TcFFJ/3ugMxPwXcNRuDyGJpPLxY34d1t+lyg
        obg+nPs1rqFGNgN2oqIbYUQAaQ==
X-Google-Smtp-Source: AKy350aF1uD63+KyoOOABrSL5pAVC5SEKbBo+DgMgt0bGMg5O+uHWfR69bAIpA3bzfvfv7FZxs8EMw==
X-Received: by 2002:a17:907:6d27:b0:932:cfbc:7613 with SMTP id sa39-20020a1709076d2700b00932cfbc7613mr18504573ejc.24.1680002924141;
        Tue, 28 Mar 2023 04:28:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906b09000b00938041aef83sm11039329ejy.169.2023.03.28.04.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 04:28:43 -0700 (PDT)
Message-ID: <3b51cb0e-4e6e-d458-a393-15067948b0db@linaro.org>
Date:   Tue, 28 Mar 2023 13:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: maxim,max9867: fix example
Content-Language: en-US
To:     Richard Leitner <richard.leitner@linux.dev>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ladislav Michl <ladis@linux-mips.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230328-max9867_dt_example_fix-v1-1-cdf31c3fdfc8@linux.dev>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328-max9867_dt_example_fix-v1-1-cdf31c3fdfc8@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 13:25, Richard Leitner wrote:
> Remove the common clock node from the example as suggested by
> Krzysztof Kozlowski in [1].

... because it is redundant in s codec binding example.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

