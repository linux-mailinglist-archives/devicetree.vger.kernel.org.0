Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C8A3626922
	for <lists+devicetree@lfdr.de>; Sat, 12 Nov 2022 12:20:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234758AbiKLLUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Nov 2022 06:20:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbiKLLU3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Nov 2022 06:20:29 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3619DF7D
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:20:27 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so11875239lfb.13
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i8kkvKEpvQ688qhJocC+3RA4wQvtZWRg4tan2qE3BcA=;
        b=fcYEcD0sM/OTJI9qNBqy+gGNe8twjTnWTEuqeTKGKU9QcoiojoPbQjI2PGNhRbW5b/
         EhX5y6EPa3wFGymb0RbWl0Ze5k72diijNxGzO2ejvhsvnd1WF8ChfLUdGLupb4KICMTB
         r8rz3Uj9TtchhKTgzm09EhaqvXW/jbkG2SmCaH1XHiMKGpgSkhtfTVllNEoBvb50QcvM
         xu+r9hOeXNT7hD3SMCk6RE3UCnGySoXgxHzYSxDE8TmVZ6uqrWqsJYBycmcRwURA0ovD
         cdPixxFC3MMUHKZfI8MbxCBl4iYPIU98ByGh3Q8qN7zndaaeqlHWFILS7qxla7HLf1OH
         QPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i8kkvKEpvQ688qhJocC+3RA4wQvtZWRg4tan2qE3BcA=;
        b=iD9Ciivs3jEcvIJ5AykAovvsiQCgmjpRBErrZU10VldydT6PesVIQ23aslmHo0rPJ8
         UyP4eSgkJtGRdWQTYsvdrs0GhussSyxHuvzAHCVjfnViBuZtQTw+E27gbTg+9Gr/J3i/
         JsV8YrNJ5l9g2NVOQ0/gu4ninyMbF9BJ/Nunc11apZsGGvjw2rn57ibZMtrsj3hHv9gA
         9bFNJHwDYrgjv3CWff9EBXMkr5zdBKcnGbVZl7gek9anZo2YMVpJ8m9C97ojPevYZBGY
         taJ6uy1uICdZlGAU+Yfz0vPkd0CphmzsYrAIEQUsak+zuIf2MAr4u/TQ3Z8kdu/7Ch4n
         QefQ==
X-Gm-Message-State: ANoB5pkpixI40ysbrK2fP3I2kiDOmGJ3FrWG4HBZAw4pyoFhAD95V1AN
        1s6ToNL41DXlf+RtAr3Tw9f5/Q==
X-Google-Smtp-Source: AA0mqf7CJgoDNhgsu2VpvyHNlSJ1G3FV4KeBeNUpXLaQeRnRABUCtstZ74Jcfj+ndSA5SeFd0bRG0Q==
X-Received: by 2002:a05:6512:2983:b0:4ae:6bbc:e8af with SMTP id du3-20020a056512298300b004ae6bbce8afmr1838165lfb.411.1668252026270;
        Sat, 12 Nov 2022 03:20:26 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 10-20020ac25f0a000000b004a287c50c13sm826141lfq.185.2022.11.12.03.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:20:25 -0800 (PST)
Message-ID: <57f3c55b-3d37-276f-8c09-ebd580ee1e37@linaro.org>
Date:   Sat, 12 Nov 2022 14:20:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 11/14] phy: qcom-qmp-combo: clean up DP clock callbacks
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-12-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-12-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 12:24, Johan Hovold wrote:
> Clean up the DP clock callbacks somewhat by dropping the redundant
> "qcom" prefix and removing line breaks after type specifiers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++-------------
>   1 file changed, 14 insertions(+), 19 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

