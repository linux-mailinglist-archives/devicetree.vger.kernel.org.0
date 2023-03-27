Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F1F6C9C5F
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbjC0HjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232464AbjC0HjK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:39:10 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A546B526F
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:38:39 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id q7-20020a05600c46c700b003ef6e809574so1223458wmo.4
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902717;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bdQygMFSojhHb9UzbfT0qfrW0CvIqYBKB4dBbixr0z0=;
        b=RAroFrR01Ww0lG+ExefIhmrjcnwgID6UKNSOmMxf7UwU5EMjZkj++Usuz99rkqjoeb
         xeTSiWVzh5lUNo30rwi2Fewo82ErgX2B3g2isj4zC3ZLAvSPZmtJlBsxJp4rcUjQF9wA
         PYCPDlkk3Dj9GRTDeopubjVWJlQxC9v2zfxMj1u7ebjSqJaVcJJgJaC7U1UjLsTW/jxW
         Jatj9wGvQQwdQsifl6izeD/2QgKFhh+y5xTjP6sD+cXvIFXonTD6G+Wgqr4H4/cZ4ZqC
         zv5QIb0sznIOzRVZ1Dvz/UTlCMtFkFRm5OLDyQJb+hwDIHWpH/l0bz4pSnYERBTZC4XZ
         zdOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902717;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bdQygMFSojhHb9UzbfT0qfrW0CvIqYBKB4dBbixr0z0=;
        b=swloyf1toFDo8FV2kYMuBPS9kaBAfRRKv8TrwhucZoW9CS/hCiUAboxTsdP1LTpjnI
         qZgqe8ogEVDJ6uxQwrFlvALkA7SMJJZlPsxdf60Bj2fQjYcJJWZCTPHTW3JGr0jnYkRT
         p+gYsAHzmQZ1inOwtMcWJsogLA/C66KJ8a7hwU6nMm0NC/c1qpPC8q4KYMNlmHiSk+VR
         BF6RA8WrOtj9xdylSf6JtDoiCI1Q/ReGuxnUpfkquyLTirM1tJ0UMlDEy86U3Hm6oDqt
         ghU5yd4jib1H0Qyc4plZrWuQnJA0MMrlk5Fs8wj6VBxIum21IwIAF1JeZAi3sbtrvRb0
         M2sg==
X-Gm-Message-State: AO0yUKXJcjh3TGUfaquAW9lHaPbbaZ8j4bXGClWIK1Ac++ehRCYGQ9+r
        XJ+geUqTEU0KXZdMpdS/zXasFA==
X-Google-Smtp-Source: AK7set+sqDKP0WhKZcIorES5GqH/LBErNInWZwXQtaQi4praEw2pzSfhRkQfrtcDapc68yHrppL9tA==
X-Received: by 2002:a05:600c:2312:b0:3ee:b3bf:5f7c with SMTP id 18-20020a05600c231200b003eeb3bf5f7cmr8585069wmo.23.1679902717268;
        Mon, 27 Mar 2023 00:38:37 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id o15-20020a1c750f000000b003ee1acdb036sm12738246wmc.17.2023.03.27.00.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:38:36 -0700 (PDT)
Message-ID: <0d9b75ed-5bfe-4389-f4c9-3b990191f3fc@linaro.org>
Date:   Mon, 27 Mar 2023 09:38:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 6/6] dt-bindings: display: boe,tv101wum-nl6: document
 rotation
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Harigovindan P <harigovi@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
 <20230326155425.91181-6-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326155425.91181-6-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 26/03/2023 17:54, Krzysztof Kozlowski wrote:
> Allow 'rotation' property (coming from panel-common.yaml) already used
> in DTS:
> 
>    sc7180-trogdor-quackingstick-r0.dtb: panel@0: 'rotation' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml      | 1 +
>   1 file changed, 1 insertion(+)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
