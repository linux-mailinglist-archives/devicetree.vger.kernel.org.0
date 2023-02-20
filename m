Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF8B969D40C
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 20:24:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233133AbjBTTYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 14:24:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232739AbjBTTYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 14:24:06 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D659C15CBD
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 11:24:02 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ck15so9808424edb.0
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 11:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+W576wch7Ejl3mYpyTbLAtA/crTpFO6iA/dT2MnKVPk=;
        b=YmcJMXcQtNzGVqS/1S4+SXkh7fpGR+cxbvx4kLpDqCnJ6l2oPTpKeeG6vgaRtzFd8h
         kdpxTdaRsd7N0T9UkM0rqrOwKdkjMwk6slrRgr2XvOaid452FC5hawyx3wXVIdWO9uOV
         mDPo6h4gC/k8/Eeh9RWjqW2nQanCVP97XQxWAAMmNM8hsvi72yuaLMRKcTbsF7iu2SMc
         AZstHlgQCu1xXWSEwDXsl2SZ0nCqmCdFJ+bBt3oFrXyQsdwC5zUs+Losj1NooyhAgRYz
         4x6G5PU0jMS7ov/CW4L7Xy+g13oTYToEFHG2kRbrWOLUFHRiw+vj9J0sgKpQOABkHTx2
         FX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+W576wch7Ejl3mYpyTbLAtA/crTpFO6iA/dT2MnKVPk=;
        b=rzTEfYMD6kIjAvOUBFlII/F5bcwu30LI+unTgY6O71L0BOasDxxrWHwhxvd0luOhUJ
         g2fnxAcBle5CtpeuD8xBSayQO7k/vwiAI84nDjTQjt9wu7wrElzNQJXCBww22WJeC2CW
         93+9wgBl/mBeIoIKwbXmraaikjyiSkAg4FXShEA0GIRy+FNtPPgUKs9GULMybR00FAMo
         Qo8ELYlX3Tz9Uy/OpHZ//5zC1fJ570jtRa7NaC/WJWVR5VX6G2MYOGdrkjDuImbCFz+J
         qsHnSBX0DiK5ziP9gB03VV7IGA8DL93dVXm9BjsJZq3dCRhRC49PnHqDTM5h3aNDttPl
         VuZw==
X-Gm-Message-State: AO0yUKVdjpYRTXfiXpqCgH7RiR4BmkgLQjkvOnnFXL7x8JjUY2VAjDre
        bnVgmbZ/VSa4uWxLK5ojAAkGUlW5TGpivixR
X-Google-Smtp-Source: AK7set+ZJwmHPuEnG8sjgTeIL2hlMtKAC+ZkKZcmGWa0p/43DqnXEafw6jrJ95Ws0rgy/oUj7mUhug==
X-Received: by 2002:a17:907:170e:b0:8b1:3483:e3d5 with SMTP id le14-20020a170907170e00b008b13483e3d5mr8615511ejc.48.1676921041285;
        Mon, 20 Feb 2023 11:24:01 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id ke27-20020a17090798fb00b008b12b9c6c49sm6135924ejc.125.2023.02.20.11.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 11:24:00 -0800 (PST)
Date:   Mon, 20 Feb 2023 20:24:00 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Ben Dooks <ben.dooks@codethink.co.uk>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Message-ID: <20230220192400.ycqqugbrgqyvorqq@orel>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
 <4a25cf89-bcf0-e78c-a8ab-7ba0c4f8e2bf@codethink.co.uk>
 <b348f0cc-4868-2924-9935-00ec18b36da9@codethink.co.uk>
 <20230217122943.24caosketyvfcc4f@orel>
 <ff11ad0f-7ea0-1dd3-32ce-5a28c8816397@codethink.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff11ad0f-7ea0-1dd3-32ce-5a28c8816397@codethink.co.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 20, 2023 at 06:43:40PM +0000, Ben Dooks wrote:
> On 17/02/2023 12:29, Andrew Jones wrote:
> > On Fri, Feb 17, 2023 at 10:50:07AM +0000, Ben Dooks wrote:
> > > On 17/02/2023 10:18, Ben Dooks wrote:
> > > > On 09/02/2023 15:26, Andrew Jones wrote:
> > 
> 
> [snip]
> 
> > Hi Ben,
> > 
> > I'll be sending a new version where I don't touch vendor-id anymore, but
> > rather break errata_id into two parts: id and application-data.
> 
> Do you have an idea when v5 will be out, if it is this week I will
> hold-off our internal tree rebase to change to v5.

I'll bump it up in the priority queue and try to send something tomorrow
or Wednesday.

Thanks,
drew

> 
> Thanks!
> 
> -- 
> Ben Dooks				http://www.codethink.co.uk/
> Senior Engineer				Codethink - Providing Genius
> 
> https://www.codethink.co.uk/privacy.html
> 
