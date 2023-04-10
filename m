Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA216DC987
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 18:52:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbjDJQwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 12:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbjDJQwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 12:52:34 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCCCF1BC1
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 09:52:32 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id sg7so25261835ejc.9
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 09:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681145551;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eBs67X9hTZahV0d5thlLTSsdpyjHcz4nvl7+G074hsI=;
        b=R6FF3Mk4AuqNRvUgA2tp9Qp7r7oxi9Ro88Kkze80fE4X1A7J+oDZidRFzIIJMGJMJF
         o9FHxSQEm8H8skEaCy0tYUxJpKErpAnSaTB9VflmajV+LWoe8LT//noZ+w8TpXZ+tG4p
         Gvd6Lt8WrI9BAmxKjtXL8P6p0GrT7qGEY3BFfMwDNNFbNjQ9U1qKNhGp0PcU92TpRpYD
         jCQZNXoCHqcgrDdPVudNWeX+J6QLKirjk2YbfRnvKYyuZ8uobhoP2/fYkktqIvC+MMk2
         PIkK6KFByIQ3ivqjy4Nk/RrEQRCmMg8mrjcMXw2/SQ96K1F/y3cpapk6gcJKJS2yG530
         L0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681145551;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBs67X9hTZahV0d5thlLTSsdpyjHcz4nvl7+G074hsI=;
        b=JezD/LT+CKeodcC+cjhgccUSmp7yfvBguDVmxDBmbnQBueis3ggIV5/Olr1NEjysfR
         5xlynnqu9pRmMF+RRNPHVSU4xVaal1wHA1wxdCjo3M8c0QTeABLymOorP03vf4FBj/EN
         whNPItcNxFcwPYkT5G5e9FyVeu+IGIan/J5XHJDuHpAgJKR9mDa4tzC1ydJt86fIHZz7
         QW0HTUPL3Skc5so1amKV+Ay/Ii4KNPmA3yAeBi8K8tnQwjc3PWa5C80D1DE+Qk1E7WcW
         Ht/LqcxoHPPbyLxpGc3msZ4aAiODW914SKwFP+R1tEg+nly4Aup/ZLH84fpbjUOvW2Sz
         Lj4Q==
X-Gm-Message-State: AAQBX9dtMvHVpsLId4SWSStWGjDsJjaB+oMEjV4mBbQHkWcQ0S/JNXAu
        bFB8KTSwS0KlZM60OP2BPQ89Ow==
X-Google-Smtp-Source: AKy350ZguZqgdbZKMiOGO2jF6+EokSfXRDYG2x5kIv2H/AlfFVrHUXhtcqwNTQA5txtCoJxknPbwEA==
X-Received: by 2002:a17:906:234f:b0:94a:798c:712f with SMTP id m15-20020a170906234f00b0094a798c712fmr4375005eja.49.1681145551413;
        Mon, 10 Apr 2023 09:52:31 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1a6c:6968:e633:48df? ([2a02:810d:15c0:828:1a6c:6968:e633:48df])
        by smtp.gmail.com with ESMTPSA id ck13-20020a170906c44d00b0094a8b47d360sm1179864ejb.177.2023.04.10.09.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 09:52:30 -0700 (PDT)
Message-ID: <81e9f590-4814-3b56-5cbf-8f22fb97275f@linaro.org>
Date:   Mon, 10 Apr 2023 18:52:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 2/4] iterconnect: add clk-based icc provider support
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230408234932.2363302-1-dmitry.baryshkov@linaro.org>
 <20230408234932.2363302-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230408234932.2363302-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2023 01:49, Dmitry Baryshkov wrote:
> For some devices it is useful to export clocks as interconect providers,

typo

> if the clock corresponds to bus bandwidth.
> 
> For example, on MSM8996 the cluster interconnect clock should be scaled
> according to the cluster frequencies. Exporting it as an interconnect
> allows one to properly describe this as the cluster bandwidth
> requirements.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Subject: also typo

Best regards,
Krzysztof

