Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B2C953C145
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 01:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238846AbiFBXKI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 19:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235346AbiFBXKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 19:10:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 59D702ED62
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 16:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654211405;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Q8rVnLMJbXknZPTgbvr6z2LH9dOMhQu74j3XOdwbfuU=;
        b=a1ID3aofjqSHkkLm5TMbqYfqaaT2tNHnbGbzLaCHfmsh1dVyKhZ+Y59eWI6vxs23s3/k1g
        58H1aFteBvoUBRIFbFsr3hGLmxJit9354Uim+qXjvmfRC0M2S+kmxJ4l2m8/cHrxHLBuYr
        2Qw/Xnl7ELIubmbzsxmb3H7fbmONhZk=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-pAeDKHuGOruS2MhUb5s_lA-1; Thu, 02 Jun 2022 19:10:04 -0400
X-MC-Unique: pAeDKHuGOruS2MhUb5s_lA-1
Received: by mail-wm1-f69.google.com with SMTP id az7-20020a05600c600700b0039c3ed7fa89so55774wmb.8
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 16:10:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Q8rVnLMJbXknZPTgbvr6z2LH9dOMhQu74j3XOdwbfuU=;
        b=GNx3aLt0qnZXl/O/q4UZbc+wAlevtpkdCaEWayCwi7brPdrqqDwJfCAWauSKaUs86F
         Gca+9sVcJYDpgESK0ZVv1rZ7MSprj/gSi3GA6uRLIlRqIiBRNK/O+luwF85FsoI0pwXX
         GKQd8zrikR1xct/LTNImbNKZmpR7D8dsD6MoJJjvVgA7kPeiKDGZlwXtITkPxIelWIHD
         godxDpuDawEtTIcCB2kjDaw3mqDhTikE82bp2Hb777YiZJEAuKZ7be/xzQHh/3W2L42S
         Cicg6oK3RDjCW7re/bZwlDufHCZrH6ZSPPcL6nbVhpZ4kmWOP5M8ZhdKvlQi+STMNG3h
         +Bww==
X-Gm-Message-State: AOAM532FXUrnzyxezqzD3AGaE8eTem8ALXWiJ3LqiyfykpNYXR0ugvO2
        6d0ETxq0qBsUGzl4YvYv84DF7GBt/0VsRn5WBFBLVyegX8vEgKeRqI2tlPjdQd8bsh6LKP22d5h
        bDdyNs7iEWTMVJcbcMXPgsQ==
X-Received: by 2002:a5d:6d08:0:b0:213:baf0:d56 with SMTP id e8-20020a5d6d08000000b00213baf00d56mr643641wrq.0.1654211403236;
        Thu, 02 Jun 2022 16:10:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyj0yaPnM11UBEWQHQ+Io0a9UPXhhUhlPr89wi3+61E/HTXrZubgDmGoZHYzLPMiVQ8PpKYDA==
X-Received: by 2002:a5d:6d08:0:b0:213:baf0:d56 with SMTP id e8-20020a5d6d08000000b00213baf00d56mr643625wrq.0.1654211403045;
        Thu, 02 Jun 2022 16:10:03 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n8-20020a05600c4f8800b0039c325eaff2sm3183836wmq.26.2022.06.02.16.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 16:10:02 -0700 (PDT)
Message-ID: <a469e16b-c62e-e98e-b3f9-2dceecf5ea6a@redhat.com>
Date:   Fri, 3 Jun 2022 01:10:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 6/6] arm64: config: Enable DRM_V3D
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
 <20220601110249.569540-7-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-7-pbrobinson@gmail.com>
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
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> BCM2711, the SoC used on the Raspberry Pi 4 has a different GPU than its
> predecessors. Enable it.
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

