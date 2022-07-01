Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDECD562E3A
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 10:30:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236338AbiGAIaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 04:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236359AbiGAIaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 04:30:10 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4476870ADF
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 01:29:58 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id lw20so2720391ejb.4
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 01:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=W2JBG9IMgo5iuUpGjo0Ma0emVBYFSehxFIdcsMEXUdA=;
        b=arFQqYu6F88L3CXLHaovq6nC8iPoIB5p/cUlMA41dv82tviQib8TEVgLwkCk5Oyu5M
         O2nhQgu0phboN7L+EY4ZSPWK7by9eue8AdroQbTlVFfK34VGzZtIsT5FhmxfB1z2REgC
         2TxfH0ogXBYtzT1QoRTuJThP+EktiC9LGj6rhgFfQMPPAossEMyTL3ofHZY+lNP9HkQR
         boptAY61H7EZd0f7mJlPhkpha3bZzBPm8Xl/yKKijjUYLdHES4yXURuUAbQ+KkdD8HJ3
         3mJVoHQAjtNw/3XQmf1tSMvI22n3zAy8DTuGDhGXdYjiXw+kacaTQTm10pQxKR0XOHtD
         eNYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=W2JBG9IMgo5iuUpGjo0Ma0emVBYFSehxFIdcsMEXUdA=;
        b=jbrO//CSNptHEZcyCzrnKglkarxoCVeeA+K4Rsy9txNa6nsn2RBfxOdYIIx3bUtYCT
         Gw/D05HLAQMEQZen1tXq8RI6B37BJsPYiIzSc/yCJWfpUc9MowTl247kmuqB05cmFVR9
         ziIY3+pkQNZySaYTiAQo/pIefgcuu8mHrz4hehNATIjvGpb4cQdtvELmVvJNSRYzacQC
         kZkKxQaWYwwp6jgjCbjHuPBFGGcopII/J7a5YQzxcYjRrorXxhPy2/yHg9SmZEI05zRH
         RgF4jteYevYAJtt1B+LSQHsnvwFt4wWBU/ibrcCKPUxmyxgSR3fnpuJ+m2kwYKWXjU4x
         ByHw==
X-Gm-Message-State: AJIora/9mbrMh02g+5sko8XQwPpyc+moT21xqte10bqUGJqN3Nlz51R8
        sTbF3d2kEqEcuJ19Zt0MoaMs7g==
X-Google-Smtp-Source: AGRyM1vv2YExw/cf6QKoCypS6wU8W0tcFVHArFOydF7PZL2zFGDhvteLzs9veunwCivobmZcttE8wQ==
X-Received: by 2002:a17:906:dc8f:b0:725:28d1:422d with SMTP id cs15-20020a170906dc8f00b0072528d1422dmr12676225ejc.131.1656664196827;
        Fri, 01 Jul 2022 01:29:56 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v10-20020a1709063bca00b00706e8ac43b8sm10100208ejf.199.2022.07.01.01.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jul 2022 01:29:56 -0700 (PDT)
Message-ID: <9115208b-23c9-0741-2fe0-9e833800375a@linaro.org>
Date:   Fri, 1 Jul 2022 10:29:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 02/10] dt-bindings: PCI: qcom: Fix msi-interrupt
 conditional
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220629141000.18111-1-johan+linaro@kernel.org>
 <20220629141000.18111-3-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629141000.18111-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/06/2022 16:09, Johan Hovold wrote:
> Fix the msi-interrupt conditional which always evaluated to false due to
> a misspelled property name ("compatibles" in plural).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
