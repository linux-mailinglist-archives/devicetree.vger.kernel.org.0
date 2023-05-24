Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0024970EDD4
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 08:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238776AbjEXG3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 02:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjEXG3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 02:29:38 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66F1196
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 23:29:36 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2afb2875491so7723651fa.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 23:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684909775; x=1687501775;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ADXbD+WyjY/a3C44OvKKZGai/nGC+LFyoWdYlICKXPU=;
        b=VhBc9lZ9orvrj2dcBEqriY0TB/eqwSa95I70QFP2EHC5wHBfSTxeow1P+WLdJww3wX
         6PdfoE25ASVfJ7AhYeeYMXoAROF3x/kvD1q5OoTyo5n0C9aGK5pk/jjnTiLrcolbhkfb
         uKXsRwOzwIaH5yoZ7fX5ni3Lsqp5eg88BdxhacD2Wz6ysu3jCLM5Z0zBF0Vs4Ec0eAbt
         gsng+1J95y0U3iMOOU7O8TIg61aA1o/aj8G4+UHqFDF8L1gBd88//M+b+0dut4jlqrdY
         xp/SCvuiCQFpFPd1DJyPR5+IaT9QAM9HmQp2HABtSUWX7vG9LZOxS15hmqjOk0U/tEbs
         GXBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684909775; x=1687501775;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ADXbD+WyjY/a3C44OvKKZGai/nGC+LFyoWdYlICKXPU=;
        b=h4K/h6qW70hEbSWYYqcWyR389+TpiejmL326s0V+sBwn8Df8PMhKwq6aDrdJTrjntR
         z2WTj70zq1AtJO7jz4W8Cf8UL1auhOGexcJjvQHsPSjNRGnVkmVoJtjnjvK/vpYloWLx
         FFZpXD+GEOOmgpYHzN4wix7T5h31FLqzZFeOvOdOfGQ+/jPqarVJponwHVe6MGpDZ/IO
         knWARUfPImSGptIvajuK8T1GNxWW/i0Ykjf3ZThsqgsn4g61CxkcZBqDIL3pGRA5f0Ay
         N6wlaePa3sfQMsLN9iclCF02i9BnIJAE5Dn70JANLeoLbtbqEQHQ/jbXuDkZ8yZxBO+M
         gB1Q==
X-Gm-Message-State: AC+VfDyvnKXw6u51plLwVovP8Ihrt2OkU1yonyCwt+Vfp0qTp0itVxi1
        Up/BNN6nqaiNZpTKXDe721/rzQ==
X-Google-Smtp-Source: ACHHUZ66Vr30OJ4X4Ex15iX6UaQMJjBYrDgZH3iNJ2pRZpBzlC+ggVVqpBYvZPJm5yH2tY46yIjh4w==
X-Received: by 2002:a2e:a30d:0:b0:2b0:45ff:7959 with SMTP id l13-20020a2ea30d000000b002b045ff7959mr579995lje.51.1684909774956;
        Tue, 23 May 2023 23:29:34 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id x26-20020a2e881a000000b002a8b08882dbsm1962672ljh.55.2023.05.23.23.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 23:29:34 -0700 (PDT)
Message-ID: <1dca6efc-3020-ce79-18f1-ae56bef4f688@linaro.org>
Date:   Wed, 24 May 2023 09:29:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v13 05/24] mailbox: Add Gunyah message queue mailbox
Content-Language: en-GB
To:     Elliot Berman <quic_eberman@quicinc.com>,
        Alex Elder <elder@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Murali Nalajala <quic_mnalajal@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri <quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Will Deacon <will@kernel.org>, Andy Gross <agross@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230509204801.2824351-1-quic_eberman@quicinc.com>
 <20230509204801.2824351-6-quic_eberman@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230509204801.2824351-6-quic_eberman@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 23:47, Elliot Berman wrote:
> Gunyah message queues are a unidirectional inter-VM pipe for messages up
> to 1024 bytes. This driver supports pairing a receiver message queue and
> a transmitter message queue to expose a single mailbox channel.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>   Documentation/virt/gunyah/message-queue.rst |   8 +
>   drivers/mailbox/Makefile                    |   2 +
>   drivers/mailbox/gunyah-msgq.c               | 212 ++++++++++++++++++++
>   include/linux/gunyah.h                      |  57 ++++++
>   4 files changed, 279 insertions(+)
>   create mode 100644 drivers/mailbox/gunyah-msgq.c
> 
> diff --git a/Documentation/virt/gunyah/message-queue.rst b/Documentation/virt/gunyah/message-queue.rst
> index b352918ae54b..70d82a4ef32d 100644
> --- a/Documentation/virt/gunyah/message-queue.rst
> +++ b/Documentation/virt/gunyah/message-queue.rst

Note, this file is not a part of the patchset. Trying to apply the 
patchset results in rejects. Probably you missed the documentation patch 
when sending this series.

> @@ -61,3 +61,11 @@ vIRQ: two TX message queues will have two vIRQs (and two capability IDs).
>         |               |         |                 |         |               |
>         |               |         |                 |         |               |
>         +---------------+         +-----------------+         +---------------+
> +
> +Gunyah message queues are exposed as mailboxes. To create the mailbox, create
> +a mbox_client and call `gh_msgq_init()`. On receipt of the RX_READY interrupt,
> +all messages in the RX message queue are read and pushed via the `rx_callback`
> +of the registered mbox_client.
> +
> +.. kernel-doc:: drivers/mailbox/gunyah-msgq.c
> +   :identifiers: gh_msgq_init-- 
With best wishes
Dmitry

