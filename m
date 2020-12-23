Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1D202E2232
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 22:40:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725536AbgLWVk0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 16:40:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725270AbgLWVk0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 16:40:26 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 163E3C061794
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 13:39:46 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id x126so167939pfc.7
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 13:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XdnCKmMvXL/IFhJCMVS5L+iCGs5J9t20IcKtN3xxsJk=;
        b=oKdeGe/VQUEpgKcRl6aNqXkImPkxoKngyitT7qpOuJ+hVu2RPjR7OJkt8Od6lJNwCq
         F02G41hpLl2amg1aKsDLF8s+yMPT8auy7eMspYAyEGxIoFsDPHPFoTG4H2FKAzcAv6ce
         QejLDUpUHX7ZR1JyZZ+UtLynrWR9n9wInaiDTRLKW1r0dmLzT2kwZkRgKqdqaBoEziLe
         QPdI1XUvy2k8xa3HlebXhw9ivzVULkTe+NbvxXhneBrEMNs27KBGs57amCDRMVGA0ZRa
         tmiqpwSsdls9mK03JiqGFQWxwSC+XwME4V6yuEcsUF/4/Un4GHrtnA4jdzycHImZCRQa
         7qww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XdnCKmMvXL/IFhJCMVS5L+iCGs5J9t20IcKtN3xxsJk=;
        b=WESPNB0vWIQfJc8fZ82r/WALDnuhM1aNO4U1SfqOrijGdg1OGMyEJNYTZ+1aCKYbJ3
         N4nQOMvhXyvNw6DNJycfp558uGTRCnzg+Nhjws/x7ejsL4IItba8+MQvEYfaTWMSptH/
         uvDByvBXDCgZ5nMJYpiv3SBGREt+gLVKWrOE401p+u7ly23TFn7a04EbmPOKrKVMaXXA
         wqv5UUtwU75njPuPoEw8VGwI71+sei1XVFJ5Jg/GMB/C4wXYlOQvHyUC5p4ivo1a1vky
         MgHUO3J7zhgYXWVNM9goqm/YvJ9EFHf7kC2RDV/AJW+JLf56b/N8V9RaxsS1gjHon1sW
         NC4Q==
X-Gm-Message-State: AOAM5302LEqWVuV9rzO/+gMNv4xCAjKgJua7x+kSQsn1Ag50BNupyOay
        WR7vu42dhtqkJSlLM5JJk/wL54rNibk=
X-Google-Smtp-Source: ABdhPJwZKLfszClVLJbmLpMZS8gK1sY+RuEFh15RpcE8sa7j7fAgQtURAu8JquH9nBibGKP/wZv/Hg==
X-Received: by 2002:aa7:9312:0:b029:19d:fa90:3f42 with SMTP id 18-20020aa793120000b029019dfa903f42mr25335437pfj.18.1608759585546;
        Wed, 23 Dec 2020 13:39:45 -0800 (PST)
Received: from [10.230.29.27] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b197sm19210996pfb.42.2020.12.23.13.39.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 13:39:44 -0800 (PST)
Subject: Re: [PATCH 0/4] drm/v3d: Minor improvements
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2f9769da-f5b3-0c25-2f46-a0796da225ba@gmail.com>
Date:   Wed, 23 Dec 2020 13:39:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/23/2020 12:27 PM, Stefan Wahren wrote:
> This small series of v3d patches is a preparation for the upcoming bcm2711
> support. The bcm2711 support will be send separate, because it involves
> bigger changes.
> 
> I'm not sure that the schema conversion patch is sufficient.
> 
> Patch 2,3 are directly taken from Raspberry Pi 4 vendor tree.
> 
> Nicolas Saenz Julienne (1):
>   drm/v3d: Use platform_get_irq_optional() to get optional IRQs
> 
> Phil Elwell (2):
>   drm/v3d: Set dma_mask as well as coherent_dma_mask
>   drm/v3d: Don't clear MMU control bits on exception

You need to amend your Signed-off-by to all of those 3 patches that you
did not author.
-- 
Florian
