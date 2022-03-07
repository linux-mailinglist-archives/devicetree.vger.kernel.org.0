Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2859D4D06D0
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 19:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240990AbiCGSsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 13:48:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242833AbiCGSrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 13:47:53 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E828BF67
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 10:46:59 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 067C43F79A
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 18:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646678817;
        bh=7Du6NUZLSH6JPd0VdCqJVM5KAFisPVhRd3glhN4UZOQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ZH/oSi7URveDAMBb9Lavf3tmKC61lAgU695SejnodQd4GV5svsK1W7Lmo04xCrxq3
         ypYtQYtBQGE8/8Zfxu/KyBp5giI8zBtWx943Vpag856JYNkQtrjysDMBTomNZOlsiW
         zGuU/3xWlFjlR8NlZ8nor338G8Y5TXSAnwSkJdvYn9kkYVjdmc7S4zxohx24ohci1h
         mUmkGx8K8w5eNURmV0yFQ9u0Sp4tsCwLPAoUEY4I/zy4XiWxzdRVi7LG5MGYMuKP34
         LVCNQEzOWowCvEoxrQIgkI/wvO+21JNEnB5NDqb8k85yro6P/GiomC5tojJ2fX+Y1b
         O0UQSjlZ+VuIg==
Received: by mail-ej1-f72.google.com with SMTP id i14-20020a17090639ce00b006dabe6a112fso3658148eje.13
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 10:46:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7Du6NUZLSH6JPd0VdCqJVM5KAFisPVhRd3glhN4UZOQ=;
        b=FZ9lCKzW1/qoAbIY1jIdrG7Hd1w4YUB+4R6ZJSy8f5kisgO8M0MOIzu/v4lD8J2EAl
         wogLZKeoPDIZtrqmGeChWgzNsQSTBG8WY6BGOnH+h1gnUnAulI2qNnea478CBwy9rW8r
         hNgdd+xJtZ4VkOFyBQ54kbY8ykn68IBrqx6KqBN2JuFFmPU/jNsPDxfB9FZ1jXIptPGb
         WUogjSrXuKVFY4dd6uzJsqvyjxzBtfpfzSriQ8wy95z3uH200w9MM+BAB9tSECRqhsy2
         9EH4/H0AjSDDgmR/w1yZlzUt4NrDx+r8dZ/7CfE9XGetLcCAezHOwaDvzJD7n9v+pM0r
         jb5g==
X-Gm-Message-State: AOAM531Fy9+AZQbUSjVkjgU14n6g3xeCvtzFpID+rMPCGgNTT1XgXmVM
        w+KKPv8sX9Tcx+vVOJdOrYF8K6g5ZCF1CzXBUVcvRns2TYDukm30MuQsAJRBx5u9thWOkxW/dK8
        5ZpGGVa9wSC1u7/vKXFJLLwoJQ7E4bB2bh91VKD8=
X-Received: by 2002:a17:907:9956:b0:6cf:cd25:c5a7 with SMTP id kl22-20020a170907995600b006cfcd25c5a7mr9944906ejc.635.1646678816740;
        Mon, 07 Mar 2022 10:46:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxpJUHm+abc5eCLSEqkNsLa+Mh4u6+Bzb3sUElgNYSsiueLRLyvJgLpRmFoXyMOzSLGycIl0Q==
X-Received: by 2002:a17:907:9956:b0:6cf:cd25:c5a7 with SMTP id kl22-20020a170907995600b006cfcd25c5a7mr9944880ejc.635.1646678816500;
        Mon, 07 Mar 2022 10:46:56 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id t19-20020a1709060c5300b006d582121f99sm4960417ejf.36.2022.03.07.10.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 10:46:55 -0800 (PST)
Message-ID: <0901c63a-6684-348c-6f74-919075700e8b@canonical.com>
Date:   Mon, 7 Mar 2022 19:46:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/2] dt-bindings: i2c: update bindings for MT8168 SoC
Content-Language: en-US
To:     Kewei Xu <kewei.xu@mediatek.com>, wsa@the-dreams.de
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        leilk.liu@mediatek.com, qii.wang@mediatek.com,
        liguo.zhang@mediatek.com, caiyu.chen@mediatek.com,
        housong.zhang@mediatek.com, yuhan.wei@mediatek.com
References: <20220307033649.11564-1-kewei.xu@mediatek.com>
 <20220307033649.11564-2-kewei.xu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307033649.11564-2-kewei.xu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 04:36, Kewei Xu wrote:
> Add a DT binding documentation for the MT8168 soc.
> 
> Signed-off-by: Kewei Xu <kewei.xu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
>  1 file changed, 1 insertion(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
