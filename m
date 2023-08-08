Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 224567740B7
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjHHRI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbjHHRHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:07:31 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 190955FDC2
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:03:07 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-4871ccf89f7so1710797e0c.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510561; x=1692115361;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YwNCnLA4BDgyiFzQID8GItNEy8vbOZgDk2M81TSduC8=;
        b=PWOuw787v/co5hq1ZxYVawfA4Rc39HFiAm1ZQgt2EEB5hFpbJX+yqEF3eZwbgBSCsa
         BjlBNECXgLMasX1ISnxbUP3M6+MVDI/WOeYZO8wY0qAPUz6tdD1MXnMpS4BX4Y4bflgO
         +OqwEN4SFSpQ5c24ZLruEhnoOwV4zwjhC4VIeoHc+08pQB4oUD5YAt8UGTOmiVpgf60B
         oYwBQWXwQI06n8Il26SR4MzYUJO5lGNh/nsN+1w4c++LgK08MMLzLWK4yRMVF+6fJX3O
         YCLEqmTK4BhsHo//xdA7PurgHJGARNCURmtAzNK2x1V5ZmqRVvoasU0de9wm7/0Mh+4f
         CAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510561; x=1692115361;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YwNCnLA4BDgyiFzQID8GItNEy8vbOZgDk2M81TSduC8=;
        b=Ns8V6uZ8p9kjSiO0BchXwqBz7HaV1h+Bsl8rhHoloa/6jwz9j5zZ8VgcLOOkicMhKz
         aMb9CD9hxmd3Y6XrnNY6y3Cy1YsoDOAHcKcJmo+M+Rij09SB0kVA1UqJ6MFClZ8tr5Gk
         djPo31TOh2bwwDEsOALG/vgf6plm6u0qpsei3IKpFCqGit5btjDBFvQiV+XuLBQNHG4s
         gqs4wCX9/dh+20kG7r5SYjx35A3/NvYld0FeaIp5c9XXb9dlcnhdiNJ7Phxppk4U1KqJ
         nwmlRlVQJAnUtKQuPZjQqNbq0gdztwm/4IW+4mIxavejYBaPSqRIttFAKVWm59m+qPHY
         YLvw==
X-Gm-Message-State: AOJu0YzuU3jSiBwfUZWEAbpFzQnAXsq/LnD8qgDEuS2ulaBzpsUQUJT0
        vYiIrZGwMz9F5rQw4UXojEvrpTwxyAk3yMmKEqhFNfgaLINvORD4
X-Google-Smtp-Source: AGHT+IG9EEqlXpXWekaLAYR4RRWGuO58HRpkGWaCiIehSEMsiNiSZuyy3X4+ishH9SYGOyW6zxa/y5LIsjM1cUS7rOQ=
X-Received: by 2002:a25:24b:0:b0:d4d:b6de:69bd with SMTP id
 72-20020a25024b000000b00d4db6de69bdmr7351002ybc.23.1691484651033; Tue, 08 Aug
 2023 01:50:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230728102616.266235-1-varshini.rajendran@microchip.com>
In-Reply-To: <20230728102616.266235-1-varshini.rajendran@microchip.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 8 Aug 2023 10:50:14 +0200
Message-ID: <CAPDyKFoeLar9SRiq_dusmo0ZQGoeqKygi0Y3HOPQ8FO+BaaCTw@mail.gmail.com>
Subject: Re: [PATCH v3 19/50] dt-bindings: sdhci-of-at91: add microchip,sam9x7-sdhci
To:     Varshini Rajendran <varshini.rajendran@microchip.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 28 Jul 2023 at 12:26, Varshini Rajendran
<varshini.rajendran@microchip.com> wrote:
>
> Add microchip,sam9x7-sdhci to DT bindings documentation.
>
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>

Applied for next, thanks!

Next time, please convert to yaml before changing the bindings.

Kind regards
Ulf Hansson

> ---
>  Documentation/devicetree/bindings/mmc/sdhci-atmel.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> index 69edfd4d3922..a9fb0a91245f 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> @@ -5,11 +5,13 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
>  sdhci-of-at91 driver.
>
>  Required properties:
> -- compatible:          Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
> +- compatible:          Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci"
> +                       or "microchip,sam9x7-sdhci", "microchip,sam9x60-sdhci".
>  - clocks:              Phandlers to the clocks.
>  - clock-names:         Must be "hclock", "multclk", "baseclk" for
>                         "atmel,sama5d2-sdhci".
>                         Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
> +                       Must be "hclock", "multclk" for "microchip,sam9x7-sdhci".
>
>  Optional properties:
>  - assigned-clocks:     The same with "multclk".
> --
> 2.25.1
>
