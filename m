Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 383246BAB3A
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 09:54:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231827AbjCOIyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 04:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbjCOIyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 04:54:06 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBD2515CBB
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 01:53:59 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id o12so72472735edb.9
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 01:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1678870438;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dolOVvlYZWJ9nCYk9trJ6kMCdZW/oXPHELzwkmem5Uk=;
        b=MFbGxr4qvdjII5+dP1fGSBYixXjYcuZKIHk2d+ShrWlGblspW3sZJrwNZ77vZ2V+eK
         fgjmeAR71wlzoh04kgfZyy/wKlgmFHqWkQcTiHUIu6/qDb0h9WxiNYOdgj2uFKleJ5j5
         YCuu9Z/XL1VPPaKS92QHrBKFYKUTTNgL7WdfFo9gXAUbxC6uVtEN8dOC6rwN2wbyBRcK
         XvfX7uANctyKHvt1OSlJUt4CH3bBksiUtpNFSpVXUqZHh8P4kcPIHoHEPYLJboALHC41
         0ASsFEw18ovuOQD6hBQIifRRcXo2+f38PYlF76J4KxBjajuq7a/RRgwCdfFPzY0OIVTH
         fn5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678870438;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dolOVvlYZWJ9nCYk9trJ6kMCdZW/oXPHELzwkmem5Uk=;
        b=qTdqZ4NW6tSImXeBpMUo/ASw0eaYg9Lgiyq9+dAt3f03EU28WD15NGgFS+/BVYb5yb
         VZk3DbewJlLCpLcIYRi+xknDDEnme0frXLNN4fT79A9ZFqvSvK1JxFgxEpehADymn0Nj
         ygqj5kr3mHNXGDvQHCM62P+WkGDX2r1zQ24U0+tT2QWLNKGsUHlkybD6YI8xj9DbkFlL
         iL8nXAWJM8pMx4gnFFaO5btaFntudf1RQU0zQXYQ7IxwYYfrAxCBS01tLhJa0ZBmMXGs
         FnlU65uNABUuml7JjTboMO+MdxuAc7EHbTpFV+uhizF3DBNmGMmKDOu2l4wmC/Sdjy3k
         VJ7A==
X-Gm-Message-State: AO0yUKUFsnObc77agRidGcYAWQohjLx1PwX4bIr8n5PzUEXVe0pTqeTd
        TpYVqXHZma72dw7X61nmSSwsaQ==
X-Google-Smtp-Source: AK7set/VungzdGD3dRLBeKZZ7z4IK2H1QDutRY3N3WNFbdIsaJWOnMSmwzQBDqASChuqOZoNS4OOzA==
X-Received: by 2002:a17:906:6cf:b0:8aa:875d:9d9a with SMTP id v15-20020a17090606cf00b008aa875d9d9amr5855591ejb.50.1678870438268;
        Wed, 15 Mar 2023 01:53:58 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id rp15-20020a170906d96f00b00929fc8d264dsm2252847ejb.17.2023.03.15.01.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 01:53:57 -0700 (PDT)
Date:   Wed, 15 Mar 2023 09:53:56 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        sudip.mukherjee@codethink.co.uk, ben.dooks@codethink.co.uk,
        Atish Patra <atishp@rivosinc.com>, aou@eecs.berkeley.edu,
        apatel@ventanamicro.com, krzysztof.kozlowski+dt@linaro.org,
        robh@kernel.org, jszhang@kernel.org, heiko@sntech.de
Subject: Re: [PATCH v6 0/8] RISC-V: Apply Zicboz to clear_page
Message-ID: <20230315085356.zlmiz5qkz44d5ndf@orel>
References: <20230224162631.405473-1-ajones@ventanamicro.com>
 <mhng-72607fed-a923-4921-896f-7f703434083a@palmer-ri-x1c9a>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-72607fed-a923-4921-896f-7f703434083a@palmer-ri-x1c9a>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 14, 2023 at 09:35:09PM -0700, Palmer Dabbelt wrote:
> On Fri, 24 Feb 2023 08:26:23 PST (-0800), ajones@ventanamicro.com wrote:
> > When the Zicboz extension is available we can more rapidly zero naturally
> > aligned Zicboz block sized chunks of memory. As pages are always page
> 
> I guess we're sort of in a grey area here: this is just a performance thing
> so in theory some sort of benchmark should be required, but IMO it's OK to
> just hand wave this one away -- if the "zero a cache block" instruction
> doesn't make "zero a page" go faster then something has gone so far off the
> rails it's probably better to just pretend the machine doesn't implement
> Zicboz.
> 
> This all LGTM, so unless anyone's opposed or it blows up on testing
> overnight then it'll be on for-next.

Thanks, Palmer!

drew
