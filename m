Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDDDB4F8E31
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 08:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235149AbiDHGIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 02:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235137AbiDHGIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 02:08:14 -0400
Received: from smtpo62.interia.pl (smtpo62.interia.pl [217.74.67.62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC1D89310
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 23:06:06 -0700 (PDT)
Received: from t480s.localdomain (unknown [80.68.225.159])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by poczta.interia.pl (INTERIA.PL) with ESMTPSA;
        Fri,  8 Apr 2022 08:06:02 +0200 (CEST)
Date:   Fri, 8 Apr 2022 08:05:59 +0200
From:   Slawomir Stepien <sst@poczta.fm>
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Rob Herring <robh@kernel.org>, pantelis.antoniou@konsulko.com,
        devicetree@vger.kernel.org, krzysztof.adamski@nokia.com,
        tomasz.medrek@nokia.com, alexander.sverdlin@nokia.com
Subject: Re: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Message-ID: <Yk/Qx4Qin7i6A9j7@t480s.localdomain>
References: <YkV60TQ+d3sltkNU@t480s.localdomain>
 <YktXKR0kI+Aq5sW/@robh.at.kernel.org>
 <4375072d-abb4-6ff6-d1a0-4c2fca54cf39@gmail.com>
 <2f5b4459-3fbe-a2b1-def4-e45475599c28@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2f5b4459-3fbe-a2b1-def4-e45475599c28@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=interia.pl;
        s=biztos; t=1649397963;
        bh=hqJGKxpLpxIsxeY3dLG9ipRlzF9q95e/Nh4m2q7pQi8=;
        h=X-Interia-R:X-Interia-R-IP:X-Interia-R-Helo:Date:From:To:Cc:
         Subject:Message-ID:References:MIME-Version:Content-Type:
         Content-Disposition:In-Reply-To:X-Interia-Antivirus;
        b=oPhHzxzZDwlLDSgnr8xox1dfuPXAurqOiCjq1zKyo7O1Hz5J+S1r8tyMbqqT59iGN
         XdTm2YtxTqvWPuRS2LeFd9AVOmnP3WZoRzbM5KUhVkw2kE/8Kk84Hr1xmqODkiCv73
         k+/oAeRPeg0+IhR0G6/VChLgycf+b9WXag2AhyGw=
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,FREEMAIL_FROM,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On kwi 07, 2022 14:53, Frank Rowand wrote:
> Hi Slawomir,

Hello

>  On 4/4/22 16:02, Frank Rowand wrote:
> > On 4/4/22 15:38, Rob Herring wrote:
> >> On Thu, Mar 31, 2022 at 11:56:33AM +0200, Slawomir Stepien wrote:
> >>> From: Slawomir Stepien <slawomir.stepien@nokia.com>
> >>>
> >>> Before this change, the memory pointed by fields 'overlay_tree' and
> >>> 'fdt' will be double freed by a call to free_overlay_changeset() from
> >>> of_overlay_apply(), when the init_overlay_changeset() fails.
> >>>
> >>> The first free will happen under 'err_free_tree' label and for the
> >>> second time under 'err_free_overlay_changeset' label, where we call
> >>> free_overlay_changeset().
> >>>
> >>> This could happen for example, when you are applying an overlay to a
> >>> target path that does not exists.
> >>>
> >>> By setting the pointers only when we are sure that
> >>> init_overlay_changeset() will not fail, will prevent this double free.
> >>
> >> It looks to me like the free should just be moved from 
> >> init_overlay_changeset() to of_overlay_fdt_apply() where the allocation 
> >> is done. Frank?
> > 
> > This patch is next on my list to look over.
> 
> Thanks for finding this problem.  While investigating what you reported
> I found that there are additional related issues.  I am in the process
> of testing a patch to fix all of the issues.

That sounds great! Thank you!

> -Frank
> 
> > 
> > -Frank
> > 
> >>
> >> Also, I believe there's a bug that of_overlay_apply() should be passed 
> >> new_fdt_align rather than new_fdt. It's only a bug if we expect 
> >> overlay_changeset.fdt to point to a valid fdt rather than the memory 
> >> allocation.
> >>
> >> Rob
> > 
> 

-- 
Slawomir Stepien
