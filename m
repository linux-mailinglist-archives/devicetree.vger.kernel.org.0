Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F88050824B
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 09:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359856AbiDTHii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 03:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359850AbiDTHih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 03:38:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AEB4712088
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 00:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1650440151;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=EDRif+t8FPfoSOxs98NyECVWbLIHSIo6HCNUFdi+s6k=;
        b=VQbj/asWrbowHWNoBILt0Z+94Wbg6F3P13GmyBBeOm0gbBuYLKZYCl31RHey9ZgdP6psd0
        DgXHxR7vYMjCcfY4PDqnsu6iO4CR/xRiWnYgwN1l6pb+v5LWrwhIffnqu2qiVIuND3TbK3
        T4hW0LHTHAS58ZZEJzfdGdLp1S55QHQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-fARsTMbNMguBqLGWvInXlg-1; Wed, 20 Apr 2022 03:35:50 -0400
X-MC-Unique: fARsTMbNMguBqLGWvInXlg-1
Received: by mail-wm1-f69.google.com with SMTP id bh11-20020a05600c3d0b00b003928fe7ba07so576379wmb.6
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 00:35:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EDRif+t8FPfoSOxs98NyECVWbLIHSIo6HCNUFdi+s6k=;
        b=t3mKbsDp0IR9DY5BPUfDzf/3OccblgLZtO9a2JBlSZXlvgbL1au8oChbRdN7PAMWlW
         JllUpOr0jQqMN3vkGMwMuR/l6FRsOuMbpdknjEJTobukCxOZLyecYQQt94nz1bIfmpAI
         PY93hg2t1kzsvTT2F8s8qLImAATYPSvxiU7OvkW/0EjCjYHCptXbLLA7xUKohQH5dEWu
         2sKYwT2P7LGvIal4DkPzWeK6JLIbbZn/XT6Eo2mPIYm/j5k+HFX7kb3YYKvUkmoaY7ob
         HDhq4iDBcSJzf4jDnblxNFJ1P2eQQ7eWfcmygehE0gNkkG8P/XQ83zhRO1FZxwewua4U
         NcnA==
X-Gm-Message-State: AOAM532aBQRqBOfis1ll5SrBz1oSLecgAm9/Tthy3LheDmS9Z3RcdvjE
        gWM8XwG/arxAiTimN7tbJkOnhMzRqJUORqbr4OQ/QRNRMx7m6bcGPDicknQHW+8TLcoLB544+1G
        0rQ8ITW7/1O+QlkRVcgoMmw==
X-Received: by 2002:adf:e3c1:0:b0:20a:aba9:9b38 with SMTP id k1-20020adfe3c1000000b0020aaba99b38mr2900235wrm.673.1650440149340;
        Wed, 20 Apr 2022 00:35:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6sgyKJ2RuJP3SIGSvgHxw4lhTuGdu8X/eI4ANvHsCXwV93n7yUdOaGB6Ll1aJVD0L1RwOfA==
X-Received: by 2002:adf:e3c1:0:b0:20a:aba9:9b38 with SMTP id k1-20020adfe3c1000000b0020aaba99b38mr2900217wrm.673.1650440149133;
        Wed, 20 Apr 2022 00:35:49 -0700 (PDT)
Received: from [192.168.1.129] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g8-20020a05600c4ec800b0039290a5b827sm10994151wmq.24.2022.04.20.00.35.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 00:35:48 -0700 (PDT)
Message-ID: <621dcf6a-c23d-24cd-951e-26227f465ab0@redhat.com>
Date:   Wed, 20 Apr 2022 09:35:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 2/2] fbdev: Warn in hot-unplug workaround for
 framebuffers without device
Content-Language: en-US
To:     Thomas Zimmermann <tzimmermann@suse.de>, robh+dt@kernel.org,
        frowand.list@gmail.com, daniel@ffwll.ch, deller@gmx.de,
        sam@ravnborg.org, linux@roeck-us.net, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org
Cc:     devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linuxppc-dev@lists.ozlabs.org
References: <20220419100405.12600-1-tzimmermann@suse.de>
 <20220419100405.12600-3-tzimmermann@suse.de>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220419100405.12600-3-tzimmermann@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

Thanks a lot for re-spinning your series.

On 4/19/22 12:04, Thomas Zimmermann wrote:
> A workaround makes fbdev hot-unplugging work for framebuffers without
> device. The only user for this feature was offb. As each OF framebuffer
> now has an associated platform device, the workaround hould no longer
> be triggered. Update it with a warning and rewrite the comment. Fbdev
> drivers that trigger the hot-unplug workaround really need to be fixed.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

