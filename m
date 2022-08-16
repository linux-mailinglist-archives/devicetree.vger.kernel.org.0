Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 525A7595D7B
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 15:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235411AbiHPNhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 09:37:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235837AbiHPNhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 09:37:08 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288536BCEE
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:37:05 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z6so14950921lfu.9
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=iLWOtbS/nHEe3N1HJfNcyG7ik/YwvQ/LhikLnzfGgW8=;
        b=RHHWn7p4uNSSWLUWDGIef79PE5JZRLnwmmoBoMG1CirhDC1MuslrZula5FDrnO/S7Y
         O20PQvVXEXUCCfvhOnV3oV4/ZNO5UmRpPuh8oRHGtRvFhu3/RUIMP7A/cir6cPIZvFhc
         MMzTO4yZJ2isZCEKPP2ID4yCECswnjsaVaxDtpqDTtneNfVzOmG0uJsmJhMO0/ykdems
         a19MPnKYR8AGDjJ7NZzPVjcO0xUKoVG8HpYLqtFX3iKFcDI10uzFhTMIAfMKgTaEvAkS
         JSIG+AzP7Rc2mqEN9HAJSVrZtdqpa2TMgFof+dlBdbfVPZ43wIMEpEyxdJMuXdG/NbxP
         yCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=iLWOtbS/nHEe3N1HJfNcyG7ik/YwvQ/LhikLnzfGgW8=;
        b=QfeMpO6Vo6X4swlmsfRaO1v/f+OAQCLx2Q7MOntgVKwMNsWor0jp2Oyi3dbZxJ22sG
         xvmNwJPB94s59nljl5HVrUMFNbJpKMsVxn71B1YySODei2sJvVYUjYKFZ4XcIjdeY6h3
         eDsYlGMsfdFR0pPOmMlJ+CwBEPK45jAZ5J+bMC4nBFcB8KlCPDYzt/76T2V2Yc9xpXzJ
         de/Q3zXWGgzXmA0cQB/HLxXbiJJgDFNHgwdtE3TKElOg03iCE8t4cotGgE2SZT6BAJdk
         Ae2zJqlkDETheA7NueLE84A+juliCrumfjRg0OUsJ6P7S8Okxw3NepJyiMYJqD+yn5h0
         Zwcg==
X-Gm-Message-State: ACgBeo0LjkoLBOqPPROL8cCqVOkMrpKOVYoIjMQucWaVCFygKPcBHFdj
        4SQZPuvgPn3MPiN6fk7NowN0Aw==
X-Google-Smtp-Source: AA6agR48c21eTvQIjQfggA/J/WarSWLBhApbzNATkLYYiPlN1lzRe19wUxFlmxr/iVUiNkTMT/sWRg==
X-Received: by 2002:a05:6512:1050:b0:491:dda4:1e2c with SMTP id c16-20020a056512105000b00491dda41e2cmr4391523lfb.467.1660657023551;
        Tue, 16 Aug 2022 06:37:03 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id v5-20020a05651203a500b0048afeb4ea32sm1399381lfp.100.2022.08.16.06.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 06:37:03 -0700 (PDT)
Message-ID: <591fff8b-3723-2b91-06b6-7cdf6aa83cc4@linaro.org>
Date:   Tue, 16 Aug 2022 16:37:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: fsl: Add MSC SM2S-IMX8PLUS SoM
 and SM2-MB-EP1 Carrier
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220816123849.747157-1-martyn.welch@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816123849.747157-1-martyn.welch@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2022 15:38, Martyn Welch wrote:
> Add DT compatible strings for a combination of the 14N0600E variant of
> the Avnet (MSC branded) SM2S-IMX8PLUS SoM on it's own and in combination
> with the SM2-MB-EP1 carrier board.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.




Best regards,
Krzysztof
