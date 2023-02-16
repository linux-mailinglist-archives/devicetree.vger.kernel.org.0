Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4D3698EDD
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 09:40:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjBPIkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 03:40:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229958AbjBPIj6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 03:39:58 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F1638E85
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:39:57 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id jg8so3361787ejc.6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LBXmSjxP4oQwpZyGKuVQarXmpiHMmQiRINray2EXZRI=;
        b=E9BSBVEDRiQfpC6NWMMtL6J/fkUXbDzFqT+ZCZYeTxkStbDo2zCQgnaKjAOwI2NgUl
         BFINBxuQRTBbt8hdFzo3FOGKMywELfU+fDXgYj/0ZcT1chHbiuQ1HyJRb6oGvswTPGr3
         0Vqj5MD1qNhWMt46tLaT9cuN+FqzegKFuyws5P6buTgCRr8sNFD4cI2GUS2wZAuB0fkW
         pvu4jCP67MgL+fY6XwL/mkPl7bfnfhJM84UfSV/CcqkfVIAu1FMl6TvdvXrCPPFwXTAI
         Jb3pEBwlKzPhvmTomO8FJRleXw+vQnJANyr7xG1hGfl4b1KaUWmTI/FcMmn5atiIsLYR
         R8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LBXmSjxP4oQwpZyGKuVQarXmpiHMmQiRINray2EXZRI=;
        b=7NPCYQkQ7wNPy5ePxFS6+aVqStYbnKFb1kYmCZoiwps0LSuYPHATQ62583E8nXvdxB
         pUc69mWra+FOlICSJAT2MKOPAcQi3ZqnGQ18JrNk3f/hD/7v3U0FpZ35XV1TLF108gNs
         8xd6QAj/KJozO2xZRbSqEX2wSdKWKVMwkDAo3GfnZB+eNNO3JoDzAudvtOgo3LtY499L
         UTz1niMRqKxDHeYcY4Pu2mSmuzBYa5yNP55H6/UUgjv/rGTVr8FRL/5wRact2G2UAOeU
         XbdeR4OXx2yV6lqAaClRdNSotWIvlT5Cwmy0cAs4kvsLuvCknGmZOnmXFCM43udLant6
         +akw==
X-Gm-Message-State: AO0yUKWJ+r0Gko2ySET3z2i1O/PEAZXxO+OLWRrbXKNzJ7oK2BVn9Q4O
        5UwOL69kA2EfFcIqiu3ScjuIGA==
X-Google-Smtp-Source: AK7set9Vk7cPr0jfB62hOqufH+6uY6bemdi0YLoSE5G556cDl4CHT7iFm+KvS9EG7aTdtRmTrqELUA==
X-Received: by 2002:a17:906:c353:b0:871:dd2:4af0 with SMTP id ci19-20020a170906c35300b008710dd24af0mr5348190ejb.26.1676536795779;
        Thu, 16 Feb 2023 00:39:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u4-20020a1709063b8400b008b1709d45bcsm189361ejf.213.2023.02.16.00.39.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 00:39:55 -0800 (PST)
Message-ID: <500a29f4-d680-e2fb-2b6d-5f5309a646f8@linaro.org>
Date:   Thu, 16 Feb 2023 09:39:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/5] dt-bindings: hwlock: sun6i: Add #hwlock-cells to
 example
Content-Language: en-US
To:     Bastian Germann <bage@debian.org>,
        Wilken Gottwalt <wilken.gottwalt@posteo.net>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20230215203711.6293-1-bage@debian.org>
 <20230215203711.6293-3-bage@debian.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230215203711.6293-3-bage@debian.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 21:37, Bastian Germann wrote:
> The dt-bindings tools will compile the yaml dt examples
> and this prevents an error about this node not existing.
> 
> Signed-off-by: Bastian Germann <bage@debian.org>
> ---
>  .../bindings/hwlock/allwinner,sun6i-a31-hwspinlock.yaml          | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

so Bjorn can fix his tree. Can be also squashed with original one.

Best regards,
Krzysztof

