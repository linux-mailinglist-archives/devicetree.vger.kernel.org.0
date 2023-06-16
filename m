Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB0B9732FFA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 13:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343763AbjFPLgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 07:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233498AbjFPLgh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 07:36:37 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F2830CF
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 04:36:29 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b349703e90so7687331fa.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 04:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686915388; x=1689507388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bj3/Cr8bx142cZ0HMiJJZaOQvFwE/cQ/HR9pNIVtdQ4=;
        b=zvjOxT5aVhulmeL1zKnzbSugk7MTTEODWhYwMNSZHCEmhNfRcLYS9wNMnuCvsk6MnJ
         ewf9X60yNTVfWn9kpUf5768p4vfev5JY9tOYkUvtJ7sOpQbmj7BOAwlG/fyaxyuj08+i
         PlfxbvspExt5AYvGw+2vNb0ogtP67eYngaMaGHg4IQFScSCgLhK9BfV/tw3G8ue7n0i8
         MiRsYu0icJJEICHYTkvGB6/x7LVJGJrlGJn5frLR+Ngsj352ytK/o2L9xZmP2Htzbvk7
         POroCX9IWD6xHgs8mhVfAi/Io50ZfMK5FXrjNs2u90dil6yxAoo9C4TPPFYwACIHdnTN
         cvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686915388; x=1689507388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bj3/Cr8bx142cZ0HMiJJZaOQvFwE/cQ/HR9pNIVtdQ4=;
        b=KDbwiyKj+nGVQ/vKvVfeY1PgTOlasbzySSVhsMM9j4rY+I4vag3UnbSyro1d1S7yFo
         FBUly9xjmnxCnfhAUsRrX2kdyXYMLUuzeA8pbfirz2kS4DVT5wSeeVkja1VYNpFtx8e8
         jB5obcCCFXwAlqYjaxPH6DbrYvT1HoNCO+HrqPzSS1LqijuuNMdWiQpi5Y58n0Wc7c9A
         ByPS+9teJ6JeBtPp9drjhSqEwwb+jukoKHvfK6APfyHCAKG0aM7QGEcouflw+GUDWXQN
         urS72M2BpD+VksF7IMPwrNehBFWcUIFKwaAiza4/ElPJ+7msXxfwJYUb/fU5uS0GKVcq
         lhzQ==
X-Gm-Message-State: AC+VfDzgNilj/A2VNyAtpsr34fFUL91Q344vpVStDGVK6lvh8Hid+pPZ
        Qil42U4XQ3cVHnDBgwD1woBeSA==
X-Google-Smtp-Source: ACHHUZ4ZU0lJCnLp7LVEi8gIf4pfdlo1b0c8gGHv53BG3JU2p7CDlyixqvN8TH4H/NXDgvG973RF4w==
X-Received: by 2002:a2e:834b:0:b0:2ac:70fa:fb7b with SMTP id l11-20020a2e834b000000b002ac70fafb7bmr1582777ljh.18.1686915387773;
        Fri, 16 Jun 2023 04:36:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c7-20020a056402120700b00514b99afa57sm9837710edw.44.2023.06.16.04.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 04:36:27 -0700 (PDT)
Message-ID: <a9098664-ac16-eddb-3e2d-78eb08ac973f@linaro.org>
Date:   Fri, 16 Jun 2023 13:36:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: Add SolidRun LX2162A SoM & Clearfog
 Board
Content-Language: en-US
To:     Josua Mayer <josua@solid-run.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>, Marek Vasut <marex@denx.de>,
        Fabio Estevam <festevam@denx.de>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Andreas Kemnade <andreas@kemnade.info>
References: <20230616110610.32173-1-josua@solid-run.com>
 <20230616110610.32173-3-josua@solid-run.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616110610.32173-3-josua@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 13:06, Josua Mayer wrote:
> Add DT compatible for SolidRun LX2162A SoM and Clearfog board.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 15d411084065..438a4ece8157 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1373,9 +1373,11 @@ properties:
>        - description: SolidRun LX2160A based Boards
>          items:
>            - enum:
> +              - solidrun,clearfog
>                - solidrun,clearfog-cx
>                - solidrun,honeycomb
>            - const: solidrun,lx2160a-cex7
> +          - const: solidrun,lx2162a-som
>            - const: fsl,lx2160a

You change existing entries, breaking boards and changing the meaning,
without any explanation in commit msg. That's not how it is done. Please
provide rationale in commit msg.

Best regards,
Krzysztof

