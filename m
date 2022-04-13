Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 029FE4FF521
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 12:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231622AbiDMKxR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 06:53:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbiDMKxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 06:53:16 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 333FF36150
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 03:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649847054;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8f/PwshmkguRT4VixsIFRRZxWGHz2g1FKjPSgvCys1U=;
        b=YvWwsX42oWJbar3pG2gGY6mBxHDHtTLTuDYGUjDDjmLlUpUs614PFbTHJEsHtV1lAYyvnj
        vk3zTUN8KrpLj9zBM7mb6fm6EGmeEooGpDuoSVj+IOEL2KiGwfIN6695wsgpTZX1jVgp4/
        qXB8rZiu8oWoiK7Wc5xcMWP0bZzkb3I=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-SfqgcPgvORKu0JEPBEpsSw-1; Wed, 13 Apr 2022 06:50:53 -0400
X-MC-Unique: SfqgcPgvORKu0JEPBEpsSw-1
Received: by mail-wm1-f71.google.com with SMTP id v62-20020a1cac41000000b0038cfe6edf3fso2670214wme.5
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 03:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8f/PwshmkguRT4VixsIFRRZxWGHz2g1FKjPSgvCys1U=;
        b=uNAzSTyiV2RubYSNwyuBqdPOOKC7VPnLSrnVUgB8DJN5i5KV+r2PJ22nz4g1g5HQ+p
         lwGE8DpNqXJhUTQqfRbtKDAT9g+AzVFNdU4l/ON+SWsp2LKq3nDHg/uE5oHmwQYnOXzI
         OOnhpQv3Bvvv4IJNuumtghUf2x96IO8vmMAKjobS97uw9Gk37M5sia581ax/30vxaXtz
         qe8JA5srLFZyXh6yvmMvfp7n2UMszjqEl818DQ9d7pIIeq+eU7OiVMi1UF3jI2gVEDs2
         fyLDxILiEDL+QThg0qt4LDbMx1nBr2YuQgrmVEFHpoIDpOWQGXb6GmbJEfSc/4Nyr1+C
         +bVA==
X-Gm-Message-State: AOAM533oLM+ehRTkSsjw+fkNfwoMSnwtGApygThslV0ccXAwn1SdOD5B
        M1UEPQbOpcDeWlQmcx+Af0gwt+Y+rkr4RrmG3KugckopKfXbG5tRVovu7/pWIAzibhj89z3ihUw
        +rj1Aoyli0jokbWGLRyPpXA==
X-Received: by 2002:adf:e2cb:0:b0:203:7564:1076 with SMTP id d11-20020adfe2cb000000b0020375641076mr32602169wrj.199.1649847052082;
        Wed, 13 Apr 2022 03:50:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRxfN1JAPTNpXMTTDU9DhECg4cctSX/rrDt8wkv7XgQMTGGJbHn9zb6tPrmr8j280opAJ2Jg==
X-Received: by 2002:adf:e2cb:0:b0:203:7564:1076 with SMTP id d11-20020adfe2cb000000b0020375641076mr32602150wrj.199.1649847051871;
        Wed, 13 Apr 2022 03:50:51 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r4-20020a1c2b04000000b0038a0e15ee13sm2157211wmr.8.2022.04.13.03.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 03:50:51 -0700 (PDT)
Message-ID: <2e183cc9-603d-f038-54aa-5601f11b0484@redhat.com>
Date:   Wed, 13 Apr 2022 12:50:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] fbdev: Remove hot-unplug workaround for framebuffers
 without device
Content-Language: en-US
To:     Thomas Zimmermann <tzimmermann@suse.de>, robh+dt@kernel.org,
        frowand.list@gmail.com, daniel@ffwll.ch, deller@gmx.de,
        sam@ravnborg.org, linux@roeck-us.net, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org
Cc:     devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org
References: <20220413092454.1073-1-tzimmermann@suse.de>
 <20220413092454.1073-3-tzimmermann@suse.de>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220413092454.1073-3-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/13/22 11:24, Thomas Zimmermann wrote:
> A workaround makes fbdev hot-unplugging work for framebuffers without
> device. The only user for this feature was offb. As each OF framebuffer
> now has an associated platform device, the workaround is no longer
> needed. Remove it. Effectively reverts commit 0f525289ff0d ("fbdev: Fix
> unregistering of framebuffers without device").
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/video/fbdev/core/fbmem.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> index bc6ed750e915..bdd00d381bbc 100644
> --- a/drivers/video/fbdev/core/fbmem.c
> +++ b/drivers/video/fbdev/core/fbmem.c
> @@ -1579,14 +1579,7 @@ static void do_remove_conflicting_framebuffers(struct apertures_struct *a,
>  			 * If it's not a platform device, at least print a warning. A
>  			 * fix would add code to remove the device from the system.
>  			 */
> -			if (!device) {
> -				/* TODO: Represent each OF framebuffer as its own
> -				 * device in the device hierarchy. For now, offb
> -				 * doesn't have such a device, so unregister the
> -				 * framebuffer as before without warning.
> -				 */
> -				do_unregister_framebuffer(registered_fb[i]);

Maybe we could still keep this for a couple of releases but with a big
warning that's not supported in case there are out-of-tree drivers out
there that still do this ?

Or at least a warning if the do_unregister_framebuffer() call is removed.

Regardless of what you chose to do, the patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

