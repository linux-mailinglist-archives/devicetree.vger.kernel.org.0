Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED60588A4E
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 12:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235885AbiHCKZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 06:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233230AbiHCKZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 06:25:08 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E40DD29C8D
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 03:25:07 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id v185so12550257ioe.11
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 03:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=YmDA3kq1/xilo+yZEI3WQJxtfYiQ+XqxKBBcYLngZhI=;
        b=hTICKdtVQTnsfKZFCZBlyrTUaqWPeHxYSnQCNCzFtax3c3I77sA2mxe+aCggQXgRPE
         Xqz8amzMS3o6j6NQ7zYUT/UFlODQksJFoKgiCztmh3WzJNKfFZA9o2+wuw5vjNztB28W
         AcupddDvk07jdgyjjhBVE/YqfcKSte+2Y8v6lMWMpQpCVLCMt60OnN0a7ttPmI4i3qg/
         VnvCKMLYO0dXnxViyuTe7QF0AfN7Q5EnDlUCy6iG10WomgA24/5oPGV8Dexa9xCR+tK1
         n/JKrCdhPdyqZ3/RBHZwX4VEwLu1LoGpOd47kmipBpd9TKIMMvj+2KXZF3XU/xXiu29x
         qFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=YmDA3kq1/xilo+yZEI3WQJxtfYiQ+XqxKBBcYLngZhI=;
        b=74fu1PQbpTyKjQsSC1PEYa312Enh9yVl9LvSEIq17dd2eOIa2Ehk9hzKKjmLWJ/PaG
         89jYGSoHa8Hv27szEmwYNNTfvY//RuHB3r+cfgCc3Jr54iN8t6mEq0IOqu1/NNDW9ZNJ
         T02NUoXQ4B3Q4P3VHmLMsSeQ/tTcYRVRYub/euwSA7vYCb23Wt0uDunO+E9ng0vkM857
         dc3zt/poq3LG8Dlmigz1NB+U+3voYyv7+zyP5DE/ReNbgRS1dtiEmf7JLawj7JYVMt71
         mcwdZCJgnnP23YKQegTU+5h630o6ybR4OkJvyiJcdTLrJp88qeXzRK3t/IM+YY0DRelV
         2RDw==
X-Gm-Message-State: AJIora++2FpccqhXSRtb5bGR1sQnl0LR5k3AoH8NfkK9aapXL3RWIWW2
        +S9KZMs8l/HlsSgUQUcOJryJvCMAjg3BufdPwQcbpoMNuSW9ADb5pUlpzQ==
X-Google-Smtp-Source: AGRyM1vm86YSVaw+8M+NZy8VQoKRM/ZV7Oz/sVMkJ9ie5+WmNHtGfYhm2DqkAHvB/i4nCwRBBrrHTArmfdUNOySOeHM=
X-Received: by 2002:a05:6602:2d4f:b0:67c:24ec:73af with SMTP id
 d15-20020a0566022d4f00b0067c24ec73afmr8697296iow.73.1659522307280; Wed, 03
 Aug 2022 03:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
In-Reply-To: <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 3 Aug 2022 15:54:56 +0530
Message-ID: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 31/07/2022 19:47, Jagan Teki wrote:
> > Add power-domain header for RV1126 SoC from description in TRM.
> >
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v2:
> > - add blank line
> >
> >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >
> > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>
> Vendor in filename is needed.

Yes this follows how similar rockchip vendor notation

$ ls include/dt-bindings/power/rk3* -l
 include/dt-bindings/power/rk3036-power.h
 include/dt-bindings/power/rk3066-power.h
 include/dt-bindings/power/rk3128-power.h
 include/dt-bindings/power/rk3188-power.h
 include/dt-bindings/power/rk3228-power.h
 include/dt-bindings/power/rk3288-power.h
 include/dt-bindings/power/rk3328-power.h
 include/dt-bindings/power/rk3366-power.h
 include/dt-bindings/power/rk3368-power.h
 include/dt-bindings/power/rk3399-power.h
 include/dt-bindings/power/rk3568-power.h

>
> > new file mode 100644
> > index 000000000000..38a68e000d38
> > --- /dev/null
> > +++ b/include/dt-bindings/power/rv1126-power.h
> > @@ -0,0 +1,35 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
>
> Dual license, please, unless some copyrights are no allowing this.

Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

Jagan.
