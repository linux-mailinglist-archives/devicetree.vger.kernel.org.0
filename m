Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86CC06782F3
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 18:21:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233593AbjAWRV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 12:21:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233640AbjAWRVZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 12:21:25 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D066122021
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:21:17 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so11140969wma.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ffLiSQfKQOTXr72jcGGGBmSWihtc1ZeEOa5B14tjB7s=;
        b=rQMuWM1dGVx7mc6CQmJU5KE55lQWHwy/U4tgp/6uVzybnZrlR67XC/X7Iq7JjBYaIq
         nOUb6PDTWW1A331Jxt9SSoQ2K8ZwPm7FSQQ7QA2pHI0UkzIi57K5+FA8HiJrcuz1iIHy
         DrnonN45u+BB1bDUFra6ShjXFDCbjNMI7N2aRXtGNWq+dA6OV7uBZdRB7rmJFK7Hddcv
         ttM8ov9D6RImaPUaTh7O8wt4ESCEL2NOuDWvEddjYmNx8Nn/tavrnr5GUZteah2c0/td
         LvEu1Ba5dS0v+5SbWjFcP+kylvudpzZ7chgtSYtPCtDdDVKsxNalUp3TWzpc8CT8W6TM
         F92Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffLiSQfKQOTXr72jcGGGBmSWihtc1ZeEOa5B14tjB7s=;
        b=rRchIL3zOhA0Wvplte1ZDo3phwpe/6Va6RmoZ2EWmIAbnqsYmsgMCC6EVaBqjSYur/
         7z6ncfxNfBYodbWDWVlfu6BXQ4u3MKlkUTOUTsm9/gyAV8YvOPcId5SvigmoO+V0Ekwm
         z5lAfwLZcX4J6QYQen3tjcVAfVwCNaDyy9POZz5//jBeK3o8291vGIRXMuVp3xVfZAuC
         Goe9xxbyB5xgA0JuXHpB8IA0N7w+PqraLA9+3898eKGXxES09S4wLgSuM5OLvxUcBsQx
         lg7vQSuXBaF8B585+t8Y9X9+sihKeGmImk/HJXi5HqvoHpGB5grWKD3mdsrqKuUTs7ek
         O30A==
X-Gm-Message-State: AFqh2kqYtRTGwsDYEWZ1QAeOFNjk/ZhzFZ9toG8qehyrbbIrtfzmFq8n
        Gc5EvidzGFYPMSDpR6iluttRJw==
X-Google-Smtp-Source: AMrXdXu+fEKOd81dqF4WaKvYaFXLD2CSifWiZkiw86zrW9hyrTOlV6sa/x4vpMnHWiy6UMmZ0WDsfg==
X-Received: by 2002:a05:600c:4e14:b0:3c6:e63d:adaf with SMTP id b20-20020a05600c4e1400b003c6e63dadafmr23614657wmq.31.1674494476497;
        Mon, 23 Jan 2023 09:21:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 2-20020a05600c028200b003cf6a55d8e8sm10886208wmk.7.2023.01.23.09.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 09:21:16 -0800 (PST)
Message-ID: <fc92b9a1-0ac7-8490-4514-241ae19ca1da@linaro.org>
Date:   Mon, 23 Jan 2023 18:21:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 3/4] dt-bindings: display: panel: jadard,jd9365da-h3: Add
 Radxa Display 8HD
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20230123164018.403037-1-jagan@edgeble.ai>
 <20230123164018.403037-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123164018.403037-3-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 17:40, Jagan Teki wrote:
> Radxa Display 8HD is a family of DSI panels from Radxa that
> uses jd9365da-h3 IC.
> 
> Add compatible string for it.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

