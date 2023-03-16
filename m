Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A92306BC70F
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:29:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbjCPH3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:29:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbjCPH3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:29:36 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36941474E6
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:29:35 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id x13so3932815edd.1
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678951773;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sNHvLdfPQSLtvNGmegGty11Dftxh8OHJANkS0C2FCiY=;
        b=jBFM0AVS6iHUDOyWT5MEI2WZjXEBmWJ5qVrgcdb8BrTuW3DrfFZQvMsgbTNMsXClMy
         yrDtQDfsHZWSXMamxbIVreRPovxGlbR1YPEGyiAm7zF9eikavPGAVdtme3Di7Lf1wGl+
         6031X19CKca3bLCaWU187chO4v3VupVQPzKNFmL+sT/45gKL/gvtPFcswfCupybmH5A+
         whxW+/P8tTRUQ5Q+BSI+hjVAfr+dYM5VHWjH9LdByURgZ4UbJN3Vr84coq5yawh8vp9l
         hT/TeO6KNTKBSFDECnaD3J2NRJPSsJcymL3v+rC/zb2rAvebLrt3pr0Rl3oH9Qu+XPYc
         glVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678951773;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sNHvLdfPQSLtvNGmegGty11Dftxh8OHJANkS0C2FCiY=;
        b=PTKM+MwMTkSwyGTa/0YnUbz4Q11Pug95/EtBVltHxdIetlwZ6I+FTRRWhhEXPxzmMr
         UAXEjz3TL8kHMNi7gwedPnZna44QQFf07sCIK96LvwWUVevpc3hikHbgFPfzzwoj7jhs
         FvUuh+Etv3Z8WrTK0z3HaRft2UpHOTrnse56kHicnDqKSFE6U9Cr7TJ6VYDYsInbk/5y
         AZAKqJIbmMQ8rhTGm7xKxmcC+LePV/JZfs5Gb63WUT0bQhif0A4SLkrmbbsSzvBEe7Aa
         TV99goLcbszLuB6IMydUlwd9WNWWN7y1+iGtn51EEF9BiGjFVw0uhqJDB3H5roUS7hTW
         GUgA==
X-Gm-Message-State: AO0yUKUKUw2jnLrAVTTUWTIAAQo4UxJtBh00S00ru6kBoqzDbB9MOchz
        JvU5wBHUhOtGf/tQArbqjCZNpg==
X-Google-Smtp-Source: AK7set/8TJ1r5W8VLnlk2ce0nOlnWxAxA6T6hl5uVEJKTbZUCxXZq2kolWpQzeKcriLR8KuCLxYtdw==
X-Received: by 2002:a17:907:1c81:b0:8b1:304b:8e2c with SMTP id nb1-20020a1709071c8100b008b1304b8e2cmr12035831ejc.0.1678951773735;
        Thu, 16 Mar 2023 00:29:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id f5-20020a170906c08500b0092babe82cfesm3433000ejz.215.2023.03.16.00.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:29:33 -0700 (PDT)
Message-ID: <a4e71ec8-ab9e-fc33-8713-504927e5b073@linaro.org>
Date:   Thu, 16 Mar 2023 08:29:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Document the Qualcomm
 qrb4210-rb2 board
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org
References: <20230315210145.2221116-1-bhupesh.sharma@linaro.org>
 <20230315210145.2221116-2-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315210145.2221116-2-bhupesh.sharma@linaro.org>
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

On 15/03/2023 22:01, Bhupesh Sharma wrote:
> Document the Qualcomm qrb4210-rb2 board based on Robotics version
> of the Snapdragon SM4250 Soc, i.e. QRB4210.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

