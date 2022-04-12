Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C6FE4FDC81
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 13:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234194AbiDLKbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379597AbiDLKTp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 06:19:45 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD2D1B27
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:22:42 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id t25so8928726edt.9
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bZb78c0Dkr90FauEaWEqBXjjhU7NexeivXh5gp2UwLs=;
        b=nJd5sbCAd9J/o4YopB04i0kUvmA/FYRwp4TZLvMSdd/djfBJC5mEQo1zlTxMl6u561
         pb4/lYc1Od+ESsT6Y6OMh/rLitkI/mrPRe0d0+2qyvyLqP6G2HsMjWsJfY9VzjfbD7fi
         e17tMN2ldkGal1+yNOHeGymcmPXUVAfyjHvrmroqXTUjZGCy5zRFhLwzqs9uaX40rOGM
         p5JAxjE0PPDtWF+Z0eGgO2NzfHkJmoVt2Ofv2qpQ1F1dW0Ymhy/Yi+RrnKMFKLCaP0MK
         cTdhydh3xM3FOIyWbU6UTkTduoy9WnyqbxdejqVdrVHeg7B3cK4UJt22c4HLb5864Uss
         Uc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bZb78c0Dkr90FauEaWEqBXjjhU7NexeivXh5gp2UwLs=;
        b=rqd7irjI/W2edWrP+N93TM6m70nusGL42PBvKxg9FZgwDTf/zUHfOStZuTWUMW6DQN
         dXu5NDP38Gm+wXwAOsrtoC0Bh3unJUhsic10xNR37RuQ2mkMDidRsxCzwToa3cjR8/qg
         NxXRYhZovHZhaBmCItNtPYwu77M/ZGPlnDCHIv1/RKp19lWNUlMVYRXB8Gn629C8xNas
         V+jSPJu81cDfvoSIb5qFqDuO8DXqJUhxGGmNHl8Nv72kzm006ULauJHQ2Z7YikFN8FuY
         15pfFF9yUZcCCfskC7V9Z7Y3u0a7ws+kjrF8CfS4ZYvFRl4YTky27wMIAXq3wFX7MFYO
         qmOQ==
X-Gm-Message-State: AOAM530/40XHso6rv1hSMhXlAMlCMRdXkkw5QohhJR3b82/XWN8o/rpx
        yATan/a3LqvXTp7CJOdtgGvkew==
X-Google-Smtp-Source: ABdhPJzjntVBw7ZPan1uIuGYH95xd+2RtjqZ63AcS1EbLEPJuhLy8PiF9590Xuzc4M4jj0o/LN+tCQ==
X-Received: by 2002:a50:9eaa:0:b0:418:f708:f59c with SMTP id a39-20020a509eaa000000b00418f708f59cmr37146046edf.333.1649755361419;
        Tue, 12 Apr 2022 02:22:41 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id f4-20020a170906c08400b006e82dbd3f6esm6260961ejz.116.2022.04.12.02.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 02:22:40 -0700 (PDT)
Message-ID: <7e1e6c10-c02a-c8da-44c0-ba3abef1950e@linaro.org>
Date:   Tue, 12 Apr 2022 11:22:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: Add Qualcomm SDX65 DT
 bindings
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, djakov@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1649740053-14507-1-git-send-email-quic_rohiagar@quicinc.com>
 <1649740053-14507-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1649740053-14507-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 07:07, Rohit Agarwal wrote:
> Add interconnect IDs for Qualcomm SDX65 platform.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

(...)

> diff --git a/include/dt-bindings/interconnect/qcom,sdx65.h b/include/dt-bindings/interconnect/qcom,sdx65.h
> new file mode 100644
> index 0000000..8d02c79
> --- /dev/null
> +++ b/include/dt-bindings/interconnect/qcom,sdx65.h
> @@ -0,0 +1,67 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

Is it possible to license it the same as bindings (GPL-2.0 OR BSD-2-Clause)?

Best regards,
Krzysztof
