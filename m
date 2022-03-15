Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B87584DA006
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 17:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350024AbiCOQ32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 12:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347087AbiCOQ32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 12:29:28 -0400
Received: from benson.default.arb33.bv.iomart.io (benson.default.arb33.bv.iomart.io [IPv6:2001:41c9:1:41d::16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF364DB0
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 09:28:14 -0700 (PDT)
Received: from cpc91210-cmbg18-2-0-cust57.5-4.cable.virginm.net ([81.102.44.58] helo=dagon.hellion.org.uk)
        by benson.default.arb33.bv.iomart.io with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <ijc@hellion.org.uk>)
        id 1nUA1s-000CEM-J3; Tue, 15 Mar 2022 16:28:12 +0000
Message-ID: <ec122c73c454a3f581fbb3a84885f96551780fa3.camel@hellion.org.uk>
Subject: Re: devicetree-rebasing: master branch and tags have been rebased
From:   Ian Campbell <ijc@hellion.org.uk>
To:     DTML <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
        Frank Rowand <frowand.list@gmail.com>
Date:   Tue, 15 Mar 2022 16:28:10 +0000
In-Reply-To: <6dbd23c57e8150237f70cb3c0da24f5915fa2729.camel@hellion.org.uk>
References: <6dbd23c57e8150237f70cb3c0da24f5915fa2729.camel@hellion.org.uk>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.42.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2022-03-14 at 20:35 +0000, Ian Campbell wrote:
> Hi all,
> 
> TL;DR: 
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
>    master branch has been rebased and tags v5.9-rc2-dts..v5.17-rc7-dts
>    (inclusive) have been recreated.
>    
>    You will need to reclone or force things to take the new versions,
>    including `git fetch --tags --force`

Unfortunately v5.9-dts itself was missed, so the clones didn't get any
smaller and the v5.9-dts tag was disjoint from the new history.

Sadly there was an actual relevant change between v5.9-rc8 and v5.9 so
I couldn't just shift the tag to the existing correct merge point in
the dts master branch.

So... I've had to force master and all the tags v5.9-rc2-dts..v5.17-
rc8-dts (note: v5.17-rc8 now included) as second time.

The two github repos have also been updated this time rather than going
to v4.

Just the -dts tags and the sequence of merges onto the master branch
have changed, not the actual converted commits.

Apologies for the faff.

Ian.
> 
> Longer version:
> 
> Between v5.9-rc2-dts and v5.9-rc3-dts somehow a merge crept into the
> conversion process which grafted the real linux.git history into the
> tree, meaning clones were >1GB instead of <100MB.
> 
> The conversion process has been rerun from v5.9-rc1 and the tags from
> (and including) v5.9-rc2-dts have been recreated, up to v5.17-rc7-
> dts.
> 
> This means that when updating your existing clones will likely need
> to
> forcibly reset to the new master branch since it is not a fast-
> forward
> and you will want to `get fetch --tags --force` as well.
> 
> The GH mirror is now
> https://github.com/ijc/devicetree-rebasing-v3 and
> v2 will no longer be updated. Likewise the conversion state repo is
> now
> https://github.com/ijc/devicetree-conversion-state-v3
> 
> v5.17-rc8-dts will be pushed from the new history only.
> 
> Many thanks to Hector for bringing this to my attention.
> 
> Cheers,
> Ian.

