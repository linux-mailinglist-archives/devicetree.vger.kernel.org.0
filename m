Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 698B060FB2D
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 17:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235132AbiJ0PIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 11:08:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235749AbiJ0PIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 11:08:30 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E4AC18E734
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:08:28 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id w10so1548113qvr.3
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wE686Pb+0yjapSYCZjAr13ID0S8f2XiuAOg7iuBSl98=;
        b=EPC9+qUzXv/AnYm7ePSxoIvaSIrm2NdpASBOEGxeQHVJmpfbcmfuDOPzrU0eyfp7Sc
         xP4nsKvnrVXeGRJLNCyOkQUv0AUtr0bZ6nFDfdj67ymBcWCJQW6+VhCAeq2LpMVbz2mW
         x6SMNCHG4PP+FCtU+2xKeLOcMHKl3KTH1brzopCcuERaBvEpnh8O5px7AiNxDxiKLoSA
         Wf8PXVehJjIjU/2Sf59GFo04ZfQXKQGlWRBr9EQNjVQ8/CQODMrBZnUvaz7iZiyoJzM0
         YVLhqXhj11VKjcQBcBmAR5zVkxxTK/Le7vtTAr2EK8wcEYQDjrv0/tWvLCIEro1nR6nG
         GTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wE686Pb+0yjapSYCZjAr13ID0S8f2XiuAOg7iuBSl98=;
        b=7uw9CI6Lq3p1M7e5+WSXO4D/DdwcwrCEM/UbwIjNv7sHFSQY3OPXQfDG7KtzWGKT3A
         eM333qtt1401/1h/4EQEWnThXTGgR79hQGCc/O6CWHUumNQ9m6kRbKXtuOjLG3wC1UMV
         hQ3M6SlPaM9d/glNUQ/5OK9GIXAi4OmZ2bNO+aL7Q21GieGgjX4LxPNv2DSpCN4fKJ33
         48HLQGP8dp5Fqbqo1VCBfCSxm75IyfXeuH+BM0vsfzqXXVfwbNsd6pVaf9ERdI9AQMjk
         CAZ+33OGMxqKVzNgxxhxyT3G3JgpoKIk9G+zB38+bll9TXUrkwvZf4sMX95lupKLPR7S
         jUSQ==
X-Gm-Message-State: ACrzQf3G2nGqvdzadfKUMQ3lUZQwmCNH8+wipjBEHSLL5kvJF/5LkzZm
        HiWbRXguaLotR0xmeZ6RUdzeuQ==
X-Google-Smtp-Source: AMsMyM5GxBn/p7hdxLvlxLyplihGm5RoOw0z68qM1FyW7uu3kAH04pJqeCeamGBPHWW6f0gOqrKDvA==
X-Received: by 2002:a05:6214:500d:b0:4af:8e3c:d254 with SMTP id jo13-20020a056214500d00b004af8e3cd254mr40305080qvb.36.1666883307318;
        Thu, 27 Oct 2022 08:08:27 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id c2-20020a05622a024200b0038b684a1642sm1019469qtx.32.2022.10.27.08.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:08:26 -0700 (PDT)
Message-ID: <ad1d4135-031e-9393-07af-7b81c9ecffb5@linaro.org>
Date:   Thu, 27 Oct 2022 11:08:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/4] dt-bindings: soc: qcom,rpmh-rsc: Update to allow
 for generic nodes
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221026200429.162212-1-quic_molvera@quicinc.com>
 <20221026200429.162212-2-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026200429.162212-2-quic_molvera@quicinc.com>
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

On 26/10/2022 16:04, Melody Olvera wrote:
> Update the bindings to allow for generic regulator nodes instead of
> device-specific node names.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,rpmh-rsc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,rpmh-rsc.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,rpmh-rsc.yaml
> index 4a50f1d27724..0e7e07975f3a 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,rpmh-rsc.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,rpmh-rsc.yaml
> @@ -109,7 +109,7 @@ properties:
>      $ref: /schemas/power/qcom,rpmpd.yaml#
>  
>  patternProperties:
> -  '-regulators$':
> +  'regulators$':

This should be rather fixed like:
https://lore.kernel.org/linux-devicetree/20220926092104.111449-1-krzysztof.kozlowski@linaro.org/

I don't know why there is such a popularity of adding specific model
names as device node names...

Best regards,
Krzysztof

