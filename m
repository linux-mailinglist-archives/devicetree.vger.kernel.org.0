Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D5A9314CB7
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 11:17:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbhBIKQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 05:16:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231531AbhBIKLn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 05:11:43 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E142EC06178B
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 02:11:02 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id nm1so1278703pjb.3
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 02:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5i1+312252523epfG8I2zcLcLI8LRpUJsPoSSG4hwGM=;
        b=JeePriOOUxi+J/TQLjYadusaKDnPV2qhhfQ/06TUQGZqX/mDsv+ZHfdxQ8h3kLyLdA
         looiCLo1L/CcCUVLe0/0For+Dfjl0APqlIKDDw6eFUfCPYBHZNM0oAGTCSsRugy7NCAg
         dk+FgL/262s5RDdH1m2i3IezsWiRaCQCZKn0tkkJAsGhLUMrbdSfJqBwzyvZiC7SEIyJ
         JBaU4POphQwHoISOQXukxH2iRG6CM5uDraeVqRnA7NV49oDUT3iVWOHZESdsg2nWsuGM
         8jiZ9i/3klTJaGeXBIjOMi13//6OkK8z0PfINy3m69/Z6Lp/om78ttMxOspt0yYl6X32
         M+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5i1+312252523epfG8I2zcLcLI8LRpUJsPoSSG4hwGM=;
        b=bxDNSs2O+eOtr0hheo0LZjdTg56/ZZSZ0QncCpsvfRkhDal8QmkVlS+BfXDmr02+GK
         M/DsnB+7E/xDWPCMzWnzGM0lTJ9UtfDTobS5Jhe7EbYo03ipjwRrPHnefTGRiS9KYWTe
         hztJCMsKCm9EMa6XmB0e5Er8mVPnV308LADzMBz4A51cV/S/+j78BEji5pZogbJn7qDd
         h1qjMNWuls0wPuPH8M+3J+OR9+f5ur1n5vVI44icM/Y4vGtq+kPKTO9hVImCyGwyjXs3
         6nqXrp8Axf6Wv4xKxp5L29LyH7GiyNaGjmCmRu0TDax8cUy6GxRNq/NBBruHIn8QGnBy
         ztkA==
X-Gm-Message-State: AOAM531HerXW637YN+go3kzyyr+DxupidSE9QpMqL9APIW6fMnmy4Dp2
        UQ2DpTqwOZKUsRJX7aCqZMIvFw==
X-Google-Smtp-Source: ABdhPJztLnRvmN7Zpdv6M1GDZXxFpHQY+sv6mnUEKUTJiloTp6w01kvvTUz+SaeqMheOwm+MoyNnaA==
X-Received: by 2002:a17:90a:5318:: with SMTP id x24mr3387101pjh.226.1612865462346;
        Tue, 09 Feb 2021 02:11:02 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id t1sm11865742pfl.194.2021.02.09.02.11.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 02:11:01 -0800 (PST)
Date:   Tue, 9 Feb 2021 15:40:58 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Anmar Oueja <anmar.oueja@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH V7 6/6] of: unittest: Statically apply overlays using
 fdtoverlay
Message-ID: <20210209101058.kmqqjxfjz3alre55@vireshk-i7>
References: <cover.1611904394.git.viresh.kumar@linaro.org>
 <3683a542d4141cfcf9c2524a40a9ee75b657c1c2.1611904394.git.viresh.kumar@linaro.org>
 <20210204015409.GA3150757@robh.at.kernel.org>
 <20210208111813.oql6jmeaxuq3btz7@vireshk-i7>
 <CAL_JsqK+eM_RrzXnbm2GJGJuVwAjEz1TeTux18Hc727vovbqDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqK+eM_RrzXnbm2GJGJuVwAjEz1TeTux18Hc727vovbqDA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-02-21, 08:21, Rob Herring wrote:
> We may need to turn off
> checks in overlays for required properties as they may be incomplete.
> We already do that on disabled nodes.

And after decent amount of effort understanding how to do this, I
finally did it in a not so efficient way, I am sure you can help
improving it :)

Author: Viresh Kumar <viresh.kumar@linaro.org>
Date:   Tue Feb 9 12:19:50 2021 +0530

    dt-validate: Skip "required property" checks for overlays
    
    The overlays may not carry the required properties and would depend on
    the base dtb to carry those, there is no point raising those errors
    here.
    
    Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 tools/dt-validate | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/tools/dt-validate b/tools/dt-validate
index 410b0538ef47..c6117504f1d1 100755
--- a/tools/dt-validate
+++ b/tools/dt-validate
@@ -80,6 +80,23 @@ show_unmatched = False
                                   (filename, line, col, fullname, node['compatible']), file=sys.stderr)
                             continue
 
+                        if nodename == '/':
+                            is_fragment = False
+                            for name in node.items():
+                                if name[0] == 'fragment@0':
+                                    is_fragment = True
+                                    break;
+
+                            if is_fragment == True:
+                                if 'required property' in error.message:
+                                    continue
+                                elif error.context:
+                                    for e in error.context:
+                                        if not 'required property' in e.message:
+                                            break
+                                    else:
+                                        continue
+
                         print(dtschema.format_error(filename, error, nodename=nodename, verbose=verbose) +
                             '\n\tFrom schema: ' + schema['$filename'],
                             file=sys.stderr)

-- 
viresh
