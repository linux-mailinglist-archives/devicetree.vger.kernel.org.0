Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADE66F3DFE
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 08:58:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233468AbjEBG6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 02:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233561AbjEBG6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 02:58:10 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE88840ED
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 23:58:06 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50bc040c7b8so3951131a12.2
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 23:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683010685; x=1685602685;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6m9RHcIPcK/mHhABU/sY7MA/NMPTV0i7puXCnV2P8jM=;
        b=AnHYGyl9itgQMEjkltPT+i4Jr7vO/8WkLQF7cmothsCUHAG91C5ouOsC5STPn8IJxU
         eNuVB4xjBgKpICryps4QKnXzm3qarOOPMlFDqmtf/MU3OQIPRjVgV8RhKbqIAZQTTP2X
         jNbM7sEbvHl1w1y1aaXGe7GHcVfzSqc0TlW1lGjL9xMie09vWLHOrX+bJrJR6kUe08Tj
         1LXyQStByajEQPqUf5wMOBioM7pk7l8TrlZ/ZFrBmg6fjbP2H2OIVI8xu3mDAFP2zE3d
         W7X+kC/JQwOgw516x8dJpmZKpHWV3pAFbX4EcUQKh1O4nexdEKmHMUk1kCkL7FNYJ8zo
         Mvdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683010685; x=1685602685;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6m9RHcIPcK/mHhABU/sY7MA/NMPTV0i7puXCnV2P8jM=;
        b=McdGmtdHkay+Qe3sjHXoH4hWFRMsgquXJQx2Yko9dvc1Ov/+OtUgj8p74Q8KKBEIu3
         tI+H6kpj23+j2CbbdqBMdVEmWpzrlUNMgbUkkzF7bbXeFIVH7yWGKDYuJIDNfuCu4BeS
         X1BT6tUoBeaULN2rXKYj/xsyECTh3vXcB8TIJjHizKDmbAjBEKgnIFa3HC3/j23djBX+
         I1yBZ2dXwWzcwCH1aBPOx43FTkXMWYJQN+70X7q8BcP1SnTfs8j7Vvy5Or57F2ScwRZM
         vON5EiYwbpsR8NMrXc/tl1Q5jwvaeLDYb0Hhs66F49wlU9r2L7Xy5uTbc3MvMrYcF7iC
         4M5Q==
X-Gm-Message-State: AC+VfDzjI/whPrJO0RoqjdfBs074PnJ39LqxBGT0k1j+GMLJR/KPFrHT
        RZ5lM7soDU6+9CGutlIX6UwZmg==
X-Google-Smtp-Source: ACHHUZ5r3ZjPDDTyDDUni0Wh82eRaJzFkTRcqEvQUQEebLKQ4oCLeeRw1bsL3dNlISDXnD99fP7LoA==
X-Received: by 2002:a17:906:fd84:b0:94e:d72b:d10c with SMTP id xa4-20020a170906fd8400b0094ed72bd10cmr17096058ejb.40.1683010684997;
        Mon, 01 May 2023 23:58:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id rv13-20020a1709068d0d00b0095952f1b1b7sm11918971ejc.201.2023.05.01.23.58.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 23:58:04 -0700 (PDT)
Message-ID: <1c66d8a1-b4a9-1127-7884-5c36ea03b1b0@linaro.org>
Date:   Tue, 2 May 2023 08:58:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 01/10] dt-bindings: clock: qcom,lcc.yaml: describe clocks
 for lcc,qcom-mdm9615
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
 <20230501203401.41393-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501203401.41393-2-dmitry.baryshkov@linaro.org>
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
> Describe parent clocks used by the LCC on the MDM9615 platform. It is
> the list as the one for msm8960/apq8064, with only difference being
> pxo/cxo replacement.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

