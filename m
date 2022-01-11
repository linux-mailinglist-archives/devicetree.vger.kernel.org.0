Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B27948AA31
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 10:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349175AbiAKJLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 04:11:20 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:28605 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236757AbiAKJLT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 04:11:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1641892278;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BEY4b4g5DYT+cIJBREL/mouUq/7jCThhmlzvu53CyFU=;
        b=KbEbxwXIVBNNVYKJFhNSwU973J4OcaY2wH6Djr1udlRS7TV5OtgTf5FXsHopA6Iv1ebwst
        YuDMkxiHLJYy3Vbds9UebyTrTMQb9CzevgQ6m9BnGMFSOSE+zX/LneCBsgM2/LOzo51jBg
        rlgJQ/ONyyMekJ/Q8Bpfz2OI+zW76wg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-59-_M9f2tWZM4m_tuRUBVQdmg-1; Tue, 11 Jan 2022 04:11:14 -0500
X-MC-Unique: _M9f2tWZM4m_tuRUBVQdmg-1
Received: by mail-wm1-f72.google.com with SMTP id e19-20020a05600c4e5300b003458be97976so1483033wmq.7
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:11:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BEY4b4g5DYT+cIJBREL/mouUq/7jCThhmlzvu53CyFU=;
        b=sejVL+0Ed0tMWUBpohLjb1xMtEa8s9cL1pADvJL8CdgoWzJSgps2cM4u952B0vXrJF
         yukZFqDnXhslOLf5rBg6JlupSfVtVLAqxXKbN5aWhFdZanCuSLzuFsfzkdhYJeQl9VGm
         SYFpltfI6ZI64XYulPjdbWcg4M9/09QhvnhToKlyGHim5j4IP6ZLa1Mq1dDgkSqMh26f
         C1NYvlDeANX788uajB5RYW/uveQtFKBumm8Bu/VHGEQ3rc/06cGJXqraPW+eCovg1CHW
         gbxrvhSquEy1M7HdMgbuahG2DKXH63h/FBxPnJtrzVeOrnvW+BlwUydqFAJSjcW/tBP8
         ztXQ==
X-Gm-Message-State: AOAM531Ggf099XUGabZh5f8Tq2Sg6P9c+ZWTxt5XhI+u3TsbmCL9KzDd
        a0MpRv5W2SFFwyoc7b8pzfEzayyhuRnaOy7nAYSJRsNM8dD/NbG7fx/9gWuWMjjPWJ1cyzZ4F6N
        XZWE5sghagti/Iz8M2POLwQ==
X-Received: by 2002:a7b:c341:: with SMTP id l1mr1625525wmj.60.1641892273633;
        Tue, 11 Jan 2022 01:11:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzo2U92/RGstwNQj9VAOnM/X4Ui1oVvHfIlVxa8zywDWfjs/4P0T5D6vLyWBOFQ7WAkNXu2iA==
X-Received: by 2002:a7b:c341:: with SMTP id l1mr1625504wmj.60.1641892273424;
        Tue, 11 Jan 2022 01:11:13 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id 5sm9945202wrb.77.2022.01.11.01.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 01:11:13 -0800 (PST)
Message-ID: <def83410-30fa-ff9a-ac8d-6b652e314a2e@redhat.com>
Date:   Tue, 11 Jan 2022 10:11:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH v1 1/2] drm/sprd: remove the selected DRM_KMS_CMA_HELPER
 in kconfig
Content-Language: en-US
To:     Kevin Tang <kevin3.tang@gmail.com>,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, zhang.lyra@gmail.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        lukas.bulwahn@gmail.com, orsonzhai@gmail.com, zou_wei@huawei.com,
        pony1.wu@gmail.com, dan.carpenter@oracle.com
References: <20211224141213.27612-1-kevin3.tang@gmail.com>
 <20211224141213.27612-2-kevin3.tang@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20211224141213.27612-2-kevin3.tang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Kevin,

On 12/24/21 15:12, Kevin Tang wrote:
> On linux-next, commit 43531edd53f0 ("drm/sprd: add Unisoc's drm kms master") adds the config DRM_SPRD,
> which selects DRM_KMS_CMA_HELPER.
> 

According to "The canonical patch format" section in [0], the body of the
explanation has to be line wrapped at 75 columns. But your sentences are
much longer than that.

[0]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#the-canonical-patch-format

> However, commit 09717af7d13d ("drm: Remove CONFIG_DRM_KMS_CMA_HELPER option") just removed the
> DRM_KMS_CMA_HELPER. So, the select DRM_KMS_CMA_HELPER refers to a non-existing kconfig symbol.
> 
> Cc: Orson Zhai <orsonzhai@gmail.com>
> Cc: Chunyan Zhang <zhang.lyra@gmail.com>
> Signed-off-by: Kevin Tang <kevin.tang@unisoc.com>
> ---

Other than that, the patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

