Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44CD6C7D5E
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 12:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbjCXLlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 07:41:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbjCXLk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 07:40:57 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09E5F1DB85
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:40:56 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id h8so6755330ede.8
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 04:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679658054;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FDA/uoSWTDnnUdNCbAzztacdJP3oEz9K+rqxIbnxmm0=;
        b=Z4EGMPnKp+OJfyJukNmtJMR+11sVCPZVpG4ab+3ntrTI99bny+nf70oE2lk08/ErNr
         jrxuNym58CtNdHfW6eCdpsE3Q/2pdZyD7zJeQaZhYo0zcUZZTHfs858aHf4uLxieF3fy
         Sk6yMqbyX3FitpcS2ao4XyhjaWatm2eadCccyjabVWD/eLoJ840NdJCJQz0to15eN611
         mWk3GPJNUH2vsZRJmKADau+9yYDjrbaj5a9/uRBDSr2+DzfGtTRowzCDJX+ijuq6npzA
         G+uRupBCg+l/Je+FQPe4XEKdNwSLcx6VKLqKtqxwCHmhN0IQMmHqOAG3/X03TnRQgr0d
         Uf0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679658054;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FDA/uoSWTDnnUdNCbAzztacdJP3oEz9K+rqxIbnxmm0=;
        b=CvnUBEGFxiGJUteNGQq1cLMJTprFdkDSf39JplEXv/oocc5KURsESWV3owcvkvIP7X
         PDBDErO1doCatevJ3YaAg3cOhWU3oalzZizGHE/N/immDip3jjRCDRTdFLEOTtUY8C7M
         zUMvaFsGTS62O6aevhQwcgkiOdAp3XcyhmlenVu7iFUgAf+I4FYaey1rQsZBfVeeccrK
         TFrfMjBIkND5oZSGJGueXxm6gU/60R8v8evgrIyiaeAPLNQNYgR2G1iT57MwqCOLb4Xf
         8bfyG54Jh5ASnac5QksHl/JIL8OJPHh/hxbpE63nPBnxpMtglbT8sdpKBaNTvLzbajD0
         fZnA==
X-Gm-Message-State: AAQBX9fT25ZvAjtECg5f9kZLLjq4wiuZ2R+pMy43BdTqWNjakTAGYE3S
        wJAZJed2nnMtCmSyLz8fjLMzf2ibdKWdBxlaLmg=
X-Google-Smtp-Source: AKy350Y/ge5Gs2wjFmEoOlbUMNFbhhzaLG3HHyOrLWfaZLXTPJHPyiR6NXgz4FKZxj0V9+iSnegLBw==
X-Received: by 2002:aa7:cc12:0:b0:502:2265:8417 with SMTP id q18-20020aa7cc12000000b0050222658417mr1219481edt.17.1679658054585;
        Fri, 24 Mar 2023 04:40:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3027:fb0b:ae08:588? ([2a02:810d:15c0:828:3027:fb0b:ae08:588])
        by smtp.gmail.com with ESMTPSA id b15-20020a50b40f000000b0050221d6768csm698869edh.11.2023.03.24.04.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 04:40:54 -0700 (PDT)
Message-ID: <f69664cf-d995-41d1-f6d7-d6ea123506ef@linaro.org>
Date:   Fri, 24 Mar 2023 12:40:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: input: fsl,scu-key: add wakeup-source
 property
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, dmitry.torokhov@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     shawnguo@kernel.org, aisheng.dong@nxp.com,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Peng Fan <peng.fan@nxp.com>
References: <20230323093141.4070840-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323093141.4070840-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/03/2023 10:31, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add wakeup-source to indicate whether it could work to wakeup the system
> from suspend mode.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

