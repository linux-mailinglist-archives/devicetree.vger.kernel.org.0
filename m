Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96A41764858
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 09:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231663AbjG0HUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 03:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231682AbjG0HTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 03:19:47 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA54744B7
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:12:58 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-52227142a27so731981a12.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690441916; x=1691046716;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5QOOvb2lxs5KNQiT3Ck5hNvYTv2ynGtd6aIqYJA0ds8=;
        b=eVHJzIGBwIbRrPhbGk1Nty1NZpje2gznL4CsPzlhsXf1MaIVg2H+C2GBkhnZYMugIW
         2fBe86eUJhaZNS7ZL1WCEGqULzJFWJdG7fo6yV4t4MsS7HhAP5keEq+hYQuWAYQpL3rz
         HSnwzrRGfQbT0VpbXjxtUznTBccEm8bWw3zmlC99nET/vNwj6CcQ8a6AXuKiZZg1TxLr
         fAa9FSw/sYlf/UHQZ5kShQ2v8FN/zyEDM28Tv8pSoWLMNcW5xuwVccptDEBYNoUc5c4q
         ewr3aZQFi+ptYEE/F8+PXNwz/CycHI6PWN5pCQlKlkptT5uUQ+7Cn/skC7t7nhd9Yo4W
         z49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690441916; x=1691046716;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5QOOvb2lxs5KNQiT3Ck5hNvYTv2ynGtd6aIqYJA0ds8=;
        b=D5dHHghk83jIVHe5a8FvRUk8/cGAFwVBOWBAZqXKIqoKN2kgSXr5HxMNFiGIugRadu
         ySXeCrFf01jPEt2Y6uTU1FypM5s7fN02ZIWsQgycJ5j15FY8UusoXZovrW3HKyHdwY5y
         Xyrx0MctYxqxwqkdAc8tbZorEBsavCnBQPzY7jJbe2U67f5Xz5408tXJllyz8aG61ef+
         vsQFT+euAbcyZONaR2AKID9v1pbu3kRuR7s0GPXPGGsDz+oygEg3x2SjFO3au6mrTULz
         iPH5HM/Rc5sqEO/SbNE3h+nu+YYsnRhYDMXBWoUVCzdHuALAQR3OUSF3u4L9K1+rMLOa
         uD9Q==
X-Gm-Message-State: ABy/qLZXT7n1QK7ULgVciiD0HsKTzF+oy1hU0C0WLKjdkBBjBdMaLflO
        5FZsG+B2pNzJ/iEjviTf/pl/mA==
X-Google-Smtp-Source: APBJJlEk+a7Hc4KZY8z+a3kA1RrbZrEBWfhKXbd9tM/WcJrmSVGTnPKRSkbCMiz2Z+9tryjuaeU6Gw==
X-Received: by 2002:a05:6402:5179:b0:51d:e30b:f33a with SMTP id d25-20020a056402517900b0051de30bf33amr1049991ede.34.1690441916468;
        Thu, 27 Jul 2023 00:11:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id o20-20020aa7c514000000b005222dd0b2fbsm303259edq.92.2023.07.27.00.11.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 00:11:56 -0700 (PDT)
Message-ID: <97a8d6a5-c953-cb40-7591-a0494fe17bd5@linaro.org>
Date:   Thu, 27 Jul 2023 09:11:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Move Chunghwa
 CLAA070WP03XG to LVDS
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>,
        Svyatoslav Ryhel <clamor95@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230726185010.2294709-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726185010.2294709-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 20:50, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The Chunghwa CLAA070WP03XG is an LVDS panel, so move it to the correct
> bindings file.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

