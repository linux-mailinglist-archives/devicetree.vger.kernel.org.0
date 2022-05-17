Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0374E529B89
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 09:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbiEQHzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 03:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239714AbiEQHzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 03:55:46 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E19B110A
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 00:55:44 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id n23so6353457edy.0
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 00:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yJhm7So20nh+ghnDwqGmb5PWROSPcSsi/yq5yfWtolA=;
        b=MVwH4h5zuz4XVa5pcgkulJsx76lnIJ5pQqaRUTEjGrDMU7qNSX98iBqW00VJj0d+ra
         un7ofKIS983900TaHiWjdtve+IOR1HKVhpQoR9nxSJKuvRBc7y5L4qWFaKUEJIVUkEEB
         W85K/VLuWkTC0twiRk0/RpZtQmGWXl1/lALPFoafLPwuc8pfklV7tTFua3RxFd9gaUQg
         g7DTAuCFeV3s6TwKWItkSOcruYtS/IeifFomkpxEWeNKarNGP5WpN0OD9/rervLO94SD
         +FySeeqbK9ITd95LJfsoLMGagacLXeZa4MhUCWzONtA89eKAPOj46c3OC+VtJzQRSeOP
         sXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yJhm7So20nh+ghnDwqGmb5PWROSPcSsi/yq5yfWtolA=;
        b=QEK8cduMi34jLjO93vTqX/+WqX3KZgoGYTLUziTAZf/O2CSzIqkgl24maNmFFSR5Zi
         PUAEAtmE8NQkb5N0zoNOgcbVmBViTSzGoJGZ+edP6PWuG6lk67hHMvX3LuBUNKIaoKUv
         hcnVh4COqGmqI5bsBtzfB9AEsLOCvmwuHO6ncSF59pZNd02VcPDeSrN3+uzV0huwqSK1
         LUUDRiZ4Sj2Nh/KKQJlzWa4/6uM7U5iAKRwARYn12lAPmXwoSdFBef8/58j0d5BEoyjw
         9LeYxORtAZOh5NZVYepM8GBegzZSKzXwBvCxIUhgl6JUDslfZpLW2tzd9QE3+v7j3HN7
         +oTg==
X-Gm-Message-State: AOAM531/KygONeswaPXB3xm6xU2Kn3Znq8tWFOCA8przvQhfaZXNkVMp
        9tIgCEqOnKdrjUUGMsfFMABEFQ==
X-Google-Smtp-Source: ABdhPJw60qASXHunobAUwB4FC7sDQ3RM3G83ZfyPFyuoO+7+VkvImTwvPJ8pXd+yn8+A5uhYoyYOJQ==
X-Received: by 2002:a05:6402:330b:b0:42a:b061:6e89 with SMTP id e11-20020a056402330b00b0042ab0616e89mr10330419eda.47.1652774142940;
        Tue, 17 May 2022 00:55:42 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h9-20020a1709063c0900b006fb6d9d25bfsm733239ejg.22.2022.05.17.00.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 00:55:42 -0700 (PDT)
Message-ID: <2b7e97a9-e696-34fd-89ce-e29dcea2681e@linaro.org>
Date:   Tue, 17 May 2022 09:55:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/3] dt-bindings: arm: add BCM63178 soc to binding
 document
Content-Language: en-US
To:     Anand Gore <anand.gore@broadcom.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     dan.beygelman@broadcom.com, joel.peshkin@broadcom.com,
        florian.fainelli@broadcom.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        kursad.oney@broadcom.com,
        William Zhang <william.zhang@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220516173808.1391482-1-anand.gore@broadcom.com>
 <20220516103801.2.Iec642f72ecc8fe0178cd94faba372e89296168dc@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220516103801.2.Iec642f72ecc8fe0178cd94faba372e89296168dc@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2022 19:38, Anand Gore wrote:
> Add BCM63178 SOC device tree description to bcmbca binding document.
> 
> Signed-off-by: Anand Gore <anand.gore@broadcom.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
