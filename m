Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE9B514F40
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 17:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377933AbiD2P1l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 11:27:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiD2P1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 11:27:40 -0400
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68711D4471
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:24:20 -0700 (PDT)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
        by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20220429152419euoutp0222df3504fc1a44bb3a8e3216700c21e9~qZ1wyJ-HJ1190311903euoutp02l
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:24:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20220429152419euoutp0222df3504fc1a44bb3a8e3216700c21e9~qZ1wyJ-HJ1190311903euoutp02l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1651245859;
        bh=to37rMSP/G4CXEYIvomZmetr3C+P2P4ivMTn6xRdbsg=;
        h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
        b=s+mnha8h73OcVdNiAiuyusAWF20b5DDiAQCsuEn81J9QVa+BMxE79dYNeECBZQ0kh
         dhmD/Jyy2rls8nGL+PPE4RN3QHek3bNxU4unNKaD7jS6jW3/++DEqH7ZxxIGxMr0tZ
         0bNru8lQkuXJ/DbXgLscwAZFzZSBm8iFhdMkGVOo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
        eucas1p1.samsung.com (KnoxPortal) with ESMTP id
        20220429152418eucas1p1895361a526276af7a241c5590d006659~qZ1wd_KLX1840218402eucas1p1n;
        Fri, 29 Apr 2022 15:24:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
        eusmges1new.samsung.com (EUCPMTA) with SMTP id BC.AE.10009.2230C626; Fri, 29
        Apr 2022 16:24:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
        eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
        20220429152418eucas1p27b61f8f83c1f0239c6c5efe77ea03346~qZ1v6bQ5H0223702237eucas1p2T;
        Fri, 29 Apr 2022 15:24:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
        eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220429152418eusmtrp1c6c74eb14fb51948f06881eee9d976ba~qZ1v5POlh0707507075eusmtrp1K;
        Fri, 29 Apr 2022 15:24:18 +0000 (GMT)
X-AuditID: cbfec7f2-e95ff70000002719-ef-626c03225fe3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
        eusmgms1.samsung.com (EUCPMTA) with SMTP id 2F.E4.09522.1230C626; Fri, 29
        Apr 2022 16:24:17 +0100 (BST)
Received: from [106.210.134.141] (unknown [106.210.134.141]) by
        eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
        20220429152417eusmtip10633a042fd1bd92c1faad84608b9301d~qZ1vgsU5d1752317523eusmtip1g;
        Fri, 29 Apr 2022 15:24:17 +0000 (GMT)
Message-ID: <d9dfd712-45f6-2fac-4cbc-dd0a12f564e8@samsung.com>
Date:   Fri, 29 Apr 2022 17:24:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
        Gecko/20100101 Thunderbird/91.8.1
