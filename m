Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9837C6C00C5
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:21:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230176AbjCSLVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjCSLVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:21:40 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1553F1F903
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:21:39 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id o12so36504524edb.9
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679224897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QumjEbitqwdjydjiH1URGoETMaP90PSVjv3s3VkRIgM=;
        b=I4AziyJpVQxk3klHqu+G2HG23JAHuLDNTUmijfzTQk0iNUb+0KwvGS8TBMctitQ0V4
         O8uaZPajG7LSRxiyND9cp9MXQYPimDl3cQ8Rv6+TcC9pAVXw7bfaGmuToy3ZwO7c+aTp
         yqdWOwKinfkJNm6bGOUsFnfmdnB1meTHLsLCex/JFBcVWlIJcymJvpQsQdWlqWTuwSGb
         41vHrS7F8a+N0dF+mUpmO9+P4RD+uAZxpcCDWyKVisxfgo8vaWHoO9vkSY220pk2LWX5
         xTRfvDcvoqhhREifbLqEChTOREASVs1xjxS4YKLk3GXx4CHrlrUWMXiih7GXr4qy10Ja
         sITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679224897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QumjEbitqwdjydjiH1URGoETMaP90PSVjv3s3VkRIgM=;
        b=e8OkLua6hqaK5uM+KW0VH1J29mXR++kiLuDZvSV8y3zoDdHTWuiTY8CkgQVV7St/iq
         cZnQLBRpR59cTqaR5oVB0E5hz9fXBmIDl47uwdJBuTzp97Eh5u3EnNxj5J+qBvPg37Rs
         Fa7UrkD82YekUYFD2ZkSXoYddapkdaoMacV1zlAMtpq51bx914Kyjz8glGltg+l6nDJO
         Z6NnpW0plhOeKlVX/lqQb5LsfcUX0Vr0Bf4MNn8vh1HhWEfBkGeXJg76P+yhMXjOCD5W
         ckGUJWmsM9tHmOUiiFLY7qIGpZ6jVTEgBGLeuToI20f3mfd5euqhYneu4GwldIlCFzIp
         qdaA==
X-Gm-Message-State: AO0yUKX1osgyZNKIDvNx68au8jfWuN6kUeHU/cmESycFc+ga7eM/Wt2a
        qLUUKTjX7RWBi1JQCTySgFQcLw==
X-Google-Smtp-Source: AK7set8R2pIKtVgCUbzCi5w1S+1aG6NU2xBFazg/bbbbdaQiQrVyzFwGDRlYQiGRep3n5fp2Im80jA==
X-Received: by 2002:a17:906:57d1:b0:92f:e7e2:b7b3 with SMTP id u17-20020a17090657d100b0092fe7e2b7b3mr6082898ejr.5.1679224897659;
        Sun, 19 Mar 2023 04:21:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id k6-20020a50ce46000000b004f0e11e071dsm3397063edj.73.2023.03.19.04.21.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:21:37 -0700 (PDT)
Message-ID: <84aa073b-02be-3aa2-7988-ad70bf506e8e@linaro.org>
Date:   Sun, 19 Mar 2023 12:21:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: soc: imx-blk-ctrl: Drop leading label in
 blk-ctrl in examples
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20230317095827.49100-1-marex@denx.de>
 <20230317095827.49100-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317095827.49100-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 10:58, Marek Vasut wrote:
> Drop the leading label in block controller examples, it is unused.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

