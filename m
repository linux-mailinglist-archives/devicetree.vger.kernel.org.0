Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75C6275F897
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 15:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231867AbjGXNkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 09:40:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231891AbjGXNkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 09:40:00 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F0D71FDF
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 06:37:55 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so5762797a12.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 06:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690205828; x=1690810628;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fxYYSDYA0vOcxcUc1Cpos3Fbh+vKP5JOxboFjD2CYgg=;
        b=Le0F4X+9jmgrHzpS4aogKBOyXRRYUPFetj0fXLJ3NjfjRzlXpu8VEkZ0EvC0rmHbXu
         MJdVdTJnhfE4w89wARa2EC9dPaBlZrxdhNNahQBIJcx6XoEZcfFiVSNBwySIKNo3TOEC
         jqIJOYtfRgoKi/YG+hGZZUWAKAURpEc6Yl4x8Ae32cmCZ5t0oM84YY5SQLaLBiF/8qzE
         FgdYcxIuwCdFAleJAxjex3ZeXMsNz+x9tbIcliRwYTGdBt/EgrR2HGV/qPGBTfY3tmpV
         9LZr1Vkeof7aMOBkYoogDkoqf/6zz9Yvsw8WJcdzb8ks8fGeu+txn3/jUQ/g2Fyy94rl
         Bymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690205828; x=1690810628;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fxYYSDYA0vOcxcUc1Cpos3Fbh+vKP5JOxboFjD2CYgg=;
        b=UXWz2k+clRVhj6dA5fomD80SNwWDJnCJqz37r0eVyPcl1V/+7znPAdD+H0OHSWVvoP
         gx5n0kbV3T2hHZAFl/WWwP8G+sGhUIY4ZUdMh9CNqNuYzrmgSt2Tp/pOjLlZRSnghavx
         85Ev6rQc50Jyk539sMHX1LbRysmbbo80EMdNr5rNBGtzu/4QATbzWdHf0cmq6AaHgxaw
         x132SHuUwXNxtRM5pdX9y1727qKCZNWMHpUk7Tj0DvztVRbRI1pQo3kQe7qWwjdBLq7I
         3fjn3nJ7Dh7twdvOM/huyeF0+iYqw693q8MnFdnbQ3njDDToJ8X+5cMD7QGoh8MHWKWt
         rgxg==
X-Gm-Message-State: ABy/qLbfoErsL3DMsdRSWO6ci31yazZqGmkzSJRdwjpC507e+cs4EKX7
        ORmDb9/Hfu76qqWVc/Whx5RQGQ==
X-Google-Smtp-Source: APBJJlFM/ecxyFQrohbIrR+Dt9S5DHA2ojaLExYPV7SY/3iPoEct/sihiV43gXZNoES9ffmbM2smaA==
X-Received: by 2002:aa7:d411:0:b0:522:21eb:fee5 with SMTP id z17-20020aa7d411000000b0052221ebfee5mr3789938edq.40.1690205828031;
        Mon, 24 Jul 2023 06:37:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id q2-20020a056402032200b0051d9de03516sm6245505edw.52.2023.07.24.06.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 06:37:07 -0700 (PDT)
Message-ID: <e3771434-7429-7a18-ece7-8fa07fc78aed@linaro.org>
Date:   Mon, 24 Jul 2023 15:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: qcom,sm6115-lpass-lpi: add
 SM6115 LPASS TLMM
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230722-topic-6115_lpasstlmm-v2-0-d4883831a858@linaro.org>
 <20230722-topic-6115_lpasstlmm-v2-1-d4883831a858@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230722-topic-6115_lpasstlmm-v2-1-d4883831a858@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/07/2023 13:39, Konrad Dybcio wrote:
> Add bindings for pin controller in SM6115 Low Power Audio SubSystem
> LPASS).
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml     | 135 +++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

