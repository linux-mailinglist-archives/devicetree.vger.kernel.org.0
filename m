Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6218E4EEA71
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 11:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344586AbiDAJbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 05:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344559AbiDAJbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 05:31:41 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0EE31D67DA
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 02:29:48 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id kd21so1584087qvb.6
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 02:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mbn8b1Y80pAlAHrT4xLFWR4kpzjIAzXFAHvkgLMTl5k=;
        b=FKp67qcp7ziPvP93i2jFmH8Z8tyYaMtb3DTskFWFsbILCFFdFIeI+kqOBDcp0IqXhq
         Uu1n4VQhxH1Cxo1nLzqGsdcjweQLy1xuwIjj0OVXUAwByWfdIGZFvfKgX24SWiwhRGYF
         /0WuSSis5I/w1lxF0zFOMr9bc3eR4hWOQoOByFMh7qGhD1AujWnPPVHuSqcsCokKa1G5
         RU53gP1iKeW5HIAF8XdLSNzSnKqb8ZJ6d51IVvNbpG1R2FTZT5ahzx1JNBz4yBuIRfBq
         5MJXKz05BfgcNjzyxuYWNCQB8GeXyzxOrGQZ4mp3YqBdXlq4/KEGRf8BnbhxappT/cfX
         VqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mbn8b1Y80pAlAHrT4xLFWR4kpzjIAzXFAHvkgLMTl5k=;
        b=sRWqOfNXPmlMoPhx2fVZX3HWaw1D69xxkQ+PIQ1dgkqBQUy4jazATJp3JrsyCj3AUj
         Jia8T7YG2MZwJBTLgdVwTmKmcFXC3cYWkFti/EILR5k8O8wcp40huhE/AW31Hfj/ul//
         SmqHj7dVCrYl9utcM42JExivEKA1ni1jJvYqU/F0hNXjDZEPMWHEqNoYoMbgXjOJGdiP
         wxqWtwPTv/K1rlTSZ6jK68xmce1Nlg6Yzyc4Xpeg/2Ner5y0ZpRVYRSxwW0m15V24erL
         QXb0iwOuhAkqpOkCN1TNxdz8GDKliUtUbsOg3IehWSax/p66hY2rfi+CzVHsIvH9ADAp
         vPEw==
X-Gm-Message-State: AOAM531tBl6UIdYmZa26yCpf+Kc0OTUOBkDsv+JKrboi4xK1q/xKHsK9
        33p/7DpejIoCeIG30J4BCvIOsQ/JMB5yEz00MXIwlg==
X-Google-Smtp-Source: ABdhPJyX0SuUj89u/sz5RsjvJfjF14dXw4PXUljF/o1zjASCFOWMvq4ztJN6DGCU+uI8uCxbH9PsJWQuMBWNtSqCL4s=
X-Received: by 2002:ad4:4eaf:0:b0:441:7ff6:f639 with SMTP id
 ed15-20020ad44eaf000000b004417ff6f639mr7092394qvb.73.1648805388087; Fri, 01
 Apr 2022 02:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220330190846.13997-1-wens@kernel.org> <20220330190846.13997-2-wens@kernel.org>
In-Reply-To: <20220330190846.13997-2-wens@kernel.org>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Fri, 1 Apr 2022 11:29:37 +0200
Message-ID: <CABxcv==6imu7Vc3p9ji=_+RFQZm2O65JCY7LLERsbAsgaRaUag@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for SINO
 WEALTH Eletronics Ltd.
To:     Chen-Yu Tsai <wens@kernel.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Chen-Yu,

On Wed, Mar 30, 2022 at 9:09 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Add a vendor prefix entry for SINO WEALTH Eletronics Ltd.
> (http://www.sinowealth.com).
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
Javier
