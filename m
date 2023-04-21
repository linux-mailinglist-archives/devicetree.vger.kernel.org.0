Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E901C6EABE4
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 15:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232538AbjDUNlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 09:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbjDUNlR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 09:41:17 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C79D12CAE
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 06:40:59 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f09b4a1584so12517655e9.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 06:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682084458; x=1684676458;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+IQ12ka9+KfgQJAShQhyOsFc/fp4K1yZ4QJA6PrMjog=;
        b=X7TwsI7vM3/OjY9PxeRkWlv83YMyeQLwYMPnJ39Yo8meD52QzBMmlQyTrZQLbzr/J9
         vKb1ytQGCqR8Ig7QwsRj98P/ilzZ+9fwcOckBk0907cgDCLznXqL9gn2aeFjg1YjS30S
         K3tk30gY07l3MvicK82XKF/ubqTaj803G35j+lWA6VW4mxOuPrLqtgVly/ux/kuuhR1R
         9LUylGIvSoxXnEhWZTBSrbVbfcTxVbucdprxw1dfI9Ytm3Zy3BZUOkJ92jMt0J09gGXt
         wvcLrWB/zEtSbh3S8mnL4M0rn+G9gzdRiwmCvKNzfl/ZVmmYTgUCWM6jdjtoLXRfYKJt
         6AQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682084458; x=1684676458;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+IQ12ka9+KfgQJAShQhyOsFc/fp4K1yZ4QJA6PrMjog=;
        b=cPjcN74fOpyZVMHG266pDiXfLa4SCnIFDNubQUsNB0Truc3hr+4EOdkTYdLKd4fhz8
         G/KJurkmFaeAVD+ad3y8ruqsK3hO0C2FK0N9K0bwjiR0YEQwjq6fyZrcyCnbuw085ij3
         IR2SqKrxwBiMfFNBRQDTqrB/3/F4nR8RafjORIi0BMKcstvjJT0PQmP3/WB496VFXmWc
         mHLPxMVLcxm1IfmelKlj+K5VtIMjClbom1rzxi1/hbjWv9wRBoOaseEet46LEgaSQVck
         th6GmOqu0YUphxwbXOrZLXZnBRKt5FO7APf4lGd0eTMcU2cG2VNSJKzOTaM5+CVIw+Az
         fdng==
X-Gm-Message-State: AAQBX9d5SxhM9YGejc+gkWMtXwJFAtHeRunnBs/5BJ6PIbxY/GNulsRx
        sivaeAhzUC0wtXL00A9zQRjZlg==
X-Google-Smtp-Source: AKy350bKag1jGwYATg6lxcGMrOSrzw9bBFfRoW55v/yysoROm5f4qgvQ6Z2P4u+CnKtMA3unZrUk4Q==
X-Received: by 2002:a5d:428e:0:b0:2f9:b08a:a3af with SMTP id k14-20020a5d428e000000b002f9b08aa3afmr3241703wrq.49.1682084457708;
        Fri, 21 Apr 2023 06:40:57 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:4599:1915:621d:5b00? ([2a05:6e02:1041:c10:4599:1915:621d:5b00])
        by smtp.googlemail.com with ESMTPSA id f3-20020adfdb43000000b002efb2d861dasm4428241wrj.77.2023.04.21.06.40.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 06:40:57 -0700 (PDT)
Message-ID: <215e43c7-8b07-00e3-47bf-7913649a9662@linaro.org>
Date:   Fri, 21 Apr 2023 15:40:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: thermal: qcom-tsens: correct unit address
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230420072429.36255-1-krzysztof.kozlowski@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230420072429.36255-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 09:24, Krzysztof Kozlowski wrote:
> Match unit-address to first reg entry.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

