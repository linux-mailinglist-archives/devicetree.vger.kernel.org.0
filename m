Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6775C6D1AA0
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:43:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231901AbjCaInW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231928AbjCaImz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:42:55 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60C31BF41
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:42:26 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id g17so27960632lfv.4
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680252112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=09swxF+Nj+Xdb2rdxxkyYt+YX5gFiLq7X+YfiiWATXU=;
        b=QqMdhWIYeCm7i8YTYpM6RTk4uC3USAlhTr1cbH11KJzV70SFd4sr2hgHWMw2UjUj/U
         z9fnbpijZSSSITJsrKuqjMYuvd+ru/dyQTxa9YMHLNEdILQnpyPXtXlO6iGnl2QY329h
         W5qR4DcjiGRpZmHCwQg0gyllLQivP7vSYPu2Ai9hLrfj2Su8eCmUv0j5ZAviYJ2sryxN
         kizDPi1nH8rNUNBNnoZfKQT7Qr1BBuRF5/NXd4l0RJAHrZAj/SZ3DJiIMMBRIMI5zr7u
         tjZIxMfkczi6OIUJO0GPfbXsSXtnDgwwhToBLl5sigKMFUejTJp5IuTaqgUGa+f7T4So
         QZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680252112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09swxF+Nj+Xdb2rdxxkyYt+YX5gFiLq7X+YfiiWATXU=;
        b=bm9pwL27ySfQFAAiWKq7gD0GcgqLnkMC4sBw7xz+kkApH13Qwwv1Z3Tt5pz1rwplm9
         fK6ROIQ6RhMSCe41pBuWad3unVH8B/n184l9/V/Xcc3flGKPCbOXRdVN8Rjl4Isoa7Wk
         mOz5oVXcOBeSGwRU6QDJk0zuSxTzDNOvXpbGiS9p5I7NyVzGs5O0pktc5rGnJh86Ls9r
         lFE2GfMY3odLeSF18x/PXXYnp+3wkbMAyXwuf2xLRcXRphSx6VZlA3oammRPrlmuepEE
         zlgDxPAtSqNX+UWlWkgb9PAMoiOtAJUdvSDc7Rp1kUJdqscwGLgaYtaXAdp9HMELa0hZ
         gnlQ==
X-Gm-Message-State: AAQBX9fdwYjZG5K9+cvkRGJqXItmLLCk3en4myciOcs8/8uBL++Byk3d
        cJQlGTd9Xh2XKP4ZkZKwHMJhFA==
X-Google-Smtp-Source: AKy350ZEcpE2BiiN8ZXisNpNjVKAac7e7IUuT1hTuHLZ5NdGEbP+EmXcWQS8P1hRsVOlFWGNCkkPSQ==
X-Received: by 2002:a05:6512:513:b0:4dc:790c:910b with SMTP id o19-20020a056512051300b004dc790c910bmr2583994lfb.20.1680252112037;
        Fri, 31 Mar 2023 01:41:52 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u12-20020ac2518c000000b004cb43eb09dfsm288838lfi.123.2023.03.31.01.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:41:51 -0700 (PDT)
Message-ID: <e775c230-7092-df3d-35bd-77fd83a41529@linaro.org>
Date:   Fri, 31 Mar 2023 10:41:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/6] dt-bindings: display: bridge: toshiba,tc358768:
 Fix typo
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
 <20230330095941.428122-2-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330095941.428122-2-francesco@dolcini.it>
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
> Correct Toshiba spelling.
> 
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

