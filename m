Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BCF56E40CC
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbjDQH0Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:26:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230300AbjDQH0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:26:15 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1568C1BDC
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:26:14 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o29-20020a05600c511d00b003f1739de43cso853627wms.4
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681716372; x=1684308372;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ljLgaaf57A126KMMOllSF/kT0Vj9S+Mosp/GL21iGtQ=;
        b=qI3Wq776VwZ2nPk9GQWZBx9TGiAT78sh8fzSiMUeSKKIpsmgbl8fe7HI7tdaZLget1
         xaSGiv0/HvATfZUWp2LY4l7T6deS9FFPP+X+0DQjqUontVDYSgqCdyJ1VCe4klUPQDEu
         BVb+FPQxloA12zau4dBE6uEVdqC7epvq+DpSRr12lMOVu6cghkeJqyhkYm903pvBEzkW
         lQHpu/hZ9naLkUdg2RLgQqbr6ubQ01t3kCAR39GPKXRY3Dik5sJ4CDt0q/rO0QBhpBnK
         +A8PxDu7i1EZW9QENM/oBHD1BhuAdzuFcxWZm7jsY2MPiiN65C7fXCGAcxlvFalXGi2H
         j+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681716372; x=1684308372;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ljLgaaf57A126KMMOllSF/kT0Vj9S+Mosp/GL21iGtQ=;
        b=HGa7KUxb3YkSMprQXKBO1hgvBzPg9XsO9FDBr0o+TCmg2955yw67m07DC2S17H3R3E
         BScQLuPP4AmDTz8AOJmK+3KuqdM9gijNeHnk7KHodZnolqBxNnBEqwbYHGSQ24vlxIBp
         q/AMtt9iwWhCCm40hO6Cv4x8N7EEfVzCic/g46H7/4HG/C0VOceD6LQb5yTduMkVX4J6
         miP4eh4iF/K/2cPCYMuypYG8Mn40N+fdNEnw5AKFagbr4pFOl4O/oMIevx6JwZYIL/Sw
         RzPeNA8ogFY74gVxVmn4jYOm4GHGsSW/emcacm5ZfMGK25K4wn1ySqBS9iGw/nXRKGKv
         6Rgw==
X-Gm-Message-State: AAQBX9eB2VnE7QASQr3C5afpIxDwbJNMarhlZ2C6TWrnVlxr57cJ+1ij
        wuDkWkIlKpkrphiF3XehErkw8Q==
X-Google-Smtp-Source: AKy350aXTDBhJlSS7l+PbovD5yC3f5gUBwVC4AAsGrRjVNtF3fljLlitOHnHziKqn4q7vNPxM16IWg==
X-Received: by 2002:a1c:6a10:0:b0:3f1:7316:6f4 with SMTP id f16-20020a1c6a10000000b003f1731606f4mr2138005wmc.20.1681716372523;
        Mon, 17 Apr 2023 00:26:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a1e1:81a8:1acc:2b91? ([2a01:e0a:982:cbb0:a1e1:81a8:1acc:2b91])
        by smtp.gmail.com with ESMTPSA id y25-20020a05600c365900b003f0aeac475esm9089599wmq.44.2023.04.17.00.26.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 00:26:12 -0700 (PDT)
Message-ID: <e35d5610-6189-8421-2ebf-77d46c42d264@linaro.org>
Date:   Mon, 17 Apr 2023 09:26:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: display: simplify compatibles syntax
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Xin Ji <xji@analogixsemi.com>,
        Thierry Reding <treding@nvidia.com>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230414104230.23165-1-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230414104230.23165-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 12:42, Krzysztof Kozlowski wrote:
> Lists (items) with one item should be just const or enum because it is
> shorter and simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Rebased on next-20230406. I hope it applies cleanly...
> ---
>   .../display/bridge/analogix,anx7625.yaml      |  3 +--
>   .../display/panel/sharp,lq101r1sx01.yaml      |  4 ++--
>   .../bindings/display/solomon,ssd1307fb.yaml   | 24 +++++++++----------
>   3 files changed, 14 insertions(+), 17 deletions(-)
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

