Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51FDE624580
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 16:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231540AbiKJPTp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 10:19:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbiKJPTZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 10:19:25 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B31F72EF79
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:18:48 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id d6so3835180lfs.10
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eFEEXIDHwjKXLyd70zU5amZbOu4MtludkFNwK7zJs6U=;
        b=fCHogmjHGZ4P12zTb5as/N2A23La+5BnkszxGG7bKiC7+bVY9AZaqZKrk6CnxNLmkQ
         g3XAeSodGULHj9+l3i0lTU1MjKe1O4AD0Rt6LTdLmV5EEZLLmvay7xvAdiGY75fGCmPp
         JEY38zDxhtixPsVzq6IvVSqUenxJe68I7xMkRXhbz0PhfxyMIC9sWbMcDta/lfSBN16v
         my56dh0egNalVt3LfeaWKeXUg+qpsYP6PUYaJicdCl5Za3tdEmvENBU/E4M82lUVHbbw
         8+p6MpfDPn6d8i9SApQcW+IoPA7DquRl5FBcVeJOGq0s/VRxA5snRuz+vpgBlCdRWPPn
         78Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eFEEXIDHwjKXLyd70zU5amZbOu4MtludkFNwK7zJs6U=;
        b=7bwcHlSGFfsieo8gBTxG6Yx1yFdORAL0B5iphDKWdzbPCla5WRinGIShmubEQ2WfBI
         CLIa2UEDxNXtwfF1Z9E/TlU4vBPldMhpbsmgkgQKxkcqF/CpENR5F9h2MnSXRiPwMcjc
         3ourwWgcu5YmEfr/nI6YFmcjN4ePl5dHlhgJzMpmv67hwmw2Aj1CQA2zuFsvFwoY2MoZ
         bXcoJpDTgVbGTphqrjxW+BAWbbFvDjsiQ70rr2tHJ/o1PastgC7LBuhMv+g7G+rYuzbc
         27kOBfNEvhPLcNgk33VDMPvq5V7+I3ZpkE0fVpjCx31LVzcCL65tdS0ESqL6DsWW9wM7
         gNBg==
X-Gm-Message-State: ANoB5pmoVeIXVCYpeU9wdME++J0l0iugTZBsg9Nq3ymrXVY0jYejxwzd
        8CuNBQKH1WjjBDmXtZYqVwrBIA==
X-Google-Smtp-Source: AA0mqf5s3CZi9HZimurexystHtK8Dfa0q3xU/K9pQ5fgCBYdq6uFLSqudJosKqKUqLfGPJ6b5Dz5kg==
X-Received: by 2002:a19:8c1e:0:b0:4aa:c23e:dcb with SMTP id o30-20020a198c1e000000b004aac23e0dcbmr6031010lfd.410.1668093526421;
        Thu, 10 Nov 2022 07:18:46 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id p9-20020a056512234900b004a46f92a15bsm2790589lfu.41.2022.11.10.07.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 07:18:44 -0800 (PST)
Message-ID: <bfa39bcc-ac81-e47b-11f3-5b600a8a5ac3@linaro.org>
Date:   Thu, 10 Nov 2022 16:18:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 1/4] dt-bindings: phy: qcom,*-qmp-ufs-phy: add
 clock-cells property
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
 <20221110151748.795767-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221110151748.795767-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 10/11/2022 16:17, Dmitry Baryshkov wrote:
> Add #clock-cells property to the QMP UFS PHYs to describe them as clock
> providers. The QMP PHY provides rx and tx symbol clocks for the GCC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml     | 3 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

