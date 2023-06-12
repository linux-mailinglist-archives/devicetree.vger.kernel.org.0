Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF65272B87E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234148AbjFLHQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbjFLHQe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:16:34 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC111BC1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:11:33 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-19f9f11ba3dso2063264fac.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686553681; x=1689145681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=TrTdE71E4SVBK9jMj03ZUwJRANn91iHlLy2uhtBOZhgqFzNby8vsSi1/zbanIg2lIT
         cegWa/7V39RE6Xt0a+f0tvBtDTLoDs6Q+Q59SiBYRamXIBQ0zSEKsbpLT1bytQ09PlB8
         q0kRwJpC4XQ2IHcWNwtZfiPDBD04/k7OhMQBI0yq1i/RBSqh8u5p9dNNpO34Je1NW0Tb
         VJqJiIMUhp3MoyFuP0/z625kylp9L3CxJcxHh2YO0Le5shsZz5JV8qun2769c7M/ed7z
         qbfi1y6L87gM+S04pfu2glCYT2Mn9CUa9lwWFW6Ltb2qVqqRt6xjzL9kIY7W2m9tMs9l
         6wEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686553681; x=1689145681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=ZAVt94PFaEzZsjwr8dvwLlIirEikk00WkZKjWZmhWHENdy3SHnL3YH9heIwEmwbcrn
         T1ETYp5GpzJlw1pKu2DdY0eeBqOPCr7Vj35T7NpEZJv+qznWGuJRGaOkAr6ZLsDvL0/K
         M5bDb+061kwRFeSMPjVSACVUQZzpFz2khkbZ8FH8gAuxmFf9j4wRRbhU9IluQ2mk0lMT
         A5X6kL+IgNfQuxPCF8q5w54zBssdFec/PFbEfrZsftGniKsmwyIbEn1kdnppGVmi93Xb
         uvaJ77HMp+KgtI7tCniA4aSSQnd7bl3LMgk5n4nopYGi6pYwcCrD6soAKsS7yE9lFS8X
         hWjA==
X-Gm-Message-State: AC+VfDyB3bhfIY5usHlMihnASNmeWEAhjm+2+83lYIDWAPoauM329H42
        bQ5BF9F/yG3CpxcNfd4Q2rBxnw==
X-Google-Smtp-Source: ACHHUZ5sJYvL9TZNLH0BQd1Fc9f0cmvZomQa3cmFnFMy60vmYr203ADmIaa55NWbbJoZiVglLnaglg==
X-Received: by 2002:a05:6870:9545:b0:17a:c612:ae0d with SMTP id v5-20020a056870954500b0017ac612ae0dmr4979103oal.49.1686553681749;
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id eh11-20020a056870f58b00b0019f188355a8sm5530728oab.17.2023.06.12.00.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Date:   Mon, 12 Jun 2023 12:37:53 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/7] RISC-V: simplify register width check in ISA
 string parsing
Message-ID: <ZIbESTLWl1hjw2FJ@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:25PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Saving off the `isa` pointer to a temp variable, followed by checking if
> it has been incremented is a bit of an odd pattern. Perhaps it was done
> to avoid a funky looking if statement mixed with the ifdeffery.
> 
> Now that we use IS_ENABLED() here just return from the parser as soon as
> we detect a mismatch between the string and the currently running
> kernel.
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
