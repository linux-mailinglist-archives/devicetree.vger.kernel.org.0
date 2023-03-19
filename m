Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 092636C00C4
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:21:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjCSLVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjCSLVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:21:33 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E23B01F900
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:21:31 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id eg48so36422828edb.13
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679224890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UMPw/oyHJZuX+ogXnpclKUIqxr7tSm1VIo4XzWU25fw=;
        b=qHliNLaFdMvoEFtTaSRcywYtM4YR4ORqyJdYdUhWlUbD+NV7f1vt9FZMdfTiJyVyWa
         8yIoRJmVJ7hJnX33Peo7eFrLAg1i99D7GEHkNksLsNKflSsJi5DkloNAZAYM81De5r9U
         shV7JIoIhWpyWL6Fy1hnf5ZDL+aCfpsQJ+FyUoq+OJbIptcgSR6d0GUtE4XXRkk1HuRx
         6FqOCzOn1Qi9xL86Oj1sRfZjgyipu0bkj5qtyHWdKXgfDHfHI2MIiz4impxv5Rff1u7h
         YnyTz94a8kD1t75x8yT6b8PporDpxoiFUN274BSkCgphPLElTCgkSJ5NgjBlvusPxYe4
         NBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679224890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMPw/oyHJZuX+ogXnpclKUIqxr7tSm1VIo4XzWU25fw=;
        b=oswvUYLT3SPyw1VJPt38kAmSaF5wA+sPTdYFGMYNQMSTF/bvN541vZWT8aG+uXTiB3
         G4b53q5bzI7ILj5hkKTIfTKdlCxBLykUgzlLkFORT7sG3Oe02S42kf5lcG++XLKL0e2Y
         iVXjphMLSi0HFMgvRJSgTNgFqTVmHzWm53+DHJ9IczRczjNz1A3TNwEFINGX9VIywVfx
         U0zIWu5Iz9R0Jnt+lxlTt6ur1qA0q28Xz49pEIGUsJFCvctymdR/RQJxL0dmhEQW+3+Z
         ywMORRbX7F2mGE1mGrwU2agHaTmxLYb9GSAsUBA+9OiSAcZwOGnA6Kc8kdPHCEhr/lB9
         ojWA==
X-Gm-Message-State: AO0yUKWGBCHv+orXwjGkgPdRXkyMtmPJTwXWooYL4dQPH6AhgIxNjfCO
        Gx2Gisb2Kb4etPyB2CBuSS+LPw==
X-Google-Smtp-Source: AK7set+nzMIIpS4eFAUFBjW+YmOgbHr0lIeXhFg6ywAWICFvfSPtpL81pL1kNZQm8vs9CXfsBSizBQ==
X-Received: by 2002:aa7:d3d9:0:b0:4fb:d620:bd27 with SMTP id o25-20020aa7d3d9000000b004fbd620bd27mr9689341edr.23.1679224890328;
        Sun, 19 Mar 2023 04:21:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id hy22-20020a1709068a7600b008e53874f8d8sm3106713ejc.180.2023.03.19.04.21.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:21:29 -0700 (PDT)
Message-ID: <5e41a328-2937-8616-2fa6-474854dcbdce@linaro.org>
Date:   Sun, 19 Mar 2023 12:21:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: soc: imx-blk-ctrl: Drop leading label in
 blk-ctrl in examples
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20230317095827.49100-1-marex@denx.de>
 <20230317095827.49100-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317095827.49100-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 10:58, Marek Vasut wrote:
> Drop the leading label in block controller examples, it is unused.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> Note: This was suggested by Krzysztof as part of requested changes to commit
>       0d2c843ce5adb ("dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name")
>       Expand the change onto all the block controllers.
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml   | 2 +-
>  .../devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml    | 2 +-
>  .../devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml   | 2 +-
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml   | 2 +-
>  .../devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml    | 2 +-
>  .../devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml   | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> index e8da8f413966b..a02a09d574a2c 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> @@ -70,7 +70,7 @@ examples:
>      #include <dt-bindings/clock/imx8mm-clock.h>
>      #include <dt-bindings/power/imx8mm-power.h>
>  
> -    disp_blk_ctl: blk-ctrl@32e28000 {
> +    blk-ctrl@32e28000 {

This piece should be squashed with previous. You are changing the same
line twice with two cleanups. It's still a cleanup.

Best regards,
Krzysztof

