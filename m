Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2B967F322
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 01:27:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232170AbjA1A1L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 19:27:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231945AbjA1A1K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 19:27:10 -0500
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95E9C20D31
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:26:31 -0800 (PST)
Received: by mail-pj1-f45.google.com with SMTP id m11so6183591pji.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 16:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SeH8pABTUU3a0xVRTCMZvbgUglNp9bFLSOXGO6BnE7g=;
        b=BECD3XNIWMyGoO2pR3j/pX0MZD4uav4Bzx9OtUdfE75udvtV/lOWKkjTFbRM2sloLc
         ejhPX+xaRVLru/x35gtmNrlbT2PxkyPt59fIfVceGze3V2TV45OtLHqKvysIzYQJXtBR
         4NfM+qgitcY4aK6I2UI65eE6pFQ4iEHj/fbIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SeH8pABTUU3a0xVRTCMZvbgUglNp9bFLSOXGO6BnE7g=;
        b=uUxZNHVHhfTMJ5ZjkFhxqNjMoszYjoW3BF0G/pn6hTM6E+Qi7+ewaI1vbGF43LvUal
         PcuH3ZbXbxgoAP48LKs6i8IhYhAirj5j8Nlv+gkeMgAcZ7ApJSE3zlE8k4By8n/45n/a
         s5L/GNDz5ZA/A/fEB1ujsW8Opk5Al+kmEAmlY2ZkBQhKg+oIfxb0VyXW71WJylDH/nM2
         vj+0POeW9qGVbycMa0rLhtCWLj1g9rNlAinQa/oR8TbENVXMwcivywulNdhrJiPByHs1
         /6Fh4cquIwhNMU9ejXJZzTYHIehIMM8/Ax7Qeb3Mo8U/K4W+TfukCmgli62ImPgWao76
         RtCg==
X-Gm-Message-State: AFqh2ko52yMOqN5iDSRKEBhqvs1S+xWuXZJ01DMNwLeW+Kr7so6h4ukf
        abQnm0yeJEZvkAdxU0KQK/Y4Mi32J9M3JY+9
X-Google-Smtp-Source: AMrXdXsExg1wzuhHvjjRvAqAzd/gB3gJtdoQdxyb9q20M/sCxt1Uqj01DxRY4/bB23t24AwIZoSeug==
X-Received: by 2002:a17:902:e891:b0:194:de51:9ad with SMTP id w17-20020a170902e89100b00194de5109admr37556027plg.22.1674865459091;
        Fri, 27 Jan 2023 16:24:19 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y10-20020a17090322ca00b001947c22185bsm3393193plg.184.2023.01.27.16.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 16:24:18 -0800 (PST)
Date:   Fri, 27 Jan 2023 16:24:17 -0800
From:   Kees Cook <keescook@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH] scripts/dtc: Replace 0-length arrays with flexible arrays
Message-ID: <202301271624.01B4A55D3C@keescook>
References: <20230127224101.never.746-kees@kernel.org>
 <CAL_JsqKVp57NtR11JV-eXktMU9_dQ+8sF8YSPe7KyazrvJB-eQ@mail.gmail.com>
 <202301271609.15F0E5EB15@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202301271609.15F0E5EB15@keescook>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 27, 2023 at 04:12:21PM -0800, Kees Cook wrote:
> On Fri, Jan 27, 2023 at 05:44:13PM -0600, Rob Herring wrote:
> > On Fri, Jan 27, 2023 at 4:41 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Replace the 0-length array with a C99 flexible array. Seen with GCC 13
> > > under -fstrict-flex-arrays:
> > >
> > > In file included from ../lib/fdt_ro.c:2:
> > > ../lib/../scripts/dtc/libfdt/fdt_ro.c: In function 'fdt_get_name':
> > > ../lib/../scripts/dtc/libfdt/fdt_ro.c:319:24: warning: 'strrchr' reading 1 or more bytes from a region of size 0 [-Wstringop-overread]
> > >   319 |                 leaf = strrchr(nameptr, '/');
> > >       |                        ^~~~~~~~~~~~~~~~~~~~~
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Frank Rowand <frowand.list@gmail.com>
> > > Cc: devicetree@vger.kernel.org
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  scripts/dtc/libfdt/fdt.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > Changes to dtc/libfdt go to upstream dtc first and then we sync them back.
> 
> Ah-ha, I've found it: https://github.com/dgibson/dtc

Sent upstream: https://github.com/dgibson/dtc/pull/76

-- 
Kees Cook
