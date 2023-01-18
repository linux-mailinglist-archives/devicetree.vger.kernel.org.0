Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C69BA671286
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 05:21:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjAREVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 23:21:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjAREVC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 23:21:02 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F333A5421F
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:21:01 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id bk15so22785143ejb.9
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 20:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jwhBr3J/U9ThzXjXZ9tSi8GQCFjSMQIBnPwd5x/QKIY=;
        b=dRGTr0Fn6VsIQtfq3Zm7M/UGuulnXyZrc2SIJAE6aB88i70h1ipbkdrnC809e+oIyr
         Etqy6XSHwucZqNNpMGxrLJwJ8NcLHopf7Qd8DEFTLfkRt7eiEhulr59JF9pQs03xnB4m
         OqNZP1OlfH8WfKnJ+NwuBHIkkEV5Yt5XVr/lGLAKlE9HTjX61uV8pmTZbL2oWRkhegpd
         UKbM29Yv3pbTdlS7UiGagMvoSYgb7eHyUhL19hjA0RbHGw1m0U9fBPsHfsKZefw5N6ch
         R6y3ZRob5tjH46fyNNGLdGYgPXVOnLT9iE+m0MgqZTsR3/7Md2Vi6OAtW35EDkdkuGPh
         VRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jwhBr3J/U9ThzXjXZ9tSi8GQCFjSMQIBnPwd5x/QKIY=;
        b=sY/RpHBpklKAHb+LZK/4dXciTFh6gUH6Wpr81YtcRIoZoBJO6qedmwbYBDI0l6ykPE
         iH0TvZ32ebgs3EgPhT1k9uRHs5kL0s1MF1knbsY5JnhNF/DJ6AP6IQM78vK81zbQANtl
         YQlHLEgRUktcFL6NbhakfwWs5cf7ldf9LcuuVv1jJvAvOyc/kaXBdlFnZOsugN8mg/zk
         RIHNoQEGrHLDMynI/E1uX8W+DNWzIpSf4l+Mwe0ptpc1n3rR7bnISYSQzFF5l/Vv4fY7
         dw/vmz734uvjNSxsLQwXnbmNkrKRnG8BsmbcgbzUyeYlxf73p4kyWHiK2MGZ9fmAovtH
         BaVw==
X-Gm-Message-State: AFqh2kpySY53jT4aMk5fkZSZxxSdZNr773xEpbezXIYGMbwUd2gckeO6
        A77ca+ALsnduvFTlRXTaUoA44Q==
X-Google-Smtp-Source: AMrXdXtItNegkORRqJZIHkpkuzpZh0JDRl4O6E0z8ldy71irGFZ4ANfUbJ69u9wyPRmrIQ3E9Ch/hA==
X-Received: by 2002:a17:906:4a85:b0:84d:2f09:661 with SMTP id x5-20020a1709064a8500b0084d2f090661mr5340273eju.1.1674015660594;
        Tue, 17 Jan 2023 20:21:00 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id b17-20020a1709063cb100b0079e11b8e891sm13870975ejh.125.2023.01.17.20.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:21:00 -0800 (PST)
Message-ID: <f9930af9-93d7-c7e6-c0d2-543b81f77cad@linaro.org>
Date:   Wed, 18 Jan 2023 06:20:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/8] phy: qcom-qmp: pcs: Add v6 register offsets
Content-Language: en-GB
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Johan Hovold <johan@kernel.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-3-abel.vesa@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-3-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 02:53, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
> UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
>   2 files changed, 18 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

