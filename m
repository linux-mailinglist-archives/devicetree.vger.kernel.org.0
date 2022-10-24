Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22E7860AF53
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 17:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbiJXPoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 11:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbiJXPnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 11:43:52 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A51E9C2C7
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 07:35:31 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id r14so17107347lfm.2
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 07:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2Ef1B72AKv92WqpGmoWgiykPR41P059MtKUSV1dcDg=;
        b=UZLOcBWKiIN/hH5Fs9NPYS3GijO4NAndQrmQRsKbral4tksqPRvrgE9UGfwXtyEgHd
         3MEhNw0FE1tEqcbwLrO6qm28DGlR0ex8Y25o0YdLXVjozxUIM6mADVXyhVDffXNjM9lv
         umVwGtRz8CB+qSE85KNt9vlxDYAygN/Gk/qBPtlwgaI4tha15FV68qcR8G6uzTb6Onyr
         O+MWquMaYfEVxL5hvHPYuix7O3O3YkJNCrizTMHZf8adWGxudjVZrPnHY3a3SN63K7ol
         zIw9OTzDmhPU6yaCrWAgy52h3QMWWWnG8Iy6Kf7gYo87SQBx3Ixq505MUOVCEjfh+O04
         R2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2Ef1B72AKv92WqpGmoWgiykPR41P059MtKUSV1dcDg=;
        b=yqmQAsXbpFFzG3PsIDg7oc+/XvgwzX/cgXJwCuZBkOVhVMdUB7orVWJqq7cc/fRPN2
         FVhX3WCP1lfZTKdPuJGENGxny17CFRUUUzFE/LEfpSte80evks1e9aPGVRUcZAxMlDOh
         UORyATbfCl+JTMNvl/qPacI7c2TynwCXmbf4NMAkDLNsjth8HcaEQTqoZkuzHqLFOWm1
         VmIdAS8fZSe6HVq4T8D29mr1g5ieAefEiK46NNf1/sYim5wNvD+kNDfvBI49MhEzhAVK
         lr7P0vVeIgMsAQW1ee2BA1r7lsFzFm8IyAXUxKuOPo3C5LqRh5GJDHKOe5dNsdJy+vAd
         PWWQ==
X-Gm-Message-State: ACrzQf3Vz2Q5yZt9aeLKOcZ1ihlDe1JEBKJla7GEOOcLh8hDv8j4kq15
        PYtALKql1+DyrsoIGJP5iq58JuNCW0tUBTY7
X-Google-Smtp-Source: AMsMyM5jX7OiDEQDWyvzBEOzsc0vxkYH4NLEKD4zJsJxdaz8GYopiaVKrrXCyW7CktB9D8iJmH3GvA==
X-Received: by 2002:a05:6512:2c88:b0:4a9:4051:79a1 with SMTP id dw8-20020a0565122c8800b004a9405179a1mr3897069lfb.331.1666618277293;
        Mon, 24 Oct 2022 06:31:17 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c24-20020ac244b8000000b004947f8b6266sm4410814lfm.203.2022.10.24.06.31.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:31:16 -0700 (PDT)
Message-ID: <9cb136e3-4028-091e-a298-ff24880f32b6@linaro.org>
Date:   Mon, 24 Oct 2022 16:31:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 05/10] phy: qcom-qmp-ufs: rename PHY ops structure
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-6-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-6-johan+linaro@kernel.org>
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Rename the PHY operation structure so that it has a "phy_ops" suffix and
> move it next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

