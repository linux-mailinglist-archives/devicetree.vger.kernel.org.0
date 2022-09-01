Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 458F45A9149
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 09:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbiIAHyo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 03:54:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233401AbiIAHym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 03:54:42 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C58D19C31
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 00:54:41 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id p18so13691693ljc.9
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 00:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FFlieosKO32wdKJZJjDDtA+NZoT61yyyQGScspHk1lk=;
        b=d49WR95EqH0kRDu6zJxUyoXOm4bSR7C3VSLDMIgnWdsuO31bgORh3e6Gkls/6Ocd27
         6YfSgC4+ZSV2ZnEwB+65MHrcE5GxRqiOiNJW/56lGIv8w59XHd4aiG+kRzkryJ0D6MX5
         EompPulevihO1KN3em962V2MyFUYjyvKA5NWX9k5xVIlA7lyHLeENq8/a8pNDZLwir0Q
         TFfbvx6AaohR6hMJJd+VpxSIPRI0YDYBGcnmtnAuQInNcAFh6DkoTHLIN0tJncsQlrBH
         EyWGE9tB6UyIp+3UJ5nicLafQHPPrS3zZUgjZU/leR0Q1mRu1vcuJTQpfvVRtfLxYFzZ
         84Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FFlieosKO32wdKJZJjDDtA+NZoT61yyyQGScspHk1lk=;
        b=g5iFKD5g1dNVnjaTTUIqlwUMEa/YTABO40dculkNGSh1LjKzjMlyLRPP0Wm0mq/Ir2
         9uppzQu5pRhdvN5kEqvlfgaOybBeSSQ43LBOqa0nH/Hd5x2gAbkEZJpz2YGw0hVARpBz
         RStlERnjW870APmqOGmgvoaJqves1LImVLFuEohkLgwV8A5D+AtM8AvioYR7AGSOy0dW
         z4M09U20JIt9YRY9uQLryPB9myae/cnRCJUDzacv32PZLK+jkICRP9baPTu6O/VUkNfP
         5P79YxiDFsYF8CJJsntvu9o7YSrEwy6smCZISpFdV3MbrQMt0ztrHXGEdVR5siWkcstA
         1dOQ==
X-Gm-Message-State: ACgBeo1B46oAlqQzi1GLq5OPfklGcp4oOoY+MF3IyWkEm8AS+2V2zWro
        EH5Z2Gs8SUNq6b299dms0H99+A==
X-Google-Smtp-Source: AA6agR5+p1lidwj1DavTuZYkl9AqzdCbWhSYYYntVRLSzMQKCYVVHVmnf3rv9F/JrVYqQjfnyTkrrg==
X-Received: by 2002:a2e:bf29:0:b0:25f:fbd5:b693 with SMTP id c41-20020a2ebf29000000b0025ffbd5b693mr9956867ljr.372.1662018879474;
        Thu, 01 Sep 2022 00:54:39 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512075400b004947984bc78sm866615lfs.188.2022.09.01.00.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 00:54:38 -0700 (PDT)
Message-ID: <96b0ba3a-eff5-7807-d6fb-a30392e8aec2@linaro.org>
Date:   Thu, 1 Sep 2022 10:54:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] dt-bindings: i2c: qcom,i2c-cci: specify SM8450 CCI clocks
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220901074218.21108-1-krzysztof.kozlowski@linaro.org>
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20220901074218.21108-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 9/1/22 10:42, Krzysztof Kozlowski wrote:
> Document clocks for SM8450 Camera Control Interface I2C controller.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir
