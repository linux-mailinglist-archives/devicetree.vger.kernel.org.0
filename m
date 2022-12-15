Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94CE064D9CF
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 11:55:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbiLOKzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 05:55:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiLOKzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 05:55:41 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F298F5
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:55:36 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id v19-20020a9d5a13000000b0066e82a3872dso3349937oth.5
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KCza8Y681Ao9e1rZQSUK5V1OXCO8eMctom4dqQfNHfc=;
        b=fAB7Z9WfgmVcTkFWFzFuxR5lftYNCATZdu+ycm3oWGD8yZFVfpvyn2b90dZwd4q5Ro
         BW1pBNqTY9SzYkA5f0b6VeyLzdjPdH6Jblhf4sNHuuv/jmwhNFN0YJnXFZEskaVWkl1J
         B2LXpmfUf9OVko8KgujbHoKBZ5c5e+KTwwEz9tHHvvdNY/RFsnevCNf9OgCuQF4ZGey7
         wYn3oFQlUB7vhJPBprKglwdDE+owiBu5VKppU+IT9ix8tFrlQS8pG+5hldjeUzoLkPvL
         9puEy4LT93lvLyr3H843v84+otu09aBiATP0M17x/5P9l5EMJ8o03PYjUfx6ncFVIoZD
         unQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCza8Y681Ao9e1rZQSUK5V1OXCO8eMctom4dqQfNHfc=;
        b=KM6CQFxlSBxE+4BcEaB2q4ov0xngXyzBf7Ygi7+l3Ku0F+CsyPqZpMTIY+q7zSKzSK
         CkCxTcGPkqpOFriKyds6gcNHcR8PovxlGgiAp7oI7CCxdn3OpxrKp05gx+I8VhrcxcrL
         V9EE382GSuK2d1+DLs9tb9qtpQboK7LK4HmzJoYXYWRZ0zmB2YwXWmsDoRD6W3lG46F+
         ONeeKv44Xt1409S2cMxUlO5UP1ban6VIAfY7Ra6qo11a5rsGHtdC6DYQU51TfDt7SnYF
         LMjnkYl6atCWAygByil/tWmz/pDsTWCFZz8Rh7pgRinS1s0YHj6tMmlQWqpipTvIqYVt
         +H+A==
X-Gm-Message-State: ANoB5pmdO4e1BI8ziFa18iYibLXszS1jJIWjItcNnU99IrVLHeen0DCd
        cPBrqV3b/NO6QH1WYgV9gUTfmd86JWE39LlWox7z3g==
X-Google-Smtp-Source: AA0mqf6vsiFLO4/fq3hCYI2rVV8TLsFliRqkLUvOPWWBRTNBOF0C+HX+cqTaN7IbwDGYSImtaqxOh0Nf19rdCpKkX+Q=
X-Received: by 2002:a9d:6a42:0:b0:66d:a838:aa60 with SMTP id
 h2-20020a9d6a42000000b0066da838aa60mr46266563otn.104.1671101735831; Thu, 15
 Dec 2022 02:55:35 -0800 (PST)
MIME-Version: 1.0
References: <20221214125821.12489-1-paul@crapouillou.net> <20221214125821.12489-2-paul@crapouillou.net>
In-Reply-To: <20221214125821.12489-2-paul@crapouillou.net>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Thu, 15 Dec 2022 11:55:24 +0100
Message-ID: <CAG3jFytgK0noWteGvXTdSm9as9Q=qfhf_ep3Z8Wv2ofmLzGb=A@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: display: bridge: it66121: Add
 compatible string for IT6610
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Phong LE <ple@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        list@opendingux.net, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Dec 2022 at 13:58, Paul Cercueil <paul@crapouillou.net> wrote:
>
> Add a new ite,it6610 compatible string to the IT66121 binding
> documentation, since the two chips are very similar.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../devicetree/bindings/display/bridge/ite,it66121.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
> index 1b2185be92cd..72957be0ba3c 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
> @@ -17,7 +17,9 @@ description: |
>
>  properties:
>    compatible:
> -    const: ite,it66121
> +    enum:
> +      - ite,it66121
> +      - ite,it6610
>
>    reg:
>      maxItems: 1
> --
> 2.35.1
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
