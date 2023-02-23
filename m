Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09E986A0513
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:39:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233678AbjBWJjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:39:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234074AbjBWJix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:38:53 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 527F68A68
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:38:47 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id 6so9729463wrb.11
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OFXeQdu1BvGKoHiJNbU2O9S8icll3hblWadgb7bHD+E=;
        b=vNhXHlS3ApRNSrORLnBIWRdZDd5hAkypiUtxn3mpLUgQvygEP/tfvGa7CLExQVawKr
         PTs1igfsa6+6z9Otq+6qVT3ggfOaeTP6tGt0tCNoHcvXG16JvEZoolw9JYsDpzaAkg0p
         1hwQO2Q+dKE9cMnUAs2cRP77NQuth/ll9hbwA9rMbDyD/IxVmKndz7mZkb5tbTNQt5s7
         +8wc/g7JSXgypH+MV6wXOcnKNadV7IDZuVcT/won3zrhKWuzboHkOMTChASr3sE5PZe6
         pIoqdXsVWM+zUi5eZn6kiiEbTHqVjQTn8m2m7u6E7o8Ak/bDJAOoZslgFLrZusMj6ela
         oAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFXeQdu1BvGKoHiJNbU2O9S8icll3hblWadgb7bHD+E=;
        b=xo5TYWd7lmmlKXEPHGVctJjb8tE+5JEg+JnaggSNqv6DQAOZtmLN9PosCYwO3fgP5Y
         OWZH+Nin41SXtUO9oduO+Fxrm6HZdeF3HfvPEbP6CFFintg0LhlXQrnax9sdleGpC2ay
         BJdjHPcCIRz1xysSkkTxMHApywnDbmlp9/1wqusIVgNIzFcNeoqEofP3lXmDeUKZj0nf
         ISu7sEeJxM2gT435uATGcZvMCL4CM3OkXbBA1icicC3f88gNtJKcZ+NaOlp4S7r2ScDk
         VcAjOFJtWg5iYzlNMoZMx1SXDarBec/+c8Xdp07i0061DGp1BYMWMgbq7KpxKGmga1H+
         807g==
X-Gm-Message-State: AO0yUKUQlJAXVY4ZlVsDMwye6aTJ8RWP0Mfm4M5Pxha8ADzzAWkDial7
        F0YC78djsAPTRbyF+k3t4xEmeQ==
X-Google-Smtp-Source: AK7set9gqaKCjbzALxd2/UWUh75UZxujdvrp5nFe8aSnZ1VtSwx7F06uVkt7o4qK3iqYVmRfIpTrrA==
X-Received: by 2002:a05:6000:1b08:b0:2c6:e682:e55c with SMTP id f8-20020a0560001b0800b002c6e682e55cmr9727638wrz.63.1677145125860;
        Thu, 23 Feb 2023 01:38:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c210500b003e00c453447sm10573352wml.48.2023.02.23.01.38.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:38:45 -0800 (PST)
Message-ID: <c80a5e56-a123-a894-5d92-58f4cc36ff08@linaro.org>
Date:   Thu, 23 Feb 2023 10:38:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 04/11] dt-bindings: PCI: qcom-ep: Fix the unit address
 used in example
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-5-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-5-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 16:32, Manivannan Sadhasivam wrote:
> Unit address of PCIe EP node should be 0x1c00000 as it has to match the
> first address specified in the reg property.
> 
> Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

