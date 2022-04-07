Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02D694F809A
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 15:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238922AbiDGNeI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 09:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239816AbiDGNeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 09:34:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CDACE33370
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 06:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649338323;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uPtIuQonBGwymnNwuL2Ges4RPYjT2KSIo8bqHMyXzDQ=;
        b=b0LvCAWTjEoZ/FBjSWOm/6/flesCw/JYWo/MDSvJoOhqcQPjfnA4xK+JvUtDc4xB3kPVDz
        nTzicusaILlJYOYjd6mCrfLfwxl2VO8LBO+uRxtcFzlGM7VejPnwzkrInPUmJSxStOvKBi
        GNzmg4bylaecQHzPR+csITcQK2oRCZY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-Hz4qB6ZSMaCxugvNs0nJvg-1; Thu, 07 Apr 2022 09:32:02 -0400
X-MC-Unique: Hz4qB6ZSMaCxugvNs0nJvg-1
Received: by mail-wm1-f70.google.com with SMTP id x8-20020a7bc768000000b0038e73173886so2975514wmk.6
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 06:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uPtIuQonBGwymnNwuL2Ges4RPYjT2KSIo8bqHMyXzDQ=;
        b=FBWMWBJ5lEHsadrZB7oo5iFPlHHQ6daECyS64lNF4+p0OlbHa8tf12xgC+pGr+5cjy
         KeVq+IhNZNTxCNymTskFMKSn6qB/Di/rX39H9gPafq3a3MEqjqGjq/b5+6283NP7OEm/
         sUP4mI2MLEB+3xGKUWdI/GzBw/xZOPbbUrXyuMchqGBfcQXT0+DFxW9Z1iJ/ydthQvSK
         tfHCIxnN3qrfJlHtqX7dNwmJp+qb3el29+0+kTpejlhuV6a7xvvQM/pSoT4uW4CMKv/M
         vGd0N482F35o7uhlA4Bz7QqHK2WDreJB8BE0vAk/sQ8SELBKaWONZ6ZM/IYLyy5vFu6M
         a89g==
X-Gm-Message-State: AOAM533s/gVpJerLlvliwtTvfLu0/uYpKeBQPsWPHlOqgINX9/3ZQ+Jj
        kd2ScO6Cm5ragE9lELduFV2oOnIW9A3iQlqKdakJOA3Ax1/aR+YN97JXce8+ngH+kgTgLiN5iew
        +9+7jhKXBcW4+JTlPLv03Dg==
X-Received: by 2002:adf:fc0a:0:b0:203:ee19:b4a5 with SMTP id i10-20020adffc0a000000b00203ee19b4a5mr11050317wrr.245.1649338321459;
        Thu, 07 Apr 2022 06:32:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwIiQ+5xue+z1JVVIJQbIbMurwPI2LslRTj03Pq11FoaMHInXgHKbMu3ttUyBaxmGnDE0T1Kw==
X-Received: by 2002:adf:fc0a:0:b0:203:ee19:b4a5 with SMTP id i10-20020adffc0a000000b00203ee19b4a5mr11050303wrr.245.1649338321273;
        Thu, 07 Apr 2022 06:32:01 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e14-20020a5d6d0e000000b002078ea4f6bdsm442054wrq.75.2022.04.07.06.32.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 06:32:00 -0700 (PDT)
Message-ID: <fe352f3f-5a86-8080-fa87-6298d9289b6e@redhat.com>
Date:   Thu, 7 Apr 2022 15:31:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 0/4] drm/ssd130x: Add support for SINO WEALTH SH1106
Content-Language: en-US
To:     Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220406172956.3953-1-wens@kernel.org>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220406172956.3953-1-wens@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/6/22 19:29, Chen-Yu Tsai wrote:

Pushed this series to drm-misc (drm-misc-next), thanks again for your patches!

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

