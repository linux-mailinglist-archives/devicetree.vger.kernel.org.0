Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6744D5E42
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 10:20:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347301AbiCKJT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233536AbiCKJT6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:19:58 -0500
X-Greylist: delayed 1022 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Mar 2022 01:18:54 PST
Received: from benson.default.arb33.bv.iomart.io (benson.default.arb33.bv.iomart.io [IPv6:2001:41c9:1:41d::16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 454C21BBF7F
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:18:53 -0800 (PST)
Received: from cpc91210-cmbg18-2-0-cust57.5-4.cable.virginm.net ([81.102.44.58] helo=[192.168.2.172])
        by benson.default.arb33.bv.iomart.io with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <ijc@hellion.org.uk>)
        id 1nSb9Y-0005iD-71; Fri, 11 Mar 2022 09:01:40 +0000
Message-ID: <82ba9727b15e99f47488e3b2db4423a51a05bc35.camel@hellion.org.uk>
Subject: Re: Broken devicetree-rebasing history
From:   Ian Campbell <ijc@hellion.org.uk>
To:     Hector Martin <marcan@marcan.st>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>, Janne Grunau <j@jannau.net>,
        Sven Peter <sven@svenpeter.dev>,
        Mark Kettenis <mark.kettenis@xs4all.nl>
Date:   Fri, 11 Mar 2022 09:01:38 +0000
In-Reply-To: <9f6a2553-2145-c955-0ece-6c05fa060e50@marcan.st>
References: <9f6a2553-2145-c955-0ece-6c05fa060e50@marcan.st>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the heads up, I'll (hopefully) take a look over the weekend.

FYI the state stuff can be found in
https://github.com/ijc/devicetree-conversion-state-v2

Ian.

On Fri, 2022-03-11 at 17:58 +0900, Hector Martin wrote:
> Hi Ian,
> 
> I just noticed that at some point in the devicetree-rebasing.git
> history, a merge sneaked in that linked in the mainline git history.
> That unfortunately somewhat defeats the purpose of the repo, since
> you
> can't clone it without cloning all of Linux now.
> 
> The last good tag is v5.9-rc2-dts; v5.9-rc3-dts is the first one to
> include the bad merge. With -rc2 you get a 128MB clone; -rc3 ends up
> pulling in 1GB+ from the rest of Linux.
> 
> I thought of giving a shot at fixing it myself, but it seems the
> filter
> state/etc branches aren't available on the kernel.org repo, so AIUI
> re-bootstrapping the filtering process would require filtering the
> entire kernel history again, not just the changes since the bad
> merge...
> 
> For the Asahi Linux project (Linux on the new Apple machines) we're
> looking into having a dedicated DT repo where we can stage our
> bleeding
> edge changes before they are merged, since we want that to build our
> bootloader+DT packages without pulling in the entire kernel, and I
> was
> thinking of reusing the devicetree-rebasing infra and throwing up a
> cronjob that repeatedly rebases our latest changes from our kernel
> repo
> on top of whatever is the latest version in devicetree-
> rebasing.git...
> 

