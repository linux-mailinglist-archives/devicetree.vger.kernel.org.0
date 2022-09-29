Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E557B5EEFB4
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 09:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235151AbiI2HvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 03:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234574AbiI2Hu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 03:50:56 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5650DDDA6
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 00:50:54 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bu25so1040984lfb.3
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 00:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=YX0kQnHqLRgLj/fiiwZ+dmeDEJEDv1t27HAEZZLrNIU=;
        b=ubf1m+Rzi5cAXDE2XxYIV+4rOeItCeCC0DjBy+XiZ400769lnYYIm6t4tSaZaYQT9n
         0lF7zzyv4yD4g3/kC1vXVjHMOm0MDQrzGEtDdpLmb9jDQM3QUYOGvQPgWBbiMOD9vbVp
         ZzHDWYuiBw/gKOkH3jXKzycahc+/n5+1nXdmg0Go3s0fTaNNUf3kgq/c3p+mQ2GX2nJ0
         T+rcgGkEiPRP+Z1G1FDdAv8J2cMKmmkV7JPvVIziDkq2sW+oFs/iokosuNYdyJBpZ5ny
         gA0YuU5A7XjhCxJSfpjr6UCrm2S8AYR5/T+yfXU2BvbRZvLg7sUs0eZIrtEQKmo43SJ9
         7M5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=YX0kQnHqLRgLj/fiiwZ+dmeDEJEDv1t27HAEZZLrNIU=;
        b=sNwC78g05BrlJeIIpvs7syhrjnuhuBMXlr+rd8tTWeg69Xji8NDAQcY8YeGu7G+XQD
         OED4NGVG0lcn86FkPWfPwEVmT8+7P2pXFJ+hyUhQvvxy6TBJU3L6kc+/fy4AN7zWpHAc
         ycLhCheoINKz1E9Ecaik1FSiLefh4ShPACjBPKZ0c3Chdw3QAEHi+fgjXRh130cIguJP
         ejAMKJ2dsmLwouBevFVKgOdERgRLWTjaP5StdqXroh+n185h5aVC1mLvzO9CuPTU3vnA
         yFLpUqtzm63udLAe6I0e0dSN+HR2P+z5JPupV/60g8shtAheRkJ8Ycl3Ekhl348HgcyL
         bqdw==
X-Gm-Message-State: ACrzQf0BzzzEwRFbovsDQv/9fI7Cu1/Qvm5KwTcZmPD4AjXWHhlC2m64
        eN+uibEeefpX+PemTBYMDlpCRQ==
X-Google-Smtp-Source: AMsMyM7BYOHtd7mxGcjnCOWk4cIBLCmGQV4bivGPxpKFkg+2q7CMfyM6h9uuG4zBCYsOpo5UIx/JBw==
X-Received: by 2002:a05:6512:2212:b0:49a:3b51:e03c with SMTP id h18-20020a056512221200b0049a3b51e03cmr771411lfu.509.1664437853227;
        Thu, 29 Sep 2022 00:50:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e30-20020a2e501e000000b00261b175f9c4sm633775ljb.37.2022.09.29.00.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 00:50:52 -0700 (PDT)
Message-ID: <07a62d5a-1241-982b-74ca-04ebadfc9f38@linaro.org>
Date:   Thu, 29 Sep 2022 09:50:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280
Content-Language: en-US
To:     Krishna Kurapati <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1664435628-4011-1-git-send-email-quic_kriskura@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1664435628-4011-1-git-send-email-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 09:13, Krishna Kurapati wrote:
> Override the SNPS Phy tuning parameters for SC7280 devices. These
> values are common for both trogdor and herobrine variants.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

