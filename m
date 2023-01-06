Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3177B65FCF0
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 09:41:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjAFIlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 03:41:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232369AbjAFIlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 03:41:08 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6500541658
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 00:41:05 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id o15so580611wmr.4
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 00:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQ+8HIJ9qo+uvPNDlSOLAl09pspajE/jGQLqn+GctwE=;
        b=g+bL/kz4N0u4j4m6b4dDBq0ByVqnqvm8x9MhPflvSwxNOKVlwjRWcDcjMewidd8pDi
         KiqhilCqKeGSqkBcg/g9XoUm0PScgVbw50cAMEhe2o5ozxTYa+ecG/5Z8/dP8B7LPr+i
         +cNPiQXI3ohZaWPQQvFmFjlsZGaQz4UZ9e+CPZNFwyKPWZhznsbIOK2h0oQQ1MZucR5/
         AW0h7Vc1AQ7cUhcmnwJbQRoWFhcKWwTR7n6p4oKA+myDvrizjOgCCzwYg1MjCg6iRD/U
         KlcqvTWvjL8YAvdd9sZ21E+/ROXzlA8hPwl2ZWmvPm4r5ehf7jFFxpIpNA2MJvdkcZiY
         HULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQ+8HIJ9qo+uvPNDlSOLAl09pspajE/jGQLqn+GctwE=;
        b=TMOxc/qkSxYO77iY9saG/NxMCKfvG9Ykx0eTz4Y4BpaEg4g3ydPt38bedf+8aZsjS0
         CRXzIYe5TVa64zDuN9V1ajFcS1ILBBPt8L9WX2LBffn7sOniPAsyxkXnxNvYHW4k87Dz
         Sk6v62u3YnIMSiXlCQyT1YnEieWIn1GGahhxY8cYB5iS3ibBWIKBw8VLrF1LWa76qQrq
         B4keo7ceua4zctCynoApkMxG+S4rJrnMS9mnyG7y4qIkvqwa98NNZwVMOCvJe2RnwdnV
         ZZ7pi41CQ6RL2v1Wnb3zln/O50weaVirRCCEUn3L1Dk96iiqUNcSrfBaSFzVxbecsQad
         onJw==
X-Gm-Message-State: AFqh2kpkYJ0KhOc3XWXhR67vJvMLB/2deOvEO6U47WWJsHjI/gZCYItE
        NpUPAntLQnocTvKyz2/MM9aNNg==
X-Google-Smtp-Source: AMrXdXuO0btZmX5/hPLbDyMyJluSzegGErfB/GYYPmycI3+Pub+W4ovVH+QCq3bP5pijUvTokbz/JQ==
X-Received: by 2002:a7b:c39a:0:b0:3d2:640:c4e5 with SMTP id s26-20020a7bc39a000000b003d20640c4e5mr37028702wmj.8.1672994464000;
        Fri, 06 Jan 2023 00:41:04 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm854874wmj.36.2023.01.06.00.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 00:41:03 -0800 (PST)
Message-ID: <d7c407dc-0a6c-97d5-a06f-b432a923d74d@linaro.org>
Date:   Fri, 6 Jan 2023 09:41:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: allow more compatible
 combinations
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230105213856.1828360-1-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230105213856.1828360-1-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/01/2023 22:38, Andreas Kemnade wrote:
> Currently make dtbs_check shows lots of errors because imx*.dtsi does
> not use single compatibles but combinations of them.
> Allow all the combinations used there.
> 
> Patches fixing the dtsi files according to binding documentation were
> submitted multiple times and are commonly rejected, so relax the rules.
> Example:
> https://lore.kernel.org/linux-devicetree/72e1194e10ccb4f87aed96265114f0963e805092.camel@pengutronix.de/
> 
> Reason: compatibility of new dtbs with old kernels or bootloaders.
> 
> This will significantly reduce noise on make dtbs_check.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  .../bindings/mmc/fsl-imx-esdhc.yaml           | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index dc6256f04b42..118ebb75f136 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -37,6 +37,30 @@ properties:
>            - fsl,imx8mm-usdhc
>            - fsl,imxrt1050-usdhc
>            - nxp,s32g2-usdhc

You must drop the items from enum above. Binding saying:
compatible="A"
or:
compatible="A", "B"

is not correct. Either A is or is not compatible with B.

> +      - items:
> +          - const: fsl,imx50-esdhc
> +          - const: fsl,imx53-esdhc
> +      - items:
> +          - const: fsl,imx6sl-usdhc
> +          - const: fsl,imx6q-usdhc
> +      - items:
> +          - const: fsl,imx6sll-usdhc
> +          - const: fsl,imx6sx-usdhc
> +      - items:
> +          - const: fsl,imx6sx-usdhc
> +          - const: fsl,imx6sl-usdhc
> +      - items:
> +          - const: fsl,imx6ul-usdhc
> +          - const: fsl,imx6sx-usdhc
> +      - items:
> +          - const: fsl,imx6ull-usdhc
> +          - const: fsl,imx6sx-usdhc
> +      - items:
> +          - const: fsl,imx7d-usdhc
> +          - const: fsl,imx6sl-usdhc
> +      - items:
> +          - const: fsl,imx7ulp-usdhc
> +          - const: fsl,imx6sx-usdhc

Half of these should be enum (6ul, 7ulp etc) with fallback.

>        - items:
>            - enum:
>                - fsl,imx8mq-usdhc

Best regards,
Krzysztof

