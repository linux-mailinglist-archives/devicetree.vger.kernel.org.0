Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE4C4EE299
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 22:25:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238220AbiCaU1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 16:27:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241331AbiCaU1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 16:27:35 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA44A231AFC
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:25:46 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id o10so1717599ejd.1
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IVwmuWYXmc6PxSc6Y/RgcIvWvdH6cabgH6Cbl/2NYsE=;
        b=qF1s2bsIkIkwALQQbK9phUTbyM7EQv/ZWribu1fYZe3qcD+6pENraSXcfDi7Gsops2
         CQniF0O01DTnl+EvGvsYDnCmA0wDOeZ991a08nCzNXOrpQ4CmMeyqYDzYeYW6xfzu7qi
         IchxzVai5NYInNPiUMH/jxV9n4O21Af99bwvbreSxnqKu2bbClO7f86Idh/ySc3nwWxW
         oARRdSXUeNLuTwTUSakS+3uEmkRAUR0gGNE1UgnESoK555OamB0qws9A3e5Ef46bazfg
         UYb564kg6cW+DR2WDXgNZG9MA5qK66Vuk+u7RsiqTXNtLaSiw0Zz0yiWb/cUxFZUQz6N
         Fw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IVwmuWYXmc6PxSc6Y/RgcIvWvdH6cabgH6Cbl/2NYsE=;
        b=g00hybAE78igdoZFG4Hd2/59ceZJl+8YQ8fDn34+fzi6lBsV9eYFYfTeTI/NDWia7G
         srCarrvMr1O6F0kEK1JJZqpEYs7UWhbGf/41hyFfRHV52QcdrEEPMspA9pc0GQ6W82KW
         xERJib/qf4ikIvUJmM3uR6qy+3SdPDuM4OMpGfhwE6TpKCwpCjFMU/Vf85ifv2SbCxtZ
         4n4Cw1QefpItFsN/wMLcaV863xwoB6xfxSDBhcyxDgJ9fRPqAEarl2u89W9nlqMpc0iw
         BRGaAUUKt+NjqDBv3Dne0S5AH8vn6LDM4Z9Tsk9GCEoFqzMRYdqS94Uwd2dNaVb1YT2o
         RzAA==
X-Gm-Message-State: AOAM530pXBeR8ZtFSzy89r8BPVt3UfzrZcKUEvkuiGEabp1eokggDjMN
        1zCjqWQ6xd6KEveyfbKWA0/NQw==
X-Google-Smtp-Source: ABdhPJzqQfEiQzRkvUB5+kDvhz2zj/QNg7xQta5N/nDJPmJJUTp0RbFPzOZLHRrPo7zDeKR3V1WGag==
X-Received: by 2002:a17:907:2cc6:b0:6e0:1ae5:d762 with SMTP id hg6-20020a1709072cc600b006e01ae5d762mr6610402ejc.291.1648758345516;
        Thu, 31 Mar 2022 13:25:45 -0700 (PDT)
Received: from [192.168.0.168] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id k19-20020a1709062a5300b006c75a94c587sm175359eje.65.2022.03.31.13.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 13:25:45 -0700 (PDT)
Message-ID: <1aee818a-ca5f-098f-c549-4d500630c777@linaro.org>
Date:   Thu, 31 Mar 2022 22:25:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5,3/4] dt-bindings: pwm: Add compatible for MediaTek
 MT8195
Content-Language: en-US
To:     xinlei.lee@mediatek.com, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        robh+dt@kernel.org, matthias.bgg@gmail.com
Cc:     linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        rex-bc.chen@mediatek.com, jitao.shi@mediatek.com
References: <1648730873-18505-1-git-send-email-xinlei.lee@mediatek.com>
 <1648730873-18505-4-git-send-email-xinlei.lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648730873-18505-4-git-send-email-xinlei.lee@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2022 14:47, xinlei.lee@mediatek.com wrote:
> From: Xinlei Lee <xinlei.lee@mediatek.com>
> 
> Add dt-binding documentation of pwm for MediaTek MT8195 SoC.
> 
> Signed-off-by: Xinlei Lee <xinlei.lee@mediatek.com>
> ---
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
