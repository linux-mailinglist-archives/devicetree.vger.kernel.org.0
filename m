Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C3036BC831
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 09:06:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbjCPIGI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 04:06:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbjCPIGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 04:06:05 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2DCA5C9C5
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 01:05:41 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id cn21so4360631edb.0
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 01:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wpdl6Hym6twdRzfQa/IkeBqu6gYYM8UrFNFsPRmwB8I=;
        b=IDzW58RrWaHqufejS6WN1YFrco5gEFPtyGkiZ6YE0CDTQTPwYhs45+ZqtCzWUUdndM
         6myppwrXVRw6oXj+TzALfVZBgQhx4shJvxNpNybLLaiylBykdsTB7itAyIA0aNbOAxqR
         4C4WQjyy68GyxyaKDcIH9lfLf/SOedIgOGQ37aj0cw5ka42aEjIBL2uinWwLbxw1pg8L
         IZ3w0w3/jnIdTtUyO+evRRXfWVG7ZWOEEKA5Lz7VFDs6a6SWyDF0dkNjtY2sAK6HhfoE
         wzZ6ze80MCad4+48Er3tSShfnKhTP/9FKxesL6UXcrg7VQwQV5EGD60wDbaBjXUX1P9n
         22rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wpdl6Hym6twdRzfQa/IkeBqu6gYYM8UrFNFsPRmwB8I=;
        b=lBOoFeoI+0RblzJkxrdn4rOnacPlAT+fJG2atCVNGkhAA1xvIiq3+oxPBvLZY1gwlE
         UdVrPbXW/OYe9GnabV1JZ0bxxLsCCue2bFUKjp3F8L1yIkawu4MQ5m1Bsa013zBMB/Pf
         AUb/w4F9IBXW9eFP7/fmeEIFhwIvDaN0bfF35PZPhibznHexojO0G46SktjJCjejZ9PU
         Os2f3Cg+Endx8A+P5VBdyqok/QJjpN9HUgTIHS/dR6UvrxBNhTa+7uLRFAHMmTLmp8KV
         zFf2zPAOGLUmtHGCEWf8FIoWhyM71Pssz22PQsG7INF/TafZmeYwKylfDIWdk1XFn8z7
         529w==
X-Gm-Message-State: AO0yUKUn94BpvSfabC7DfrRWpwCji5bQdTtXAyCWtY8cLX6CP8jEWMu+
        cDeyvtXVKM0gVqFPMJJKBH8+EnmWURcnxKl84Pg=
X-Google-Smtp-Source: AK7set/iRPVqQNT1Z7S1buHPT0nh8+U/sneb6I0D/7hqFeN8kjEEcNpRmmsfQ1g69NTOISJI6yFYfw==
X-Received: by 2002:a17:906:3c44:b0:8af:2fa1:5ae5 with SMTP id i4-20020a1709063c4400b008af2fa15ae5mr8454247ejg.53.1678953939596;
        Thu, 16 Mar 2023 01:05:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id jj17-20020a170907985100b009300424a2fdsm793608ejc.144.2023.03.16.01.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 01:05:39 -0700 (PDT)
Message-ID: <08925242-4c2c-e149-39e5-6ee16ba17cbd@linaro.org>
Date:   Thu, 16 Mar 2023 09:05:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH net-next 08/16] dt-bindings: net: dwmac: Drop prop names
 from snps,axi-config description
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Yang Yingliang <yangyingliang@huawei.com>,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230313225103.30512-1-Sergey.Semin@baikalelectronics.ru>
 <20230313225103.30512-9-Sergey.Semin@baikalelectronics.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313225103.30512-9-Sergey.Semin@baikalelectronics.ru>
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

On 13/03/2023 23:50, Serge Semin wrote:
> The property is supposed to contain a phandle reference to the DT-node
> with the AXI-bus parameters. Such DT-node is described in the same
> DT-bindings schema by means of the sub-node with the name
> "stmmac-axi-config". Similarly to MTL Tx/Rx config phandle properties
> let's drop the target DT-node properties list from the "snps,axi-config"
> property description since having that duplicate is not only pointless,
> but also worsens the bindings maintainability by causing a need to support
> the two identical lists. Instead the reference to the target DT-node is
> added to the description.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

