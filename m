Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C7196A1D89
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 15:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjBXOhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 09:37:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjBXOhJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 09:37:09 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A4BC6799A
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 06:36:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bv17so1299767wrb.5
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 06:36:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zX/vrcCWtSvPkleAvaStM5cYJt4w+dPaI3g+F6rt3j8=;
        b=LQHkkHCx890jy2G0naCp3/iTJg8xCD/7RdzH+EY7Fard/LFReBEjzS0jqaZIo+axF+
         dq0W8Eh6fhgonwAZSeI3Ajf+ta2XfYcb0kNsfLUKBpBUjoYbEMJB2EJKVdD3efUDnvKw
         0kEz4DYaBense7NWRslHiTk5MgH9d6jO+Cl8X8KiowOVJeYyNiS84rimUM4Xpq7dcqNR
         3r5ppl0vx11OZLTdURYTSXPBbwtjjFhP1sqqurST1jZW7rlMKgg1LCPFori3QuO8YAkZ
         r/XmXcLZVjoxf0R/j3zFZyH/NZkJSi56d1Q2zxytHiSulhpJr9eqOT/+vZhqlzE8fy7J
         Vggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zX/vrcCWtSvPkleAvaStM5cYJt4w+dPaI3g+F6rt3j8=;
        b=FHztnURbVOnux3DXyMzGGAcvMI1yK/JpeSkCnh6Go8IZZB4fwdXP11XgC+vbehey6d
         VthkuOBjiZlORta4jUB3SOmSYQLUkkuTRGXx53ijcvvVBYrQu7O8uiTIj1hlg1c9SGfF
         wfFjWDwIusI317Dt3Sg5jpcej8DhpcfNnXHtpUk2TBBCq3UY84O6NUqN22wCJjOyJWRy
         tnjiSsr8w/Ufy24h66F3ZO1JDkl58aiBM8wm47OANgXhle8Zed5xD+i8hQkuz4QJ6a9Z
         22IExJsSgxFEQ0YuzLF9BeKe503g+W+XsE9clBGO3ZwYqSxS47ByV+HXlnRyBYiswoqe
         xnNw==
X-Gm-Message-State: AO0yUKVaEHMQhOP4fp9n+u1kJV1BaujwsaemoUf/jzYrgTiuvDvDsmXf
        uTOH9CfJUCNsbk5/9n1tHwnm0A==
X-Google-Smtp-Source: AK7set8xcAN5eLkL1fj65+8NoThpjh9Ic3yJgNR/wjD6Z+Qa0hu1nIgY5u/dHnWm9iJiQRdgtG3WNw==
X-Received: by 2002:adf:ea88:0:b0:2c5:5a65:79a0 with SMTP id s8-20020adfea88000000b002c55a6579a0mr10892663wrm.53.1677249417783;
        Fri, 24 Feb 2023 06:36:57 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id b15-20020a5d4b8f000000b002c561805a4csm15288994wrt.45.2023.02.24.06.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 06:36:56 -0800 (PST)
Date:   Fri, 24 Feb 2023 15:36:55 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Ben Dooks <ben.dooks@codethink.co.uk>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org, 'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: Re: [PATCH v5 6/8] RISC-V: Use Zicboz in clear_page when available
Message-ID: <20230224143655.5scd7nxwunqpr3u3@orel>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
 <20230221190916.572454-7-ajones@ventanamicro.com>
 <36abc02f-ef35-88a8-1fa8-ce7cebbae7ea@codethink.co.uk>
 <20230224142530.mq5qzfycvyvtnqiv@orel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230224142530.mq5qzfycvyvtnqiv@orel>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 24, 2023 at 03:25:30PM +0100, Andrew Jones wrote:
> On Fri, Feb 24, 2023 at 02:00:44PM +0000, Ben Dooks wrote:
> > On 21/02/2023 19:09, Andrew Jones wrote:
...
> > > +/* void clear_page(void *page) */
> > > +ENTRY(__clear_page)
> > > +WEAK(clear_page)
> > 
> > out of interest, why the __clear_page() entry and the
> > WEAK(clear_page)?
> 
> I was inspired by memset, but, in hindsight, it doesn't make sense for
> clear_page to be weak.

Of course I failed to completely follow the memset pattern, which also
has an export (in riscv_ksyms.c). I prefer the export in clear_page.S,
though, as you've done.

Thanks,
drew
