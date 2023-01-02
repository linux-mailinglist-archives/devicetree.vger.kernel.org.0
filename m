Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22D4265AE43
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231962AbjABIiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:38:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjABIiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:38:54 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB3E110FD
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:38:52 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id bp15so40713575lfb.13
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=486RQjvYaSdsuqKDErf9Qs+UMaXE8Jx4T9H6WS67yeg=;
        b=M9gv3y39UwhS6b3em8AUaCVc2CCsD4TE6pXi1zOF1jZpFDH+ROhpxfTgQ7S6PaDNEG
         wwGILZofnpIk5NmcKqiIRkQNeFBc3CoJ4Kqw+fq9jiaLkXMsezHzQ2tLKzw9Zv+ElB6j
         ktXuNff6Vs9aSaVC9zwb/9QZAi1/651gMA2Z5V+X8CxXNgtW0+6hO3mq6T10DguRqDok
         CndyAnBFR92r1tmpWrqoF1IDGPt+19pbqFBjpZlxOE0kXThLGe14STy1QDIMrvvsH7mh
         EVAV2ubhUemuXQFUn4VSJiP146/2pKSn6P2bMPDZvn9jVd/yAw5EE3vFmVHdZp0SKVSm
         wFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=486RQjvYaSdsuqKDErf9Qs+UMaXE8Jx4T9H6WS67yeg=;
        b=ZSg4AtIjVaI0TBEY/yzFL2lm34X6ruoq0lB2diKyQNQ1cI1UphvF4sRzPzJ0D04spc
         Lcb5zgeYdS9HMF2krJVFOX2yi0SPGja8pXQxfTr6vB0jJO4Q3gvW080t3iQGc2elRdUg
         MJmtIfgQJkyXKDxhyz4uiuP8Oou4BVbfwu4q9GC6DwfGDfdWXRgJ3ERDwjNh6uRtPZlr
         FGQuzJbMRk2XKYPpl2jD1u/utNNGWgw4yaMWMIDzbmehnPdnqhhkCOU4/nWyIS2jB80z
         dSMdoFtO7HkoRmWs4ovjG39fcOGSAgTaz+/JL6IKECANeR7Q2qclB2gPm15DT/FjGMIL
         TnZA==
X-Gm-Message-State: AFqh2krJZ9gBDpj+covcqyZPHdXREub1HTgU9kdk16Y6HWzOJstku948
        COQC8LMFrHmFOR1SFcd0tLV4hQ==
X-Google-Smtp-Source: AMrXdXutMS04/5TuOyHdnjclVDchindIbgBUbVtVqnUB4e0Eqv5fUsIhp7sTcF41LI32SiG1YAcHjg==
X-Received: by 2002:a05:6512:3b20:b0:4b5:178f:a14c with SMTP id f32-20020a0565123b2000b004b5178fa14cmr13440637lfv.16.1672648731106;
        Mon, 02 Jan 2023 00:38:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z8-20020a056512376800b004b52aea5ff8sm4373307lft.30.2023.01.02.00.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:38:50 -0800 (PST)
Message-ID: <98a3e787-3def-e5b4-67ee-ce234dad50dd@linaro.org>
Date:   Mon, 2 Jan 2023 09:38:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add Startkit
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
 <20230102004425.887092-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230102004425.887092-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/01/2023 01:44, Dmitry Baryshkov wrote:
> Starterkit is small vendor of development boards and SoM based on Atmel,
> i.MX and Allwinner SoCs.
> 
> http://starterkit.ru/html/index.php
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

