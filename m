Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC7156F3E1D
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 09:05:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233640AbjEBHFO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 03:05:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233610AbjEBHFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 03:05:08 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B448B49F6
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 00:05:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-953343581a4so514871966b.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 00:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683011105; x=1685603105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L51EizQC2zCWZYATlatpVUpNqpK8pQtdGLE44zI48wo=;
        b=EQJI6zRs3pAfQDf/7lSLopw96S1ujOqVNDMRNdEsvQtdkxm8j0TmgoRvAsO93wUTAM
         QCBWu6cgGRwTRFghmt0r4s1Ruyuu4KoRBrcF1ataNmprYQs5lCv7L38EuJY/Pn8job7I
         xX87snBk8G2IiShy+Q+XxIE+r5SKEjH9ug0lzxYb2zaRpW0rFWZVthpot0gyjV9zDBUG
         4N0F5VcCrGw2Dd9BxMNh2Yn8lN3B1/OlDfxL9Q2IfsstW2XxBy5GG2KtR3L4n9fLQGGe
         0nUg+ErHjOE4ocmx7ujuKXSVEJxMzafSTsV0K+4jQlsfQh1WOGOBAY9qu4ZNwf5jzItd
         crbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683011105; x=1685603105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L51EizQC2zCWZYATlatpVUpNqpK8pQtdGLE44zI48wo=;
        b=DE/sFP15Ya5wBWu48xWq7AM/cYkFN0leVtTkpVk78LQxfN+5Ibsy3pzVUFFaJwPtjK
         R99p+OPShBnNlz2L7C5ER4PhgcaXfNhyPC5VG2tg/ywYLPhSGL45iKE1n+TSU6R7MEqL
         snsvHpyvRlSvrCkxbJfU+xVfUMpvuF8JNO7We1n6ESIkw2KcEi8hFLbwtU6U5Qk7gQi0
         Pifx15VCUB7EvnIAe4aIu6hdoTffZY75UAz/CyMq57hO2DYeaRL8s2eehgLNRERBTmY7
         MQfB5Qr1KfGmGHSlplQfOjBzWpjn9uT19GGNZSdtBPojwNVHmFkaj4QE98nICnld4+Cy
         YzZQ==
X-Gm-Message-State: AC+VfDzXfCixw4Qa4uA4GPvTh1KcASTL8fBVDZd5XhoSa38BRC/2Vxf4
        XvFO9628+PVq3rd9tPIcl0WFvA==
X-Google-Smtp-Source: ACHHUZ7CVJTGcPdEy1k95ZcsIWZuDKMC0m72NOp1oJscMMQSrXzv7qrGJEOHhnhtX5PfuLE2VW2Q0g==
X-Received: by 2002:a17:906:7307:b0:94e:e5fe:b54f with SMTP id di7-20020a170906730700b0094ee5feb54fmr16353459ejc.23.1683011105210;
        Tue, 02 May 2023 00:05:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id t25-20020a17090616d900b009534603453dsm15520709ejd.131.2023.05.02.00.05.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 00:05:04 -0700 (PDT)
Message-ID: <d280b9c3-7d91-1a1a-0634-a4a079f0ef9e@linaro.org>
Date:   Tue, 2 May 2023 09:05:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 02/10] dt-bindings: clock: drop qcom,lcc-mdm9615 header
 file
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230501203401.41393-1-dmitry.baryshkov@linaro.org>
 <20230501203401.41393-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501203401.41393-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 22:33, Dmitry Baryshkov wrote:
> The header file for qcom,lcc-mdm9615 and qcom,lcc-msm8960 is the same
> (as well as the drivers). Drop the qcom,lcc-mdm9615.h in favour of
> qcom,lcc-msm8960.h



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

