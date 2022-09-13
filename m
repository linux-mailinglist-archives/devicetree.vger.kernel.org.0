Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5F335B6A3B
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 11:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231551AbiIMJDq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 05:03:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230442AbiIMJD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 05:03:27 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408A620F6B
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:03:26 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so9026830wmb.4
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=u0+/4DOaKm+4ffSLNzqiW9x1Gxog4OJEqiqEoF/yw7Y=;
        b=qryssQyWeKIu75ubPUW0iHm/yVERj0n+y/zNXGQpiKNxdOmJ6aLs0sfq5V+r5W5cG0
         YnaD4AIP7RH4D0c/emc4G3RHaEOlxsBi25NxT2/cQAW5xdIZpv9SzHIyb13EPBFcGYpb
         N8mUAjMOLFE76eY99ClSpFtga+lyDQCtIf/kDAVB7AvaEGboJfYWrzEqzWS4w+keXTsO
         X0kckQAqwsbSA1GQcLjrsMrSy34tokQ9mo77t4cF95/4v3CG5ZYLws6WmqnrliZ/UnZH
         lYGZKE/8HSYKQ4AtouJnerf31WsPtjfscnS2fDGLGoMzReS4ib4G2IBY+7b/z1ExfSWX
         8T2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=u0+/4DOaKm+4ffSLNzqiW9x1Gxog4OJEqiqEoF/yw7Y=;
        b=C9sQxG96NXQ7azKABC9P2/SNutXZSFfkslhoOvkzaVO6jqMaSVBIuHKTG9z9+Vx9E+
         TTZXYeX39H6xs11GSmm7QPK7l1LmtrXfyp19EAJ0ECvi3r5Ux1aoZbBJbeISw7yVq5ru
         jUe2sz1GQ/TGnb5/ML6N/UDvH270tkyGkrL9VI8dn0/5B9yJtGaIEo7s3OjzTPbS4IGQ
         3+9cfbZWitQhN3wZmGf9reIYlbQmIeLLQqUEbVWZhtaVOavg/PCMAuTAST1x2eo17vHJ
         rbU5w1rZpdFaRWvEx0KBBfg0275D+egvWyHWGyal6ADLB9FYuw7aO1AiaJphghJnEgB/
         9Y4Q==
X-Gm-Message-State: ACgBeo1UCTBxMg/8cTHJGteHMg6wi4FpbC90B5MV9/+SuHMY4WHkJVIg
        wrZqIrwYf26RgG1KgD3Rr7kA9g==
X-Google-Smtp-Source: AA6agR6tgHbM7dxYDRZ789TFmI5oqqZizaFVPdsBuEzXTii3bjLRA2QLQp236Cr6ae5gSL9m/8Oupg==
X-Received: by 2002:a05:600c:1e08:b0:3b4:8fef:d63c with SMTP id ay8-20020a05600c1e0800b003b48fefd63cmr1569107wmb.158.1663059804794;
        Tue, 13 Sep 2022 02:03:24 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id n42-20020a05600c502a00b003b31c560a0csm12943776wmr.12.2022.09.13.02.03.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:03:24 -0700 (PDT)
Message-ID: <c931b0f7-9ce6-b270-d11e-9bcf3f304218@linaro.org>
Date:   Tue, 13 Sep 2022 11:03:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
Content-Language: en-US
To:     allen <allen.chen@ite.com.tw>
Cc:     Pin-yen Lin <treapking@chromium.org>,
        Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
        Kenneth Hung <Kenneth.Hung@ite.com.tw>,
        Hermes Wu <Hermes.Wu@ite.com.tw>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20220913084835.78490-1-allen.chen@ite.com.tw>
 <20220913084835.78490-2-allen.chen@ite.com.tw>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220913084835.78490-2-allen.chen@ite.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 10:48, allen wrote:
> From: allen chen <allen.chen@ite.com.tw>
> 
> Add properties to restrict dp output data-lanes and clock.
> 
> Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
> Signed-off-by: Allen Chen <allen.chen@ite.com.tw>
> ---
>  .../devicetree/bindings/display/bridge/ite,it6505.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Thank you for your patch. There is something to discuss/improve.

You already sent it. Please version your patches (git help format-patch)
or mark them as RESEND (it's nice sometimes to explain why it is being
resent).


Best regards,
Krzysztof
