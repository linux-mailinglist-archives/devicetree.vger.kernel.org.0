Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19E0472EBCA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 21:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231129AbjFMTRk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 15:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjFMTRj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 15:17:39 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4833EB8
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:17:38 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5187a752745so1061008a12.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683857; x=1689275857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=93qZriFSRFXKcWPzylxuUuCclKMCIydNYI0fQlylMiE=;
        b=YqPr33OceNzDlHmWcCZ8VZkcvJcZxD4IIpSNePFd3i00YG4JKWk2ppEy1QGpSYA/S9
         egAWndeJj+c9tOLbj5tbvrmfOw6nW1ap3AmizpUOpYoNGndDCaxkSBaoI9n/2HCyjJII
         SVONdOFjrqyE7g6QBSkhGMGZYv1CQnfsQ7KQRkZNW50vXv4BLQCB+Hi4ylZM1gZImhRX
         jZXUWl7Hp9uw0O0GBwYYeh1STCE+rG1jRRhnjo2w1VH3FKFzkB/GOt1WGGYo13+Mn5Ey
         +E13zylpUFU+yRsue6SpzZ7ikDle7IUsfGeqZcDNvFTrRUrH30Vt37Y3i4IezDRv3FM4
         jWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683857; x=1689275857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=93qZriFSRFXKcWPzylxuUuCclKMCIydNYI0fQlylMiE=;
        b=fARtNlG8cpLaifXezvLsT91R40soXHfE+2CktRIs6SjfmPA+izq5BpMaJlUpEpOJG4
         9YHqcJSrqcxlBtW0PwX5CpsXtI2Nm/fA/YX56ZJiEAjaufv/cyT1AcMRIBX7ckhs2FJU
         7x2+diniSeuDJMJnf3dXJkgZwtK+m8HX6IsANulrgy+HmpnqfEPsNG2S3+xBsb/WZdHV
         K/Q8Y9YaZmPFAm/HJTt5OQ8chkZxNsVeyXxp+Q20WEUMZZ81b1vduWQ9h6GIEogyMvrj
         l/O4NftD8Cb19dJpVe5N11Ya00AX2eiJ5hxKskM7Y7Gu1IBFdUWGJt9QceZX7l9mRWaj
         UwTw==
X-Gm-Message-State: AC+VfDwLWLQktDewJB2H8Jsp6/xEAjwGITZ5zfB26bWhGY6MjeUPN2LG
        +Sl3sCK9EQ2ACFItPeGc3PbP9A==
X-Google-Smtp-Source: ACHHUZ4UY2DC8kT7+5aDoOESAH1A6ED4BE58jwrTzmeHd9E9SqXiJLo8ZrtWO1FYNdZBlkD5mZ5ovQ==
X-Received: by 2002:a17:907:986:b0:971:1717:207b with SMTP id bf6-20020a170907098600b009711717207bmr15907519ejc.35.1686683856689;
        Tue, 13 Jun 2023 12:17:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u1-20020a170906780100b00977cad140a8sm7006621ejm.218.2023.06.13.12.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:17:36 -0700 (PDT)
Message-ID: <224e69e6-ac1e-70c3-c0b3-4b72cc3cb0ad@linaro.org>
Date:   Tue, 13 Jun 2023 21:17:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and
 imx8qm compatible
Content-Language: en-US
To:     Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
        jun.li@nxp.com
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
 <20230608033642.4097956-2-xu.yang_2@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608033642.4097956-2-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 05:36, Xu Yang wrote:
> The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
> compatible.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - no change
> ---
>  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> index 1b6b19fdf491..1395a982c387 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -32,7 +32,10 @@ properties:
>            - const: fsl,imx7ulp-usbphy
>            - const: fsl,imx6ul-usbphy
>        - items:
> -          - const: fsl,imx8dxl-usbphy
> +          - enum:
> +              - fsl,imx8ulp-usbphy
> +              - fsl,imx8dxl-usbphy
> +              - fsl,imx8qm-usbphy

Keep the items sorted. Your previous patch also had wrongly ordered
imx6ul in enum.

Best regards,
Krzysztof

