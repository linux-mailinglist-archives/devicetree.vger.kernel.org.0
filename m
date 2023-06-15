Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01257321F4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 23:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231192AbjFOVzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 17:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbjFOVzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 17:55:12 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7464B2D7E
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 14:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686866036;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=bOZxGxVdW5/JwsyiF22jqxnsXY9NlvJg+f+VQk5+XCI=;
        b=W1mucEIfcoYejcVMEuQ5NLi4hRD6eWlLI6kbvTAHR+ypPCG/jd/db3PWZoK5FRsLUmHJRR
        a9n5yQ4ZbELq86dPuTK9AB/WlFSZL7Cjm4gbcVUNzTPaZiKo3WC0890/alSNkBnDoe6fxS
        nblGhKzw6j7C2AhAyXYGYJtVQUeXeiY=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-mEys12e1Nf2CFv8mgcAFDw-1; Thu, 15 Jun 2023 17:53:55 -0400
X-MC-Unique: mEys12e1Nf2CFv8mgcAFDw-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-30c6060eb32so11853721f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 14:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686866034; x=1689458034;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bOZxGxVdW5/JwsyiF22jqxnsXY9NlvJg+f+VQk5+XCI=;
        b=ixaeMPtjYORwNXcM3x3AWnkVooYsW+JFIOMjwl67ygq+3JzfRWp5JX1mxTuXWHucOV
         TnIHm5V+i18kgI/1o3zK0P91W8guZVtTYlo49e2Uhecd9e8Oto7EINl6UDeXTRxg2LLi
         ernEJtEsUDdVJFs3QI1MzP6VvsoUT/0/Z3i4KEMUx9CQB7+mA03Bgc2lXmwvervxMFCj
         dklUM+g6hvTJRr10yAJnJoM7Gb8jWRpauNBQgMkR8iX4NU4E2tX6AZV0vXS+2Sx7VTPi
         FGo0ruevg4BRqO4DeNa9RqJXMy/yEH4BDf16nLrma1vUFfmQSiDe3IlnhzqMJOL08gi3
         t1oA==
X-Gm-Message-State: AC+VfDxo5VyPQVByug0rY4gzksQc0w2hgX7I7YD/hsH9b/AuHU5JOLL0
        ZYTOHg3L6taz937WHveV71e33AHaqmyPL85F/dbo2JAPLSKAJpg9VmB7qOAhLn7y2+ZZ7csZzRM
        W9T1Dhz5Ig+FD7TAJc6KFug==
X-Received: by 2002:adf:f811:0:b0:311:17af:df96 with SMTP id s17-20020adff811000000b0031117afdf96mr61669wrp.44.1686866033972;
        Thu, 15 Jun 2023 14:53:53 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5DAMQzIT9IO9837n5K6eskFWNzXBx+IXLRzoe261fgcZ2HwBQSypM+0c3tLU+kAyC1LECx4w==
X-Received: by 2002:adf:f811:0:b0:311:17af:df96 with SMTP id s17-20020adff811000000b0031117afdf96mr61656wrp.44.1686866033652;
        Thu, 15 Jun 2023 14:53:53 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l20-20020a1c7914000000b003f709a7e46bsm253139wme.46.2023.06.15.14.53.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 14:53:53 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/5] drm/ssd130x: A few enhancements and cleanups
In-Reply-To: <20230609170941.1150941-1-javierm@redhat.com>
References: <20230609170941.1150941-1-javierm@redhat.com>
Date:   Thu, 15 Jun 2023 23:53:52 +0200
Message-ID: <87mt10s87j.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Javier Martinez Canillas <javierm@redhat.com> writes:

> Hello,
>
> While working on adding support for the SSD132X family of 4-bit grayscale
> Solomon OLED panel controllers, I noticed a few things in the driver that
> can be improved and make extending to support other chip families easier.
>
> I've split the preparatory patches in this series and will post the actual
> SSD132X support as a separate patch-set once this one is merged.
>
> Best regards,
> Javier
>
> Changes in v2:
> - List per controller default width/height values in DT schema (Maxime Ripard).
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

