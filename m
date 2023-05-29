Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCE98714A69
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 15:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjE2Nds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 09:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbjE2Nds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 09:33:48 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73D90A8
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:33:46 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-30aa1eb95a0so3235112f8f.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685367225; x=1687959225;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kKjeZ9uWZpFJl50OxFn7ik8Z2szMhNLlLHOEtyPm94s=;
        b=stBNw7AltCQUYoqJgWVFrJOeaDV9maNJtPLlWQnldKrOWZv2Nxbumb7D3z/uiFonON
         wT42P6RVA4hB3o3z/GnS3v6+yfSHYrstAL+IU43EgNIef+u4eMwOf+PFk+voUkK5F5Pv
         CzuDPrPplreoX9mSgYSfOTJnMoqsnsmAW7JqCDaiZF5XpGRRLxzoh5Wdf+ZhXLZVsYcG
         dfpK58Gx5W/Ctf2MZOOyZSdTCum/gVSlCgKpasLQ/KRq0qXkuj59mWqHHy2aM/GCicqp
         tx1wpe2PuKKN10BXimDT0NR5EZumc0pOIgEiWR9d70Y/z2pq2SiUiqUMp1X3tlesJu9f
         cO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685367225; x=1687959225;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKjeZ9uWZpFJl50OxFn7ik8Z2szMhNLlLHOEtyPm94s=;
        b=OhOCRAAaPzWBCf3rjoJ3j0qOR4aOxk3c0HNpNl5fpc+Y/w/hqIbY1vhraW+o8pWF65
         cjP27GUHGhZNkYdk01qk1IMCrg2KUxfFfkHaRZ8szRwru1KjY+r1mlUDDmHcZXP86Hm7
         nXsCEptASI4nItIbCdnb+6NT/3XXTp+1Z9ZVRZnb8zmIhCShkLu5oS8Z0GqKT/ayKEcr
         9K78edvohNDRTrZ7apE7LS/zVC+AvD/POe+k9ixAWRrRCbJ2ZBOK+rWjh+FIVnrMrpHa
         o6KwQPNTyamIcu6wAzYmjopMH8LWLxGgEiNdjbnHKffqQyhySTho/x2mDKtjBzEJickj
         sI3g==
X-Gm-Message-State: AC+VfDyaSxyb5xfSc0t91FBYpz7WENx+Dyg2gFlAn4nCg2bhcd8QIlwt
        A+UYCKvBttteSitYHQRR3jEhDQ==
X-Google-Smtp-Source: ACHHUZ4jqVCnat5uWmipdZ8OcpOUBP/lfEJ8AQfd+QaySpUcZRhO+AFd0EEAmybM21Rr+4h+wkdiIQ==
X-Received: by 2002:adf:d086:0:b0:30a:e7b6:52d6 with SMTP id y6-20020adfd086000000b0030ae7b652d6mr4314364wrh.52.1685367224935;
        Mon, 29 May 2023 06:33:44 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id y4-20020adfd084000000b0030abe7c36b1sm13780385wrh.93.2023.05.29.06.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 06:33:44 -0700 (PDT)
Message-ID: <6f1954e6-e98d-6911-8721-c50082bfb1d7@linaro.org>
Date:   Mon, 29 May 2023 14:33:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/6] arm64: dts: qcom: msm8916/39: Clean up MDSS labels
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230525-msm8916-labels-v1-0-bec0f5fb46fb@gerhold.net>
 <20230525-msm8916-labels-v1-4-bec0f5fb46fb@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230525-msm8916-labels-v1-4-bec0f5fb46fb@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2023 13:47, Stephan Gerhold wrote:
> Right now MDSS related definitions cannot be properly grouped together
> in board DTs because the labels do not use consistent prefixes. The DSI
> PHY label is particularly weird because the DSI number is at the end
> (&dsi_phy0) while DSI itself is called &dsi0.
> 
> Follow the example of more recent SoCs and give all the MDSS related
> nodes a consistent label that allows proper grouping.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---

You should probably churn the yaml that goes with this..

---
bod

