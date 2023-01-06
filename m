Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04EF66010F
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 14:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233312AbjAFNRi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 08:17:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbjAFNRh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 08:17:37 -0500
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 507F26B5F4
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 05:17:33 -0800 (PST)
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200]) by mx-outbound9-213.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 06 Jan 2023 13:17:31 +0000
Received: by mail-lj1-f200.google.com with SMTP id a11-20020a05651c210b00b0027fc4f018a1so407489ljq.8
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 05:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yEFqgO5Sbwl96nBn28e5ofxJpRgmUFLXkbzNsaZFr1I=;
        b=AT1w3jQRs6fE7wCeOTrBDr+qdzYn8lq9RB4LI0FtTaYGEx9F6JpFIpGTgQtg1gdLq1
         114GRenHOhT143WTajBP761EhjoM0HqEfk+hB6g8x2QWmQlvB8L7XOqKzfO3peGUCUwe
         GGSYTZB1cCVCk9Mzr4u0Dg3D2F1X6wnEIr+eU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yEFqgO5Sbwl96nBn28e5ofxJpRgmUFLXkbzNsaZFr1I=;
        b=5JBrmYZhQkSS847dYoSxWAhxQb+Myx3piRuAMbqaor8bq5eFr51SdRFwp6MphSL3+y
         hfWYdbmxIQoXG0d1+v7fgPnZvNvZPkgIQec0UAN8DYDMoCP1tQa5fm+EOYLihBO+QcCa
         u4WEetqBtGphfIa9gUkMzXPO0MoMg7E+LuEhM9Ep1BN9q/Z4ItaOoqIzqjosl7JoZV8d
         FQm8z2jsl9IBaUT+ECdA2rk2avHyD18lQTwaUGvDc07obxW0v7AIY51xUytwpQYG9sSu
         xtuV/THdtMw0OSxecWI1X2j7MPeWVkCFx+kQwQgkASWpjmCoCgpPIZL5XVgoRz0bd7UN
         xVkQ==
X-Gm-Message-State: AFqh2koKRsG9ODIz4vn0YDt9JkHrhTAb4/RKWXwz9TjZ1P09SmqZgz6M
        PRC3DoAC5qWqDhdRLdtYbEwrCcXVLxmu7D8jFtNlBu23rfIjdG+J+N4tMF/hdaA3mtt1GCikxg1
        qsgph2XsmkjliiY3s9EcB8YztvCChssaQ9bs26aqs0gXw6LE8zqyFEiDfYA5ad4UjZofLK18LtQ
        ==
X-Received: by 2002:a05:651c:2104:b0:279:fe87:67fc with SMTP id a4-20020a05651c210400b00279fe8767fcmr2132203ljq.173.1673011050883;
        Fri, 06 Jan 2023 05:17:30 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtegga+gTvuNkXHUMQUJzT+5v9aZ5oXotTUK7grzJ9/b8jYgXCq8WgxtFGCcyNjfoIEs21CBR9mAsyuP4FedcQ=
X-Received: by 2002:a05:651c:2104:b0:279:fe87:67fc with SMTP id
 a4-20020a05651c210400b00279fe8767fcmr2132198ljq.173.1673011050640; Fri, 06
 Jan 2023 05:17:30 -0800 (PST)
MIME-Version: 1.0
References: <20230105151740.29436-1-sinthu.raja@ti.com> <20230105151740.29436-2-sinthu.raja@ti.com>
 <977b5cce-2501-4d7a-fe24-437df88aee8f@linaro.org> <CAEd-yTR=zdg_pt=MzkzceGTY2SkV=16dyhXCtd4EU-KGzP_mAQ@mail.gmail.com>
 <ebb0a452-9ae6-780a-a6ca-d34d0ebbc520@linaro.org>
In-Reply-To: <ebb0a452-9ae6-780a-a6ca-d34d0ebbc520@linaro.org>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Fri, 6 Jan 2023 18:47:19 +0530
Message-ID: <CAEd-yTRzxUGNM6u0SMnVNjM=xrsX9g1JUEYvaUhqa--KcgYfeQ@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-BESS-ID: 1673011051-302517-3043-50939-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.208.200
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245287 [from 
        cloudscan18-242.eu-central-1b.ess.aws.cudaops.com]
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

On Fri, Jan 6, 2023 at 6:28 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 06/01/2023 13:53, Sinthu Raja M wrote:
> > On Fri, Jan 6, 2023 at 6:19 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 05/01/2023 16:17, Sinthu Raja wrote:
> >>> From: Sinthu Raja <sinthu.raja@ti.com>
> >>>
> >>> AM68 Starter Kit is a low cost, small form factor board designed for
> >>> TI's AM68 SoC which is optimized to provide best in class performance
> >>> for industrial applications and add binding for the same.
> >>>
> >>> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> >>
> >> What happened here?,
> > Krzysztof
> > Missed the merge window, so rebased to 6.2rc1 and reposted again.
>
> And what was here in v3?
Krzysztof,
Are you asking about this tag?
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

As I was rebasing I thought of not adding. Do I need to respin the
patch series with V5 again with the tag?
>
> Best regards,
> Krzysztof
>


-- 
With Regards
Sinthu Raja
