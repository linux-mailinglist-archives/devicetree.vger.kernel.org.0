Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68DC62D05FB
	for <lists+devicetree@lfdr.de>; Sun,  6 Dec 2020 17:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727356AbgLFQcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Dec 2020 11:32:52 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:49911 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726981AbgLFQcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Dec 2020 11:32:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1607272285;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=CMF+CoVSS643Fc17KXhh3rGOJ/yHoZk4DoSGgm33ivA=;
        b=bxhG7CFMs5KdaS6D9qhnwD5Zv8nlND6o3W9XDMqgnoVyfkkPMJY7qXH2/MO9551nhdLetn
        z+LFBx3p8PXnFhhQN8TYT39//Ejb0yRzSkTXJSxLKkpqSNv0kPrEjNypsPHqUrNTXR8KiJ
        mBRi9LToYztnxskIaOc87EW+/52IKTo=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-XU_lz2eGO7ShZmJgsLKOLQ-1; Sun, 06 Dec 2020 11:31:23 -0500
X-MC-Unique: XU_lz2eGO7ShZmJgsLKOLQ-1
Received: by mail-qk1-f198.google.com with SMTP id n190so884137qkf.18
        for <devicetree@vger.kernel.org>; Sun, 06 Dec 2020 08:31:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=CMF+CoVSS643Fc17KXhh3rGOJ/yHoZk4DoSGgm33ivA=;
        b=uByUNNV09EKiPa2xiWmevcQONCE3/8R1uT3X5GKbizi3vTI0HoioLEuykWs94HLdIZ
         rk9YNaE2+huoVcPrmVOLuGDYFNyLSHFQbMC4+goNlOujBW9+rTMemsQsd+DejIUu27st
         TcSx4jUK0azI/PtOWQJ0juf/cewsI0sT4jB2fNawbWYhRBYQAx2ryc5lk9/bqnqZFlH3
         biHfdcBaWCAJoaOmykMSyVfUZcPUOHEG/du8UcoWUe1LhuyQuZlWU3NpyTgX4A0Cv+y9
         okpN6+Jbykk0zmtqn8MazTse/5004MenA07d6MKxuByvhKcW1ApZcNptw/CKjQ0MuCAZ
         pxLA==
X-Gm-Message-State: AOAM533WRrQJN916IJhvc/tUpATEz2m0Vs9fSoluMgzj+oMtNuRbuVxS
        g+sIXhU2BpOpuAXQguk7EZeLSaQV+kuylZaoVI97B35xlhlEgQ/FPmS1zQAnjTHo4ICB1ou+eVz
        mCmtXndSJUdyHnZwu6CnKJ9evxOoHL906xx+RgFgWf0ceAcQxaIFULw7mLuQggIz5SsHN
X-Received: by 2002:ac8:bc7:: with SMTP id p7mr19756357qti.91.1607272282369;
        Sun, 06 Dec 2020 08:31:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwRjzb3ETLrTBxkdDegvZLQf2Fn3hwR6fns803HxOqkK73W88fwCB9NZ01f3lD4Rew17E3XSQ==
X-Received: by 2002:ac8:bc7:: with SMTP id p7mr19756331qti.91.1607272282050;
        Sun, 06 Dec 2020 08:31:22 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l10sm10618585qti.37.2020.12.06.08.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Dec 2020 08:31:21 -0800 (PST)
Subject: Re: [PATCH Xilinx Alveo 0/8] Xilinx Alveo/XRT patch overview
To:     Sonal Santan <sonal.santan@xilinx.com>,
        linux-kernel@vger.kernel.org
Cc:     Sonal Santan <sonals@xilinx.com>, linux-fpga@vger.kernel.org,
        maxz@xilinx.com, lizhih@xilinx.com, michal.simek@xilinx.com,
        stefanos@xilinx.com, devicetree@vger.kernel.org
References: <20201129000040.24777-1-sonals@xilinx.com>
From:   Tom Rix <trix@redhat.com>
Message-ID: <457f9fad-f108-26de-3cdb-b367a4782ef2@redhat.com>
Date:   Sun, 6 Dec 2020 08:31:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201129000040.24777-1-sonals@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/28/20 4:00 PM, Sonal Santan wrote:
> Hello,
>
> This patch series adds management physical function driver for Xilinx Alveo PCIe
> accelerator cards, https://www.xilinx.com/products/boards-and-kits/alveo.html
> This driver is part of Xilinx Runtime (XRT) open source stack.

A few general things.

Use scripts/get_maintainer.pl to find who a patch should go to, i should have been on the cc line.

Each patch should at a minimum pass scripts/checkpatch.pl, none do.

Looking broadly at the files, there are competing names xrt or alveo.

It seems like xrt is the dfl equivalent, so maybe

drivers/fpga/alveo should be drivers/fpga/xrt

There are a lot of files with unnecessary prefixes

ex/

fpga/alveo/include/xrt-ucs.h could just be fpga/alveo/include/ucs.h

individual subdev's may not belong in the fpga subsystem.

I think it would be better to submit these one at a time as is done for dfl.

So this will not block getting the basics done, in the next revision, can you leave the subdev's out ?

 

Because of the checkpatch.pl failures, I will wait for the next revision.

Tom