Subject: Re: [PATCH] schemas: clock: Add assigned-clocks description
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-spec@vger.kernel.org
Cc:     Stephen Boyd <sboyd@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>
From:   Sylwester Nawrocki <s.nawrocki@samsung.com>
In-Reply-To: <20220428152633.2261979-1-robh@kernel.org>
Content-Transfer-Encoding: 7bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjleLIzCtJLcpLzFFi42LZduzneV0l5pwkg97JmhbNPw+zWsw/co7V
        4v+eHewWP850s1gcv/OUyYHVY3bDRRaPy329TB6bVnWyeXzeJBfAEsVlk5Kak1mWWqRvl8CV
        8fb4QsaCD8wVTYf72RoY5zB3MXJySAiYSDRdawSyuTiEBFYwSsx8fZkRwvnCKDH14TZWCOcz
        o8TqB1vZYVr2LfnNBpFYzijReG4pC4TzkVHi37OprCBVvAJ2Egv7TrKB2CwCqhLbj/ayQMQF
        JU7OfAJmiwokSfy6OocRxBYWcJHo75oC1sssIC5x68l8JhBbRCBB4vXng+wQcW+J7z0PwGay
        CRhK9B7tA+vlFDCXONd9kBmiRl5i+9s5YA9JCJzgkJg4/SkbxNkuEt0/Z7JC2MISr45vgXpH
        RuL05B4WCLteYvKUK1D1HYwSX/eaQdjWEhM2nQCKcwAt0JRYv0sfIuwosWXaDrCwhACfxI23
        ghAn8ElM2jadGSLMK9HRJgRRrSLxe9V0JghbSqL7yX+WCYxKs5ACZRaS52cheWYWwt4FjCyr
        GMVTS4tz01OLDfNSy/WKE3OLS/PS9ZLzczcxApPM6X/HP+1gnPvqo94hRiYOxkOMEhzMSiK8
        X3ZnJAnxpiRWVqUW5ccXleakFh9ilOZgURLnTc7ckCgkkJ5YkpqdmlqQWgSTZeLglGpgMrqT
        q6zdeHjTzrZL8+7Yl/v8/CKbn7c26vnVuBXCD/jvuinvi4+9X3TmRcrbFQ8m5Xo6fOk0X1g2
        bcrh1tkXRGSO7mXbM01SRJOvyy/+y7boYF2X1y8sKiP9mtl/HLT8IpwoLbbwn63y5tBF3/Pd
        bDY9+rnyZ+KXwp7K68W9L64vuuDfyDrveuLfn1nzaxh3mh/e3DHniWqycIqLYeHdy/U/86Y/
        MDo4e+kDyYbHjbyZs/f0/vZc5zVtdsvDddNbpNal9P45LsEjdKHsRqakZV2zyeWz/sy/Om6/
        S9a9UaLWf7uRzfzJ62XWWqdY9PQ4191j1lNyDJ0k0jvbo22rkiWH5ZrZ0uv+u2vvXSuqqMRS
        nJFoqMVcVJwIAJvDwWuhAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xu7qKzDlJBrMX2Fg0/zzMajH/yDlW
        i/97drBb/DjTzWJx/M5TJgdWj9kNF1k8Lvf1MnlsWtXJ5vF5k1wAS5SeTVF+aUmqQkZ+cYmt
        UrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJextvjCxkLPjBXNB3uZ2tgnMPc
        xcjJISFgIrFvyW+2LkYuDiGBpYwSpxf/Yupi5ABKSEnMb1GCqBGW+HOtC6rmPaNE87J77CAJ
        XgE7iYV9J9lAbBYBVYntR3tZIOKCEidnPgGzRQWSJPbcb2QCsYUFXCT6u6awgtjMAuISt57M
        B4uLCCRITF18jhki7i3xvecB1LIuRokZP6+DJdgEDCV6j/YxgticAuYS57oPMoMcyiygLrF+
        nhBEr7zE9rdzmCcwCs1CcsYsJOtmIXTMQtKxgJFlFaNIamlxbnpusaFecWJucWleul5yfu4m
        RmBMbTv2c/MOxnmvPuodYmTiYDzEKMHBrCTC+2V3RpIQb0piZVVqUX58UWlOavEhRlNgUExk
        lhJNzgdGdV5JvKGZgamhiZmlgamlmbGSOK9nQUeikEB6YklqdmpqQWoRTB8TB6dUA9P+lQ67
        Cvv+nExrjfw5XfpGs+3mzOKdnQskrz/ekyDlLr+7T9R9W9X2bQYcr0yOrNEti96u9yPzW1OK
        +Hx5pYrMzX+ElpRe4t3nef/eU6Y8llmff3gvUXEoYV20K93znX/OxUhuvevbajnW9iROSbPZ
        7Je7X+TTpgQpqfg/DCYL2VKe5645NlWdS+DG17N1dpJTTsvcns5duD57Vs2BTQt+eemyTZ88
        aYbQfuNz7B2lJpv+/Duqs+LavArP424SYf+rbO7v3vU4tKHmyTmxX/Oe6Av8Dr8cu+nGFgWj
        N5vWRR17mfWkr/D7+fephRsWC1RmiIbuMDnYfWbBAsl/G+L039UfYFE8OsEudeGNR7PfKrEU
        ZyQaajEXFScCAOzDc7IyAwAA
X-CMS-MailID: 20220429152418eucas1p27b61f8f83c1f0239c6c5efe77ea03346
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20220428152638eucas1p11b7bbe5bcb8d36641b8328057a248789
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20220428152638eucas1p11b7bbe5bcb8d36641b8328057a248789
References: <CGME20220428152638eucas1p11b7bbe5bcb8d36641b8328057a248789@eucas1p1.samsung.com>
        <20220428152633.2261979-1-robh@kernel.org>
X-Spam-Status: No, score=-10.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28.04.2022 17:26, Rob Herring wrote:
> Add description for assigned-clocks properties from clock-binding.txt in
> the Linux kernel.
> 
> This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
> are the original authors.
> 
> Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Please ack for the license change.

Acked-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
