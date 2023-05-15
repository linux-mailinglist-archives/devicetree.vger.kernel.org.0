Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1EFF702488
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 08:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233666AbjEOGY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 02:24:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239350AbjEOGY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 02:24:28 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6241F2128
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:24:20 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-96ab81aa68dso539539966b.3
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 23:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684131859; x=1686723859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZrCCJnB8j04SQidDp73H5RlpBN8W7gZ1uSfWyGv/a0=;
        b=gw8iMh754Svye3MoH+GldEiAvTGQQ3ivNI4h9pqyp5ulva34F/fRSSXTHRZrTh5qzs
         UCZKLAvuLoPMqtYIyZI9y5iqamV6v0lLZDIm39CVNRaXT1ptv7iyTHPWkKezjx2HSMra
         EVvPokJmbZe3x1BxjF1oo/ju1eh1ktk1QTxLgtf3Il3PvdTcOACQiuiPzR3KrOauzvBs
         zLKcxwTWzFe3EIkgo7KYO6tVHvXSMKFf3ZZXtOC9xY4s7FJoRNM7detu2IexNxkmHJEW
         L5es9j/sFYxpWMvQ0VdZGWxmkOesVtUFgTbUP7KEBPPKR52rwzdoS3EOYjeUgR1qvxT8
         FgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684131859; x=1686723859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ZrCCJnB8j04SQidDp73H5RlpBN8W7gZ1uSfWyGv/a0=;
        b=IyJp+TFrnQf9/x50MxLrNbRrFKGSrMTMcIQ+8iBvC0IaNMhnCYw5f8gNFB05Vqg5II
         J0WhlMXweIfrO/wcD7Gb9mWXdLvYEWPX9M908Z/3XH3ESyLNJcX2fqHFcQia+UGf5D4N
         HvBGfpvcN+OH0J1DBhSy4qrMvQIW9/JdEIaDvHbI3lSkuQqzyxZfua1gfg1wRRlIfIXS
         M4MOaCbvDxo/Xwq5qJust3PFRWtFX60C8jBxV71gwit8hKajlS8H/eym0N2eN/s7xgdl
         cTD2g8JDhgPpyryUyRH/2PlHhAZjzkaP4tSoy5lklGBpXflnWQzvYBwbdjQatLhTj0J+
         FZuw==
X-Gm-Message-State: AC+VfDyF2v16HNGn0z1mp2Lbk9ppnJDWyuMMQbGQkXLqqb0OWyH4tNjg
        UBpxhZUY+Qp3tOek3f5ccYcBTg==
X-Google-Smtp-Source: ACHHUZ4k7nrcgyH1Qra2Mu296AsBuB70tNW9OEut7qSvtCarjgHLds9kwSn1mp7vLBj5nECNleh6Mw==
X-Received: by 2002:a17:907:6d85:b0:966:5eb6:40e1 with SMTP id sb5-20020a1709076d8500b009665eb640e1mr25219014ejc.74.1684131858857;
        Sun, 14 May 2023 23:24:18 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id ci18-20020a170907267200b00959c6cb82basm8981963ejc.105.2023.05.14.23.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 May 2023 23:24:18 -0700 (PDT)
Date:   Mon, 15 May 2023 08:24:16 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-riscv@lists.infradead.org, Jiri Slaby <jirislaby@kernel.org>,
        Samuel Holland <samuel@sholland.org>,
        linux-serial@vger.kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 03/10] dt-bindings: serial: add documentation for
 Bouffalolab UART Driver
Message-ID: <20230515062416.mnxuudjbx44skclh@krzk-bin>
References: <20230514165651.2199-1-jszhang@kernel.org>
 <20230514165651.2199-4-jszhang@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230514165651.2199-4-jszhang@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 May 2023 00:56:44 +0800, Jisheng Zhang wrote:
> Add bindings doc for Bouffalolab UART Driver
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
> ---
>  .../serial/bouffalolab,bl808-uart.yaml        | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/bouffalolab,bl808-uart.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/serial/bouffalolab,bl808-uart.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/serial/bouffalolab,bl808-uart.yaml#

See https://patchwork.ozlabs.org/patch/1781053

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
