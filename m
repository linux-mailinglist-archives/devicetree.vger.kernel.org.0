Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D51BE6B7314
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 10:48:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjCMJsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 05:48:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230190AbjCMJsF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 05:48:05 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC5DD331
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 02:48:02 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id fm20-20020a05600c0c1400b003ead37e6588so10437742wmb.5
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 02:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678700881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fO9QX/weVED953xL0vn6RIJmflSaqBS+exrgijHj8oI=;
        b=b85l8WtrWPlHcTYMcC9XmvuPHxmv1YATlNgiwIEpU6zuBiAVQyWFjwj9/gnjIHRpd2
         T7tomEtNXfmsUqRuciHXT/4gfRFgBhbHNQf8vrMQv7vKFCBTsLBjGkrVpPEHhuUmEiZ3
         qgw9driJQRHzBt8/v7DKZHZqXizLbdXPspu2m/At76e5mbFFMvLUhgC3+4vaGhlbYDsJ
         DX+SLvi91f6DlxqbfM/2DgLKPr7UMCia1hIc7Q3bpmgL5DcFqDkZRlBIyIvCCqhU0Ziv
         Eklb3mVfbgSOZOmno1vofozalXoVYmalU86AMcJKW1S4i4SSeB3r61DUnfMcLG5JwiDf
         ziOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678700881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fO9QX/weVED953xL0vn6RIJmflSaqBS+exrgijHj8oI=;
        b=xoLpEQPQYIvPQpLIQrxmYiQY3Adak+KhVd1Cw8cR4/1IjzH9U12pVcCJN5O54ApoKU
         8Lj+CzVLkCbDpaiWgeSv8ms9Knmnlg+Bifl+4eCppgVEG5Ub5YwQLsvsX+jUypK2IUQ3
         JeCJQmQJRIIXF5OtABkLjlGbRzNI9bm0qeTlbD4awTFcDcWWWj3lGtLI3cqQBo4v0GEL
         o3xFFBAqXvOIT9ybrIYrWvzClPiVS/aI4Oy7hUdf9xHggF9snoaCF8p++7WejRsPTvcc
         jnpactCOmiraN39lYKaWmBxktiuq+U3KIrIz3ZbHYPznl5Zrr8yQScbz3IaAsdW3Lnxj
         bXUA==
X-Gm-Message-State: AO0yUKWKLKfe/8vrqzyXKkbaDY4S9631P7QcxY6REDo6tpdaKDtMr56K
        zcvK56xFbYinIZs6N7npvTVA/h8sSatTIwQgbZedWg==
X-Google-Smtp-Source: AK7set/TwMkM6ahPLSMJJugMHuvHZmsV7Rsb041IebIpECvIRczfyVk1f5r4t2Z9zCTS/4XbIFxxQg==
X-Received: by 2002:a05:600c:4f86:b0:3ed:29d9:56ae with SMTP id n6-20020a05600c4f8600b003ed29d956aemr191186wmq.6.1678700881411;
        Mon, 13 Mar 2023 02:48:01 -0700 (PDT)
Received: from aspen.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id r16-20020a05600c2f1000b003ed29189777sm980898wmn.47.2023.03.13.02.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 02:48:01 -0700 (PDT)
Date:   Mon, 13 Mar 2023 09:47:59 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Helge Deller <deller@gmx.de>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] backlight: as3711: Use of_property_read_bool() for
 boolean properties
Message-ID: <20230313094759.GB55049@aspen.lan>
References: <20230310144731.1546190-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230310144731.1546190-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 10, 2023 at 08:47:31AM -0600, Rob Herring wrote:
> It is preferred to use typed property access functions (i.e.
> of_property_read_<type> functions) rather than low-level
> of_get_property/of_find_property functions for reading properties.
> Convert reading boolean properties to to of_property_read_bool().
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
