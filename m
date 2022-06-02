Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36AC053C141
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 01:09:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237701AbiFBXJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 19:09:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235346AbiFBXJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 19:09:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9FF912ED62
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 16:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654211366;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ymLvqfhO7F2VSq4EYMOanNHdhLgE7/SRZ2JMZktSN0A=;
        b=Y5BpBC62i47IoJnHYBdP+1KldgfM96m/DhJXEVCRDyiEgvxszN9smInxjLzhAFOKYSlZha
        gSEIdyL8et7yQK49phyMy3/f1M+SXQzn0lvZfa12qkVBoZBY3TK4+lB5DVrr/4W3o2i0aJ
        k4T+cSd0jXqcSO2qGkK2Os/WKhINoq4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-108-aGrhgSv7Pfe5sn4ZWrR2dg-1; Thu, 02 Jun 2022 19:09:25 -0400
X-MC-Unique: aGrhgSv7Pfe5sn4ZWrR2dg-1
Received: by mail-wm1-f71.google.com with SMTP id bg40-20020a05600c3ca800b00394779649b1so5840122wmb.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 16:09:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ymLvqfhO7F2VSq4EYMOanNHdhLgE7/SRZ2JMZktSN0A=;
        b=hMTqTMmMWZtpz9C+cpUI5TZMPzw7/OM/zFmEFEwJr7LMdnOsmvtjphpDDTOL/lGABr
         +8MMnAt+HTbW3Xqw6JNNUr4JA8dzIJoyzuaEqcs/+fOMz3MfMqaTToXDqRfyuKU4Exxs
         AJGjzrjzX/jd5vHd9xVPoDLpDH7dHm8TCh1LWCwzSgV5bSJiOtSYHnNXzMFlboJL11JU
         7oQMhZi5FY6tXYJ0psr+lYHfJtR7/iVqZipm4RHLb0i9ZSZtjBK4y/RiVhbrDnqWKdro
         Z3yJKFrfvhS93w31ah19iHsh/vfSUFoWuZeohMxO1zUC7WWoW5lZCG9O6DLyFeLmdqem
         n2ig==
X-Gm-Message-State: AOAM530txjH/1dLXyWaXhE5IVvljrJZpkIWVahrRWH+gtCzy2diCfUaA
        4uYdnYWhN6d3r3Wk29AwD9UTqaOG7IwqxCqWz4pSFek3Pm4mGNYGYlDp8ElDxTJ2zbQpJtLZ1b/
        KvZxLA+JkG3QANuujHjr1Dw==
X-Received: by 2002:a05:6000:1acd:b0:20f:d7df:a2a8 with SMTP id i13-20020a0560001acd00b0020fd7dfa2a8mr5365892wry.477.1654211364139;
        Thu, 02 Jun 2022 16:09:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwndCFntHsD0kEZaTLscajqkhVQmTmetKb34IAaRRbK56keS/iPdSKTNXOu+3abL87uHLM5A==
X-Received: by 2002:a05:6000:1acd:b0:20f:d7df:a2a8 with SMTP id i13-20020a0560001acd00b0020fd7dfa2a8mr5365885wry.477.1654211363951;
        Thu, 02 Jun 2022 16:09:23 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f6-20020a05600c4e8600b0039466988f6csm12934625wmq.31.2022.06.02.16.09.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 16:09:23 -0700 (PDT)
Message-ID: <1ef6981d-5bbf-d4d4-9dbe-7a4af64105b0@redhat.com>
Date:   Fri, 3 Jun 2022 01:09:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 5/6] ARM: configs: Enable DRM_V3D
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
 <20220601110249.569540-6-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-6-pbrobinson@gmail.com>
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
> BCM2711, the SoC used on the Raspberry Pi 4 has a different 3D
> render GPU IP than its predecessors. Enable it it on multi v7
> and bcm2835 configs.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

