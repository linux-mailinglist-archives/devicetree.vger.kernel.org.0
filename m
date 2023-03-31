Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9456D1AA5
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231448AbjCaIn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231932AbjCaInm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:43:42 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9CCC1C1CF
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:43:09 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id c29so27970596lfv.3
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680252162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IevZS0joNS82IencNXfsPkazLIzoG9/Vmz0nPvH8I7o=;
        b=Xo+gy/WFFx+pso6hhAElvme+rTjYErlFrqUfcvfcHEGUbdxYDrCWKZLg2zFcvofh0w
         9fB+/LSYS+ZACFMc7N/hvE2/fk3+Kc5SC5StkOBuZq3Mib2fGyxN4WbF4mgYwydTkMPt
         pe9YGt0e5+r1L9sHyvS8S27nRgowintaETXkWsaE6rP032hN2XqeP8zA2eCVEutjrOaH
         85JJ5ZO2pYxreEaW2oCas/8BvQE5JZv7AT0e7ch1nFEOSfP/6Q2khH9JW86uypMdj1wh
         LyHBblU0wnWzkDdgujKgT9J/MVvoBzTlUrVdxKP40aCZWSCdXQuP0meRvvDccOZpSLGI
         Y7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680252162;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IevZS0joNS82IencNXfsPkazLIzoG9/Vmz0nPvH8I7o=;
        b=70Ewlsc2DxfI5Ps9UAlNlP3r4ntfF/cn7J0XnsQpncX0Qrf+ZSqIzG02uMcpdMmJ1T
         l0tJn5nogeslWt653dxo8ZuwQb6fJNXgTFpo0s3INhAZubZM1MaCQ+FamGAiFqWo25ja
         /GOWJwPPcmR2ttu1qXD5ZhyuP4PbTKmMHusIHbaDYxeAvIeDleYY6Ohz6AVfG44EqGNq
         ch3o6oUspiAnma170uPlTru0V6jikwZXJgd+EslYLtfoo9PmwbXB0mXWCdRk1VPUI2I+
         3aFohZpIvvNJytp+TnQr3j/UB0+DE5SF3vyTM5X+cM5esPMX/7BEe/sdN+JwEZbMCWMu
         B8xQ==
X-Gm-Message-State: AAQBX9e742frRl9AN158kmosEuTCFuXeYVDNYFBY+0BpEeDZtTF5D647
        mIw4UmBL5OEuJZoVJWqc7kYBbQ==
X-Google-Smtp-Source: AKy350ZG/K6wcHdsuRA1BnkFGsAXfMWNfwKAVZ6IoMpIC2JXLzIFxyS/w3Hpu85ByVgXWbR3W3P0Yw==
X-Received: by 2002:ac2:5287:0:b0:4cc:a107:82f4 with SMTP id q7-20020ac25287000000b004cca10782f4mr7866348lfm.64.1680252162059;
        Fri, 31 Mar 2023 01:42:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s10-20020a19ad4a000000b004eb15952669sm289570lfd.141.2023.03.31.01.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:42:41 -0700 (PDT)
Message-ID: <ff88e5d3-4c31-7698-b8d1-8a03b9fea643@linaro.org>
Date:   Fri, 31 Mar 2023 10:42:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 2/6] dt-bindings: display: bridge: toshiba,tc358768:
 Add TC9594
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        devicetree@vger.kernel.org
Cc:     Francesco Dolcini <francesco.dolcini@toradex.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org
References: <20230330095941.428122-1-francesco@dolcini.it>
 <20230330095941.428122-3-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330095941.428122-3-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 11:59, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add TC9594, from the software point of view this is identical to
> TC358768 with the main difference being automotive qualified.
> 
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  .../devicetree/bindings/display/bridge/toshiba,tc358768.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358768.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358768.yaml
> index d6dac186ac59..8f22093b61ae 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358768.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358768.yaml
> @@ -4,19 +4,20 @@
>  $id: http://devicetree.org/schemas/display/bridge/toshiba,tc358768.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Toshiba TC358768/TC358778 Parallel RGB to MIPI DSI bridge
> +title: Toshiba TC358768/TC358778/TC9594 Parallel RGB to MIPI DSI bridge
>  
>  maintainers:
>    - Peter Ujfalusi <peter.ujfalusi@ti.com>
>  
>  description: |
> -  The TC358768/TC358778 is bridge device which converts RGB to DSI.
> +  The TC358768/TC358778/TC9594 is bridge device which converts RGB to DSI.
>  
>  properties:
>    compatible:
>      enum:
>        - toshiba,tc358768
>        - toshiba,tc358778
> +      - toshiba,tc9594

If it is the same, why they are not compatible? I got only three patches
out of six, thus I cannot check by myself. Please explain.

Best regards,
Krzysztof

