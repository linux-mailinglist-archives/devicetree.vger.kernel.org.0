Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 519F150C87C
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 11:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234289AbiDWJF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 05:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiDWJFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 05:05:25 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76EBA111D
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 02:02:29 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso9455542wma.0
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 02:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=HUqkTX6cZs7OZuJSHaCts07mmEM8pvUZNpHIQVaAwR8=;
        b=NQDFcpIzhAsEtIG2sxZvZHvinCiAHvhRt9Z47/gtGhOhkw9FSvzT61gDsfG2gtCscD
         v79gBOydHsplpg9pyerlxiXAgplPW8/X0GpTZrwERPK9jIkxc3ZIR3r1ZsvUolZiOJPc
         J6Z9o+KBYHb0MznSJL012cwNVKJtnZxl0w0tfzuQf0zSG5bmqd9cvv9SgALOy9s5V1E6
         hYbEUgAtTUaNtMrfvwhOV4xRtW5SYICokTmr6eizXQM2ccHnBqe3Ajq8vir1IrNs5QX5
         5elNLKcNjQRZglvRFYu3d53iQ1aRquE91JjBujDa7wf3GPNBAOw0UeoL6A2gidNowlDs
         2rtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HUqkTX6cZs7OZuJSHaCts07mmEM8pvUZNpHIQVaAwR8=;
        b=1soeAoCQQBL3HzdqLQ+c0Hn+Uk/jvc7CD9KaaZTekoAOd+xtrz97f+aUSK2ve236Cx
         5utf4E0rT+uVE6oEWW8z7FArjXU5zuqCyVnmah1JiAylDcH1/058qcYr4SVHWmRRZa5M
         DLKamX6V3bAUKpeN40rU7NAt9D/sZ23DJmz6RFkgaxSlPPcQ/3/eFKYiZ8W8MRUFib7z
         WyZSefeusnkA2tfVHbdATOKYNi7SeIpzST0njhul8xQ5EP1+Y7KQjIcoBfdhhV78XudI
         +lFeOkuS3kDTZSU0GjSUWB2w1uldbOzefgioZqrXltuovv/WaFhjQN4vR3uKUOvew7CJ
         wfnw==
X-Gm-Message-State: AOAM532YPd+wXp8lsR1T4ZHe6+pp6Q6IDt9G/+69A0GvpAA8t/Arl5mZ
        e6CKDCpFgp+0mdYeuV4/Ku5ryg==
X-Google-Smtp-Source: ABdhPJxDBXQD/hTV9Sv+CZAJrQ1iG5fqabB3cTGmb3JEIJvYGTF+HByHgQG+Ndn8XaYy8fFi0B6I6Q==
X-Received: by 2002:a05:600c:3494:b0:390:8a95:1b95 with SMTP id a20-20020a05600c349400b003908a951b95mr16918483wmq.15.1650704547907;
        Sat, 23 Apr 2022 02:02:27 -0700 (PDT)
Received: from google.com (203.75.199.104.bc.googleusercontent.com. [104.199.75.203])
        by smtp.gmail.com with ESMTPSA id q16-20020a1ce910000000b0038eabd31749sm4306334wmc.32.2022.04.23.02.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 02:02:26 -0700 (PDT)
Date:   Sat, 23 Apr 2022 09:02:24 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     linux-kernel@vger.kernel.org,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        qperret@google.com, will@kernel.org, maz@kernel.org
Subject: Re: [PATCH  v2 0/2] Detect stalls on guest vCPUS
Message-ID: <YmPAoFjfGoBHbPjC@google.com>
References: <20220422141949.3456505-1-sebastianene@google.com>
 <YmOh5I7ZK08LlM6D@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YmOh5I7ZK08LlM6D@kroah.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 23, 2022 at 08:51:16AM +0200, Greg Kroah-Hartman wrote:
> On Fri, Apr 22, 2022 at 02:19:48PM +0000, Sebastian Ene wrote:
> > This adds a mechanism to detect stalls on the guest vCPUS by creating a
> > per CPU hrtimer which periodically 'pets' the host backend driver.
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
> > Changelog v2:
> >  - move the driver to misc as this does not cope with watchdog core
> >    subsystem

Hello Greg,

> 
> Wait, why does it not cope with it?  That's not documented anywhere in
> your patch that adds the driver.  In fact, most of the text here needs
> to be in the changelog for the driver submission, not thrown away in the
> 00/XX email that will never end up in the kernel tree.
> 
> thanks,
> 
> greg k-h

From the previous feedback that I received on this patch it seems that
watchdog core is not intended to be used for this type of driver. This
watchdog device tracks the elapsed time on a per-cpu basis,
since KVM schedules vCPUs independently. Watchdog core is not intended
to detect CPU stalls and the drivers don't have a notion of CPU.

Thanks,
Sebastian
