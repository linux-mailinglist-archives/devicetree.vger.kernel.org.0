Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D28A96F9B9C
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232078AbjEGUsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:48:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbjEGUse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:48:34 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D81A5DE
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:48:33 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f00d41df22so25534461e87.1
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683492511; x=1686084511;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7BWUI/1qdVYOLAVKSpmPHKvUKUj7PnbEZ32a5OyQdvQ=;
        b=I1aNSFMZXm6VPL+ZA/V6PI5pQMWEcu016RmkYzym0sMsL24QTldypW7YYuMfAJnYY0
         sO1s27lp2UkeJxfMbIcO3M5rAWAUNjU5LTBr++TwVKgA8qBqupbAWYuU9Gd3SpNmagOL
         6JBN9GUHHOXTNhAVGaVuMPzzAlWTbyJa/EyLNirdkpFOqA7D/HTGdmTjkOAsgUNQ85ry
         D6DQ6MlEwIZfpuP9qPhRAOQEwB9BndJoZUo81z51TugIsXbPlPeeplh7iraaVpGC5xON
         B5kpxJZ0hElhkizstoIbSZAFGni7jMYNcjdFh4k/WH0UDZg8d6m9NJdZTS7oZYReSXDo
         CITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683492511; x=1686084511;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7BWUI/1qdVYOLAVKSpmPHKvUKUj7PnbEZ32a5OyQdvQ=;
        b=MJjZ4ZTRkjkwJ/HpJ8CUQMODT+QvOH877vVoKOn0UB3LXDiEmW2221VAfrTd26pr51
         qpCZEDbcKHdTHHUfAIvGKBsDdPrS8OvkTaN4E9leTLb3tJNYt5eKPpopiTGuJ5IHoogK
         hISCiIr67uKSGR+V0pzVNa/WxxUAY4tZy8P+UDXWWoEtdO0qTOSKDUuiUQXZknSJx+Yq
         T/LlK2gFwLdNl+tHxUuBfNvaZSGjIWFh2KOrw4+Pb9QBwjmUDIKXy6sAl+Jk3RrudeSt
         eZU+Xf86kKpFmsHQXeHw0jpdizgoWjo78qLpGzCVMwqUoObzyLlV8vwAo9WnH7BWT03u
         gdrg==
X-Gm-Message-State: AC+VfDzX97WWIX9vWB/RvvuM+yDW51Xz8Wwv8QdYbeYU3gIkFYEmqqdp
        2tB1kcdW7dTbMdowF+X3Vz7vAg==
X-Google-Smtp-Source: ACHHUZ7SNCINELsJJ9q9TRpRHXHvpG3fvn38aZ7hFTfn0/AdbINl5MRBrqRasPpIkaOyPL9xCMEGYA==
X-Received: by 2002:a2e:9c90:0:b0:2a9:ec7e:8f58 with SMTP id x16-20020a2e9c90000000b002a9ec7e8f58mr2039095lji.7.1683492511033;
        Sun, 07 May 2023 13:48:31 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id p21-20020a2e8055000000b002ad8cbb7349sm425463ljg.98.2023.05.07.13.48.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 May 2023 13:48:30 -0700 (PDT)
Message-ID: <e1a05666-e929-a0d8-5d59-aa968d9067f0@linaro.org>
Date:   Sun, 7 May 2023 23:48:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 6/6] ARM: dts: msm8226: Add thermal zones node
Content-Language: en-GB
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230507201225.89694-1-matti.lehtimaki@gmail.com>
 <20230507201225.89694-7-matti.lehtimaki@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230507201225.89694-7-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/05/2023 23:12, Matti Lehtimäki wrote:
> Add thermal zones present on MSM8226 SoC.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   arch/arm/boot/dts/qcom-msm8226.dtsi | 44 +++++++++++++++++++++++++++++
>   1 file changed, 44 insertions(+)


-- 
With best wishes
Dmitry

