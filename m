Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96EF26D1DA8
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 12:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229877AbjCaKL0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 06:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbjCaKKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 06:10:46 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EAF51E713
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 03:05:32 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id by14so3280493ljb.12
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 03:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680257130;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BsStaUG11h8bzqxHS1KQeYi+Sv9fMLA3dnuaKtFNY4s=;
        b=y+QEwfGK7GvFqXmmcytWG4p/mb5eYCOk4E2WGX7UQUj9WkVCGyUN+Su2zNnu4CIZAU
         8JLbWFEBt2mZd2j2ih4Fo/bxyo5WL7DqFmx5wb9O16rCDrFNAWdIUFmxfyGIf3XOz5lI
         cacqcXk1eQOKNqGohgHhENc1vmhes6L5bVNm51e6IvFzVX/036dtgieFP/xqoRThQR3P
         BgKIXa3rQtQ/CqawSYIZQ4q0/lJpustnBS1vUqXmb0XT7NVHmxB5ZJFCfdlRZQvc5AHs
         6f1LLy2wXoRnAC/75DON8azM2WMb7NKWPPaGQPcHtS8Wv6UUPnxUDlRYpeAvUpacUpDk
         n+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680257130;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsStaUG11h8bzqxHS1KQeYi+Sv9fMLA3dnuaKtFNY4s=;
        b=n/QrMPRiq0+XSZMuFdjuUYQYZC8HKEKELnNcasBONpBaM2CDGUptZz68rLco5Pm2At
         iw1jE575JT5D8EVnDnLvMeoKYycChtvzKdaSJg7UH5neQyfKOYTwVJ/o8IR1cPsWi6Xc
         bjK3S5TxlWBYMx3U8YTDGEmEyHOAG38C4Y73n+b/+Qdt4tK51zvgJlYhdDLr4M7lU9pR
         k3hmY5hI9sISu1t8vBD8wRPdvP2J1G1G8N6ij8rWZn3np4/BfqPEtCcOIdSVk+WKCUf5
         rftpJpi4AeNO2ctk1I8Eq7QzeHL3/PdudIdxGChaP4Pccrf+oPLaixknr5zXSgWSD0Io
         Jv+A==
X-Gm-Message-State: AAQBX9eU6GrlHZrdK0qNEIBZfwYCyBDyHoAfSQvg9qPl4VFEc6gCRFkc
        FZVOy+vKPNTL8RyYaMdcbBLDtDZ7V1LdXbFDrmA=
X-Google-Smtp-Source: AKy350bd2vaWzcabHYWG4YJLk/Jaf0al1Fogywhvk1qTn0tzYido2/xgrWFafBtyYlmrGMmZMT9lLQ==
X-Received: by 2002:a2e:8795:0:b0:290:6e01:8d0b with SMTP id n21-20020a2e8795000000b002906e018d0bmr7828253lji.26.1680257130718;
        Fri, 31 Mar 2023 03:05:30 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f4-20020a2e9184000000b00298dc945e9bsm295792ljg.125.2023.03.31.03.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 03:05:30 -0700 (PDT)
Message-ID: <b0f0d567-29e9-8d92-4d1d-9aade4a91359@linaro.org>
Date:   Fri, 31 Mar 2023 12:05:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V3 4/6] dt-bindings: ARM: fsl: Add chargebyte Tarragon
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@chargebyte.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
References: <20230331095715.5988-1-stefan.wahren@chargebyte.com>
 <20230331095715.5988-5-stefan.wahren@chargebyte.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230331095715.5988-5-stefan.wahren@chargebyte.com>
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

On 31/03/2023 11:57, Stefan Wahren wrote:
> This adds the compatibles for the chargebyte Tarragon boards.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
> ---


This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

