Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D876353C13D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 01:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232954AbiFBXHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 19:07:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235346AbiFBXHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 19:07:20 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 80C921F613
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 16:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654211237;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9w8a+aZNsc7t/O1IsQf36DrBygwItUKqS/tF9xS7NKI=;
        b=fL3QkAa5t3AatY3swws1S3tev/IZeF87TyTU5y6z3LkRiwwWhMHZWjyYU2rEgrmmdLFzWD
        47bHDH9pqorq1MAEXM1kh+tsTKpQW67J5ADUk2JwUfr6qgEzKDG3siiUinGbzsBXHaaBjm
        a3E3Gt2qETa85BWB/hE0uH5Ky3W9HnE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-473-EWNfaG-ROPGHURAZvR7JNw-1; Thu, 02 Jun 2022 19:07:16 -0400
X-MC-Unique: EWNfaG-ROPGHURAZvR7JNw-1
Received: by mail-wm1-f69.google.com with SMTP id c187-20020a1c35c4000000b003970013833aso3060771wma.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 16:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9w8a+aZNsc7t/O1IsQf36DrBygwItUKqS/tF9xS7NKI=;
        b=fCRrPvlhkU4Yxlj++qVeAvDGLcJA5Imquyo7n+Z+KkYgTWEB/0IA6rcpVU5GVwf0EM
         kMpwWe2Hoqne19FdtYbCJhPXVxcK5MSdskHKIqd0/YyMrGjX79sVr+bWExGR83vgTjWb
         OHU/P9FJH3yvMweoQGajlX3w9tQIfMY54Q+puqLzHCJCoPHWzK5PtU3UnYrlDgVfj0e6
         VYE+V2R0API6Zi1vqI4wv1IdeB+aCNs8qW5TuqWaR4sk+/TielcMoyi0YP8LszJ589aJ
         BSm5a466k8477k4G7Ra1UqmE1sEjwCTW0mtakP3wwct2vdNa3E2xLBU8t3fhgGfucX/b
         RhJA==
X-Gm-Message-State: AOAM5304eKMq7hf7lwKpBHkgJQ5aMfRdYCHmRICpNbXVonXm/KHckrg/
        Rtt1eMjSfBSGqBfJ8CCTFBiEik/zLKzJ3NOY1F6ke0mUtrLoE/eaLVt0KLM+ul2eRd+YHLwrohM
        /0OxUke36BUJ5Z9sdfyeZRA==
X-Received: by 2002:a05:6000:11:b0:210:302d:e787 with SMTP id h17-20020a056000001100b00210302de787mr5469840wrx.535.1654211235501;
        Thu, 02 Jun 2022 16:07:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxNv713vUNRan7JINMr8dLkMgL44Cxs0UXh6wkgp5nMJrYtLvv31xo8KA1AaI96DIcAHFDjJQ==
X-Received: by 2002:a05:6000:11:b0:210:302d:e787 with SMTP id h17-20020a056000001100b00210302de787mr5469827wrx.535.1654211235306;
        Thu, 02 Jun 2022 16:07:15 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r9-20020adfe689000000b0020c5253d8d0sm5508418wrm.28.2022.06.02.16.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 16:07:14 -0700 (PDT)
Message-ID: <ba65a70f-6274-a824-e589-5195e37b2be0@redhat.com>
Date:   Fri, 3 Jun 2022 01:07:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 4/6] ARM: dts: bcm2711: Enable V3D
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
 <20220601110249.569540-5-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-5-pbrobinson@gmail.com>
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
> This adds the entry for V3D for bcm2711 (used in the Raspberry Pi 4)
> and the associated firmware clock entry.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Once you fix the typo mentioned by Stefan already:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

