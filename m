Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D025D6ABF32
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 13:11:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjCFMLV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 07:11:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjCFMLV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 07:11:21 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDD4D1DB86
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 04:11:19 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id i34so37557356eda.7
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 04:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678104678;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dXXDv20oyIhFDtsn9uklD9c0zy8fR1z46fgL4x2Jxss=;
        b=wxJIF7g78D64zgpqvEfsgdLluKGUIF/zdeI93/iv7RlNvV9WkHrhYmLOXsl1n4QiEG
         NkwhwNmGxrJ4pk5NU7CYEnxcwiVPVgQmGuvM+hMdKOhTmLX5T+xCUD2G3S0LUbjUB4+h
         ml+DtRbsZTKZk4R9/+Jjg8VnrNC9ycwVswuYea3Np06WBqpvjktvWcsKmY4qXYNzhF0a
         cVA3Itsje1C7UaSSvSfjd1xbWR5bYIC5nlZPAHskN3JSs/Y4pX5odt25aPyVpNSr0APN
         xi7/HziJK2O5SRpD8WatJwh7Tl3O/Cs9Nq3xRZRbF3++/gsrN3PZdPma2/8xpUwiMIBP
         yUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678104678;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXXDv20oyIhFDtsn9uklD9c0zy8fR1z46fgL4x2Jxss=;
        b=JJTVgwZ3mvEy2F8wUv3lWg7SnyQo2cl6/Q/mpwtFmbctB7kfDg7NdlJ62yJKzylmyT
         8DetdCKayYfdFFV1UdAsXx8aKHkoYmgAiycREnZfn6bBXuvFy9SlG/l7wEuBM687m8kw
         xjYqIOYn19ZBQut+xL3CTjaQcBdWV7+kUi8toPNGj5GzwtMr1YTmGjGiwda0WlN0o1Cc
         QfKtxTb2Pw9bx4Gi30UJDSAl6CsmEi/XTJCfGtsb3nm2LG38jMOYOAvNLEXFeP9emZ72
         5W7jukYY/7iYsYZZMPQlVLGrkr3qJeCHD1ujXNX//JzbchusTGSo5xJtJJ3blZvmfoUr
         lTdw==
X-Gm-Message-State: AO0yUKVzrRTAYC1luJSHcyU4zWq2IN2EpXqMU3p2aeNy9FHsL3fM52iq
        ZTcM5KZEPYCD7mSTFinzXvNwMA==
X-Google-Smtp-Source: AK7set+GU4fNOIsRhOI6jqzg9s/8MOc2CKjbbixF+E7Ssdt+X7llMyzpDfa8nJ7SCAXWvtmieBwuwQ==
X-Received: by 2002:a17:906:1604:b0:8ef:fd8:9d04 with SMTP id m4-20020a170906160400b008ef0fd89d04mr9781846ejd.27.1678104678318;
        Mon, 06 Mar 2023 04:11:18 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:d85d:5a4b:9830:fcfe? ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ku17-20020a170907789100b008def483cf79sm4437909ejc.168.2023.03.06.04.11.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 04:11:17 -0800 (PST)
Message-ID: <518fd95b-4b8c-108b-8525-4ffd093380f0@linaro.org>
Date:   Mon, 6 Mar 2023 13:11:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: mfd: qcom-spmi-pmic: add pm8450 entry
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230306112129.3687744-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306112129.3687744-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2023 12:21, Dmitry Baryshkov wrote:
> Add bindings for the PM8450 PMIC (qcom,pm8450).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

https://lore.kernel.org/all/20221217003349.546852-2-dmitry.baryshkov@linaro.org/

Keep changelog and tags.

Best regards,
Krzysztof

