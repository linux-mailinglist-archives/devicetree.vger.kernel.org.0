Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC3E7678090
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231829AbjAWPyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231679AbjAWPyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:54:08 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532E930E5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:54:07 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h16so11219374wrz.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+T/G9k15WOqcnm5NSoRREaF11y8Ho69NMw/NwpRfAK0=;
        b=MApYfB0o72zvfWFm+POIdyCrXsaavHTfAUTjsNbY4up+53rhpPBSRhUB0ICJFEZxfj
         BjKT7XWKlo5R4+S6tYi+ItQ+o3xEY2M/AOvBUwcEBO7fjIOzblAzqhitRzTQdspsq4gW
         MKX8TpZx+KSZ0oPbJvdnqQb0n8lhOjBOW9esLgrJPe36lfj6ovO/PQcMXERYQTB2j7iH
         BQjQ7Gf5MLKV2zWm0qOK5jC0K8gd9a5t4ZVIDPPuA9t4NjqighOPJVAPGccKG6ZGaxCW
         mr/ww9zxKvPdeDWXiDn3tKB4rfHwrNj6msyZEZip/mpJt+o5CD05mdEhnZS6nMk7PTPR
         n4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+T/G9k15WOqcnm5NSoRREaF11y8Ho69NMw/NwpRfAK0=;
        b=M0CL7qUeg7DtYd/djyyJG/F1McMUx0MglCjV3tqYJGW0FTt4IKM/hZ5ND8a4Ikihrs
         OpVJ3aRAMcLyA6bdgxE1Zcz3SYlGcrhj1pS6O3sG/EwzVgcvEH2ismTxOJVbwexI+B7/
         c8sF0ql/QKJWNnOyJuVhXkQ3lsevAEnAiqGHVEIZPOyy40M8L7w3YD3ruvUajuEUqYkJ
         9NWWnyLW3BJV5ymWmC0LXPEahEnEKd3DGpr7Y5MNSLL8e3lIhSq8kznJvcwaK9w7kI3e
         0ZjCg/YbD2Qu4IPwf2CXpkZQ49clUB1NCRIlx1thSxJyfGW7HBjsQTZBuQ/ciaHjiG1/
         RrDQ==
X-Gm-Message-State: AFqh2kqwdwVVQL62plfqAXxhL9pz5iAkNqmlm45ieE2y7cF49y4aKtSZ
        WpBLOV41UvRO6zCLIZxiUOER9A==
X-Google-Smtp-Source: AMrXdXvwcU0oqIZdIzFUzY0n39UD6sn2j3DukAGMDcoBpW0CyrgNDqr9OSGfP40XyWPsZdMO/5qW6A==
X-Received: by 2002:a05:6000:98d:b0:2a5:6244:329e with SMTP id by13-20020a056000098d00b002a56244329emr19441398wrb.40.1674489245906;
        Mon, 23 Jan 2023 07:54:05 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id q11-20020a05600000cb00b002be53aa2260sm9689429wrx.117.2023.01.23.07.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:54:05 -0800 (PST)
Date:   Mon, 23 Jan 2023 16:54:04 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Atish Patra <atishp@rivosinc.com>,
        Jisheng Zhang <jszhang@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Anup Patel <apatel@ventanamicro.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Document cboz-block-size
Message-ID: <20230123155404.oqcfufnot4f2vjw7@orel>
References: <20230122191328.1193885-1-ajones@ventanamicro.com>
 <20230122191328.1193885-3-ajones@ventanamicro.com>
 <CAL_Jsq+SqFOVYZdf5YCELNo7nnU-T32V_Ec1C+RmUv_eLiR0Ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+SqFOVYZdf5YCELNo7nnU-T32V_Ec1C+RmUv_eLiR0Ng@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 23, 2023 at 08:33:56AM -0600, Rob Herring wrote:
> On Sun, Jan 22, 2023 at 1:13 PM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > The Zicboz operates on a block-size defined for the cpu-core,
> > which does not necessarily match other cache-sizes used.
> 
> Please use get_maintainers.pl and send patches to the correct lists.

Yup, Conor also pointed out that I forgot to update the CC list when
adding this patch to the series.

> 
> I have no idea what Zicboz is. How does it relate to Zicbom for which
> we already have a block size property? I really hate one by one
> property additions because they lead to poorly designed bindings. So
> what's next? What other information might be needed?

Zicbom and Zicboz are both RISC-V ISA extensions for cache-block operation
(CBO) instructions. Zicbom defines the instructions cbo.inval, cbo.clean,
and cbo.flush while Zicboz only defines cbo.zero. While it's probably
likely that the cache block sizes which Zicbom and Zicboz use will be
the same when both are implemented, the specification does not require it.
With that in mind, it makes sense to me that Zicbom has its own property
and that Zicboz could follow Zicbom's pattern with its own property as
well.

That said, having a generic block size property which is used in the
absence of the per-extension block size properties would allow DTs to only
specify the size once when they're the same. In my reply to Conor, I
suggested introducing a cbo-block-size property for this purpose, but Anup
suggests we just expand the purpose of cbom-block-size. Expanding cbom-
block-size's purpose would allow its size to be used with cbo.zero in the
absence of a cboz-block-size property. Additionally, we could defer the
introduction of the cboz-block-size property until some system needs it,
which may be never.

As far as to what's coming next, I'm not aware of a plan for more of these
types of properties at this time, but the CMO spec also describes prefetch
instructions, which are defined under the Zicbop extension. If Zicbop
support is added, then it should follow the same pattern as we agree for
Zicboz, which is either

 a. Add cboz-block-size and require it (as this series currently does)
 b. Add cboz-block-size, expand the function of cbom-block-size to be
    a fallback, and fallback to cbom-block-size when cboz-block-size is
    absent
 c. Don't add cboz-block-size, only expand the function of cbom-block-size
    and use it. If a need arises for cboz-block-size some day, then it
    can be added at that time.
 d. ??
  
I'm not aware of any additional information needed for these extensions
beyond the block sizes.

Thanks,
drew
