Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06CE2595945
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 13:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235246AbiHPLEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 07:04:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235068AbiHPLEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 07:04:05 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73695CB5F8
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:11:58 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id e15so14317432lfs.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3iiHiTqbdb8WExsNopeUVcvRAIAmyaaVSL2nSjU1ytk=;
        b=OfMGuqZ7TJxrsBca5L/rikCE0cxSzMpweaShO2VZ56RdemgAZ9FvmT0uXghXdgeMlW
         XofRpo5RUN1AIg84IXPIBICeRQDKkqdcamvr6BkhAovr94tbpv7jQ9m8OVSRmb20tRWc
         QBl40L3dDqgyxkNt4OfKI/Avm2AXcZdfJSnwkg1IsCirrvShq3RQnKSujSPly2HSsA3O
         MkX/7e5UsUYWw/BQqaHFDiDQVzLZZtVkekzCIfjoeJV64bmDlbQVoSgO3QlOtBW8n0yk
         ZUaqp+TYO3GiWizV7Al6OXf4rYXXITjVoO39RH/9Fzd4+Smjt77C3jSNlor5h2wJMFtB
         YvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3iiHiTqbdb8WExsNopeUVcvRAIAmyaaVSL2nSjU1ytk=;
        b=XR80mzbli7x2XnIFneEWWL0tKACvc1xdlCvXIRkUYAGnvqjL/jAiw7zpmxovZyYdtt
         wd2dyzFeTjw9LuERxcTo0inSLlS5p6SSSlsNF+XE1qp3aUTVG3HCX+KwHA/WqToVadVa
         wJ+gldyfc8irgvPUtU7twR0aOMza12d3ozxzBKGhx1F4H68EdTct+8BrQXTg2+QZcadf
         Aer1lwHJVVN3mvUJXfafgouSYZZpaqVrIBcEIdiJjoznf3axEQK94VNdUKXo30nqCuNL
         EUstJ6rkS+bWoCvmNNpyWFp1W3v7sRfp9hhwa6h+UZ+6gdW5ZVeuUC1dY4v/gLcUMsY0
         vfvA==
X-Gm-Message-State: ACgBeo17G92XvKT97WjrzeNAHES2xsbu5/f+vbItHGQCbaqWiqfN+DIe
        0vwtxbXOf18Mz/80exc4mtTv9w==
X-Google-Smtp-Source: AA6agR6thcLjVPZ4depmZV/mXnluLeXbRuKZ2I/gR8hhQk3cZYurUP84f8Q5cASrgaqBFldAYW9nPg==
X-Received: by 2002:a05:6512:1524:b0:485:b21c:6015 with SMTP id bq36-20020a056512152400b00485b21c6015mr7373173lfb.611.1660644716819;
        Tue, 16 Aug 2022 03:11:56 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id u12-20020a05651220cc00b0048b008844b8sm1338215lfr.270.2022.08.16.03.11.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:11:56 -0700 (PDT)
Message-ID: <5fcaf73e-50a6-9530-8aeb-180219dc6573@linaro.org>
Date:   Tue, 16 Aug 2022 13:11:54 +0300
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
 <993a4559-c9f4-c6e2-8854-d2018180fd6a@linaro.org>
 <dc944acacf64f19b46e1d865d9608853b44a686a.camel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dc944acacf64f19b46e1d865d9608853b44a686a.camel@collabora.com>
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

On 15/08/2022 10:45, Martyn Welch wrote:
> 	From schema: /home/martyn/Documents/geh0003/linux-
> upstream/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> /home/martyn/Documents/geh0003/linux-
> upstream/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb:
> usb@32f10108: 'power-domains' does not match any of the regexes:
> '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 	From schema: /home/martyn/Documents/geh0003/linux-
> upstream/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
> arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dtb:0:0: /extcon-
> usb0: failed to match any schema with compatible: ['linux,extcon-usb-
> gpio']
> 
> 
> Unless I'm missing something, that's all from dtsi I'm including, not
> from the files I'm trying to add (with the possible exception of the
> tools not understanding that pinctrl nodes might have optional entities
> in them.
> 
> Do you have patch 1 of the series in your tree?:
> 
> https://lore.kernel.org/linux-devicetree/20220812084120.376042-1-martyn.welch@collabora.com/
> 
> I thought that was exactly what that was doing... 

I have it and when you read it you should notice it won't work for your
case. You define one set of compatibles and implement something a bit
else. Regardless whether you see the error or not, the bindings must
match your DTS. Here anyway the DTS will be gone, so no errors...

Best regards,
Krzysztof
