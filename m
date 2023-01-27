Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C03567EEF9
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 20:58:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233269AbjA0T6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 14:58:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232649AbjA0T6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 14:58:31 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 555278015A
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:56:35 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q8so4181529wmo.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HdcHf4vxQ/rMjsTEFJ0DgEuQ3SMQ+z07fek3463si+E=;
        b=pz8/k9kdx4HJG9otnXwQxkiFWs3s7B3HHZZ1ebgK20eD9KotQE02nESF3bq8LurB0e
         2WTQ6R6L60fXxMRyNdvYsKwpe/sBF13EOehF5+aoqui1JwEsYNWov+V1g/g+lSWSAQD0
         o6/AZ9Ez+JUqSvAtF4+jyaqncWPBuR4fR/myP+9WGSQDM4qgZMfGsmlTmlyPozoFpedj
         lDf972svIqKfS0ce+T916GjkrMolGv7Ot25KqnJrvdQazHotyqZ1SfgsVCxh67u5PnSc
         h95uAVkJilEDZmBV3/3enw5S7+1YjnQSONTrDiOCs6FM0IBB79T8kvItKOREM6e6Go4K
         90Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HdcHf4vxQ/rMjsTEFJ0DgEuQ3SMQ+z07fek3463si+E=;
        b=qD7REZEKA5ZA57jkZf9uPLTZ+ioA2OHLSgwdzM2zggEmsj2oCumkSBtspXn8RYwPIn
         lmM2mIKBCybwk0deADUF/axbp7P6n1VFwE+Tq2ASREbiSCRtt2/xG9tXci2KAtTNcZzz
         O1/sZeefEPl9Q8Xiv2CudOWVqq3/CSKV9PWnJnEHr4hLb5u3RfP8DJM9AUBuUlDRyV5n
         KSrVoNUbgFYa77fyNeQsmIcsBAYo/ZKtwTaC26enge46QH1rVSjTcjFFxLOMnC1Ny4HT
         yykJeE5HSdxSAVsnwqdzg72GgNESxRIZp/EFWwRvdS9mZfMFewT0L2bt44x+mz1EIn8C
         F9Rg==
X-Gm-Message-State: AFqh2koZjqKg3oNYLfBQamxzDQjF+CL7lsP/Mbs9AHfVJgRV3I8UAvOo
        Bv1q4vc5YYBfaJhXbYDgnXbsBQ==
X-Google-Smtp-Source: AMrXdXuUI4WWaf2bPFMUfTdSPFeCesGihwg4tC5rD9BWoMfsGxLqO5WdVlEEA1rJgIlK6lXDOSgUjA==
X-Received: by 2002:a05:600c:4f82:b0:3db:25a0:ca5b with SMTP id n2-20020a05600c4f8200b003db25a0ca5bmr32834843wmq.37.1674849390878;
        Fri, 27 Jan 2023 11:56:30 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o3-20020a05600c4fc300b003db1d9553e7sm10081542wmq.32.2023.01.27.11.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 11:56:30 -0800 (PST)
Message-ID: <52508584-47c5-2497-68c8-2c0044911aca@linaro.org>
Date:   Fri, 27 Jan 2023 20:56:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: firmware: qcom,scm: add qcom,scm-sa8775p
 compatible
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230127192139.299228-1-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127192139.299228-1-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 20:21, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a compatible for the sa8775p platform's Secure Channel Manager
> firmware interface.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
>  1 file changed, 1 insertion(+)

If you send bindings separately from DTS (which is fine), please provide
the link to the user - either DTS or driver for this compatible. Driver
does not use it, thus to the DTS.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

