Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF6944D7516
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 13:00:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233466AbiCMMBS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 08:01:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbiCMMBS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 08:01:18 -0400
Received: from benson.default.arb33.bv.iomart.io (benson.default.arb33.bv.iomart.io [IPv6:2001:41c9:1:41d::16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58DAF25E88
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 05:00:07 -0700 (PDT)
Received: from cpc91210-cmbg18-2-0-cust57.5-4.cable.virginm.net ([81.102.44.58] helo=dagon.hellion.org.uk)
        by benson.default.arb33.bv.iomart.io with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <ijc@hellion.org.uk>)
        id 1nTMtG-0007N8-6z; Sun, 13 Mar 2022 12:00:02 +0000
Message-ID: <677bf0dcf6b17eb7fb5489524e0c4ac4ad450ff0.camel@hellion.org.uk>
Subject: Re: Broken devicetree-rebasing history
From:   Ian Campbell <ijc@hellion.org.uk>
To:     Hector Martin <marcan@marcan.st>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>, Janne Grunau <j@jannau.net>,
        Sven Peter <sven@svenpeter.dev>,
        Mark Kettenis <mark.kettenis@xs4all.nl>
Date:   Sun, 13 Mar 2022 12:00:00 +0000
In-Reply-To: <82ba9727b15e99f47488e3b2db4423a51a05bc35.camel@hellion.org.uk>
References: <9f6a2553-2145-c955-0ece-6c05fa060e50@marcan.st>
         <82ba9727b15e99f47488e3b2db4423a51a05bc35.camel@hellion.org.uk>
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

On Fri, 2022-03-11 at 09:01 +0000, Ian Campbell wrote:
> Thanks for the heads up, I'll (hopefully) take a look over the
> weekend.

My first attempt at rerunning the conversion still had the problem (I
think I didn't wind the state branch back far enough). A second one is
running now and looks to have avoided the issue. I think it'll finish
later on today but I may not have a chance to check and push the
results until later in the week.

Obviously this is going to involve a force push and a whole new pile of
updated tags in the repo on kernel.org, I'll send an heads up to the
list when I get as far as actually pushing.

FYI the new mirror will be
https://github.com/ijc/devicetree-rebasing-v3 and the new state repo
will be https://github.com/ijc/devicetree-conversion-state-v3. The old
state repo will remain frozen.

Cheers,
Ian.
