Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9992C5914CF
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 19:32:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236835AbiHLRb5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 13:31:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239438AbiHLRbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 13:31:34 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 646E1A74D0
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 10:31:33 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id z25so2230463lfr.2
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 10:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=8Llqo+r9efOowzppOOXTWM2b5KiuPYf4RI8IVMa09Tw=;
        b=KNOp8OlAG3doZ95s3o3Gds3Y40M5Oh62mR5wjPnEYDDnsPRq7QFWMz0U5iWJk5uifW
         l8GoY0N0bgbMCSF9H+mnxaYtnlkF1C8VfLs8+CcHV4D1F9ZUyg622xwKqQ+33VAyd8P+
         inb4XdvTs+MbU8tAnU107B3aUvlfO/uBeyKJlpMv291LG5j0i23DkliGQmnEYy0RSQY8
         za12hMWt2Qp4XavjFVucxCYKnU1i51ap1qVOdjGq3fYYRahJQNqto4XYIZesTngM+r2P
         sd/ULg/83t+5M74aIYga2UZOkXFgLv9pm8cc2vSJdtNWZ1Y7MVVvgQ5ABK8moEQ3dShv
         HaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=8Llqo+r9efOowzppOOXTWM2b5KiuPYf4RI8IVMa09Tw=;
        b=tTu6M9MYCcyypQx2p9MLQkGg4/HZdIs9BMORQii9Ro3AEh4avUUMIZiwdJpn+8LVwE
         JTAbQ5OarQLbKsxhtO8EzZo62j8/jPVNl3CRJScXgkwfVG0jO+N7p0KUbkzlFn2QmI7/
         yFQrtoVe8oSp0j6VCJp9SxELJa7/l9/8KhXw8QhfXsXb2A9MmRmWSHi/qY+pHCKHkN69
         77XWPAgnpcm9zBLn0gxkMu8Y9StAA2BtWiGWLBkQyzJCw2SL6M9ITOAWdhGsY+6OXUZj
         AdUkXDTlVDF71kzOmDMYbF0baKqVtbxloxvjBKO8+RrrSinIu6nUFK7byBZ34N0HG1Cb
         yltg==
X-Gm-Message-State: ACgBeo16hGuYPqjZlzGk7TgYe3wpazfrFtltR6TWp76jsen8bzJnQLsJ
        KzQdFEXoaY99lZ7ZXQ3hz/pySQ==
X-Google-Smtp-Source: AA6agR5wXLatv7lGYoSregWjcNyIXNXrVIKR9kFnXnweVgFDoDavVE8qYMr7kpVHe8z4S0i0LIn0JA==
X-Received: by 2002:a05:6512:3f03:b0:48a:98a:c1ad with SMTP id y3-20020a0565123f0300b0048a098ac1admr1670712lfa.518.1660325491656;
        Fri, 12 Aug 2022 10:31:31 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id d20-20020ac25454000000b0048af3c315efsm276082lfn.191.2022.08.12.10.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 10:31:30 -0700 (PDT)
Message-ID: <993a4559-c9f4-c6e2-8854-d2018180fd6a@linaro.org>
Date:   Fri, 12 Aug 2022 20:31:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 2/2] arm64: dts: imx8mp-msc-sm2s: Add device trees for
 MSC SM2S-IMX8PLUS SoM and carrier board
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220812084120.376042-1-martyn.welch@collabora.com>
 <20220812084120.376042-2-martyn.welch@collabora.com>
 <8962b7ed-a21c-0b7f-7a6d-5db3db84e4cb@linaro.org>
 <65a094d5d03ad8f7b35196c9dff6ffc6cf0ea151.camel@collabora.com>
 <15ddd798-873e-d90d-11e9-c6dd46ca03f4@linaro.org>
 <c874e1db8526bfa915baca1f0bb28d0c5f5a1feb.camel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c874e1db8526bfa915baca1f0bb28d0c5f5a1feb.camel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/08/2022 18:03, Martyn Welch wrote:
> The tests threw quite a few errors that seemed to be related to the
> imx8mp.dtsi. The only ones that seemed to be related to the files I've
> created seem to be the result of including optional pins in the pin
> muxing, which need to be there AFAIK, but seem to be resulting in
> warnings from the tool.

Your DTS defined three compatibles which were not documented by the
bindings change, therefore I expect the warning from schema.

To be sure, I just run it and it is clearly visible:

/home/krzk/dev/linux/linux/out/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-14N0600E.dtb:
/: compatible: 'oneOf' conditional failed, one must be fixed:

	['avnet,sm2s-imx8mp-14N0600E', 'avnet,sm2s-imx8mp', 'fsl,imx8mp'] is
too long

	['avnet,sm2s-imx8mp-14N0600E', 'avnet,sm2s-imx8mp', 'fsl,imx8mp'] is
too short


It's not possible to miss it, it's the biggest warning...

Best regards,
Krzysztof
