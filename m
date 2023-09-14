Return-Path: <devicetree+bounces-216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C6E7A04DB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0536B1C20E16
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 13:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F1C1D684;
	Thu, 14 Sep 2023 13:03:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D74C2420D
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 13:03:23 +0000 (UTC)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DCD1FD8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:03:22 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d7eccc1b8c6so1056613276.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694696602; x=1695301402; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VY9skImPihszx8GxXcwgYcsBPmwUbBo5w6++v0wJVXI=;
        b=ubCzLP/HTVma8Q1MlDogMtuy7DSzCJuHT7eo99Kzce6UzePg50AduD6K+UcljX9IBz
         auA0+PT/A+pTEYL6RUdaLTly9pi1BYmN1XU6DuXfJCzi0368waHuo5/3yHga4tPJY5lq
         Gx+fHJJg5qi+DaIr5qxQ9gMS/I4YdnfAHUI6SaKARcUv/CjxvYb0q60w3QjbLYtGcJpx
         P5rtWBi1b+CHk9usZPTsT59UV//UUioB8H5ipZzqlC8LmVbXLBsPrtMDF0tlcY3Ob5eO
         PibqeP3QLp0UU5OxoJdDNJhdN+DH7JgWaPXJfH7+UI/xusQJdeLYkWCC/bkOG+QGOjM2
         RnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696602; x=1695301402;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VY9skImPihszx8GxXcwgYcsBPmwUbBo5w6++v0wJVXI=;
        b=MQJ/QOgxBEsJB9/GPSSjdzE+O9gdwy8JinjBY4jHZ06ubpJGtWzbsJS3TczSeYqmpK
         q52xgK6HXc9eWcBIfdMzITny2xUhMoejcA3EpdU24i5B9mZGYoCAvyVXFb4sBN0F8lGD
         kFW0YKPEqzcmBXj9OeqJ2Y01ovEOQkcMszeSLj1QQFTB2CEAZNws8LNYvKOox08D6RJg
         Cm4A00anfKAbU8p4duWZay90PoquXDRW4A0fB13oaCkQNNzOxPtHXDF0bdPDMYDcVrJU
         uE7DITlkXv1OxQAPDU/NHn3qE47KQpVPGg5/vfP6NeM7uJk0J3ffrvJdgX8VEwTN0+GG
         Dy5g==
X-Gm-Message-State: AOJu0YxSSAwyUcXvBNM6Fy3T6/0KJ1UZY0zuoLWkQNiBrjlkrrxgYBrC
	oP8qzVOEg6OP6XL5qNUJydDRPDvu9/ffAxpG0xvXjA==
X-Google-Smtp-Source: AGHT+IGhL7zhq2NyFUv0GFZ1EHoIEM9qG3P/8d1I7taSbdB08lO26SnjWqkAjxlGUrXzLFlXprXfMv+HSjcY8jbLv+Y=
X-Received: by 2002:a5b:685:0:b0:d53:f98f:8018 with SMTP id
 j5-20020a5b0685000000b00d53f98f8018mr4870666ybq.65.1694696599947; Thu, 14 Sep
 2023 06:03:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230825135503.282135-1-krzysztof.kozlowski@linaro.org> <20230825135503.282135-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825135503.282135-2-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Sep 2023 15:02:44 +0200
Message-ID: <CAPDyKFou65jecQVAfe3yKjWqJ7S_maoReK0XA6vhHNsSRKf-Cw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mmc: sdhci-msm: allow flexible order of
 optional clocks
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 25 Aug 2023 at 15:55, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The Qualcomm SDHCI controller lists optional clocks, but still expects
> fixed order of them and does not allow to skip such clocks if further
> one in the list is needed.  These optional clocks are truly optional,
> so we need to allow the list to have different orders.  The clocks are:
>  - ice: used for Inline Crypto Engine, which is actually separate block
>    and merging it with SDHCI is not a requirement,
>  - bus: clock for SDCC bus frequency voting,
>  - cal and sleep: used for RCLK delay calibration and required for
>    certain platforms for such calibration (as expressed in original
>    commit 4946b3af5e8e ("mmc: sdhci-msm: Enable delay circuit
>    calibration clocks")).  Only MSM8974pro has these clocks.
>
> Relaxing the order fixes dtbs_check warnings:
>
>   qcom-msm8974pro-fairphone-fp2.dtb: mmc@f9824900: clock-names:3: 'ice' was expected
>   qcom-msm8974pro-fairphone-fp2.dtb: mmc@f9824900: clock-names:4: 'bus' was expected
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 10f34aa8ba8a..69a213965089 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -85,10 +85,10 @@ properties:
>        - const: iface
>        - const: core
>        - const: xo
> -      - const: ice
> -      - const: bus
> -      - const: cal
> -      - const: sleep
> +      - enum: [ice, bus, cal, sleep]
> +      - enum: [ice, bus, cal, sleep]
> +      - enum: [ice, bus, cal, sleep]
> +      - enum: [ice, bus, cal, sleep]
>
>    dma-coherent: true
>
> --
> 2.34.1
>

