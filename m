Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE1B3581005
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbiGZJf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231765AbiGZJf6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:35:58 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50DDC267
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:35:56 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id q7so440200ljp.13
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=MZNymunIwr5s0HT+N0W6RIskoSi2SJWBvUz9MpgZG58=;
        b=SNRiT4UdvD6F/JjIUs8flwpEd8o111zMH9eGEXvTTu03KoNLTKFfOqakN3prHRAx59
         qOtAvnfxJ6E7LrlHs1+J67JCyAEUXQ9Slzz8RKky9puBdMKQtbwS0M+QPCgZbBZDSoN1
         05j3U6LfeMUUmDof9sEdKdvJdxej36dVJMX2AIjbRcU45PMMyZKuoEENC9N0e4hlPFNb
         7Hqsguow2Z27wXNaHbY1814HbJp9504xAuo0s8H4t/46LDIMjp62Rf3fDqVzFOFDJQ2t
         1rvpI/LhwrZqAFJdHLY0JgBm7selOJZ+4nhqG6MHmAi9Qv+30y0NSqpXXKXi+2IG0jFi
         WQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MZNymunIwr5s0HT+N0W6RIskoSi2SJWBvUz9MpgZG58=;
        b=6YSsZb7dM+v2SD8j2sYwKXwd8eBasZ3wLC/fZjYdj6oY5lYqjZQ9MF+I+0ZwZJkgLx
         NpG6ampL9EungkZMQYEAGCKosNq/vZsmkqEXLl/D2MOKkv72Lqt3N/gDo/oIqF0JWLpP
         v+22epK3LoEQEAkGW4chwmRQ5DqtapLY1e+3BYfSCTT9fifXvuPOHo+o/WvbuqPP9n1H
         rvuzh4ldY3GqL21TEI/s7qP4rC9l13r1cD3kzbZthc4mZHVm7/BPnX+kr5KhdrpJyUIv
         Ox2Vbo4t2IkExMm8yLwuiXHehFLqWxWDcsmYQWpRS7nrjrggpcRs5xbOsmK09IhXkktB
         yNTA==
X-Gm-Message-State: AJIora8St846FjHSsUWIW/00oEQPpzpGPxkyyiROVEWMnBb2SmMEHUci
        DSTCy0Jqn0npUlUIIEJuqV3Yyv9fqIy0BQxU
X-Google-Smtp-Source: AGRyM1vjtcZBhpUzmUUwBgrctsW/ueajtnWknKkOsqnFCkRfGGSXQSnNzMwB0fadIqycXeQzemUy1Q==
X-Received: by 2002:a2e:a989:0:b0:25d:5d7c:f3e7 with SMTP id x9-20020a2ea989000000b0025d5d7cf3e7mr5887914ljq.392.1658828154712;
        Tue, 26 Jul 2022 02:35:54 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id r9-20020a2e94c9000000b0025de60d6c42sm3107406ljh.21.2022.07.26.02.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 02:35:54 -0700 (PDT)
Message-ID: <26aa352e-d39c-1784-e5c3-9e90d25d8ab5@linaro.org>
Date:   Tue, 26 Jul 2022 11:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Align fsl,pins with dtschema
Content-Language: en-US
To:     Peng Fan <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        Fabio Estevam <festevam@denx.de>,
        Lucas Stach <l.stach@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-imx@nxp.com, abelvesa@kernel.org, Marek Vasut <marex@denx.de>
References: <1c6c9750-571c-bfd9-8804-4f16d691c480@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1c6c9750-571c-bfd9-8804-4f16d691c480@oss.nxp.com>
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

On 23/07/2022 14:15, Peng Fan wrote:
> All,
> 
> I am thinking whether we need to modify the fsl,pins as below. Because 
> fsl,pins use uint32-matrix, so just wanna know we should do this update.
> 
> Anyway there is NO dtbs check warning. If we update fsl,pins, there are 
> bunches of dts files need update. Do you think we need to update or not?
> 
>          pinctrl_ov5640: ov5640grp {
> -               fsl,pins = <
> -                       MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7               0x19
> -                       MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6               0x19
> -                       MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1      0x59
> -               >;
> +               fsl,pins =
> +                       <MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7 
> 0x19>,
> +                       <MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6 
> 0x19>,
> +                       <MX8MM_IOMUXC_GPIO1_IO14_CCMSRCGPCMIX_CLKO1 
> 0x59>;
>          };

I believe yes, but as Rob replied, the dtschema has trouble matching the
different fsl,pins, if I understood correctly.


Best regards,
Krzysztof
