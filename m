Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 077F154302B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:24:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239094AbiFHMXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238835AbiFHMXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:23:21 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DFC571BF09E
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654690999;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=WysPZlcw09T7q+C1fUqR9rq1Bzu/+VYftlOBGYd++mc=;
        b=cGae2+wANtVL7pIELQJjbIEioJ8aUZz+pY4S4rpKOONeAR+/H78gBhptKf+iziMVzha3kc
        gnxBxhvBrE3zInreOY3eKDTpRXZ7pqhPt8pNU47JLRqwG6vp7Sbsu59Em9or96yyQmktP1
        +Snl4dus5i26Pe1FBLGx7M86nyBZ/3w=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-HfmhIztZMneSX5H1p7xbfw-1; Wed, 08 Jun 2022 08:23:18 -0400
X-MC-Unique: HfmhIztZMneSX5H1p7xbfw-1
Received: by mail-wm1-f71.google.com with SMTP id ay28-20020a05600c1e1c00b0039c5cbe76c1so1939196wmb.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WysPZlcw09T7q+C1fUqR9rq1Bzu/+VYftlOBGYd++mc=;
        b=ngTIdSXaIKuz7EQzcu/B5yvLlRR88uuk/QJYn1a04Wp/xjhpJmPKUw03SrPhiFqONd
         +i5JFeLZSlkdkfRJQ6ZmPZz9XyAP7i09VQbeii+Kt6ZqxkFa25wxLx0ndou0w1RA5qp+
         HmzbdEFBCo6NL4FLqCdno39+/f0kauew5Nav6IciX82vA6TIhHeCd+8gqwrl3eraRVnx
         6qX6Pwkw/Vo9FnZMQRlm2JQ+6XEOHsLQAGv8c8eH1c9XMHAFZz2zHbjzqQtxUTSeKTFs
         kQShhDw7w5lYPww/wEihKsIX6Bk8Gx5ZzR8BhlJKSKiMXh8CeetW4+Qjts46owu/Ws9z
         LT9g==
X-Gm-Message-State: AOAM530SlbMzkUQuyB4lcx1iYsdHl9KWsSXV3+lTXuBCenMOtxmFGYiZ
        Nq3ogV7mfhjHU2Ak1+yK4gwrFW8Yp9pYFSNeMsiq4jAIIH8/Jd5PBxLTpqXgZMu9JaSynKwA+8M
        0Zd7CNB5nrrs48egq98c5Ww==
X-Received: by 2002:adf:f38f:0:b0:210:30cf:6e4a with SMTP id m15-20020adff38f000000b0021030cf6e4amr34276134wro.676.1654690996873;
        Wed, 08 Jun 2022 05:23:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnn0twO0DVIW7IZ6/4N32WijMPurWbHo+V8aC9+pPIdJveu5UOwQ9M/8i7btwDkro790RfwA==
X-Received: by 2002:adf:f38f:0:b0:210:30cf:6e4a with SMTP id m15-20020adff38f000000b0021030cf6e4amr34276097wro.676.1654690996523;
        Wed, 08 Jun 2022 05:23:16 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o10-20020adfeaca000000b0020c5253d8c2sm20778215wrn.14.2022.06.08.05.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 05:23:16 -0700 (PDT)
Message-ID: <9aaaaa29-11c0-d494-11dd-0bbf5d384364@redhat.com>
Date:   Wed, 8 Jun 2022 14:23:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
 <cadecbfd-e174-eadb-276c-577bb2bf70f2@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <cadecbfd-e174-eadb-276c-577bb2bf70f2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Florian,

On 6/8/22 11:26, Florian Fainelli wrote:
> 
> 
> On 6/3/2022 11:26 AM, Peter Robinson wrote:
>> This is a follow up from my v4 patchset. The power management pieces have
>> been split out to a separate independent set of patches by Stefan [1]. This
>> version 5 of the DRM patches are independent and given the V3D driver has
>> been upstream for some time the two patches to enable it in defconfigs can
>> be taken at anytime independent of the enablement for the Raspberry Pi 4.
>>
>> I've tested this using mesa 22.0.x and Wayland/Gnome on Fedora 36, it's
>> more or less stable with basic testing.
>>
>> Changes since v5:
>> - Update the DT compatible to match the others that were updated
>> - Adjust the Kconfig help text
>> - Add review tags
>>
>> Changes since v4:
>> - Fixes for device tree and bindings
>> - Split out the power management changes into an independent set
>> - Rebase to 5.18
>> - Individual changes in patches
>>
>> [1] https://www.spinics.net/lists/arm-kernel/msg980342.html
> 
> I can take the last 3 patches through the Broadcom ARM SoC pull request, 
> but the first three should probably go via the DRM tree unless you want 
> me to merge them all?

I can merge the first 3 patches through the drm-misc tree. Can I get
an ack from you for those ?

The changes are independent so there's no need for an immutable branch
or any kind of cross tree coordination.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

