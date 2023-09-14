Return-Path: <devicetree+bounces-215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 144CD7A04DA
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 986DF1F237AB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 13:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594A018E3A;
	Thu, 14 Sep 2023 13:03:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6572420D
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 13:03:18 +0000 (UTC)
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C341FD8
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:03:17 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d801c83325fso990977276.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694696597; x=1695301397; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aCsgoVc5MdDS0OEMSd5NVyJPQJml3xjCRjHmB8pQyQU=;
        b=UmE2vFAwharNvYSJfAL72mxudS2a4wmMf/TkC49VsGZd89aOhrQvypUzbF7VHtx+5a
         YC0BViG1cIGoWdpq0Wk1WSpeJL+12Xh2uJyvSYm4SC027sk8+3R+pbPXDyFh0sgVh+zq
         +toHzyaCDhS2DVcf+VzvePK3BfVZmovOBVq2KdwMDfy5PAWy12EcC9/a0poZjYvQyi/L
         CNS44n8C13mCfK+ICsZayqr9N842nE3AoEGju5c4BBD/ulhQAdP6J0AO99JNrOrCt24I
         Ayvd+SP0ciP7DovwVIQLwsp++nn1D6dz0sQPsuh3QoBcK5aT0bUCOLTT6cWsXl9M78IH
         b8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696597; x=1695301397;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCsgoVc5MdDS0OEMSd5NVyJPQJml3xjCRjHmB8pQyQU=;
        b=YbicXI4/JeDkQmL3fenK+MhQkfGacdRPAf+PMuZcCR7ZdyTdFXtRFZ4Rn/x51kbHOG
         wv5RZhs5vsOKkBkCkTzGuEmmJeLLBemuMfFIqk9ZEHQlFCIg0zi6l26X4TQV1eGaOC4V
         hAiBFhSF2qEgrqtEml4MqNXf21o2MYO67qPYjVvfQfHobU12wi/Q/0J5HmrUiYDqx+cI
         cFiv6b7lguB4PqDF6u5rS5fcjdmzcBI3CSIoyNdf6V9MSLZRx2nnqfRZR6QTLIMW/fKj
         0LDCujyiUNs2qo6ptADU6BqDoKUodjQH1Ole3AySMvE+i6FglUPlLFKIoi6sKYWrJr87
         jrNg==
X-Gm-Message-State: AOJu0YwYhJ9zHDd1oJkQKGvMEQVspj4Rqj6OpXtej5++UUydnrtFx2NY
	dQj+gjQ6SFvBb38pvZouvy/hb3353nRMJlhgb/Ye3A==
X-Google-Smtp-Source: AGHT+IHtq67DZntMzVUKa/tcZfvAY9V5Pu2y+pL8a0RH0Ax2Jq7NeiRTvdNMEGDNeImVEaPGukeWC05mKHKjfg4DqmE=
X-Received: by 2002:a5b:449:0:b0:d54:b34c:1c7b with SMTP id
 s9-20020a5b0449000000b00d54b34c1c7bmr4766279ybp.59.1694696596656; Thu, 14 Sep
 2023 06:03:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230825135503.282135-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825135503.282135-1-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Sep 2023 15:02:40 +0200
Message-ID: <CAPDyKFpZnoVnZt-WN_5YdqesoT_Xcbs56tJunwS5oNZSJySxgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sdhci-msm: correct minimum number
 of clocks
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 25 Aug 2023 at 15:55, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> In the TXT binding before conversion, the "xo" clock was listed as
> optional.  Conversion kept it optional in "clock-names", but not in
> "clocks".  This fixes dbts_check warnings like:
>
>   qcom-sdx65-mtp.dtb: mmc@8804000: clocks: [[13, 59], [13, 58]] is too short
>
> Cc: <stable@vger.kernel.org>
> Fixes: a45537723f4b ("dt-bindings: mmc: sdhci-msm: Convert bindings to yaml")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for fixes, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 80141eb7fc6b..10f34aa8ba8a 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -69,7 +69,7 @@ properties:
>      maxItems: 4
>
>    clocks:
> -    minItems: 3
> +    minItems: 2
>      items:
>        - description: Main peripheral bus clock, PCLK/HCLK - AHB Bus clock
>        - description: SDC MMC clock, MCLK
> --
> 2.34.1
>

