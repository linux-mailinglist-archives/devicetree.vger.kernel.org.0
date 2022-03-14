Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC67A4D8E45
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 21:35:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239186AbiCNUgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 16:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231499AbiCNUge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 16:36:34 -0400
Received: from benson.default.arb33.bv.iomart.io (benson.default.arb33.bv.iomart.io [IPv6:2001:41c9:1:41d::16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CCB73A732
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 13:35:22 -0700 (PDT)
Received: from cpc91210-cmbg18-2-0-cust57.5-4.cable.virginm.net ([81.102.44.58] helo=dagon.hellion.org.uk)
        by benson.default.arb33.bv.iomart.io with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <ijc@hellion.org.uk>)
        id 1nTrPT-00032i-Rw; Mon, 14 Mar 2022 20:35:19 +0000
Message-ID: <6dbd23c57e8150237f70cb3c0da24f5915fa2729.camel@hellion.org.uk>
Subject: devicetree-rebasing: master branch and tags have been rebased
From:   Ian Campbell <ijc@hellion.org.uk>
To:     DTML <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
        Frank Rowand <frowand.list@gmail.com>
Date:   Mon, 14 Mar 2022 20:35:18 +0000
Content-Type: text/plain; charset="ISO-8859-1"
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

Hi all,

TL;DR: 

   https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
   master branch has been rebased and tags v5.9-rc2-dts..v5.17-rc7-dts
   (inclusive) have been recreated.
   
   You will need to reclone or force things to take the new versions,
   including `git fetch --tags --force`

Longer version:

Between v5.9-rc2-dts and v5.9-rc3-dts somehow a merge crept into the
conversion process which grafted the real linux.git history into the
tree, meaning clones were >1GB instead of <100MB.

The conversion process has been rerun from v5.9-rc1 and the tags from
(and including) v5.9-rc2-dts have been recreated, up to v5.17-rc7-dts.

This means that when updating your existing clones will likely need to
forcibly reset to the new master branch since it is not a fast-forward
and you will want to `get fetch --tags --force` as well.

The GH mirror is now https://github.com/ijc/devicetree-rebasing-v3 and
v2 will no longer be updated. Likewise the conversion state repo is now
https://github.com/ijc/devicetree-conversion-state-v3

v5.17-rc8-dts will be pushed from the new history only.

Many thanks to Hector for bringing this to my attention.

Cheers,
Ian.
