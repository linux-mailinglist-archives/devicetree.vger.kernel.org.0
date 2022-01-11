Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC8DE48AA4C
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 10:18:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236988AbiAKJSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 04:18:37 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:37272 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236532AbiAKJSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 04:18:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1641892716;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6oHUrM3RS+L3Vz7kWz+c3UDjVYd8L99qu3vLDUjDJeI=;
        b=KOLQPoBCSaHP1ummHXjEBhjc61y1qLnHF/vgYn5s1E5pelhJltCTmUIx2DRQ8BMRINHYWf
        hD67K8J7tjYkmnKNyGuJLOnbj0MoZgRcD+pIQseABYj3cfXVSkhjPyfTUmWIGhOVRoO2PS
        nR7ZPg/PM2oxJ+kqjDGTli5W61GXy+0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449-zdKdPrJzOkq8rc1m_dYQEw-1; Tue, 11 Jan 2022 04:18:34 -0500
X-MC-Unique: zdKdPrJzOkq8rc1m_dYQEw-1
Received: by mail-wm1-f70.google.com with SMTP id o18-20020a05600c511200b00345c1603997so2906973wms.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:18:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6oHUrM3RS+L3Vz7kWz+c3UDjVYd8L99qu3vLDUjDJeI=;
        b=FYx2ybIZpkKWf2oRknm4NkHXXooO18HPqzC5g/PDP8NzWnOnlkwHxy//Ceon7Tf5jp
         FT9RvGE4gYpzLiS4J8fEA58qZwXUIGLhskoH3Xzlt2mhOTUo416rtHBCdmjV/s4LfFKz
         G+Y7KgSnhqLewtpFAu8PRgBOn8/6NI4B6Qrp8SMv2R4A+kLnXTYg1a/woWaTYjkeAQUM
         QNlSwod8k0Ec4CfrzupIdnT41YiJogz/S6kYuvbhd9HRLReHZ0nfbLz7C6+V9almErQ8
         T12JKqORrR/9awTxdtNbQeZR7m6vXcYY0sD6tNL9QtiiDQ/63clvGVkD2LK+2hSrNYtv
         Lyig==
X-Gm-Message-State: AOAM533ivdG5P6P3c36QoNrb2wnD4k9aUyHXo8VEYQKrNjWCZQey17T1
        qaNKZnk8tVZGSD9UyAR9E2gBKbhpE1MLW00lARvwyBahsZZTov+6Bk9tpcqCt8ij/1vbCX/MC2+
        Qse7bPrQvKJJZMg40eFKd0w==
X-Received: by 2002:a05:6000:1e07:: with SMTP id bj7mr3051684wrb.126.1641892713096;
        Tue, 11 Jan 2022 01:18:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyiPRTSDhAfJev3SQP2RODjc8Dk9f2YD2fksE5REufjVnPUKkWdd61Xhdqv1491aGkI0dXbAQ==
X-Received: by 2002:a05:6000:1e07:: with SMTP id bj7mr3051663wrb.126.1641892712909;
        Tue, 11 Jan 2022 01:18:32 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p11sm10444194wru.99.2022.01.11.01.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 01:18:32 -0800 (PST)
Message-ID: <3fb108bc-08c5-032c-bbe1-c819e85a91ed@redhat.com>
Date:   Tue, 11 Jan 2022 10:18:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH v1 2/2] drm/sprd: fix potential NULL dereference
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
 <20211224141213.27612-3-kevin3.tang@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20211224141213.27612-3-kevin3.tang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/24/21 15:12, Kevin Tang wrote:
> platform_get_resource() may fail and return NULL, so check it's value
> before using it.
> 
> 'drm' could be null in sprd_drm_shutdown, and drm_warn maybe dereference
> it, remove this warning log.
>

I would split this second change in a separate patch and just keep this
one about checking the platform_get_resource() return value.

If you do that, feel free to add:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

