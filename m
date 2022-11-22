Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BDB6633AB3
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:02:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232823AbiKVLCz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:02:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232867AbiKVLCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:02:53 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0EA9FD37
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:02:46 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id r8so6932838ljn.8
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WLUdigsApmRK74tKDjONSTE2dMi6WHx5zi8E0wjDf2Y=;
        b=LRFka4TnsqZBKvaCuN+bPxENtgjSKcVFXnRvPHryrCPnVdt9dSHiIKcL/r/tVfsPlP
         eKtCKhwXTM/jDD/WGL546uvNJN17g7IQonRwdZPsfrGvIiHXqxYFd0IyO/KZhHpVvFmq
         K+vsDgKSkaAyNMP688NdlXI1ydEBpf4ySOkkYtV3ywxMcuLP/GWxAh0FNp5LIzbvkoyN
         p1xn5774qN4kGrygDa8ElEiz2qFF7JsHffs4q5xvB+5zwDhGNov6Ipy3uUG5wz6EcBQf
         hocpxC7y8JW1AZlUKl2FKoiNeWnVslDfPAmYz17BPHSCzEORSsHzrgOAZ1xS2NwfjNkl
         otMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WLUdigsApmRK74tKDjONSTE2dMi6WHx5zi8E0wjDf2Y=;
        b=oWTRji0x4RaA7UbQfeVreJQsHOfQiy5t1uURSSXE6gf5GWF/k0/diQB+Fb0eS2ZF7K
         yCPRHfw/8rcjs/RE5UbP/ZYjkjmn5ZNK4Xf8Le0XFOF3DM4MZQKMrZjTpbsasWz+k5Wc
         wUxrifOX1bYSNz5sZfEpafDFN9/gD5Qsx+CC7sQ9X9o7QYT8p/4FUdjZg21abWDlQSOH
         fo5EX/f3aK0FFMNtC59MopnZSbewPFpCj3nrOtqp4UZGknFW6ihy7+B+BAJfy5OGwJEV
         ea4nFj1vHrF+2T5sI6UyasjmrHY7BQNSBDC0Se7rPJtZzCKHKeGY8NRwpSxaUIXiOrvD
         4gtQ==
X-Gm-Message-State: ANoB5pkPc4mzaNyPiybAmv0hx3witeMDPmNd9VMXbuIlZ3iNDtCVPSh1
        79RgYyPnyI7On1bDr/zZzTdE8w==
X-Google-Smtp-Source: AA0mqf7vvF2BfXvTbPIQ/acLujnLA0PSEBSsit/7dUyYrj/tz7iYaoGNrDleBKloFAvsRnGQDkevcQ==
X-Received: by 2002:a05:651c:b21:b0:277:b04:ffe8 with SMTP id b33-20020a05651c0b2100b002770b04ffe8mr7794982ljr.136.1669114964740;
        Tue, 22 Nov 2022 03:02:44 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 19-20020ac25f53000000b0049d83646ce7sm2410812lfz.110.2022.11.22.03.02.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:02:44 -0800 (PST)
Message-ID: <79831a58-0b67-920f-3c07-d304dff5af0c@linaro.org>
Date:   Tue, 22 Nov 2022 12:02:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 07/10] dt-bindings: phy: Add Cadence HDP-TX DP PHY
Content-Language: en-US
To:     Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, robert.foss@linaro.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        kishon@ti.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        alexander.stein@ew.tq-group.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
References: <cover.1669013346.git.Sandor.yu@nxp.com>
 <5f8a3f15f744e201171c20505e1e3c47f5a27dce.1669013346.git.Sandor.yu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5f8a3f15f744e201171c20505e1e3c47f5a27dce.1669013346.git.Sandor.yu@nxp.com>
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

On 21/11/2022 08:23, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX DisplayPort PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> --->  .../bindings/phy/cdns,hdptx-dp-phy.yaml       | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> new file mode 100644
> index 000000000000..b997c15ff0bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,hdptx-dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX(HDMI/DisplayPort) PHY for DisplayPort protocol
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,hdptx-dp-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY reference clock.
> +      - description: APB clock.
> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +      - const: apbclk

Drop "clk" suffix.


Best regards,
Krzysztof

