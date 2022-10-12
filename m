Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 705B35FC610
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 15:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbiJLNMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 09:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiJLNMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 09:12:06 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B06DCBFF2
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:11:48 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id b25so4518945qkk.7
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bSuVtxQGTyseURL7iIpqoWMIO787v64Us5vsJhx+Oqw=;
        b=m1+rxYNLiHD2G9lUxA+Q95eLdJFGk0q6Sq8J52YqKJbiaNQLieBLBpfNLJ9XUFZyYh
         BFUVMKWsoLanUwjefLRwM2mSIYd/DncQfo31RRuP1vxK+Kihs86O5rSPOtfXXu6JTr/w
         cj97doNfAZFipxpsOeqOapJBssPtA2wR9kuuOumxyc77u2/GgHRWYIAU4ktpAUWVMYpL
         n0b4W6eq7ReIyGLdtFtXxmqNd42EeiV1XDviro3LEWWtW5L0Z30b81WNHbXZkazdzPSl
         8PgdWWWjXvqm+2jHCWzUDHKdxJgdL6LHwKqu3B+cAP6XBC4v9YrPhBUuVLsGUbUBCDQ0
         TB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bSuVtxQGTyseURL7iIpqoWMIO787v64Us5vsJhx+Oqw=;
        b=zOIujMlADxNUp1LmaD0W9mnrDgZCvjN3U4tNs4IQ2LiIv2mwUuSkshIZ9xQlijw1Pw
         te0q3fM8DsBltSh3rAC3wpk5Y9uoWoDiIJNAuHgXa890X27auVCmmQPxqdFc3zsxwwbO
         iTfXLGvtaKQw17M4zCO38D9nhEVAmFIC8NOzVEFkzFCnmHqLRxxbmQOE0QcLGqr8JqGB
         lzNxi/nxYNzUpHW88iw2pAaHpo/C138M5WwPKgl4bTehoV+dWpyxx1Ktkki7cc6au4FM
         2wMlRBEyLnP7N1prqXROv+pAwvfhGAQ0FBgvKkzxMOcLKww2UKN2qM7MJGllDVFZgs+d
         JV6Q==
X-Gm-Message-State: ACrzQf2MhYr5eL/L+RSr9g6Tt+XiePZcbVdw765aD/0sRkWg3OiML4rd
        nlVI2Hxpi3IhuChSINaOTgLtGw==
X-Google-Smtp-Source: AMsMyM7SUhR3PVQDSvUa9yBhsfUnrnqqFXcAMd3v99I4PTx3kh5i4oD+kuf+3P8urNimrRb5d/BSqw==
X-Received: by 2002:a05:620a:178b:b0:6ce:7f8e:63b4 with SMTP id ay11-20020a05620a178b00b006ce7f8e63b4mr18978626qkb.686.1665580307679;
        Wed, 12 Oct 2022 06:11:47 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id f11-20020ac8068b000000b0039853b7b771sm9334123qth.80.2022.10.12.06.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:11:47 -0700 (PDT)
Message-ID: <5496481d-99b8-3ffb-2e90-85b959083c7a@linaro.org>
Date:   Wed, 12 Oct 2022 09:09:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 09/10] dt-binding: arm: sunxi: add compatible strings
 for PopStick v1.1
Content-Language: en-US
To:     Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     soc@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org
References: <20221012055602.1544944-1-uwu@icenowy.me>
 <20221012055602.1544944-10-uwu@icenowy.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012055602.1544944-10-uwu@icenowy.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2022 01:56, Icenowy Zheng wrote:
> SourceParts PopStick is a F1C200s-based stick-shaped SBC.
> 
> Add a compatible string list for its v1.1 version (the first public
> one).
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
> New patch introduced in v2.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

