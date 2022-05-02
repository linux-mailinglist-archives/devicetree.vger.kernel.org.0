Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D42516AA0
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 08:03:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383415AbiEBGHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 02:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382579AbiEBGHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 02:07:10 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B4B54BB9B
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 23:03:41 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id c11so8431634wrn.8
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 23:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4Wu5UbbLjO4fkVtRhATuGMYwwxjW91yZECIVVs3EXU0=;
        b=SCvBo61Id+dAqR8kqisUnDTJuBNQj7Vs0uVgzw/U9Quq+SsoF9gpIsUOLyajaPHVFL
         UGEXVCOvJgY5QKV17WRq/67bA3xhjSOhxEiS+1+2peE2irX76CoXN82/MBw1LgM6L5hD
         2C02doNAqdL7lOsGzcA0nDSRdIIZZAAgULjF4iv9rK2JhCUHFzTvEIhbyGz4rAjMwNdC
         PL3i2q02XucjoePSxwqHT0XWq7hDq68pzo39J3oaUP6B9cwXCowSnIteVJbLzRdi4xzN
         wyhoJ43ogDBU4ZNUlbfcMv3DM/hNx/sp4o5HvQNon4W4REW++0v3SCCgS0aMf96kWfDz
         kAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4Wu5UbbLjO4fkVtRhATuGMYwwxjW91yZECIVVs3EXU0=;
        b=DP9BGl23apS0rybwcJSdQ562pmqft35FDMpgmrtqjRhiGy9SzB3ISg03Gfnp9Z2dHg
         3B7DFAYZABEvIYpLO24rPUxYWka2pEQ86w7t9UaM2gyPyoR/DISVPN4iOwZlWW1NUBfp
         xVrmsA3Zug8Ak2iSdg3Bq0gaV9RqMhzFAdL8unr8lCA85ak93r4eyke4BEyu5G0F0xBc
         3bE9WGTXEUEmkv1+OoU3WPg0lGsYXqhwMzncg/3iCCHXAxcU1JrSuIOWj1UrWj1RYjIS
         dMTHw6XgMqGl2xmR4vhtsgo+Kla8h9ejhBD5IXFFLEaogw9hEuvPvfybm9JXYXXKVqBK
         EibQ==
X-Gm-Message-State: AOAM531cYiZaNwgHVBH3EKbMAUr1XbrLQ8pwQson22xly1xofcwKqjQg
        8pku0Nhr7G799l5NjRLdCfBH/g==
X-Google-Smtp-Source: ABdhPJwl/CgLhe01W0w1JZFddXPSEEwRbA3/K8E4VQg0z0/nxjTEpnDO3f469W8gdZ1CLEFJzCRw2g==
X-Received: by 2002:a5d:64c8:0:b0:20c:6969:b277 with SMTP id f8-20020a5d64c8000000b0020c6969b277mr866262wri.354.1651471419059;
        Sun, 01 May 2022 23:03:39 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id y8-20020adfc7c8000000b0020c5253d902sm6212164wrg.78.2022.05.01.23.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 23:03:38 -0700 (PDT)
Date:   Mon, 2 May 2022 06:03:37 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
        qperret@google.com, will@kernel.org, maz@kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v4 0/2] Detect stalls on guest vCPUS
Message-ID: <Ym90OaUsWW6hjjo9@google.com>
References: <20220429083030.3241640-1-sebastianene@google.com>
 <YmxJyUqdsZmm8yE2@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YmxJyUqdsZmm8yE2@robh.at.kernel.org>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 29, 2022 at 03:25:45PM -0500, Rob Herring wrote:
> On Fri, Apr 29, 2022 at 08:30:29AM +0000, Sebastian Ene wrote:
> > This adds a mechanism to detect stalls on the guest vCPUS by creating a
> > per CPU hrtimer which periodically 'pets' the host backend driver.
> > On a conventional watchdog-core driver, the userspace is responsible for
> > delivering the 'pet' events by writing to the particular /dev/watchdogN node.
> > In this case we require a strong thread affinity to be able to
> > account for lost time on a per vCPU basis.
> > 
> > This device driver acts as a soft lockup detector by relying on the host
> > backend driver to measure the elapesed time between subsequent 'pet' events.
> > If the elapsed time doesn't match an expected value, the backend driver
> > decides that the guest vCPU is locked and resets the guest. The host
> > backend driver takes into account the time that the guest is not
> > running. The communication with the backend driver is done through MMIO
> > and the register layout of the virtual watchdog is described as part of
> > the backend driver changes.
> > 
> > The host backend driver is implemented as part of:
> > https://chromium-review.googlesource.com/c/chromiumos/platform/crosvm/+/3548817
> > 
> > Changelog v4:
> >  - rename the source from vm-wdt.c -> vm-watchdog.c
> >  - convert all the error logging calls from pr_* to dev_* calls
> >  - rename the DTS node "clock" to "clock-frequency"

Hi,

> 
> Why do I have a v4 now when the discussion on v3 is not concluded. Give 
> folks some time to respond. We're busy drinking from the firehose.
> 

I am trying to address the issues incrementlly keeping a week cadence.
Any feedback on this is welcomed.

Thanks,
Seb

> Rob
