Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 772A06A9203
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 08:53:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjCCHxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 02:53:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbjCCHxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 02:53:51 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6679C4609A
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 23:53:42 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id i34so6883526eda.7
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 23:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677830022;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+r2Y1mBDby7aVQnbTwtbpLmjlWLf2d5n3BkzjQVXgSI=;
        b=XyBtkllDYiCNUjE1gazak+mQX0pZIZIXf2gX1hSREHnZj9nWyleeyXhqxkWWOjhgh7
         cMtbMwUp/tcHprhI2hyKjuWtrYTVEpNcXvXqXweHbKE5LYVP1FsUQ2EFE3XKe7xusNfI
         jFUSJqIO8VH4doMadXJ+GtP+IR+PcA9qacpAE7obHkrPobGkrdvtFEyMMbxsaj85upJQ
         ShsikIkO8AiyAp3sOapkcx5a8u38b0XAMTLj6/h94+WWZ3RAzUm6jVooeHmPGX1zk5Tk
         AMvbISzgQbhUnFanPwpezkbbc9LxYn3mDxkkmvKQwCcd0Ppih7b2xyYdJOYLqCXY4fzS
         +Lkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677830022;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+r2Y1mBDby7aVQnbTwtbpLmjlWLf2d5n3BkzjQVXgSI=;
        b=TpuR1SZeuCfhTi3lP0DDtnC8ypZXKPLvFbshJ+8XXWpU2QyDksV4k4yRgCkQo8Bf4B
         nP8ygA9G+V4TubIVnW7ROmroD42ajXK68BHe72pSPEJyb11sVkumrBlMTpwTCIiSCHoU
         EYSDm3nxHUXcm8VqoPiK0myKa3HqLG/FVonGof6cyff2gaiVYROLAHGoHnr5NCQPXaui
         eKTAsv3jOl8ZwFpWUJs0+STTNmQdM8BB5ssZcUVs+taW1rWqvwMxYxjvw7T8D4bkMQSp
         jvcvSEz4iVIADY1rNX1JWG+++lQmTPWXF8XLycnIx+xTyP08LP8b88uzb3MewagPCqVA
         5cUw==
X-Gm-Message-State: AO0yUKXCQ15OIZK8+M1DZxPcbAhqg6R41K92fGLxqA+aNzuMfLG0Skqz
        rgs6kircuH4Wo4gjhXMphKrshg==
X-Google-Smtp-Source: AK7set9xU2KIgJlNOgTiFPSGyIDxZrRN7izbaKivU4u3vFdXN414uPQ1nYZHLj11rPp3LY9csZGtig==
X-Received: by 2002:a17:906:700f:b0:88d:79df:7cfc with SMTP id n15-20020a170906700f00b0088d79df7cfcmr722073ejj.62.1677830021898;
        Thu, 02 Mar 2023 23:53:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id va26-20020a17090711da00b008e9c79ff14csm667201ejb.96.2023.03.02.23.53.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 23:53:41 -0800 (PST)
Message-ID: <35716c45-d715-df0a-02e1-f36f04a8918e@linaro.org>
Date:   Fri, 3 Mar 2023 08:53:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Cortex-A78C and X1C
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Luca Weiss <luca@z3ntu.xyz>, Iskren Chernev <me@iskren.info>,
        Conor Dooley <conor.dooley@microchip.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230224130759.45579-1-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230224130759.45579-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/02/2023 14:07, Konrad Dybcio wrote:
> Add compatibles for the Cortex-A78C and X1C cores found in some
> recent flagship designs.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

