Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 591DA6C01AE
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 13:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjCSMlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 08:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbjCSMlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 08:41:09 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6996F15CBA
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:41:07 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id t5so141775edd.7
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679229666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jqs9wvtDvbHEpBmEh+6ID4c/WMp9hQY/Vc+/3YrKVW8=;
        b=EEXtIUtYk/UlCsE04yZ0kG3xgBkjDtMWHULIdjIKeRfEZPl2dFg/xl5X9fcI3E3ORf
         qNEkg4jymYdVQYDXgGcaRcO37xbUrUwy/+8eoYeoRDCPYwT79iTcO5MBCYGBiHY5Rfbu
         ZV1vW7oh6y7t+qsYDFFnt45Sj5qNK7RJSsgzHU+bC1CW2GFFBIFXx4L1ITkDHT9ZBlF0
         oThLibnsO6M0sVKCzbgSsKcGT81hHiZCVDrLuY9j2DpgkCNsNO2CdsyIqEyKiVh9hx7n
         8sbXPuoe1HjM4g1fJNxDaMEJQ6BtkFzQVS8la+KGAzQWBTxbbDzuLz30G2b4q4HMOkG+
         e29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679229666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jqs9wvtDvbHEpBmEh+6ID4c/WMp9hQY/Vc+/3YrKVW8=;
        b=TSHPZDvT7B7Hbxdq0SnGREjnyiq0BB1QfvOlpnDicOPQUrxQWsEHAuDKp7G6aIcuWt
         oOkpck06B+65VNgVL0ChcNGfn24U/ovKqH1AJEjhXX2n+Q4YPeP5QvWTPX9mnMxeR0KI
         kohkvcqimBCwYU7+t7OwPqn/txwLJupps8P6zuJE6EJKnaa+iqEoHnzQ1fxgvgjFyuaJ
         z5hVfb3s1Zr9ZaadhVHTpPslsoN7d3GWV56emGbyQOYE9F3+ulmEpaCmH2/gNgsE4uLS
         6IXLjZu37pum4a+ugZ/ppCIb1yT+hqXQyP8n0OyXZu2yk4wuP4zW7lFKgpO6WppLepWo
         1vqw==
X-Gm-Message-State: AO0yUKUmWqAH5fJ8884wVATWjAmpGJG49y/rqnmYtCFKKxUH0hP9Xkq1
        BQY5YKyJ/u2pETPALmi0BWd2Dw==
X-Google-Smtp-Source: AK7set+kvB3MshHjOpOxDFSVnKv6QPWuREn+wILV8eXtj/vPSwzFXi4QLPy5rSNWgVa0rjMDWaD7vA==
X-Received: by 2002:a17:906:278e:b0:930:bc07:3bf7 with SMTP id j14-20020a170906278e00b00930bc073bf7mr5817723ejc.5.1679229665964;
        Sun, 19 Mar 2023 05:41:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id z10-20020a1709060f0a00b009324e7e8b0asm2642815eji.154.2023.03.19.05.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:41:05 -0700 (PDT)
Message-ID: <ce36769a-d9d3-c332-dc87-05e0672d39f6@linaro.org>
Date:   Sun, 19 Mar 2023 13:41:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 6/8] dt-bindings: ARM: fsl: Add chargebyte Tarragon
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@chargebyte.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, Li Yang <leoyang.li@nxp.com>,
        Denis Ciocca <denis.ciocca@st.com>, soc@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
References: <20230317103323.7741-1-stefan.wahren@chargebyte.com>
 <20230317103323.7741-7-stefan.wahren@chargebyte.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317103323.7741-7-stefan.wahren@chargebyte.com>
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

On 17/03/2023 11:33, Stefan Wahren wrote:
> This adds the compatibles for the chargebyte Tarragon boards.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

