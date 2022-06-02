Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02CDA53C12F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 00:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239853AbiFBW7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 18:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbiFBW7f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 18:59:35 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 74CA21E3E1
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 15:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654210773;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=vtC3/HRoHB3wvoKqlgfwWmQAUyakQjajXqU9GRPpbI8=;
        b=gUVDFFvDkE3fEyAMkY89XuQsUmnSCa7bEB/PYbykM71/2H4Nb8OSzXZ1Nph4x7JwF0sKkq
        ZO1yTjaqu+jzGVcQYuY/SQlCbhs+ecGxr8knBnGJ8GfbUEPrVSQn+fwI7B5mlhBisSjAf9
        tyUv5N4QJi0raudQ1kUGJIFaFPqdm8g=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-JW7WW13kMKeGg5269UCvqw-1; Thu, 02 Jun 2022 18:59:25 -0400
X-MC-Unique: JW7WW13kMKeGg5269UCvqw-1
Received: by mail-wm1-f70.google.com with SMTP id az7-20020a05600c600700b0039c3ed7fa89so42385wmb.8
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 15:59:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vtC3/HRoHB3wvoKqlgfwWmQAUyakQjajXqU9GRPpbI8=;
        b=EvOzk0u8qzidjdZmX+6ck/XjIg159f2c80frbkDMsmXMY47X+Din/C5OCZ+nSUve+G
         LGpPE4/BTC82UNjs4SNJe1sRZQMF01jTJHHu0Cg1TWYX9uOZaa99uGVXU70rk65OPAuL
         /zEtN2Um+4rgUqHCntNOw4d/QVrEayHlfLNetzGLwWLs/g1+Cc8TAAuVlFz9dXBBDuQT
         ik4IlZbgq1Yn4YH7EeEMDO/iF1caS6WTNOsuauOlNrH4PbIdis+juyPL3qXW1RwSA5Bl
         iPAenu0gM6PIYE5iUzaa693oo+4WEbj/DPdO0iRecDpWv4P4FhVASz8Iic29t4P7ldkK
         jHXA==
X-Gm-Message-State: AOAM533t+IriiU8b3AbfpyGmvZY7IDdu8/zuibHe9BZYJbqyrXPzHQ7d
        oj6ky6YvWAMAfobie7iq6DfhDyOmdK+8DaqJ5pziqikjopQLzhwZTAlfOHwbjAB8XSq0zyQGcYi
        OYXVcbrjkydZoIVFEQjrVKw==
X-Received: by 2002:adf:f6d2:0:b0:211:f0bf:3d14 with SMTP id y18-20020adff6d2000000b00211f0bf3d14mr5614280wrp.264.1654210763874;
        Thu, 02 Jun 2022 15:59:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKYdxQ6DSZ5lIk0yCb5r+1V1zpn+ZtWuF/mSEGqRZpplstmUUWsmoOJ05Vk6poEXASLfJruQ==
X-Received: by 2002:adf:f6d2:0:b0:211:f0bf:3d14 with SMTP id y18-20020adff6d2000000b00211f0bf3d14mr5614261wrp.264.1654210763679;
        Thu, 02 Jun 2022 15:59:23 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l9-20020a7bc349000000b0039746638d6esm6535821wmj.33.2022.06.02.15.59.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 15:59:23 -0700 (PDT)
Message-ID: <8c000696-256b-e99d-0cf7-7cd28602c6a9@redhat.com>
Date:   Fri, 3 Jun 2022 00:59:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 2/6] drm/v3d: Get rid of pm code
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
 <20220601110249.569540-3-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-3-pbrobinson@gmail.com>
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
> Runtime PM doesn't seem to work correctly on this driver. On top of
> that, commit 8b6864e3e138 ("drm/v3d/v3d_drv: Remove unused static
> variable 'v3d_v3d_pm_ops'") hints that it most likely never did as the
> driver's PM ops were not hooked-up.
> 
> So, in order to support regular operation with V3D on BCM2711 (Raspberry
> Pi 4), get rid of the PM code. PM will be reinstated once we figure out
> the underlying issues.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

This makes sense to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

