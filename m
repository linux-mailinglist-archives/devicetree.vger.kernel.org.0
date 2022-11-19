Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1940631125
	for <lists+devicetree@lfdr.de>; Sat, 19 Nov 2022 22:45:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232243AbiKSVpl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Nov 2022 16:45:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiKSVpl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Nov 2022 16:45:41 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 785D610A5
        for <devicetree@vger.kernel.org>; Sat, 19 Nov 2022 13:45:40 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id 130so7959233pgc.5
        for <devicetree@vger.kernel.org>; Sat, 19 Nov 2022 13:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O0N4KFs/+iAAmWrU6V4/9VSGjOXaLTvJgAIawzgxFsA=;
        b=HncsJ+GqjkYrxdy4wEWqzWqx21OHAPYlvm2C438Sts0+p0VQpkm0w2EOw+GqkQiDGu
         JUvW8qVcAidxVGsz4TKCIzIYfat7edszzvOKhva1MS5U2LC0KHOmpiA6lOQlJNqcvS3l
         1Uc75BdAST/NqfbBD67hNNy2QJizl9MvNOY1BPhMebIQ+3xZ7APxqUPVP9AqlK1okkAK
         TbyHKZv62twR9hzbIEzvCev9kKB5ayIN6gSp6Gloecev6Y035nXMgQu1PNKisvfXHjuk
         sMidaTFbqTsovmY0sdd7wFC0VBF8NJ0htX9XHUc8mGc9lhkCAmiogRZb8doliDQ4/3nK
         uiSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0N4KFs/+iAAmWrU6V4/9VSGjOXaLTvJgAIawzgxFsA=;
        b=MbuIi7p6TSuJnaOSs71s0pL6aKXdoNipHTuJQYtxVcak7dxjjni0r2hZOw7AErULHp
         hAJb0QQRWvbphQYaR5ZGJxKZehNm7KAlCWJvZdHJH/BSuMmXdOKFnWf5NYBpwMbQBgIn
         pZmCYLPlLyfxAdvgKYhancYBTPKjBjyTC5YqDtaLIn2KMw65mBYm6aOnVGlsdNNzOQi1
         nt+/wrQ+ChZz5yBq5o88fRfMxTqmsjVf0xP4FHlo6hIUjW+3Y6KjKfPLstTo+cPw2Tw3
         boQiO4Q5+K24+HIwe0qj01LnKoDqBVH1e3MDn9G6w7xjwOVt8A5DiyJHobLSLKU+TTwp
         EOfw==
X-Gm-Message-State: ANoB5pmn8KusLLdtRd2tPbkgRPuO7s7wklRIuIatOgEMEPHESanMKR0P
        ZziEn5KG5zy3ULjRlud1gACKe6wA3/klO2aiyAM=
X-Google-Smtp-Source: AA0mqf75MKTlhGnz1E4CXXINOPSa9nBjUcbkaXfrwfxhsfd0tLYkw+DJok+hq9o9gSkC6UTBhlZi3KwG8e47AQe4dT0=
X-Received: by 2002:a63:b54:0:b0:434:911a:301 with SMTP id a20-20020a630b54000000b00434911a0301mr12438454pgl.50.1668894339971;
 Sat, 19 Nov 2022 13:45:39 -0800 (PST)
MIME-Version: 1.0
References: <20221119212436.2028208-1-festevam@gmail.com>
In-Reply-To: <20221119212436.2028208-1-festevam@gmail.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sat, 19 Nov 2022 18:45:22 -0300
Message-ID: <CAOMZO5CVsSixvtW-VBv6dFeyEvsQU+3JzW2Wy_NQ+intAG5EYw@mail.gmail.com>
Subject: Re: [RFC] ARM: dts: imx6qdl-gw560x: Remove incorrect 'uart-has-rtscts'
To:     shawnguo@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        tharvey@gateworks.com, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 19, 2022 at 6:24 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> The following build warning is seen when running:
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
>
> arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
>         From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
>
> The imx6qdl-gw560x board does not expose the UART RTS and CTS
> as native pins, so 'uart-has-rtscts' should not be used.
>
> Fix the problem by removing the 'uart-has-rtscts' property.
>
> Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Hi,
>
> My understanding is that uart-has-rtscts indicates that the UART RTS
> and CTS pins are used natively and we cannot use uart-has-rtscts with
> rts-gpios.
>
> If this is correct, then I can also submit a patch fixing the arm64 Gateworks
> boards too.

Looking at serial.yaml:

if:
  required:
    - uart-has-rtscts
then:
  properties:
    cts-gpios: false
    rts-gpios: false

So I think my proposed change is correct.
