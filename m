Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D084B4C1419
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 14:26:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240598AbiBWN0g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 08:26:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240466AbiBWN0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 08:26:36 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBFC8A9A7E
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 05:26:08 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2D2F43F1BC
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 13:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645622767;
        bh=PtdI+8+uPiMKtPcTbYLUdwlTYloxTDVphk9EdUF2zm8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=FYm3e9fOXdpK2m73LNkXkgZss861nTjQniJjXh/bI5KjAnoy14sgMMYqOVS9tLrhG
         92LG88gZzkKZp8bAUcKxriEHeC6XLJxhGlfWgE1Hl8yVmubKLsJVhVN49nj1wAGRTr
         hLDIehrvLrQvy+jQfvLbRAQFoHsi6RCcd0FvZ4KIbBSbWAGHqXFcN9ctW0or3EOgs+
         rQp3RY3XHCq6NTTGcwz4OHR6/hyJALgWyDAWnuovePXubBochfgaF3G4s3CK0HKMv3
         MZGQxmMWPOWIFb5kohrtu8WdYAkIrKJmkRYZItvskPf61HkQbT0CP4Kbdflyioo+uR
         iW/IY1W3XvGfA==
Received: by mail-ej1-f72.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so7041133ejw.9
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 05:26:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PtdI+8+uPiMKtPcTbYLUdwlTYloxTDVphk9EdUF2zm8=;
        b=ZoNPYaIJst4tbEJ5k9v/hIxbFJx4Wzttcf4S5jbvLdvkJHBslg49myUyfVebdOiF2W
         g8CrKU4/2JfYKNIQ+8CNBXrkfPFxoTE58VEHlLyGQdnBf1lfok3+Nn32H0dHpgP5lyVH
         6z66+s7AtvVxHzrCkNrSztHbMHuDqg+kYf/YP8e1e44UlspgCwEf7i5p4TfXR8RqV5U0
         qDP8+7WHxOlOamBHDC05AhFKAVQTkGubjDhs09J7VE5VigMG2bcsdH7UXLFqrQ5Oa5oh
         ZVYP2mw1mItgJyK3CMcM3AEueJ2UYfbBw+/KyfjqPrXQvDZqMxhs276NgHqnBrAWMTkJ
         JwFg==
X-Gm-Message-State: AOAM530YlPbJO270acD3pjJD3kEDYB8UvXzi/e64z41iCFd0JBa/4sSD
        8G3ytkmjHGHByomdD0uvlI/gq/RWZXYbmnbH+6LBMva0e2fGBUbRipxG6O4XFj0obHNL1Qhd1/3
        HkQV8o0uWUefb34nrYbg+OLHfJLAGAgZ7OHNchgc=
X-Received: by 2002:a17:906:b04:b0:6bd:bf71:ed08 with SMTP id u4-20020a1709060b0400b006bdbf71ed08mr23405195ejg.585.1645622766591;
        Wed, 23 Feb 2022 05:26:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxCfMw7qk7j/oxTgQsdqHA7i2FsSbGvByk1qfJ1Smy+/dKx4SJUHcvGGZFuCdaso8N1+cLGBQ==
X-Received: by 2002:a17:906:b04:b0:6bd:bf71:ed08 with SMTP id u4-20020a1709060b0400b006bdbf71ed08mr23405179ejg.585.1645622766439;
        Wed, 23 Feb 2022 05:26:06 -0800 (PST)
Received: from [192.168.0.125] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id o17sm7714109edr.47.2022.02.23.05.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 05:26:05 -0800 (PST)
Message-ID: <b591b26e-1a80-e17d-4525-989b357e97b1@canonical.com>
Date:   Wed, 23 Feb 2022 14:26:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 1/2] dt-bindings: iio: frequency: Add ADMV4420 doc
Content-Language: en-US
To:     Cristian Pop <cristian.pop@analog.com>, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     jic23@kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org
References: <20220223130808.13352-1-cristian.pop@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220223130808.13352-1-cristian.pop@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 14:08, Cristian Pop wrote:
> Add device tree bindings for the ADMV4420 K band downconverter.
> 
> Signed-off-by: Cristian Pop <cristian.pop@analog.com>
> ---
> Changes in v7:
>  - Fix commit message

Please include the tags accumulated in previous reviews.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
