Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21D4F69A79B
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 09:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbjBQI65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 03:58:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbjBQI64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 03:58:56 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 634ED59B44
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:58:55 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id m17so2149935edc.9
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qs4gU72VHUNMPaZOm7nEODtbU0mJ0OdcIK2lIN68xlo=;
        b=EunzvhkEUXQIZuBifghYhfX2/i2ffpXe+kAn9O9nV/EWtNPVhBw2kOBMqnRoiLGDjw
         gxRp6z+zSIbe3JTaqvKqv/uflQneZuaXmXzMUdgfnF9EFm+j+3XKpU5OtE831H3Clnvi
         uiYlcUYttBToyPQStxktVeVHo5lxzqJv5JzAFJ/FAmPB/E7gZdW0ENpeVDgo2bwkUroH
         K+ukFLX/d5L0CAOAm7iOt9kc4uJg2dy/P/gsH1xcIXQkAW+2a8CbOLX1sP7hY2O71GtZ
         /WRh9x+vBFKVplBnqdjWSOulIrEUiMtcms09vQMJrsq5m8866IEgZfezxR4T3CpDE/dW
         9XMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qs4gU72VHUNMPaZOm7nEODtbU0mJ0OdcIK2lIN68xlo=;
        b=tFzgDuxgDrp9dmbNf8Bn3uZ2gBnBQNHPD6k1H4lHKL4uviBbeCvrgP2BiUXHjPzl7R
         mmK3XncimgDNJ8p0ktTdcNFBqRF+p+FDxsmrUfdYTLM2CkeibFU8tMfBnTGAd2L4Eu/z
         Wo5ovHR9SOkw4n/2wytmz8vbfaKVgProFCAoGxCPL7mSPTzKY/yGCGBkXCZrsQPy7Nf5
         /mKTUBl6X9og9kQtsyLhsvHzc7oZU8HzypE14rphfr00q9dsR7bWE5agufki9WHyVYsT
         TuhGHuNu29gP8L9JIgdta9al8xj+zWlxMpM1599GDhwKY1lxgV6PkgeX2chT1yy6nfk3
         KNHQ==
X-Gm-Message-State: AO0yUKWgQApItI/jwekF0B5QHEMbZ/+K/IvHtORqxkjZT55ZjsUxZ1/e
        j236c3MH/ALqgCIKhv800WQhAg==
X-Google-Smtp-Source: AK7set8D5qS/zMbMErNjB8zzWJHf8Tn+NYft2qeWuFWehFZgyXd9JIBBN8/HkaD53f6LphX148o2/g==
X-Received: by 2002:a17:907:76ad:b0:8b1:749f:b2c0 with SMTP id jw13-20020a17090776ad00b008b1749fb2c0mr3716140ejc.74.1676624333946;
        Fri, 17 Feb 2023 00:58:53 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t1-20020a17090616c100b008b13a1abadasm1852257ejd.75.2023.02.17.00.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 00:58:53 -0800 (PST)
Message-ID: <60d012ee-d511-81b7-dff3-7f01d947bdf7@linaro.org>
Date:   Fri, 17 Feb 2023 09:58:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v10 06/10] dt-bindings: qcom-qce: document optional clocks
 and clock-names properties
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230216131430.3107308-1-vladimir.zapolskiy@linaro.org>
 <20230216131430.3107308-7-vladimir.zapolskiy@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216131430.3107308-7-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 14:14, Vladimir Zapolskiy wrote:
> On newer Qualcomm SoCs the crypto engine clocks are enabled by default
> by security firmware. To drop clocks and clock-names from the list of
> required properties use 'qcom,sm8150-qce' compatible name.
> 
> The change is based on Neil Armstrong's observation and an original change.
> 
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

