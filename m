Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD3D737406
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 20:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbjFTSWD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 14:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjFTSVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 14:21:31 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B44C199
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 11:21:30 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1ab19a88324so1253840fac.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 11:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687285290; x=1689877290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jYkDBz2Ev1FOQnndf+//oaOu8V4lb9uno7gOrDIO5xE=;
        b=Dk3BPGxzKJIfDm7CbAU0rHekEMYlzV3TGO3dSN6z0zi0iRA7H+VSvc5VG/gUSBHGh3
         MXFtJvX9Z3z/YqSDyVBqHaUfUug00X1RYWJuGzXQy8PzfCcHqqVOM/0xBkhPxmcHDo0f
         9h9Abme1MUgLZGAsadbF+4oZgiOaYrvr1sf2XjJEZodDEmWzx6+zz5KXsoDX/xmsTa5i
         wXTJGriWvg6xDNYEvb+uR/pzLsQj17E757OAXZEpRE1R05xzlpRb9u2HbZJguW2zU64u
         mdFRT1Igg8mU4ElqxYXQ1JU1MJk8RsggTKHfT8A6I8Q5cb/jmzEUaTqDHa7HV9Zoobxu
         y/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687285290; x=1689877290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYkDBz2Ev1FOQnndf+//oaOu8V4lb9uno7gOrDIO5xE=;
        b=eB/exG8vJRa/PnQw8KWzt+C4wbEElYj4WiV5DIBHlh+70BTZiIR9UJwQ8IO5gaTPFK
         rvU/X6S3JVafNB2g8XE1dKfayBDuFCapOfbuOcLwhM2f2ZO2uQCIFDUiclWBErYtMMzp
         3ls5W1R6k0Cs016MuwhWViv+kb+ddWIJae5nsFMYJANRYNosXlqyvpV/GDvx+7zoDmxF
         /MeM80mcdQuY6CHqZ88hxd76OdGpNynuBJsQ0LnElGOR2DKKu3fHQwOP1AmEUx8j+pg+
         yIZrVy2KRV7AFWvadjq5vkfJMOZy9vl9lBv1Sqmqi4grojOO2HPx6+36v27lJZJX8ujG
         sMBg==
X-Gm-Message-State: AC+VfDzug+hNQASOKe5iSHV0YTekMXHj+666SQ3++ypy2Pt5gWSIoC/P
        eRuCcp+0gAq1civHYPHpydlsPbY8x3p3wWIQlOS94vFaqKZEKG+x
X-Google-Smtp-Source: ACHHUZ7dAvG8wBqWgkxNmSuVOmQfHdBZWlkPXuat6Q7haa8X0FbTORuhXwY7OaTBexgplG+gHQ6YCKI4nZ+vbsyXkFs=
X-Received: by 2002:a05:6870:c8a9:b0:1a6:8911:61a9 with SMTP id
 er41-20020a056870c8a900b001a6891161a9mr5381475oab.29.1687285289959; Tue, 20
 Jun 2023 11:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
 <20230620170725.13794-1-jaswinder.singh@linaro.org> <5ae8c143-64cf-469d-b4f2-bed5bd9ee87b@linaro.org>
 <CAJe_Zhc7-LU0X6epmOoo3nE0j+e_zROsA+J0s0vSUA-sTJ6jBw@mail.gmail.com> <dce591cb-ee6c-15cf-e5aa-6b2dc739984a@linaro.org>
In-Reply-To: <dce591cb-ee6c-15cf-e5aa-6b2dc739984a@linaro.org>
From:   Jassi Brar <jaswinder.singh@linaro.org>
Date:   Tue, 20 Jun 2023 13:21:19 -0500
Message-ID: <CAJe_ZheWkOK8kB_NGp7E=+31ZO6JgO1QMmc5Kbkx_8ESbp8GTA@mail.gmail.com>
Subject: Re: [PATCHv2] dt-bindings: arm: socionext: add Synquacer platforms
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Jun 2023 at 12:54, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/06/2023 19:24, Jassi Brar wrote:
> >>> +properties:
> >>> +  $nodename:
> >>> +    const: '/'
> >>> +  compatible:
> >>> +    oneOf:
> >>> +      - items:
> >>> +          - enum:
> >>> +              - socionext,developer-box
> >>> +              - socionext,synquacer
> >>> +          - const: socionext,sc2a11b
> >>
> >> That's quite different change.
> >>
> > So it is not carrying your ack.
> >
> >> What is synquacer in this case? You claim
> >> now it is a board, but based on previous discussions and U-Boot source
> >> it does not look like such.
> >>
> > I never made that claim. I said Kojima-san will confirm. He informed
> > Synquacer is a brand name.
> >
> > Currently no code internally or externally differentiates between
> > SC2A11B and Synquacer and we might as well keep living with Synquacer
> > only. This patch is an attempt to be accurate.
>
> Then the patch is not correct, because synquacer is not a board. We
> should anyway choose only one for adding to documentation.
>
OK. I will revert to using the brand name Synquacer.

thnkx
