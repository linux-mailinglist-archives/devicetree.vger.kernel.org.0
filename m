Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01D65687F47
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:54:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbjBBNx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:53:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbjBBNxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:53:55 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E06C233C3
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:53:54 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id d14so1762164wrr.9
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x6jPPRzCymygBdtkYK+PVPRo7vQuaUfKjd8hJMNHQBs=;
        b=c9PQ9kV/8Paq3Y3yhbFzRBhrvjoelncuq/NevOVnVfPB6kIwAU3sMzwb8nTaq4ZY1J
         92YonJrjz47xmBSMIpyCebNbH3+krAkk+lZYnzREX2mulIZku5wFqirdHqvSB7bPyqFM
         dvVixQZrlews8F+sKpabikRVbVVe5jtO8t2K4tJpNDTHOfmHYdfhy4u3jNonsN0GYYtT
         y1oLBLbo3uBydgUjf6aK4N9+hbKJel9yOj3qbbwpAH4DDUlRv/5qxvSX3ZQ1RiwxvJvl
         YdVz9onEiMBA/0Z+mgB6piNQfCETSJ7yHrbc4k1lFwtt5V8R6tLo9OoXmwENIXS5NTBS
         Qzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6jPPRzCymygBdtkYK+PVPRo7vQuaUfKjd8hJMNHQBs=;
        b=IyU2Z9NMLmicv0wGFtgkeRvhuCfQmfpODHhscCJmpUBpITK4w4CLEEWUS9eawOL1qW
         RiINJ9EEo6ja8jL4O/+WRZ5inDlukAkSPDGr0DZKvMMGmXK+2QKseix3E+aL2qYiapR6
         o7Pvo11BZiPo9+eReW+iIIufQ94jvsad6xqqrJBvzNpVcpoZZqNtli7oXlaMEjVDDaV6
         xnQpIu3yTIK3w7a/sBPHaKg05SM6wnfxBahHg8fHiX97g8rXNk1Y1S3+GQtKOECexf+U
         v8bMkfUpGdybeBvzdJ7bCTIkWnLNf+/a+OgfRVdJWj9HD5KLA36k8pIhmxKzm2Ihr3E6
         meZA==
X-Gm-Message-State: AO0yUKV5scysY2SNOYyxroctlEfKzoGIrLt2iXQ/K2HLRtVtoVMhIQCj
        r5ZJq6+EROntPAfbNs9siCpOHA==
X-Google-Smtp-Source: AK7set/MPPeZpuw7Mk30vtkJlm8zPLV7xBjKZzvi3W5HtgEcuaIs0nclq0JE/8HvZTbi7b+P8nYJPA==
X-Received: by 2002:a5d:67cd:0:b0:2bf:b0e6:f463 with SMTP id n13-20020a5d67cd000000b002bfb0e6f463mr4661026wrw.13.1675346032814;
        Thu, 02 Feb 2023 05:53:52 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n5-20020a5d4c45000000b002be4ff0c917sm19874807wrt.84.2023.02.02.05.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 05:53:52 -0800 (PST)
Message-ID: <32c23da1-45f0-82a4-362d-ae5c06660e20@linaro.org>
Date:   Thu, 2 Feb 2023 14:53:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v8 5/9] dt-bindings: qcom-qce: document clocks and
 clock-names as optional
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
 <20230202135036.2635376-6-vladimir.zapolskiy@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202135036.2635376-6-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 14:50, Vladimir Zapolskiy wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> On certain Snapdragon processors, the crypto engine clocks are enabled by
> default by security firmware.

Then probably we should not require them only on these variants.

Best regards,
Krzysztof

