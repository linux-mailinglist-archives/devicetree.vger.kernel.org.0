Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB2546107A3
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 04:09:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235291AbiJ1CJ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 22:09:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235252AbiJ1CJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 22:09:56 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F07D30555
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:09:54 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id o2so2619608qkk.10
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 19:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9jNJ5gOLssvCtUC1P5RUZaaZppmGVFIyqlwWASYBtXQ=;
        b=bCtABFgHMifCesxcGWQZdPCTWQcA3y4oG4YgukH0ljbdjbLLPX7CwURykfEbBel5vE
         tF8uZubpBMW3VurhcJMKhPxXGMtCG4/qBW4ysU0fj08VQelK6YzOBaBcZthUcjBNUpWY
         oGu13YRR/IbD4ZGH1zITOWJ7SJmrJNpWOjRCzBo+cnhEis4iRo5xaEq+L4TdW/qL88Pn
         K53cApjLbrB0bAsiOxFR705sFxXeYbGIbW8QOfVpDQ9fANJw5gzzZkhG7SDri8JEYLSj
         tDnDzpgLs1MCHyi3vTk7yW3OTYhtDfONHCevq8fTtnprvvKOjgQTfiP5a3N62nhHz90v
         lKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9jNJ5gOLssvCtUC1P5RUZaaZppmGVFIyqlwWASYBtXQ=;
        b=ve58btn3iz7CIqfXFHr7CPXaVLcK+DmpeM8ZAY3iL4OK9Pk1ztCxVcyMipy0eTAByk
         hl0DmbwAHE64V8kwfU46KAzhTHpmui4exzkCfq1nZn0D9hJto20m5WafjBQpTIG8WHDq
         ICIKIAQMulrO4OjbpYXTmOw5qH0CkgJgk6iczhkyTncf6myYULa/Wu7zw6c2O1xSbljw
         a87ZYkw5xJ0Wh520UdxqZNkF2WY3TA1QtCjT/VqCpJ38DABcIul4FODaQ9ExAeqsJj8Z
         GGaeROpucc9sTuhj7UnKou8xrw0TNhxwsDr/XV1sy89MYLVPdccQ/SaP/LYGH8cidwUq
         YCLA==
X-Gm-Message-State: ACrzQf143Im9TduFmdhNq/iXSEUcztERcvvH6YhbOt7LmwM1sgz3LM+t
        +YbOEYXK598btM4kadKiEODmbw==
X-Google-Smtp-Source: AMsMyM4qjbXnWs4itU5ETbByGpSQukQHpsIH9pz8x+xIboSz3IUDYw/PyRUwdINHbb33IsO1DKG7AA==
X-Received: by 2002:a05:620a:bc2:b0:6cf:468e:b8ce with SMTP id s2-20020a05620a0bc200b006cf468eb8cemr35944988qki.699.1666922993832;
        Thu, 27 Oct 2022 19:09:53 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w8-20020a05620a424800b006ed30a8fb21sm2096915qko.76.2022.10.27.19.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:09:53 -0700 (PDT)
Message-ID: <be3d4533-5f4e-d93e-dfec-1eaa1c7c4c8b@linaro.org>
Date:   Thu, 27 Oct 2022 22:09:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 07/10] dt-bindings: phy: qcom,qmp-ufs: rename current
 bindings
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-8-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024090041.19574-8-johan+linaro@kernel.org>
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

On 24/10/2022 05:00, Johan Hovold wrote:
> The current QMP UFS PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.
> 
> The QMP UFS PHY block only provide a single PHY and the remnant child
> node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers.
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current bindings after MSM8996 and
> add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

