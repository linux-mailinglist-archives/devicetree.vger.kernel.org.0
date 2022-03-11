Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 876C24D5DF9
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 09:58:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235456AbiCKI7v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 03:59:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241298AbiCKI7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 03:59:50 -0500
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 922D51BAF34
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 00:58:46 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: marcan@marcan.st)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 973C0423BA;
        Fri, 11 Mar 2022 08:58:42 +0000 (UTC)
To:     Ian Campbell <ijc@hellion.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>, Janne Grunau <j@jannau.net>,
        Sven Peter <sven@svenpeter.dev>,
        Mark Kettenis <mark.kettenis@xs4all.nl>
From:   Hector Martin <marcan@marcan.st>
Subject: Broken devicetree-rebasing history
Message-ID: <9f6a2553-2145-c955-0ece-6c05fa060e50@marcan.st>
Date:   Fri, 11 Mar 2022 17:58:40 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: es-ES
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ian,

I just noticed that at some point in the devicetree-rebasing.git
history, a merge sneaked in that linked in the mainline git history.
That unfortunately somewhat defeats the purpose of the repo, since you
can't clone it without cloning all of Linux now.

The last good tag is v5.9-rc2-dts; v5.9-rc3-dts is the first one to
include the bad merge. With -rc2 you get a 128MB clone; -rc3 ends up
pulling in 1GB+ from the rest of Linux.

I thought of giving a shot at fixing it myself, but it seems the filter
state/etc branches aren't available on the kernel.org repo, so AIUI
re-bootstrapping the filtering process would require filtering the
entire kernel history again, not just the changes since the bad merge...

For the Asahi Linux project (Linux on the new Apple machines) we're
looking into having a dedicated DT repo where we can stage our bleeding
edge changes before they are merged, since we want that to build our
bootloader+DT packages without pulling in the entire kernel, and I was
thinking of reusing the devicetree-rebasing infra and throwing up a
cronjob that repeatedly rebases our latest changes from our kernel repo
on top of whatever is the latest version in devicetree-rebasing.git...

-- 
Hector Martin (marcan@marcan.st)
Public Key: https://mrcn.st/pub
