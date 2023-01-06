Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0148660096
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 13:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjAFMxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 07:53:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233869AbjAFMxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 07:53:30 -0500
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46FE1755C0
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 04:53:27 -0800 (PST)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199]) by mx-outbound9-213.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 06 Jan 2023 12:53:25 +0000
Received: by mail-lj1-f199.google.com with SMTP id b11-20020a05651c0b0b00b0028248aa29a5so189913ljr.19
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 04:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9D7DGzJQZ+0e/BP6gr0QBg/0weFGurVvmybVclcA84I=;
        b=Bzy3Shsu74uzLf1ZdMLQxbYEHiKyrFlrN3YkNmQMlYrhtvt8IRG+ndNcwqgNoclx/2
         28mNgJVa4RaEV25v1W6vt82pgOqn6YhC3jgWuhB0P+HuPo3jLPJFMiTKXMY+704ahWZa
         ErQ8RRQEXtaKGvyX3FKoyC9N4t4S6pNOQCu7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9D7DGzJQZ+0e/BP6gr0QBg/0weFGurVvmybVclcA84I=;
        b=LHLodGECMJV/vKxQF9fAlkvS6v/0XRqAO5CwHD23Oge+a0VKf7cVFYw+FR+yT+fJgb
         ywXcpZ10gpWhfR2ikbEMkYGbNTZAYAm3ZkYHy7dESvHzK2BCanaatGKdM9HVnl/ZRRT8
         fb5Nzs6WPzAj507ivMl+TWmbFDBTvFtIG4Ibet2c8fnuV9nW/e7c4HDZGc15DWQzvJMO
         v0n5PI3RdOlcJzGBM7BE9pT6UFwAHM56Jz9tTHEQ5+wMk6C4TJrbN/tfYXg4wWXW6XFH
         CBxlu0ivA8WDNfvngZnTnUBZmnJIf71pSAu0DpeMJeNJ9GMz+eJX6rXU8pKUYBGd1P6F
         kyYA==
X-Gm-Message-State: AFqh2kovaeKLLLgug8IYpLd1lu/9knL/2AbTLfEEc3YkZdcHUYfe9PoK
        KLeF+14a+qke5kbPmU5G/671HRllKCNVXXAc+uxTgl8b40NPIaAGjJiQv3Vb9z+fw9IIpE9apRb
        Tx0aBgNKOccl3MOnbHUtpbO+Hl9YUUOBF3lJzhc6racoOBvvNtW7DtKaLuPWnOn3QkRpBAjpOgg
        ==
X-Received: by 2002:ac2:58cc:0:b0:4a2:4d89:aa58 with SMTP id u12-20020ac258cc000000b004a24d89aa58mr4079226lfo.646.1673009604862;
        Fri, 06 Jan 2023 04:53:24 -0800 (PST)
X-Google-Smtp-Source: AMrXdXs0rvoHCjLtwhGzK4XEw9VyRpqBK13CxRNprtcuOn5/sU0IoGu6JAMhjzzViR3TUvZDZbSlmBmjcxrJkgjtrBs=
X-Received: by 2002:ac2:58cc:0:b0:4a2:4d89:aa58 with SMTP id
 u12-20020ac258cc000000b004a24d89aa58mr4079219lfo.646.1673009604615; Fri, 06
 Jan 2023 04:53:24 -0800 (PST)
MIME-Version: 1.0
References: <20230105151740.29436-1-sinthu.raja@ti.com> <20230105151740.29436-2-sinthu.raja@ti.com>
 <977b5cce-2501-4d7a-fe24-437df88aee8f@linaro.org>
In-Reply-To: <977b5cce-2501-4d7a-fe24-437df88aee8f@linaro.org>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Fri, 6 Jan 2023 18:23:13 +0530
Message-ID: <CAEd-yTR=zdg_pt=MzkzceGTY2SkV=16dyhXCtd4EU-KGzP_mAQ@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-BESS-ID: 1673009605-302517-5392-56522-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.208.199
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245286 [from 
        cloudscan22-5.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 6, 2023 at 6:19 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 05/01/2023 16:17, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > AM68 Starter Kit is a low cost, small form factor board designed for
> > TI's AM68 SoC which is optimized to provide best in class performance
> > for industrial applications and add binding for the same.
> >
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
>
> What happened here?,
Krzysztof
Missed the merge window, so rebased to 6.2rc1 and reposted again.
>
> Best regards,
> Krzysztof
>



--
With Regards
Sinthu Raja
