Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBDCB53C13A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 01:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbiFBXFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 19:05:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235346AbiFBXFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 19:05:08 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4D3D027FE2
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 16:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654211106;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dnD0SQwuXnJnzuGTCuRRNeW9Z54yBgQvTPH+uvNxZn8=;
        b=MMkHb/NU/ilwbbtd+A1PjDqMqi5HVMXpS40CDWMBeBiv9+hFx8AXMdEcIIMCRF7uUscuia
        phDzs8WsC8fns0JgqO4S7OFk94zSxuGWKKDUGTsShUEI0vSWb+pqK1h27c/XnR94m47xfz
        efcWcOVF1mHIt/qs+yzjmtktwV2dh+0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-63-v2E3LYCOMoWxZstdzgV5xQ-1; Thu, 02 Jun 2022 19:05:04 -0400
X-MC-Unique: v2E3LYCOMoWxZstdzgV5xQ-1
Received: by mail-wm1-f70.google.com with SMTP id m10-20020a05600c3b0a00b003948b870a8dso5837897wms.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 16:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dnD0SQwuXnJnzuGTCuRRNeW9Z54yBgQvTPH+uvNxZn8=;
        b=w9OX9MQ8nh2YrQvO8aUSewpw6yQ/XNKHPkBv8GkKefn4XVexhscz/DR6adxdDuztD9
         kpTi0SleIGEZZ6eCx1WiiwNYjD+vOXaGn4jbStjPO9VhijkUy1eBTNl7e/CSwtZR4h+n
         1RQVdOysVxSz0giU1UI35l6j3Bi/ih9O9RESjvTFC33erzhziofrGfKswwT3IiZB/ISh
         vx8z+hy7ibpcYgtYLzGwXO+AZI11JvBnE+7UPFgPIyx9u285oAjQn//vyi7bZ/adva5W
         8boCplW2304kBhv+f/66jC1+6KwLecmYsuw1Xjghy++wml08FWiEWCRdKGyQHB2SYyAk
         9DNg==
X-Gm-Message-State: AOAM531VjB0kvPLbf82gaIDRyI8LYHanuLzIn4EQL5ebrO6ks/QxTn3P
        NdGOAO2jQGof87eQyFp4mfENyCKdG1WGD08MKe9KEj6Y2hkWD8ElU5c17/nTmq5b4xVWdYFmjgj
        Xh/T3PtynWcHmklDzU5x9Ww==
X-Received: by 2002:a05:600c:3849:b0:397:89ce:289 with SMTP id s9-20020a05600c384900b0039789ce0289mr5936148wmr.104.1654211103799;
        Thu, 02 Jun 2022 16:05:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZsT0S/V0wXOQCnSXr1pqcxR/QdZi+Mc0vGIeliLE5HEZerwm60VZMV9wY46X/+D7HMI36SA==
X-Received: by 2002:a05:600c:3849:b0:397:89ce:289 with SMTP id s9-20020a05600c384900b0039789ce0289mr5936134wmr.104.1654211103550;
        Thu, 02 Jun 2022 16:05:03 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u18-20020a5d5152000000b0020cdcb0efa2sm5511529wrt.34.2022.06.02.16.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 16:05:03 -0700 (PDT)
Message-ID: <581f076f-ce60-03be-dcd3-23fbd96128e1@redhat.com>
Date:   Fri, 3 Jun 2022 01:05:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 3/6] drm/v3d: Add support for bcm2711
Content-Language: en-US
To:     Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
 <20220601110249.569540-4-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-4-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/1/22 13:02, Peter Robinson wrote:
> Add compatible string and Kconfig options for bcm2711.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

I've one small nit though.

[snip]

>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_V3D
>  	tristate "Broadcom V3D 3.x and newer"
> -	depends on ARCH_BCM || ARCH_BRCMSTB || COMPILE_TEST
> +	depends on ARCH_BCM || ARCH_BRCMSTB || ARCH_BCM2835 || COMPILE_TEST

The help text for this Kconfig symbol currently says:

        help
          Choose this option if you have a system that has a Broadcom
          V3D 3.x or newer GPU, such as BCM7268.

Maybe you can add "... as BCM7268 or BCM2711." ?

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

