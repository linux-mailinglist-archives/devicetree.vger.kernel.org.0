Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5976540AF
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 13:06:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235862AbiLVMGT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 07:06:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235867AbiLVMFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 07:05:53 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2C6D46656
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 03:57:31 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p36so2356477lfa.12
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 03:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ybQ4Whpa3SpP761yeHUxG3tM4xYXNTJUdHflhRn7YU=;
        b=zQUQj35lOnAY8gpRut1fU2rTLaWFGfMggPAUapYo/N2I7D13sgT5R5wKR7FDaB/dpj
         kJt3nTSsGyZMPA0F0JgJlNhQcs3hdqqPr2QEVWCd41qX5fsyaeqRrXrtpSlzllfcelgi
         mHYr2Li7g4Y/+ccNMqAhlotkMT4IHXqIH0nOepEP3cqnDnpBZ2757w2A+rw9BxH7XuR0
         a6J825pLQyp7Vxg6DJeeB8s6UZjnk5gLv5Xz06QZsGjAfxV4BdidmbWVeTOsKQRt+to1
         NGHvpUc0oyL8r+/6DmMqwnml3MfQW63FsVNKPuaTlBOLPDbx/QwV1K42ASroe5IihxF2
         Nx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ybQ4Whpa3SpP761yeHUxG3tM4xYXNTJUdHflhRn7YU=;
        b=QPTqoNGuATBpxUbtcQ3gqzyx7eU02I5TxZyB+5+yAJFyXgpLlWwWgrwiBDfvfyM15z
         6bpzR1D2NtTl5PoNETHFB13l/AKv0RJHLPwRGpkJIPOt4KOR5np9mqHNl34Acsv/bCGv
         7yUqElgeKlyJIivKzTuPMLWuh2oYa4kaF0P3Vzdk3+V2y/EdWdUJuKQu6lo9zl58RlW2
         Do3HJGW9s988fS8y24CGhYhu51NbE7Vpcp3POMvhpvLows4g3HLP+pqIRvBUB5mKyg3K
         Ze9GfyPNmFaA+cqaoJYjtAwEjzjLKrDrMQpWgEefFA3psGiETNjTTjCBwSLRYV4rfyXb
         0ARg==
X-Gm-Message-State: AFqh2kpTw5xQxZBoHn9TFZy78GVB0BmcirE4pVJY+Bv5hA+1a53lrMzt
        8PAUsFXWsFkJPmIgEe50nMx1tQ==
X-Google-Smtp-Source: AMrXdXtXval6G4cxnlj44j4xDxigyTVVNLo6CuavcrR8WiAMsxtzmsn7MTcmxS5ivayE002kYlqRVg==
X-Received: by 2002:a19:490f:0:b0:4b6:2bba:923 with SMTP id w15-20020a19490f000000b004b62bba0923mr1412758lfa.11.1671710234800;
        Thu, 22 Dec 2022 03:57:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b11-20020a056512070b00b004a45edc1de2sm45382lfs.239.2022.12.22.03.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 03:57:14 -0800 (PST)
Message-ID: <af21dcff-9bfa-8a12-a307-ff9adbd59f2b@linaro.org>
Date:   Thu, 22 Dec 2022 12:57:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 09/21] dt-bindings: display/msm: Add list of
 mdss-dsi-ctrl compats
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20221220123634.382970-1-bryan.odonoghue@linaro.org>
 <20221220123634.382970-10-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221220123634.382970-10-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2022 13:36, Bryan O'Donoghue wrote:
> Add the list of current compats absent the deprecated qcm2290 to the list
> of dsi compats listed here.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/display/msm/qcom,mdss.yaml          | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 

Is your patchset bisectable? That's second place where it looks like not.

Best regards,
Krzysztof

