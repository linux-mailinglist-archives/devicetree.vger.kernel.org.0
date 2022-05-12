Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEDA452449A
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 06:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348460AbiELE6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 00:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348039AbiELE6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 00:58:43 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75D49C5DBE
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:58:42 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id g8so3775939pfh.5
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ErqlXMxsgK7yCFG6lNBZLZgbpPk48RSq5t5z+i3RrBY=;
        b=I4HSGvVZpiJju4H5OMsPtbA9DtO2CjqO3h2k5csWGcyqeF8BYuFBqauOvVXGzfpyQR
         wUEwkFzQuJ4hJ8AucFlc8BXxlDLZ9PI08MzJ90z/qYWVRp37p1PgMElypW5Ja8uE6eD2
         G2DA5GKpAntnvoUiwb1jDKaOPVwjKGIiSinGZ1RBUF8sNRPLen4KhhAa9tL7KE+rub0t
         rtlVg8f5+3AKxWZudYt8xKNMg9GTIwMqWFnD8EkCuWg2O2nSfQeRxECNDSHbKRGf6yHw
         vRjQePoqwsncI/OKKErD4V8LyxpUHNQPuVL56493v0nqdhuatkKr1QIrlx92/ctFMXy5
         kxEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ErqlXMxsgK7yCFG6lNBZLZgbpPk48RSq5t5z+i3RrBY=;
        b=HJ7sZg5EPL6Ut19p53GocSk/l0lV2ey7d+QVe153SWcwwVxvXFizcgljxTSHRlsg/B
         SjYX/Vq3aySpAUzaRD4LNOd30N+Xupv1CstjiN3k+P3HmZy2bGX5rbjcHXaziJXCaMCB
         CjfVDmGKgmy7ZxE5UA2/T05J1JUTH34MvXdrY7o+ZupHbWG+oIMgbLjAQoBTs3HyZhMw
         h6mDcdhn8i7OZerMZzHjWmt6lByMwUVBKsO94VrL66Ox5kwh8J+xVDYCILnQWELnZC57
         r+I5b+xicl/IJcW/r4aJXGRkVV0wRDbNfa8y9AXterfgbEVX1lHZafWNfI79wwHowvsL
         jilw==
X-Gm-Message-State: AOAM532gh0z0GI+SfAEu6lKFPq8RumHyZNuEFiimbvttaNKqaNEfgMuA
        G8ftuLPsPC+ddfSPNSxO4z9vwQ==
X-Google-Smtp-Source: ABdhPJxSWG6Ni3heLb0dW/eT5ONTwV8LPdGJoxslPRH7AXjlht+Ss33xUfIjA6l/N0Sz/GmoxMk5Kg==
X-Received: by 2002:a63:91c2:0:b0:3c6:24ac:9246 with SMTP id l185-20020a6391c2000000b003c624ac9246mr23842185pge.298.1652331521807;
        Wed, 11 May 2022 21:58:41 -0700 (PDT)
Received: from localhost ([122.162.234.2])
        by smtp.gmail.com with ESMTPSA id o23-20020a17090a5b1700b001d94c194a67sm830528pji.18.2022.05.11.21.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 21:58:40 -0700 (PDT)
Date:   Thu, 12 May 2022 10:28:38 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     qianfan <qianfanguijin@163.com>
Cc:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-sunxi@lists.linux.dev, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2] drivers: cpufreq: sun8i-r40: Add cpufreq support
Message-ID: <20220512045838.tvixosxbey5ksp6j@vireshk-i7>
References: <20220510003611.1812-1-qianfanguijin@163.com>
 <1902551.yKVeVyVuyW@kista>
 <01c2c11f-71fd-b735-b935-109865d62de5@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01c2c11f-71fd-b735-b935-109865d62de5@163.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-05-22, 12:34, qianfan wrote:
> Actually I'm not make sure the difference, seems both of them can work.
> Most of allwinner device_id is added in allowlist, so I did this.

For OPP V1 the cpufreq device isn't created by default and hence the allowlist
allows us to know the devices for which the device shall be created.

For OPP V2, we have the compatible string available and with help of that we
create a device without need of any entry to any list. The blocklist however
allows us to skip creating the device for some platforms, which don't want it.

As your case is opp-v2 and you want the device, you aren't required to add entry
anywhere.

-- 
viresh
