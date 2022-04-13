Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E99B4FF50E
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 12:45:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231937AbiDMKrh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 06:47:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231156AbiDMKrh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 06:47:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 748A84CD6B
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 03:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649846713;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=iFhpaO4flQWRHjopPtTFPWapfyKNAixT16D8GlIdtis=;
        b=ZM1AOWhcS4FhGt9/TpXInt2jAAsMUmeOZ1/UXueWi2G0Ui7qadUkIQJ5YxaAJTcw1mp41j
        K6c+CD65iOftVuPujhGjmd3adU1BsscwDmX77wUYHzIoksmKOKfZ9h9zdEdJzRbZ3m/WcZ
        Nz3OILNG6CXkelRNCVbJcYsSax51mJ8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-369-NlBHNNJDNDOdcckrOM4uvw-1; Wed, 13 Apr 2022 06:45:12 -0400
X-MC-Unique: NlBHNNJDNDOdcckrOM4uvw-1
Received: by mail-wm1-f69.google.com with SMTP id j20-20020a05600c1c1400b0038eb5cb35ecso2655146wms.9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 03:45:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iFhpaO4flQWRHjopPtTFPWapfyKNAixT16D8GlIdtis=;
        b=FY7vswnbrRbtLKyi5p64MdM7pxfAq9zsmtjkeoTS1lQ+7KtOf4cj+H+iZFE7BszJe2
         puyzyJ6S/hObxpzT+1a9iy7GfInOio5+lIlALIREcFc3CLrQ7K39ORTe8iQW/+u44KgU
         oWAnt5y11HtPJsnfU3PESk880Kk+jhDATt4HPggPui/mrrsycarudqs9CxiwTIfn8lbx
         2q7nqZVEP64ibc/sfjqO/29Khp9F20MMWihxCF/bg/gJyHLi+shI3gVgSl1mNbKRDKUo
         yqmnCf6+FhxKPV5rfUPwchP8oCGqUVnirqJGW5F0YwLmCtDdJfYx4EHyRIEdrt4s0HuP
         JAaw==
X-Gm-Message-State: AOAM533pdO2b/QhncIZ6+Wn4Ax20sWMXCONTtUjnEAAn20EQU3ZHPG2h
        qB0RmkFLETFwcFMkxckPCzcGr41QzptOxw0HyqQVzCW9zWv6Z9fWK3VtFykB7Oha+1HOylUFijq
        w/oeRaJJ7R9fF3HrKN1uOhw==
X-Received: by 2002:a7b:c350:0:b0:38c:6d3c:6c8 with SMTP id l16-20020a7bc350000000b0038c6d3c06c8mr7843242wmj.45.1649846710858;
        Wed, 13 Apr 2022 03:45:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrABkEapBmyT3q0GmcVo1LIayLaVhccVgfexcQ/xcAqoykIRQcU/wRPqN7irY6KO22Ca1QDg==
X-Received: by 2002:a7b:c350:0:b0:38c:6d3c:6c8 with SMTP id l16-20020a7bc350000000b0038c6d3c06c8mr7843206wmj.45.1649846710486;
        Wed, 13 Apr 2022 03:45:10 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i7-20020a5d5587000000b00207a8cde900sm6685468wrv.19.2022.04.13.03.45.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 03:45:10 -0700 (PDT)
Message-ID: <23060462-5700-e17a-0abe-a4c5123abe29@redhat.com>
Date:   Wed, 13 Apr 2022 12:45:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] of: Create platform devices for OF framebuffers
Content-Language: en-US
To:     Thomas Zimmermann <tzimmermann@suse.de>, robh+dt@kernel.org,
        frowand.list@gmail.com, daniel@ffwll.ch, deller@gmx.de,
        sam@ravnborg.org, linux@roeck-us.net, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org
Cc:     devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org
References: <20220413092454.1073-1-tzimmermann@suse.de>
 <20220413092454.1073-2-tzimmermann@suse.de>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220413092454.1073-2-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Thomas,

Thanks for working on this.

On 4/13/22 11:24, Thomas Zimmermann wrote:
> Create a platform device for each OF-declared framebuffer and have
> offb bind to these devices. Allows for real hot-unplugging and other
> drivers besides offb.
> 
> Originally, offb created framebuffer devices while initializing its
> module by parsing the OF device tree. No actual Linux device was set
> up. This tied OF framebuffers to offb and makes writing other drivers
> for the OF framebuffers complicated. The absence of a Linux device
> prevented real hot-unplugging. Adding a distinct platform device for
> each OF framebuffer solves both problems. Specifically, a DRM drivers
> can now provide graphics output with modern userspace.
> 
> Some of the offb init code is now located in the OF initialization.
> There's now also an implementation of of_platform_default_populate_init(),
> which was missing before. The OF side creates different devices for
> either OF display nodes or bootx displays as they require different
> handling by the driver. The offb drivers picks up each type of device
> and runs the appropriate fbdev initialization.
> 
> Tested with OF display nodes on qemu's ppc64le target.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

[snip]

> +	for_each_node_by_type(node, "display") {
> +		if (!of_get_property(node, "linux,opened", NULL) ||
> +		    !of_get_property(node, "linux,boot-display", NULL))
> +			continue;
> +		dev = of_platform_device_create(node, "of-display", NULL);
> +		if (WARN_ON(!dev))
> +			return -ENOMEM;
> +		boot_display = node;
> +		break;
> +	}
> +	for_each_node_by_type(node, "display") {
> +		if (!of_get_property(node, "linux,opened", NULL) || node == boot_display)
> +			continue;
> +		of_platform_device_create(node, "of-display", NULL);

Shouldn't check for the return value here too ?

Other than this small nit, it looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

