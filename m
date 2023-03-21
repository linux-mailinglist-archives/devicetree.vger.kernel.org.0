Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 843246C3832
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 18:31:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjCURba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 13:31:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbjCURb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 13:31:29 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEE6128E87
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:31:25 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id o12so62713169edb.9
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679419884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UTZd1bMO8xEU78JJj8yFbCWqQGZ1JfnnMRfW/5G1QAQ=;
        b=ew6/UtpXqm8+AL/X2UZQaHEwUOVRFd2RRlwoqY/MfdtoolFTe3TS3egemCA/UVhWeT
         hNdvYi5z8USwDri63hJe9lfVCZQkMoJnsJvBoeLbpETRP8ZQ6ABrTM/0K/NG86dljaM8
         n2AgMSOjDE+JP7kOR2UGL8q6yGJ4g2d6JAN3s/EThazogkpjfzzgLUPeIHfkadXtk9R2
         kfD/ZGLiVUdSSljf6UJ+2OWAVTTDduPGjhY+wATkWq0XCbKJ1FfMG7nNj+E8dFQCtd11
         rPXQXPZC8IUeKKAjSrPvOLdk2oq9brHgOWeKIEUX0Ts22yKWmq0B846EKNWBnhABKkWe
         IIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679419884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UTZd1bMO8xEU78JJj8yFbCWqQGZ1JfnnMRfW/5G1QAQ=;
        b=VMJFVIj2kyQEzdj55F5w/S+xJAmKdewKMrbuWcOdNzRDCgWF8R2FMj/3JbSM+48IFB
         Hw937oIdeb7HRb76HMFvww7iod41sUNOi2ch8M/UG+qivJhoIi7e/RwbbGVYY1Jh54GK
         VLrDrDR3csBVMeIF3Zh1LLyyfMfnLYKTeaGtHBZTxJTBoRQN4aD0IPD9m7/NH52eLQ0k
         2Z1RRljZu+/tbTX56CmsbPuJAoYtva4JJwCDQvJppEs8FcO/VnUT3q8ztLZkR51E062M
         Wza26FRuL8S6SkNOJwfShje4wFi/RdmVgu91xjqteE2pUc2xy7TlQ0FGqg5q/JKCu5Vp
         gjMQ==
X-Gm-Message-State: AO0yUKXfaUYlWK7ZBRNYdheDN8r+PWtosZxHrDJeTW6FeRJpLlOeg2G1
        qg5Nbs/yKqK6nnbTo8ihy+3WFIi4C37PDXKH1qE=
X-Google-Smtp-Source: AK7set/ony5H01wz51r1wEwsuJS9bKkUDWLT7QLQW72Sb+0M2NjFg/tGSNyKe2mzBjuPT+aaU8VlCA==
X-Received: by 2002:aa7:dad3:0:b0:4fb:80cf:89e6 with SMTP id x19-20020aa7dad3000000b004fb80cf89e6mr4134467eds.8.1679419884055;
        Tue, 21 Mar 2023 10:31:24 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id x2-20020a50ba82000000b004fb30fc1dabsm6505645ede.96.2023.03.21.10.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 10:31:23 -0700 (PDT)
Message-ID: <c0c6c79b-ac77-cdbf-5b08-38b89e4fe481@linaro.org>
Date:   Tue, 21 Mar 2023 18:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V1 1/4] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1679403696.git.quic_schowdhu@quicinc.com>
 <1589f33deda07cb9f9e6c3c26bce6e02e53c168e.1679403696.git.quic_schowdhu@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1589f33deda07cb9f9e6c3c26bce6e02e53c168e.1679403696.git.quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 14:51, Souradeep Chowdhury wrote:
> All Qualcomm bootloaders log useful timestamp information related
> to bootloader stats in the IMEM region. Add the child node within
> IMEM for the boot stat region containing register address and
> compatible string.
> 
> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
> ---
>  .../devicetree/bindings/sram/qcom,imem.yaml          | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 665c06e..c8c3890 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -48,6 +48,26 @@ patternProperties:
>      $ref: /schemas/remoteproc/qcom,pil-info.yaml#
>      description: Peripheral image loader relocation region
>  
> +  "^boot-stat@[0-9a-f]+$":
> +    type: object
> +    description:
> +      node for boot stat.

This basically copies the name of node, so not really helpful. Describe
what's this.

> +

additionalProperties: false

> +    properties:
> +      compatible:
> +        items:

Drop items.

> +          - const: qcom,imem-boot_stats

No underscores in compatibles. Why this is not SoC specific compatible?

> +
> +      reg:
> +        maxItems: 1
> +        description:
> +          The base address of the register region in case of
> +          imem boot stats.

Drop description, it's obvious.
> +
> +    required:
> +      - compatible
> +      - reg
> +
Best regards,
Krzysztof

