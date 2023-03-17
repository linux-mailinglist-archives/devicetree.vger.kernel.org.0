Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58F536BE46B
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 09:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231402AbjCQIzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 04:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231246AbjCQIzh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 04:55:37 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA32928E59
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:55:09 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id cy23so17466297edb.12
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679043308;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dwQCSboZuICS8K0G99TN2ErNpuHmb25ohMxPa9VYNgM=;
        b=VsLpF6UP/jfyNkUsgQrIsNMGXgi/PJovAp/PEgrwKmC7LvQ3vZoDfSi7sJOz+cjCtW
         Mfq7E2g/DpcTuaHtkGSh3KCtenJ9bbJFUitQvGCWLFGfaGQiZbwkz8rVt8EuWtfEs8Tt
         URnRe6zJe4zIgmZtI88okxgqCkeFD4tH4GaR5aNu8xJMplkbBtrpLSWuOzTukThWJu4i
         CwcV7MoVGDVfAuKTzthsNDPWZ0uOEjB2hQrVD7ZjJjEXPz/EjAf/lpZV3tSr51JHdZbB
         jWFioQa7Rf4J2yVF3Wm9Y0EsQ9M+hHR0NZbcmQvD+KOaVToNE/1fHfdLNYGmIxnlwi3t
         tSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043308;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dwQCSboZuICS8K0G99TN2ErNpuHmb25ohMxPa9VYNgM=;
        b=07uR4uwv/kDmy5HlnzJWPSAZjc/Rcz//zlTvogk2F/HhofRJvlWHIuV5E2T2KeLjHx
         AS8774Fw9TccXSqh98W/H9enEdtGPFgQHwzOlXpuqXyRHLCeo1wX38+nDsZ7fljiw/Kr
         beyjqAOFstCyaPxBshcSUXHYqTSzvL0p13iX2M8rgy5sL6etULwtnsCSrPx5YS54B7kP
         y66Yb3Tsw8inGX648enxKIMS50H9qHy49ZWbVTN4aIb9Fw4LFyzjWpDHXEFm+bCrY2qa
         rHm5VieZTXMQkvR4OgTsTjTco5A7Yui7z/iGsfFIwLJ/St7kmL4PBYXNsuQ/hieQB1zO
         MevQ==
X-Gm-Message-State: AO0yUKVeJkF6Zj8YPl64x4pwSNjLDYxfm53tYMUtlv8EzCyl4F5reADy
        NWaimYHlplg/8jJtQ/1nIlbhnw==
X-Google-Smtp-Source: AK7set80Yz1YZY3oiWgcfa6PyrhEtP3Mt3TfQtRSQiG9n3crrunLtvU94OSm8ORktCN5u2WpIKBZNw==
X-Received: by 2002:aa7:dd5a:0:b0:4fb:40c2:f35e with SMTP id o26-20020aa7dd5a000000b004fb40c2f35emr2108143edw.36.1679043307942;
        Fri, 17 Mar 2023 01:55:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id w3-20020a50c443000000b004ac54d4da22sm760848edf.71.2023.03.17.01.55.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 01:55:07 -0700 (PDT)
Message-ID: <349aaac2-a9ef-5cfc-36fa-40ce20bb84b8@linaro.org>
Date:   Fri, 17 Mar 2023 09:55:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/7] dt-bindings: misc: Add the Lantiq PEF2466 E1/T1/J1
 framer
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230316122741.577663-1-herve.codina@bootlin.com>
 <20230316122741.577663-2-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316122741.577663-2-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 13:27, Herve Codina wrote:
> The Lantiq PEF2256 is a framer and line interface component designed to

Your subject says PEF2466, commit msg and code say something different.

> fulfill all required interfacing between an analog E1/T1/J1 line and the
> digital PCM system highway/H.100 bus.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---


Best regards,
Krzysztof

