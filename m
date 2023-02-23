Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDD666A0500
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:36:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232110AbjBWJgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:36:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233336AbjBWJgi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:36:38 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC7B5515CA
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:36:14 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id v3so10052882wrp.2
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+c3O+JKb+ygyDEtjXcAkTDQCL5lhMHIdEFdwOPkUzM=;
        b=GJAvOM7vT6y+dpNnUBSXR8Ebltv2bQljUUOjeCVhH+BHrudJbK6t3LP+tnTTJyVur7
         S/W8Iuh4ID/TlBggamOu7aFWsNu2AMd3kK5xLMgYsbr9G/hGMCNh4kAF0htl8p4FtDpc
         kliFUM4kqlARQ+W5qLa649a6zqvToo665hF/E0ErCtfI1V1WSv4OnuuHaxvm/RvVF3BC
         o4gk8RuiYnYyTs4yd0Z8n1BOs2onAiZBqpj3LT1HBFN1vIQOZARwLGmGLToZajHrkgPQ
         B5Kl01grWp/Y1cWhljIkZMdMPpUuABL61kL/hYXukh5zJN6H7NQnzHQ20N8QpSykhAqT
         L5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+c3O+JKb+ygyDEtjXcAkTDQCL5lhMHIdEFdwOPkUzM=;
        b=6BBdZ0VrvMfGeQue6qMFI/MY2u93tMpqkjOuIEa4ynOc/VnsRssIEIYxLuolwl8R9p
         6scn4vw2O+C5tGj7xdN4mti+F9r0saTOYUPDI9GsM5+wb0AD6C63juwiLU1CcnOBpK9+
         ZDiM70h9YOe5JBMcUk8WwhlsuudYoS04EWH/kGvozVZQ2RPpjYdRu2zgTpQnwgQWu0oz
         ZUavDG+1Ubb/HjdruGEU1g0WLDPd2CCKepdF1d1LmpbzSnw3sV6vYmrtg6wJ7pzS5Uwz
         ruoQe9IAdYioZv7faZo4GjHy4b6QaLlGetZDLOrhOHf6nRYSxpqgEy58sfXM3bs9SY+I
         LeVA==
X-Gm-Message-State: AO0yUKURPdLsMCC+HGHj2UIQnWC6NTFX1fKAE89wkyq8QqKHM+bHu1jT
        GH+8oV98ZIwX1KWNem95LmOBag==
X-Google-Smtp-Source: AK7set8QN3z8iyphsQHHkmevnZI5JlReWkBkgbZdtR+/J74U1LMkYhlHUOO2fryJAU1hiUfczkXfHA==
X-Received: by 2002:a5d:6a04:0:b0:2c3:db98:3e87 with SMTP id m4-20020a5d6a04000000b002c3db983e87mr11353074wru.20.1677144965983;
        Thu, 23 Feb 2023 01:36:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c500a00b003ea57808179sm1577581wmr.38.2023.02.23.01.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:36:05 -0800 (PST)
Message-ID: <4e2ea3e3-8a5d-0e9f-f16a-acedacc99b95@linaro.org>
Date:   Thu, 23 Feb 2023 10:36:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 01/11] dt-bindings: PCI: qcom: Update maintainers entry
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-2-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222153251.254492-2-manivannan.sadhasivam@linaro.org>
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
> Stan is no longer working with MMSOL and expressed his interest to not
> continue maintaining Qcom PCIe driver. Since I took over the driver
> maintainership, I'm stepping in to maintain the binding also.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

